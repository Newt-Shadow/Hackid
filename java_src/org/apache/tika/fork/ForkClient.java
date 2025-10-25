package org.apache.tika.fork;

import cf.g;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.NotSerializableException;
import java.lang.ProcessBuilder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.jar.JarEntry;
import java.util.jar.JarOutputStream;
import java.util.zip.ZipEntry;
import org.apache.tika.exception.TikaException;
import org.apache.tika.sax.AbstractRecursiveParserWrapperHandler;
import org.apache.tika.sax.RecursiveParserWrapperHandler;
import org.apache.tika.utils.ProcessUtils;
import org.xml.sax.ContentHandler;
/* loaded from: classes2.dex */
class ForkClient {
    private static final AtomicInteger CLIENT_COUNTER = new AtomicInteger(0);
    private volatile int filesProcessed;

    /* renamed from: id  reason: collision with root package name */
    private final int f27652id;
    private final DataInputStream input;
    private final File jar;
    private final ClassLoader loader;
    private final DataOutputStream output;
    private final Process process;
    private final List<ForkResource> resources;

    public ForkClient(Path path, ParserFactoryFactory parserFactoryFactory, List<String> list, TimeoutLimits timeoutLimits) {
        this(path, parserFactoryFactory, null, list, timeoutLimits);
    }

    private static File createBootstrapJar() {
        Path createTempFile;
        File file;
        createTempFile = Files.createTempFile("apache-tika-fork-", ".jar", new FileAttribute[0]);
        file = createTempFile.toFile();
        try {
            fillBootstrapJar(file);
            return file;
        } catch (Throwable th) {
            file.delete();
            throw th;
        }
    }

