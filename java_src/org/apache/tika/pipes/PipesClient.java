package org.apache.tika.pipes;

import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ProcessBuilder;
import java.nio.charset.StandardCharsets;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.io.input.h;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.metadata.TikaCoreProperties;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.pipes.PipesResult;
import org.apache.tika.pipes.PipesServer;
import org.apache.tika.pipes.emitter.EmitData;
import org.apache.tika.pipes.emitter.EmitKey;
import org.apache.tika.utils.ProcessUtils;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes2.dex */
public class PipesClient implements Closeable {
    private static final int MAX_BYTES_BEFORE_READY = 20000;
    private static final long WAIT_ON_DESTROY_MS = 10000;
    private DataInputStream input;
    private DataOutputStream output;
    private final PipesConfigBase pipesConfig;
    private Process process;
    private static final mf.c LOG = mf.e.l(PipesClient.class);
    private static AtomicInteger CLIENT_COUNTER = new AtomicInteger(0);
    private final Object[] executorServiceLock = new Object[0];
    private volatile boolean closed = false;
    private ExecutorService executorService = Executors.newFixedThreadPool(1);
    private int filesProcessed = 0;
    private final int pipesClientId = CLIENT_COUNTER.getAndIncrement();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.tika.pipes.PipesClient$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS;

