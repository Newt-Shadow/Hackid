package org.apache.tika.parser.external;

import cf.g;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.tika.io.TemporaryResources;
import org.apache.tika.io.TikaInputStream;
import org.apache.tika.metadata.Metadata;
import org.apache.tika.mime.MediaType;
import org.apache.tika.parser.ParseContext;
import org.apache.tika.parser.Parser;
import org.apache.tika.sax.XHTMLContentHandler;
import org.apache.tika.utils.StringUtils;
import org.xml.sax.ContentHandler;
/* loaded from: classes2.dex */
public class ExternalParser implements Parser {
    public static final String INPUT_FILE_TOKEN = "${INPUT}";
    private static final mf.c LOG = mf.e.l(ExternalParser.class);
    public static final String OUTPUT_FILE_TOKEN = "${OUTPUT}";
    private static final long serialVersionUID = -1079128990650687037L;
    private final long timeoutMs = 60000;
    private Set<MediaType> supportedTypes = Collections.emptySet();
    private Map<Pattern, String> metadataPatterns = null;
    private String[] command = {"cat"};
    private LineConsumer ignoredLineConsumer = LineConsumer.NULL;

    /* loaded from: classes2.dex */
    public interface LineConsumer extends Serializable {
        public static final LineConsumer NULL = new e();

        static /* synthetic */ void lambda$static$e2402a94$1(String str) {
        }

        void consume(String str);
    }

    public static boolean check(String str, int... iArr) {
        return check(new String[]{str}, iArr);
    }

    private void extractMetadata(final InputStream inputStream, final Metadata metadata) {
        Thread thread = new Thread(new Runnable() { // from class: org.apache.tika.parser.external.b
            @Override // java.lang.Runnable
            public final void run() {
                ExternalParser.this.lambda$extractMetadata$2(inputStream, metadata);
            }
        });
        thread.start();
        try {
            thread.join();
        } catch (InterruptedException unused) {
        }
    }

