package org.apache.tika.utils;

import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
/* loaded from: classes2.dex */
public class ProcessUtils {
    private static final ConcurrentHashMap<String, Process> PROCESS_MAP = new ConcurrentHashMap<>();

    static {
        Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() { // from class: org.apache.tika.utils.j
            @Override // java.lang.Runnable
            public final void run() {
                ProcessUtils.lambda$static$0();
            }
        }));
    }

    public static String escapeCommandLine(String str) {
        if (str == null) {
            return str;
        }
        if (str.contains(StringUtils.SPACE) && SystemUtils.IS_OS_WINDOWS && !str.startsWith("\"") && !str.endsWith("\"")) {
            return "\"" + str + "\"";
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.tika.utils.FileProcessResult execute(java.lang.ProcessBuilder r11, long r12, int r14, int r15) {
        /*
            java.lang.String r0 = "\n"
            r1 = 0
            java.lang.Process r11 = r11.start()     // Catch: java.lang.Throwable -> Lc5
            java.lang.String r1 = register(r11)     // Catch: java.lang.Throwable -> Lc0
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lc0
            org.apache.tika.utils.StreamGobbler r4 = new org.apache.tika.utils.StreamGobbler     // Catch: java.lang.Throwable -> Lc0
            java.io.InputStream r5 = r11.getInputStream()     // Catch: java.lang.Throwable -> Lc0
            r4.<init>(r5, r14)     // Catch: java.lang.Throwable -> Lc0
            org.apache.tika.utils.StreamGobbler r14 = new org.apache.tika.utils.StreamGobbler     // Catch: java.lang.Throwable -> Lc0
            java.io.InputStream r5 = r11.getErrorStream()     // Catch: java.lang.Throwable -> Lc0
            r14.<init>(r5, r15)     // Catch: java.lang.Throwable -> Lc0
            java.lang.Thread r15 = new java.lang.Thread     // Catch: java.lang.Throwable -> Lc0
            r15.<init>(r4)     // Catch: java.lang.Throwable -> Lc0
            r15.start()     // Catch: java.lang.Throwable -> Lc0
            java.lang.Thread r5 = new java.lang.Thread     // Catch: java.lang.Throwable -> Lc0
            r5.<init>(r14)     // Catch: java.lang.Throwable -> Lc0
            r5.start()     // Catch: java.lang.Throwable -> Lc0
            r6 = 0
            r7 = -1
            java.util.concurrent.TimeUnit r9 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L6c java.lang.InterruptedException -> L74
            boolean r12 = org.apache.tika.parser.external.a.a(r11, r12, r9)     // Catch: java.lang.Throwable -> L6c java.lang.InterruptedException -> L74
            long r7 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L6c java.lang.InterruptedException -> L75
            long r7 = r7 - r2
            r2 = 1000(0x3e8, double:4.94E-321)
            if (r12 == 0) goto L4e
            int r13 = r11.exitValue()     // Catch: java.lang.Throwable -> L6c java.lang.InterruptedException -> L75
            r15.join(r2)     // Catch: java.lang.Throwable -> L6c java.lang.InterruptedException -> L75
            r5.join(r2)     // Catch: java.lang.Throwable -> L6c java.lang.InterruptedException -> L75
            goto L65
        L4e:
            org.apache.tika.fork.c.a(r11)     // Catch: java.lang.Throwable -> L6c java.lang.InterruptedException -> L75
            r15.join(r2)     // Catch: java.lang.Throwable -> L6c java.lang.InterruptedException -> L75
            r5.join(r2)     // Catch: java.lang.Throwable -> L6c java.lang.InterruptedException -> L75
            r2 = 500(0x1f4, double:2.47E-321)
            boolean r13 = org.apache.tika.parser.external.a.a(r11, r2, r9)     // Catch: java.lang.Throwable -> L6c java.lang.InterruptedException -> L75
            if (r13 == 0) goto L64
            int r13 = r11.exitValue()     // Catch: java.lang.IllegalThreadStateException -> L64 java.lang.Throwable -> L6c java.lang.InterruptedException -> L75
            goto L65
        L64:
            r13 = -1
        L65:
            r15.interrupt()     // Catch: java.lang.Throwable -> Lc0
            r5.interrupt()     // Catch: java.lang.Throwable -> Lc0
            goto L7d
        L6c:
            r12 = move-exception
            r15.interrupt()     // Catch: java.lang.Throwable -> Lc0
            r5.interrupt()     // Catch: java.lang.Throwable -> Lc0
            throw r12     // Catch: java.lang.Throwable -> Lc0
        L74:
            r12 = r6
        L75:
            r15.interrupt()     // Catch: java.lang.Throwable -> Lc0
            r5.interrupt()     // Catch: java.lang.Throwable -> Lc0
            r13 = -1000(0xfffffffffffffc18, float:NaN)
        L7d:
            org.apache.tika.utils.FileProcessResult r15 = new org.apache.tika.utils.FileProcessResult     // Catch: java.lang.Throwable -> Lc0
            r15.<init>()     // Catch: java.lang.Throwable -> Lc0
            r15.processTimeMillis = r7     // Catch: java.lang.Throwable -> Lc0
            long r2 = r14.getStreamLength()     // Catch: java.lang.Throwable -> Lc0
            r15.stderrLength = r2     // Catch: java.lang.Throwable -> Lc0
            long r2 = r4.getStreamLength()     // Catch: java.lang.Throwable -> Lc0
            r15.stdoutLength = r2     // Catch: java.lang.Throwable -> Lc0
            if (r12 != 0) goto L93
            r6 = 1
        L93:
            r15.isTimeout = r6     // Catch: java.lang.Throwable -> Lc0
            r15.exitValue = r13     // Catch: java.lang.Throwable -> Lc0
            java.util.List r12 = r4.getLines()     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r12 = org.apache.tika.utils.StringUtils.joinWith(r0, r12)     // Catch: java.lang.Throwable -> Lc0
            r15.stdout = r12     // Catch: java.lang.Throwable -> Lc0
            java.util.List r12 = r14.getLines()     // Catch: java.lang.Throwable -> Lc0
            java.lang.String r12 = org.apache.tika.utils.StringUtils.joinWith(r0, r12)     // Catch: java.lang.Throwable -> Lc0
            r15.stderr = r12     // Catch: java.lang.Throwable -> Lc0
            boolean r12 = r4.getIsTruncated()     // Catch: java.lang.Throwable -> Lc0
            r15.stdoutTruncated = r12     // Catch: java.lang.Throwable -> Lc0
            boolean r12 = r14.getIsTruncated()     // Catch: java.lang.Throwable -> Lc0
            r15.stderrTruncated = r12     // Catch: java.lang.Throwable -> Lc0
            org.apache.tika.fork.c.a(r11)
            if (r1 == 0) goto Lbf
            release(r1)
        Lbf:
            return r15
        Lc0:
            r12 = move-exception
            r10 = r1
            r1 = r11
            r11 = r10
            goto Lc7
        Lc5:
            r12 = move-exception
            r11 = r1
        Lc7:
            if (r1 == 0) goto Lcc
            org.apache.tika.fork.c.a(r1)
        Lcc:
            if (r11 == 0) goto Ld1
            release(r11)
        Ld1:
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.utils.ProcessUtils.execute(java.lang.ProcessBuilder, long, int, int):org.apache.tika.utils.FileProcessResult");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$0() {
        PROCESS_MAP.forEachValue(1L, new Consumer() { // from class: org.apache.tika.utils.i
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                ((Process) obj).destroyForcibly();
            }
        });
    }

    private static String register(Process process) {
        String uuid = UUID.randomUUID().toString();
        PROCESS_MAP.put(uuid, process);
        return uuid;
    }

    private static Process release(String str) {
        return PROCESS_MAP.remove(str);
    }

    public static String unescapeCommandLine(String str) {
        if (str.contains(StringUtils.SPACE) && SystemUtils.IS_OS_WINDOWS && str.startsWith("\"") && str.endsWith("\"")) {
            return str.substring(1, str.length() - 1);
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.tika.utils.FileProcessResult execute(java.lang.ProcessBuilder r9, long r10, java.nio.file.Path r12, int r13) {
        /*
            java.nio.file.Path r0 = org.apache.tika.utils.f.a(r12)
            r1 = 0
            java.nio.file.LinkOption[] r2 = new java.nio.file.LinkOption[r1]
            boolean r0 = org.apache.tika.pipes.fetcher.fs.d.a(r0, r2)
            if (r0 != 0) goto L16
            java.nio.file.Path r0 = org.apache.tika.utils.f.a(r12)
            java.nio.file.attribute.FileAttribute[] r2 = new java.nio.file.attribute.FileAttribute[r1]
            org.apache.tika.utils.g.a(r0, r2)
        L16:
            java.io.File r0 = org.apache.tika.fork.b.a(r12)
            org.apache.tika.utils.h.a(r9, r0)
            r0 = 0
            java.lang.Process r9 = r9.start()     // Catch: java.lang.Throwable -> L9f
            java.lang.String r0 = register(r9)     // Catch: java.lang.Throwable -> L9a
            long r2 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> L9a
            org.apache.tika.utils.StreamGobbler r4 = new org.apache.tika.utils.StreamGobbler     // Catch: java.lang.Throwable -> L9a
            java.io.InputStream r5 = r9.getErrorStream()     // Catch: java.lang.Throwable -> L9a
            r4.<init>(r5, r13)     // Catch: java.lang.Throwable -> L9a
            java.lang.Thread r13 = new java.lang.Thread     // Catch: java.lang.Throwable -> L9a
            r13.<init>(r4)     // Catch: java.lang.Throwable -> L9a
            r13.start()     // Catch: java.lang.Throwable -> L9a
            r5 = -1
            java.util.concurrent.TimeUnit r7 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.InterruptedException -> L5c java.lang.Throwable -> L9a
            boolean r10 = org.apache.tika.parser.external.a.a(r9, r10, r7)     // Catch: java.lang.InterruptedException -> L5c java.lang.Throwable -> L9a
            long r5 = java.lang.System.currentTimeMillis()     // Catch: java.lang.InterruptedException -> L5d java.lang.Throwable -> L9a
            long r5 = r5 - r2
            r2 = 1000(0x3e8, double:4.94E-321)
            if (r10 == 0) goto L54
            int r11 = r9.exitValue()     // Catch: java.lang.InterruptedException -> L5d java.lang.Throwable -> L9a
            r13.join(r2)     // Catch: java.lang.InterruptedException -> L5d java.lang.Throwable -> L9a
            goto L5f
        L54:
            org.apache.tika.fork.c.a(r9)     // Catch: java.lang.InterruptedException -> L5d java.lang.Throwable -> L9a
            r13.join(r2)     // Catch: java.lang.InterruptedException -> L5d java.lang.Throwable -> L9a
            r11 = -1
            goto L5f
        L5c:
            r10 = r1
        L5d:
            r11 = -1000(0xfffffffffffffc18, float:NaN)
        L5f:
            org.apache.tika.utils.FileProcessResult r13 = new org.apache.tika.utils.FileProcessResult     // Catch: java.lang.Throwable -> L9a
            r13.<init>()     // Catch: java.lang.Throwable -> L9a
            r13.processTimeMillis = r5     // Catch: java.lang.Throwable -> L9a
            long r2 = r4.getStreamLength()     // Catch: java.lang.Throwable -> L9a
            r13.stderrLength = r2     // Catch: java.lang.Throwable -> L9a
            long r2 = org.apache.tika.io.g.a(r12)     // Catch: java.lang.Throwable -> L9a
            r13.stdoutLength = r2     // Catch: java.lang.Throwable -> L9a
            if (r10 != 0) goto L76
            r10 = 1
            goto L77
        L76:
            r10 = r1
        L77:
            r13.isTimeout = r10     // Catch: java.lang.Throwable -> L9a
            r13.exitValue = r11     // Catch: java.lang.Throwable -> L9a
            java.lang.String r10 = ""
            r13.stdout = r10     // Catch: java.lang.Throwable -> L9a
            java.lang.String r10 = "\n"
            java.util.List r11 = r4.getLines()     // Catch: java.lang.Throwable -> L9a
            java.lang.String r10 = org.apache.tika.utils.StringUtils.joinWith(r10, r11)     // Catch: java.lang.Throwable -> L9a
            r13.stderr = r10     // Catch: java.lang.Throwable -> L9a
            r13.stdoutTruncated = r1     // Catch: java.lang.Throwable -> L9a
            boolean r10 = r4.getIsTruncated()     // Catch: java.lang.Throwable -> L9a
            r13.stderrTruncated = r10     // Catch: java.lang.Throwable -> L9a
            org.apache.tika.fork.c.a(r9)
            release(r0)
            return r13
        L9a:
            r10 = move-exception
            r8 = r0
            r0 = r9
            r9 = r8
            goto La1
        L9f:
            r10 = move-exception
            r9 = r0
        La1:
            if (r0 == 0) goto La6
            org.apache.tika.fork.c.a(r0)
        La6:
            release(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.tika.utils.ProcessUtils.execute(java.lang.ProcessBuilder, long, java.nio.file.Path, int):org.apache.tika.utils.FileProcessResult");
    }
}