        static {
            int[] iArr = new int[PipesServer.STATUS.values().length];
            $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS = iArr;
            try {
                iArr[PipesServer.STATUS.OOM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.TIMEOUT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.EMIT_EXCEPTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.EMITTER_NOT_FOUND.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.FETCHER_NOT_FOUND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.FETCHER_INITIALIZATION_EXCEPTION.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.FETCH_EXCEPTION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.INTERMEDIATE_RESULT.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.PARSE_SUCCESS.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.PARSE_EXCEPTION_NO_EMIT.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.EMIT_SUCCESS.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.EMIT_SUCCESS_PARSE_EXCEPTION.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.EMPTY_OUTPUT.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.READY.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.CALL.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.PING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[PipesServer.STATUS.FAILED_TO_START.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public PipesClient(PipesConfigBase pipesConfigBase) {
        this.pipesConfig = pipesConfigBase;
    }

    private PipesResult actuallyProcess(final FetchEmitTuple fetchEmitTuple) {
        boolean isAlive;
        boolean isAlive2;
        final long currentTimeMillis = System.currentTimeMillis();
        final PipesResult[] pipesResultArr = new PipesResult[1];
        FutureTask futureTask = new FutureTask(new Callable() { // from class: org.apache.tika.pipes.c
            @Override // java.util.concurrent.Callable
            public final Object call() {
                PipesResult lambda$actuallyProcess$0;
                lambda$actuallyProcess$0 = PipesClient.this.lambda$actuallyProcess$0(fetchEmitTuple, currentTimeMillis, pipesResultArr);
                return lambda$actuallyProcess$0;
            }
        });
        try {
            try {
                try {
                    if (!this.closed) {
                        this.executorService.execute(futureTask);
                        PipesResult pipesResult = (PipesResult) futureTask.get(this.pipesConfig.getTimeoutMillis(), TimeUnit.MILLISECONDS);
                        futureTask.cancel(true);
                        return pipesResult;
                    }
                    int i10 = this.pipesClientId;
                    throw new IllegalArgumentException("pipesClientId=" + i10 + ": PipesClient closed");
                } catch (InterruptedException e10) {
                    destroyForcibly();
                    throw e10;
                }
            } catch (ExecutionException e11) {
                mf.c cVar = LOG;
                int i11 = this.pipesClientId;
                cVar.g("pipesClientId=" + i11 + ": execution exception", e11);
                long currentTimeMillis2 = System.currentTimeMillis() - currentTimeMillis;
                pauseThenDestroy();
                isAlive = this.process.isAlive();
                if (isAlive || 17 != this.process.exitValue()) {
                    this.process.waitFor(500L, TimeUnit.MILLISECONDS);
                    isAlive2 = this.process.isAlive();
                    if (isAlive2) {
                        cVar.j("pipesClientId={} crash: {} in {} ms with no exit code available", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis2));
                    } else {
                        cVar.j("pipesClientId={} crash: {} in {} ms with exit code {}", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis2), Integer.valueOf(this.process.exitValue()));
                    }
                    PipesResult buildFatalResult = buildFatalResult(PipesResult.UNSPECIFIED_CRASH, pipesResultArr);
                    futureTask.cancel(true);
                    return buildFatalResult;
                }
                cVar.j("pipesClientId={} server timeout: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis2));
                PipesResult buildFatalResult2 = buildFatalResult(PipesResult.TIMEOUT, pipesResultArr);
                futureTask.cancel(true);
                return buildFatalResult2;
            } catch (TimeoutException unused) {
                long currentTimeMillis3 = System.currentTimeMillis() - currentTimeMillis;
                destroyForcibly();
                LOG.j("pipesClientId={} client timeout: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis3));
                PipesResult buildFatalResult3 = buildFatalResult(PipesResult.TIMEOUT, pipesResultArr);
                futureTask.cancel(true);
                return buildFatalResult3;
            }
        } catch (Throwable th) {
            futureTask.cancel(true);
            throw th;
        }
    }

    private PipesResult buildFatalResult(PipesResult pipesResult, PipesResult[] pipesResultArr) {
        if (pipesResultArr[0] == null) {
            return pipesResult;
        }
        mf.c cVar = LOG;
        if (cVar.n()) {
            cVar.f("intermediate result: {}", pipesResultArr[0].getEmitData());
        }
        pipesResultArr[0].getEmitData().getMetadataList().get(0).set(TikaCoreProperties.PIPES_RESULT, pipesResult.getStatus().toString());
        return new PipesResult(pipesResult.getStatus(), pipesResultArr[0].getEmitData(), true);
    }

    private PipesResult deserializeEmitData() {
        byte[] bArr = new byte[this.input.readInt()];
        this.input.readFully(bArr);
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(h.a().m(bArr).l());
            EmitData emitData = (EmitData) objectInputStream.readObject();
            String containerStackTrace = emitData.getContainerStackTrace();
            if (StringUtils.isBlank(containerStackTrace)) {
                PipesResult pipesResult = new PipesResult(emitData);
                objectInputStream.close();
                return pipesResult;
            }
            PipesResult pipesResult2 = new PipesResult(emitData, containerStackTrace);
            objectInputStream.close();
            return pipesResult2;
        } catch (ClassNotFoundException e10) {
            LOG.g("class not found exception deserializing data", e10);
            throw new RuntimeException(e10);
        }
    }

    private PipesResult deserializeIntermediateResult(EmitKey emitKey, ParseContext parseContext) {
        byte[] bArr = new byte[this.input.readInt()];
        this.input.readFully(bArr);
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(h.a().m(bArr).l());
            PipesResult pipesResult = new PipesResult(PipesResult.STATUS.INTERMEDIATE_RESULT, new EmitData(emitKey, Collections.singletonList((Metadata) objectInputStream.readObject())), true);
            objectInputStream.close();
            return pipesResult;
        } catch (ClassNotFoundException e10) {
            LOG.g("class not found exception deserializing data", e10);
            throw new RuntimeException(e10);
        }
    }

    private void destroyForcibly() {
        boolean isAlive;
        this.process.destroyForcibly();
        this.process.waitFor(WAIT_ON_DESTROY_MS, TimeUnit.MILLISECONDS);
        try {
            this.input.close();
        } catch (IOException unused) {
        }
        try {
            this.output.close();
        } catch (IOException unused2) {
        }
        isAlive = this.process.isAlive();
        if (isAlive) {
            LOG.r("Process still alive after {}ms", Long.valueOf((long) WAIT_ON_DESTROY_MS));
        }
    }

    private String[] getCommandline() {
        Path absolutePath;
        String path;
        List<String> forkedJvmArgs = this.pipesConfig.getForkedJvmArgs();
        String str = null;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        String str2 = null;
        for (String str3 : forkedJvmArgs) {
            if (str3.startsWith("-Djava.awt.headless")) {
                z11 = true;
            }
            z10 = (str3.equals("-cp") || str3.equals("--classpath")) ? true : true;
            z12 = (str3.equals("-XX:+ExitOnOutOfMemoryError") || str3.equals("-XX:+CrashOnOutOfMemoryError")) ? true : true;
            if (str3.startsWith("-Dlog4j.configuration")) {
                z13 = true;
            }
            if (str3.startsWith("-Xloggc:")) {
                str2 = str3.replace("${pipesClientId}", "id-" + this.pipesClientId);
                str = str3;
            }
        }
        if (str != null && str2 != null) {
            forkedJvmArgs.remove(str);
            forkedJvmArgs.add(str2);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(ProcessUtils.escapeCommandLine(this.pipesConfig.getJavaPath()));
        if (!z10) {
            arrayList.add("-cp");
            arrayList.add(System.getProperty("java.class.path"));
        }
        if (!z11) {
            arrayList.add("-Djava.awt.headless=true");
        }
        if (z12) {
            LOG.x("I notice that you have an exit/crash on OOM. If you run heavy external processes like tesseract, this setting may result in orphaned processes which could be disastrous for performance.");
        }
        if (!z13) {
            arrayList.add("-Dlog4j.configurationFile=classpath:pipes-fork-server-default-log4j2.xml");
        }
        arrayList.add("-DpipesClientId=" + this.pipesClientId);
        arrayList.addAll(forkedJvmArgs);
        arrayList.add("org.apache.tika.pipes.PipesServer");
        absolutePath = this.pipesConfig.getTikaConfig().toAbsolutePath();
        path = absolutePath.toString();
        arrayList.add(ProcessUtils.escapeCommandLine(path));
        arrayList.add(Long.toString(this.pipesConfig.getMaxForEmitBatchBytes()));
        arrayList.add(Long.toString(this.pipesConfig.getTimeoutMillis()));
        arrayList.add(Long.toString(this.pipesConfig.getShutdownClientAfterMillis()));
        LOG.d("pipesClientId={}: commandline: {}", Integer.valueOf(this.pipesClientId), arrayList);
        return (String[]) arrayList.toArray(new String[0]);
    }

    private static String getMsg(String str, gf.e eVar) {
        String f10 = eVar.f(StandardCharsets.UTF_8);
        if (StringUtils.isBlank(f10)) {
            return str;
        }
        return str + "So far, I've read: >" + f10 + "<";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ PipesResult lambda$actuallyProcess$0(FetchEmitTuple fetchEmitTuple, long j10, PipesResult[] pipesResultArr) {
        gf.e l10 = gf.e.j().l();
        ObjectOutputStream objectOutputStream = new ObjectOutputStream(l10);
        try {
            objectOutputStream.writeObject(fetchEmitTuple);
            objectOutputStream.close();
            byte[] b10 = l10.b();
            this.output.write(PipesServer.STATUS.CALL.getByte());
            this.output.writeInt(b10.length);
            this.output.write(b10);
            this.output.flush();
            mf.c cVar = LOG;
            if (cVar.n()) {
                cVar.h("pipesClientId={}: timer -- write tuple: {} ms", Integer.valueOf(this.pipesClientId), Long.valueOf(System.currentTimeMillis() - j10));
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (!Thread.currentThread().isInterrupted()) {
                PipesResult readResults = readResults(fetchEmitTuple, j10);
                while (readResults.getStatus().equals(PipesResult.STATUS.INTERMEDIATE_RESULT)) {
                    pipesResultArr[0] = readResults;
                    readResults = readResults(fetchEmitTuple, j10);
                }
                mf.c cVar2 = LOG;
                if (cVar2.e()) {
                    cVar2.q("finished reading result in {} ms", Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                }
                if (cVar2.n()) {
                    cVar2.h("pipesClientId={}: timer -- read result: {} ms", Integer.valueOf(this.pipesClientId), Long.valueOf(System.currentTimeMillis() - currentTimeMillis));
                }
                if (readResults.getStatus() == PipesResult.STATUS.OOM) {
                    return buildFatalResult(readResults, pipesResultArr);
                }
                return readResults;
            }
            throw new InterruptedException("thread interrupt");
        } catch (Throwable th) {
            try {
                objectOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Integer lambda$restart$1(gf.e eVar) {
        boolean isAlive;
        int read = this.input.read();
        int i10 = 1;
        while (i10 < 20000 && read != PipesServer.STATUS.READY.getByte()) {
            if (read != -1) {
                eVar.write(read);
                read = this.input.read();
                i10++;
            } else {
                int i11 = this.pipesClientId;
                isAlive = this.process.isAlive();
                throw new RuntimeException(getMsg("pipesClientId=" + i11 + ": Couldn't start server -- read EOF before 'ready' byte.\n process isAlive=" + isAlive, eVar));
            }
        }
        if (i10 < 20000) {
            if (eVar.k() > 0) {
                LOG.l("pipesClientId={}: From forked process before start byte: {}", Integer.valueOf(this.pipesClientId), eVar.f(StandardCharsets.UTF_8));
            }
            return 1;
        }
        throw new RuntimeException(getMsg("pipesClientId=" + this.pipesClientId + ": Couldn't start server: read too many bytes before 'ready' byte.\n Make absolutely certain that your logger is not writing to stdout.\n", eVar));
    }

    private void pauseThenDestroy() {
        try {
            this.process.waitFor(200L, TimeUnit.MILLISECONDS);
        } finally {
            destroyForcibly();
        }
    }

    private boolean ping() {
        boolean isAlive;
        Process process = this.process;
        if (process != null) {
            isAlive = process.isAlive();
            if (isAlive) {
                try {
                    DataOutputStream dataOutputStream = this.output;
                    PipesServer.STATUS status = PipesServer.STATUS.PING;
                    dataOutputStream.write(status.getByte());
                    this.output.flush();
                    if (this.input.read() == status.getByte()) {
                        return true;
                    }
                } catch (IOException unused) {
                }
            }
        }
        return false;
    }

    private PipesResult readMessage(PipesResult.STATUS status) {
        byte[] bArr = new byte[this.input.readInt()];
        this.input.readFully(bArr);
        return new PipesResult(status, new String(bArr, StandardCharsets.UTF_8));
    }

    private PipesResult readResults(FetchEmitTuple fetchEmitTuple, long j10) {
        String str;
        int read = this.input.read();
        long currentTimeMillis = System.currentTimeMillis() - j10;
        try {
            PipesServer.STATUS lookup = PipesServer.STATUS.lookup(read);
            switch (AnonymousClass1.$SwitchMap$org$apache$tika$pipes$PipesServer$STATUS[lookup.ordinal()]) {
                case 1:
                    LOG.j("pipesClientId={} oom: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis));
                    return PipesResult.OOM;
                case 2:
                    LOG.j("pipesClientId={} server response timeout: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis));
                    return PipesResult.TIMEOUT;
                case 3:
                    LOG.j("pipesClientId={} emit exception: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis));
                    return readMessage(PipesResult.STATUS.EMIT_EXCEPTION);
                case 4:
                    LOG.j("pipesClientId={} emitter not found: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis));
                    return readMessage(PipesResult.STATUS.NO_EMITTER_FOUND);
                case 5:
                    LOG.j("pipesClientId={} fetcher not found: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis));
                    return readMessage(PipesResult.STATUS.NO_FETCHER_FOUND);
                case 6:
                    LOG.j("pipesClientId={} fetcher initialization exception: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis));
                    return readMessage(PipesResult.STATUS.FETCHER_INITIALIZATION_EXCEPTION);
                case 7:
                    LOG.j("pipesClientId={} fetch exception: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis));
                    return readMessage(PipesResult.STATUS.FETCH_EXCEPTION);
                case 8:
                    LOG.t("pipesClientId={} intermediate success: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis));
                    return deserializeIntermediateResult(fetchEmitTuple.getEmitKey(), fetchEmitTuple.getParseContext());
                case 9:
                    LOG.t("pipesClientId={} parse success: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis));
                    return deserializeEmitData();
                case 10:
                    return readMessage(PipesResult.STATUS.PARSE_EXCEPTION_NO_EMIT);
                case 11:
                    LOG.t("pipesClientId={} emit success: {} in {} ms", Integer.valueOf(this.pipesClientId), fetchEmitTuple.getId(), Long.valueOf(currentTimeMillis));
                    return PipesResult.EMIT_SUCCESS;
                case 12:
                    return readMessage(PipesResult.STATUS.EMIT_SUCCESS_PARSE_EXCEPTION);
                case 13:
                    return PipesResult.EMPTY_OUTPUT;
                case 14:
                case 15:
                case 16:
                case 17:
                    throw new IOException("Not expecting this status: " + lookup);
                default:
                    throw new IOException("Need to handle procesing for: " + lookup);
            }
        } catch (IllegalArgumentException e10) {
            if (read > -1) {
                str = String.format(Locale.US, "%02x", Byte.valueOf((byte) read));
            } else {
                str = "-1";
            }
            throw new IOException("problem reading response from server: " + str, e10);
        }
    }

    private void restart() {
        ProcessBuilder.Redirect redirect;
        boolean waitFor;
        if (this.process != null) {
            mf.c cVar = LOG;
            cVar.m("process still alive; trying to destroy it");
            destroyForcibly();
            Process process = this.process;
            TimeUnit timeUnit = TimeUnit.SECONDS;
            waitFor = process.waitFor(30L, timeUnit);
            if (!waitFor) {
                cVar.b("pipesClientId={}: process has not yet ended", Integer.valueOf(this.pipesClientId));
            }
            this.executorService.shutdownNow();
            if (!this.executorService.awaitTermination(30L, timeUnit)) {
                cVar.b("pipesClientId={}: executorService has not yet shutdown", Integer.valueOf(this.pipesClientId));
            }
            synchronized (this.executorServiceLock) {
                if (!this.closed) {
                    this.executorService = Executors.newFixedThreadPool(1);
                } else {
                    int i10 = this.pipesClientId;
                    throw new IllegalArgumentException("pipesClientId=" + i10 + ": PipesClient closed");
                }
            }
            cVar.a("pipesClientId={}: restarting process", Integer.valueOf(this.pipesClientId));
        } else {
            LOG.a("pipesClientId={}: starting process", Integer.valueOf(this.pipesClientId));
        }
        ProcessBuilder processBuilder = new ProcessBuilder(getCommandline());
        redirect = ProcessBuilder.Redirect.INHERIT;
        processBuilder.redirectError(redirect);
        try {
            this.process = processBuilder.start();
            this.input = new DataInputStream(this.process.getInputStream());
            this.output = new DataOutputStream(this.process.getOutputStream());
            final gf.e l10 = gf.e.j().l();
            FutureTask futureTask = new FutureTask(new Callable() { // from class: org.apache.tika.pipes.b
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Integer lambda$restart$1;
                    lambda$restart$1 = PipesClient.this.lambda$restart$1(l10);
                    return lambda$restart$1;
                }
            });
            long currentTimeMillis = System.currentTimeMillis();
            this.executorService.submit(futureTask);
            try {
                try {
                    try {
                        try {
                            futureTask.get(this.pipesConfig.getStartupTimeoutMillis(), TimeUnit.MILLISECONDS);
                        } catch (InterruptedException e10) {
                            destroyForcibly();
                            throw e10;
                        }
                    } catch (ExecutionException e11) {
                        mf.c cVar2 = LOG;
                        int i11 = this.pipesClientId;
                        cVar2.g("pipesClientId=" + i11 + ": couldn't start server", e11);
                        destroyForcibly();
                        throw new RuntimeException(e11);
                    }
                } catch (TimeoutException e12) {
                    LOG.p("pipesClientId={} didn't receive ready byte from server within StartupTimeoutMillis {}; ms elapsed {}; did read >{}<", Integer.valueOf(this.pipesClientId), Long.valueOf(this.pipesConfig.getStartupTimeoutMillis()), Long.valueOf(System.currentTimeMillis() - currentTimeMillis), l10.f(StandardCharsets.UTF_8));
                    destroyForcibly();
                    throw e12;
                }
            } finally {
                futureTask.cancel(true);
            }
        } catch (Exception e13) {
            LOG.g("failed to start client", e13);
            throw new FailedToStartClientException(e13);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.process != null) {
            try {
                destroyForcibly();
            } catch (InterruptedException unused) {
            }
        }
        synchronized (this.executorServiceLock) {
            ExecutorService executorService = this.executorService;
            if (executorService != null) {
                executorService.shutdownNow();
            }
            this.closed = true;
        }
    }

    public int getFilesProcessed() {
        return this.filesProcessed;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033 A[LOOP:0: B:12:0x0033->B:22:0x0033, LOOP_START, PHI: r2 
      PHI: (r2v1 boolean) = (r2v0 boolean), (r2v2 boolean) binds: [B:11:0x0031, B:22:0x0033] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.apache.tika.pipes.PipesResult process(org.apache.tika.pipes.FetchEmitTuple r7) {
        /*
            r6 = this;
            boolean r0 = r6.ping()
            r1 = 1
            r2 = 0
            if (r0 != 0) goto La
        L8:
            r0 = r1
            goto L31
        La:
            org.apache.tika.pipes.PipesConfigBase r0 = r6.pipesConfig
            int r0 = r0.getMaxFilesProcessedPerProcess()
            if (r0 <= 0) goto L30
            int r0 = r6.filesProcessed
            org.apache.tika.pipes.PipesConfigBase r3 = r6.pipesConfig
            int r3 = r3.getMaxFilesProcessedPerProcess()
            if (r0 < r3) goto L30
            mf.c r0 = org.apache.tika.pipes.PipesClient.LOG
            int r3 = r6.pipesClientId
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            int r4 = r6.filesProcessed
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
            java.lang.String r5 = "pipesClientId={}: restarting server after hitting max files: {}"
            r0.z(r5, r3, r4)
            goto L8
        L30:
            r0 = r2
        L31:
            if (r0 == 0) goto L5b
        L33:
            if (r2 != 0) goto L5b
            r6.restart()     // Catch: java.util.concurrent.TimeoutException -> L3a
            r2 = r1
            goto L33
        L3a:
            mf.c r0 = org.apache.tika.pipes.PipesClient.LOG
            int r3 = r6.pipesClientId
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            org.apache.tika.pipes.PipesConfigBase r4 = r6.pipesConfig
            long r4 = r4.getStartupTimeoutMillis()
            java.lang.Long r4 = java.lang.Long.valueOf(r4)
            java.lang.String r5 = "pipesClientId={}: couldn't restart within {} ms (startupTimeoutMillis)"
            r0.l(r5, r3, r4)
            org.apache.tika.pipes.PipesConfigBase r0 = r6.pipesConfig
            long r3 = r0.getSleepOnStartupTimeoutMillis()
            java.lang.Thread.sleep(r3)
            goto L33
        L5b:
            org.apache.tika.pipes.PipesResult r7 = r6.actuallyProcess(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.pipes.PipesClient.process(org.apache.tika.pipes.FetchEmitTuple):org.apache.tika.pipes.PipesResult");
    }
}