    private void extractOutput(InputStream inputStream, XHTMLContentHandler xHTMLContentHandler) {
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, StandardCharsets.UTF_8);
        try {
            xHTMLContentHandler.startDocument();
            xHTMLContentHandler.startElement("p");
            char[] cArr = new char[1024];
            while (true) {
                int read = inputStreamReader.read(cArr);
                if (read != -1) {
                    xHTMLContentHandler.characters(cArr, 0, read);
                } else {
                    xHTMLContentHandler.endElement("p");
                    xHTMLContentHandler.endDocument();
                    inputStreamReader.close();
                    return;
                }
            }
        } catch (Throwable th) {
            try {
                inputStreamReader.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static void ignoreStream(InputStream inputStream) {
        ignoreStream(inputStream, true);
    }

    public /* synthetic */ void lambda$extractMetadata$2(InputStream inputStream, Metadata metadata) {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, StandardCharsets.UTF_8));
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                boolean z10 = false;
                for (Map.Entry<Pattern, String> entry : this.metadataPatterns.entrySet()) {
                    Matcher matcher = entry.getKey().matcher(readLine);
                    if (matcher.find()) {
                        if (entry.getValue() != null && !entry.getValue().equals("")) {
                            metadata.add(entry.getValue(), matcher.group(1));
                        } else {
                            metadata.add(matcher.group(1), matcher.group(2));
                        }
                        z10 = true;
                    }
                }
                if (!z10) {
                    this.ignoredLineConsumer.consume(readLine);
                }
            } catch (IOException unused) {
            } catch (Throwable th) {
                g.m(bufferedReader);
                g.k(inputStream);
                throw th;
            }
        }
        g.m(bufferedReader);
        g.k(inputStream);
    }

    public static /* synthetic */ void lambda$ignoreStream$0(InputStream inputStream) {
        try {
            g.n(inputStream, gf.b.f16430a);
        } catch (IOException unused) {
        } catch (Throwable th) {
            g.k(inputStream);
            throw th;
        }
        g.k(inputStream);
    }

    public static /* synthetic */ void lambda$sendInput$1(Process process, InputStream inputStream) {
        try {
            g.n(inputStream, process.getOutputStream());
        } catch (IOException unused) {
        }
    }

    private void sendInput(final Process process, final InputStream inputStream) {
        Thread thread = new Thread(new Runnable() { // from class: org.apache.tika.parser.external.d
            @Override // java.lang.Runnable
            public final void run() {
                ExternalParser.lambda$sendInput$1(process, inputStream);
            }
        });
        thread.start();
        try {
            thread.join();
        } catch (InterruptedException unused) {
        }
    }

    public String[] getCommand() {
        return this.command;
    }

    public LineConsumer getIgnoredLineConsumer() {
        return this.ignoredLineConsumer;
    }

    public Map<Pattern, String> getMetadataExtractionPatterns() {
        return this.metadataPatterns;
    }

    @Override // org.apache.tika.parser.Parser
    public Set<MediaType> getSupportedTypes(ParseContext parseContext) {
        return getSupportedTypes();
    }

    @Override // org.apache.tika.parser.Parser
    public void parse(InputStream inputStream, ContentHandler contentHandler, Metadata metadata, ParseContext parseContext) {
        XHTMLContentHandler xHTMLContentHandler = new XHTMLContentHandler(contentHandler, metadata);
        TemporaryResources temporaryResources = new TemporaryResources();
        try {
            parse(TikaInputStream.get(inputStream, temporaryResources, metadata), xHTMLContentHandler, metadata, temporaryResources);
        } finally {
            temporaryResources.dispose();
        }
    }

    public void setCommand(String... strArr) {
        this.command = strArr;
    }

    public void setIgnoredLineConsumer(LineConsumer lineConsumer) {
        this.ignoredLineConsumer = lineConsumer;
    }

    public void setMetadataExtractionPatterns(Map<Pattern, String> map) {
        this.metadataPatterns = map;
    }

    public void setSupportedTypes(Set<MediaType> set) {
        this.supportedTypes = Collections.unmodifiableSet(new HashSet(set));
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x00c0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean check(java.lang.String[] r7, int... r8) {
        /*
            int r0 = r8.length
            if (r0 != 0) goto L9
            r8 = 127(0x7f, float:1.78E-43)
            int[] r8 = new int[]{r8}
        L9:
            r0 = 0
            r1 = 0
            java.lang.Runtime r2 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            java.lang.Process r1 = r2.exec(r7)     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            java.io.InputStream r2 = r1.getErrorStream()     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            java.lang.Thread r2 = ignoreStream(r2, r0)     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            java.io.InputStream r3 = r1.getInputStream()     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            java.lang.Thread r3 = ignoreStream(r3, r0)     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            r2.join()     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            r3.join()     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            r3 = 60000(0xea60, double:2.9644E-319)
            boolean r2 = org.apache.tika.parser.external.a.a(r1, r3, r2)     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            if (r2 == 0) goto L59
            int r2 = r1.exitValue()     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            mf.c r3 = org.apache.tika.parser.external.ExternalParser.LOG     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            java.lang.String r4 = "exit value for {}: {}"
            r5 = r7[r0]     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            java.lang.Integer r6 = java.lang.Integer.valueOf(r2)     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            r3.d(r4, r5, r6)     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            int r3 = r8.length     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            r4 = r0
        L47:
            if (r4 >= r3) goto L54
            r5 = r8[r4]     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            if (r2 != r5) goto L51
            org.apache.tika.fork.c.a(r1)
            return r0
        L51:
            int r4 = r4 + 1
            goto L47
        L54:
            org.apache.tika.fork.c.a(r1)
            r7 = 1
            return r7
        L59:
            java.util.concurrent.TimeoutException r8 = new java.util.concurrent.TimeoutException     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            r8.<init>()     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
            throw r8     // Catch: java.lang.Throwable -> L5f java.lang.Error -> L61 java.lang.SecurityException -> L9f java.util.concurrent.TimeoutException -> La1 java.lang.InterruptedException -> La3 java.io.IOException -> La5
        L5f:
            r7 = move-exception
            goto Lc4
        L61:
            r8 = move-exception
            java.lang.String r2 = r8.getMessage()     // Catch: java.lang.Throwable -> L5f
            if (r2 == 0) goto L9e
            java.lang.String r2 = r8.getMessage()     // Catch: java.lang.Throwable -> L5f
            java.lang.String r3 = "posix_spawn"
            boolean r2 = r2.contains(r3)     // Catch: java.lang.Throwable -> L5f
            if (r2 != 0) goto L80
            java.lang.String r2 = r8.getMessage()     // Catch: java.lang.Throwable -> L5f
            java.lang.String r3 = "UNIXProcess"
            boolean r2 = r2.contains(r3)     // Catch: java.lang.Throwable -> L5f
            if (r2 == 0) goto L9e
        L80:
            mf.c r2 = org.apache.tika.parser.external.ExternalParser.LOG     // Catch: java.lang.Throwable -> L5f
            r7 = r7[r0]     // Catch: java.lang.Throwable -> L5f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5f
            r3.<init>()     // Catch: java.lang.Throwable -> L5f
            java.lang.String r4 = "(TIKA-1526): exception trying to run: "
            r3.append(r4)     // Catch: java.lang.Throwable -> L5f
            r3.append(r7)     // Catch: java.lang.Throwable -> L5f
            java.lang.String r7 = r3.toString()     // Catch: java.lang.Throwable -> L5f
            r2.v(r7, r8)     // Catch: java.lang.Throwable -> L5f
            if (r1 == 0) goto L9d
            org.apache.tika.fork.c.a(r1)
        L9d:
            return r0
        L9e:
            throw r8     // Catch: java.lang.Throwable -> L5f
        L9f:
            r7 = move-exception
            throw r7     // Catch: java.lang.Throwable -> L5f
        La1:
            r8 = move-exception
            goto La6
        La3:
            r8 = move-exception
            goto La6
        La5:
            r8 = move-exception
        La6:
            mf.c r2 = org.apache.tika.parser.external.ExternalParser.LOG     // Catch: java.lang.Throwable -> L5f
            r7 = r7[r0]     // Catch: java.lang.Throwable -> L5f
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5f
            r3.<init>()     // Catch: java.lang.Throwable -> L5f
            java.lang.String r4 = "exception trying to run  "
            r3.append(r4)     // Catch: java.lang.Throwable -> L5f
            r3.append(r7)     // Catch: java.lang.Throwable -> L5f
            java.lang.String r7 = r3.toString()     // Catch: java.lang.Throwable -> L5f
            r2.v(r7, r8)     // Catch: java.lang.Throwable -> L5f
            if (r1 == 0) goto Lc3
            org.apache.tika.fork.c.a(r1)
        Lc3:
            return r0
        Lc4:
            if (r1 == 0) goto Lc9
            org.apache.tika.fork.c.a(r1)
        Lc9:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.parser.external.ExternalParser.check(java.lang.String[], int[]):boolean");
    }

    private static Thread ignoreStream(final InputStream inputStream, boolean z10) {
        Thread thread = new Thread(new Runnable() { // from class: org.apache.tika.parser.external.c
            @Override // java.lang.Runnable
            public final void run() {
                ExternalParser.lambda$ignoreStream$0(inputStream);
            }
        });
        thread.start();
        if (z10) {
            try {
                thread.join();
            } catch (InterruptedException unused) {
            }
        }
        return thread;
    }

    public Set<MediaType> getSupportedTypes() {
        return this.supportedTypes;
    }

    private void parse(TikaInputStream tikaInputStream, XHTMLContentHandler xHTMLContentHandler, Metadata metadata, TemporaryResources temporaryResources) {
        String[] strArr;
        Process exec;
        Map<Pattern, String> map = this.metadataPatterns;
        boolean z10 = (map == null || map.isEmpty()) ? false : true;
        String[] strArr2 = this.command;
        if (strArr2.length == 1) {
            strArr = strArr2[0].split(StringUtils.SPACE);
        } else {
            String[] strArr3 = new String[strArr2.length];
            System.arraycopy(strArr2, 0, strArr3, 0, strArr2.length);
            strArr = strArr3;
        }
        Process process = null;
        boolean z11 = true;
        boolean z12 = true;
        File file = null;
        for (int i10 = 0; i10 < strArr.length; i10++) {
            if (strArr[i10].contains(INPUT_FILE_TOKEN)) {
                strArr[i10] = strArr[i10].replace(INPUT_FILE_TOKEN, tikaInputStream.getFile().getPath());
                z11 = false;
            }
            if (strArr[i10].contains(OUTPUT_FILE_TOKEN)) {
                file = temporaryResources.createTemporaryFile();
                strArr[i10] = strArr[i10].replace(OUTPUT_FILE_TOKEN, file.getPath());
                z12 = false;
            }
        }
        try {
            if (strArr.length == 1) {
                exec = Runtime.getRuntime().exec(strArr[0]);
            } else {
                exec = Runtime.getRuntime().exec(strArr);
            }
            process = exec;
        } catch (Exception e10) {
            LOG.u("problem with process exec", e10);
        }
        try {
            if (z11) {
                sendInput(process, tikaInputStream);
            } else {
                process.getOutputStream().close();
            }
            InputStream inputStream = process.getInputStream();
            InputStream errorStream = process.getErrorStream();
            if (z10) {
                extractMetadata(errorStream, metadata);
                if (z12) {
                    extractOutput(inputStream, xHTMLContentHandler);
                } else {
                    extractMetadata(inputStream, metadata);
                }
            } else {
                ignoreStream(errorStream);
                if (z12) {
                    extractOutput(inputStream, xHTMLContentHandler);
                } else {
                    ignoreStream(inputStream);
                }
            }
            if (z12) {
                return;
            }
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                extractOutput(fileInputStream, xHTMLContentHandler);
                fileInputStream.close();
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } finally {
            try {
                process.waitFor();
            } catch (InterruptedException unused) {
            }
        }
    }
}