    private static void fillBootstrapJar(File file) {
        JarOutputStream jarOutputStream = new JarOutputStream(new FileOutputStream(file));
        try {
            jarOutputStream.putNextEntry(new ZipEntry("META-INF/MANIFEST.MF"));
            jarOutputStream.write(("Main-Class: " + ForkServer.class.getName() + "\n").getBytes(StandardCharsets.UTF_8));
            Class[] clsArr = {ForkServer.class, ForkObjectInputStream.class, ForkProxy.class, ClassLoaderProxy.class, MemoryURLConnection.class, MemoryURLStreamHandler.class, MemoryURLStreamHandlerFactory.class, MemoryURLStreamRecord.class, TikaException.class};
            ClassLoader classLoader = ForkServer.class.getClassLoader();
            for (int i10 = 0; i10 < 9; i10++) {
                String str = clsArr[i10].getName().replace('.', '/') + ".class";
                InputStream resourceAsStream = classLoader.getResourceAsStream(str);
                jarOutputStream.putNextEntry(new JarEntry(str));
                g.n(resourceAsStream, jarOutputStream);
                if (resourceAsStream != null) {
                    resourceAsStream.close();
                }
            }
            jarOutputStream.close();
        } catch (Throwable th) {
            try {
                jarOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private void sendObject(Object obj, List<ForkResource> list) {
        int size = list.size();
        if (obj instanceof InputStream) {
            list.add(new InputStreamResource((InputStream) obj));
            obj = new InputStreamProxy(size);
        } else if (obj instanceof RecursiveParserWrapperHandler) {
            RecursiveParserWrapperHandler recursiveParserWrapperHandler = (RecursiveParserWrapperHandler) obj;
            list.add(new RecursiveMetadataContentHandlerResource(recursiveParserWrapperHandler));
            obj = new RecursiveMetadataContentHandlerProxy(size, recursiveParserWrapperHandler.getContentHandlerFactory());
        } else if ((obj instanceof ContentHandler) && !(obj instanceof AbstractRecursiveParserWrapperHandler)) {
            list.add(new ContentHandlerResource((ContentHandler) obj));
            obj = new ContentHandlerProxy(size);
        } else if (obj instanceof ClassLoader) {
            list.add(new ClassLoaderResource((ClassLoader) obj));
            obj = new ClassLoaderProxy(size);
        }
        try {
            ForkObjectInputStream.sendObject(obj, this.output);
            waitForResponse(list);
        } catch (NotSerializableException e10) {
            String simpleName = obj.getClass().getSimpleName();
            throw new TikaException("Unable to serialize " + simpleName + " to pass to the Forked Parser", e10);
        }
    }

    private Throwable waitForResponse(List<ForkResource> list) {
        this.output.flush();
        while (!Thread.currentThread().isInterrupted()) {
            int read = this.input.read();
            if (read != -1) {
                if (read == 3) {
                    list.get(this.input.readUnsignedByte()).process(this.input, this.output);
                } else if (((byte) read) == -1) {
                    try {
                        return (Throwable) ForkObjectInputStream.readObject(this.input, this.loader);
                    } catch (ClassNotFoundException e10) {
                        throw new IOException("Unable to deserialize an exception", e10);
                    }
                } else {
                    return null;
                }
            } else {
                throw new IOException("Lost connection to a forked server process");
            }
        }
        throw new IOException(new InterruptedException());
    }

    private void waitForStartBeacon() {
        int read;
        do {
            read = this.input.read();
            byte b10 = (byte) read;
            if (b10 == 4) {
                return;
            }
            if (b10 == 5) {
                throw new IOException("Server had a catastrophic initialization failure");
            }
        } while (read != -1);
        throw new IOException("EOF while waiting for start beacon");
    }

    public synchronized Throwable call(String str, Object... objArr) {
        ArrayList arrayList;
        this.filesProcessed++;
        arrayList = new ArrayList(this.resources);
        this.output.writeByte(1);
        this.output.writeUTF(str);
        for (Object obj : objArr) {
            sendObject(obj, arrayList);
        }
        return waitForResponse(arrayList);
    }

    public synchronized void close() {
        try {
            DataOutputStream dataOutputStream = this.output;
            if (dataOutputStream != null) {
                dataOutputStream.close();
            }
            DataInputStream dataInputStream = this.input;
            if (dataInputStream != null) {
                dataInputStream.close();
            }
        } catch (IOException unused) {
        }
        Process process = this.process;
        if (process != null) {
            process.destroyForcibly();
            try {
                this.process.waitFor();
            } catch (InterruptedException unused2) {
            }
        }
        File file = this.jar;
        if (file != null) {
            file.delete();
        }
    }

    public int getFilesProcessed() {
        return this.filesProcessed;
    }

    public int getId() {
        return this.f27652id;
    }

    public synchronized boolean ping() {
        boolean z10;
        z10 = false;
        try {
            this.output.writeByte(2);
            this.output.flush();
            if (this.input.read() == 2) {
                z10 = true;
            }
        } catch (IOException unused) {
            return false;
        }
        return z10;
    }

    public ForkClient(Path path, ParserFactoryFactory parserFactoryFactory, ClassLoader classLoader, List<String> list, TimeoutLimits timeoutLimits) {
        Path absolutePath;
        String path2;
        String str;
        ProcessBuilder.Redirect redirect;
        ArrayList arrayList = new ArrayList();
        this.resources = arrayList;
        this.f27652id = CLIENT_COUNTER.incrementAndGet();
        this.filesProcessed = 0;
        this.jar = null;
        this.loader = null;
        ProcessBuilder processBuilder = new ProcessBuilder(new String[0]);
        ArrayList arrayList2 = new ArrayList(list);
        arrayList2.add("-cp");
        absolutePath = path.toAbsolutePath();
        path2 = absolutePath.toString();
        if (!path2.endsWith("/")) {
            str = path2 + "/*";
        } else {
            str = path2 + "/";
        }
        arrayList2.add(ProcessUtils.escapeCommandLine(str));
        arrayList2.add("org.apache.tika.fork.ForkServer");
        arrayList2.add(Long.toString(timeoutLimits.getPulseMS()));
        arrayList2.add(Long.toString(timeoutLimits.getParseTimeoutMS()));
        arrayList2.add(Long.toString(timeoutLimits.getWaitTimeoutMS()));
        processBuilder.command(arrayList2);
        redirect = ProcessBuilder.Redirect.INHERIT;
        processBuilder.redirectError(redirect);
        try {
            Process start = processBuilder.start();
            this.process = start;
            DataOutputStream dataOutputStream = new DataOutputStream(start.getOutputStream());
            this.output = dataOutputStream;
            this.input = new DataInputStream(start.getInputStream());
            waitForStartBeacon();
            if (classLoader != null) {
                dataOutputStream.writeByte(8);
            } else {
                dataOutputStream.writeByte(6);
            }
            dataOutputStream.flush();
            sendObject(parserFactoryFactory, arrayList);
            if (classLoader != null) {
                sendObject(classLoader, arrayList);
            }
            waitForStartBeacon();
        } finally {
        }
    }

    public ForkClient(ClassLoader classLoader, Object obj, List<String> list, TimeoutLimits timeoutLimits) {
        ProcessBuilder.Redirect redirect;
        ArrayList arrayList = new ArrayList();
        this.resources = arrayList;
        this.f27652id = CLIENT_COUNTER.incrementAndGet();
        this.filesProcessed = 0;
        try {
            this.loader = classLoader;
            File createBootstrapJar = createBootstrapJar();
            this.jar = createBootstrapJar;
            ProcessBuilder processBuilder = new ProcessBuilder(new String[0]);
            ArrayList arrayList2 = new ArrayList(list);
            arrayList2.add("-jar");
            arrayList2.add(createBootstrapJar.getPath());
            arrayList2.add(Long.toString(timeoutLimits.getPulseMS()));
            arrayList2.add(Long.toString(timeoutLimits.getParseTimeoutMS()));
            arrayList2.add(Long.toString(timeoutLimits.getWaitTimeoutMS()));
            processBuilder.command(arrayList2);
            redirect = ProcessBuilder.Redirect.INHERIT;
            processBuilder.redirectError(redirect);
            Process start = processBuilder.start();
            this.process = start;
            DataOutputStream dataOutputStream = new DataOutputStream(start.getOutputStream());
            this.output = dataOutputStream;
            this.input = new DataInputStream(start.getInputStream());
            waitForStartBeacon();
            dataOutputStream.writeByte(7);
            dataOutputStream.flush();
            sendObject(classLoader, arrayList);
            sendObject(obj, arrayList);
            waitForStartBeacon();
        } catch (Throwable th) {
            close();
            throw th;
        }
    }
}
