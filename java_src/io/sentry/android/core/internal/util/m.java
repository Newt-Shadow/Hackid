package io.sentry.android.core.internal.util;

import android.content.Context;
import android.content.pm.PackageManager;
import io.sentry.ILogger;
import io.sentry.android.core.p0;
import io.sentry.j5;
import java.io.File;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public final class m {

    /* renamed from: g  reason: collision with root package name */
    private static final Charset f22360g = Charset.forName("UTF-8");

    /* renamed from: a  reason: collision with root package name */
    private final Context f22361a;

    /* renamed from: b  reason: collision with root package name */
    private final p0 f22362b;

    /* renamed from: c  reason: collision with root package name */
    private final ILogger f22363c;

    /* renamed from: d  reason: collision with root package name */
    private final String[] f22364d;

    /* renamed from: e  reason: collision with root package name */
    private final String[] f22365e;

    /* renamed from: f  reason: collision with root package name */
    private final Runtime f22366f;

    public m(Context context, p0 p0Var, ILogger iLogger) {
        this(context, p0Var, iLogger, new String[]{"/system/app/Superuser.apk", "/sbin/su", "/system/bin/su", "/system/xbin/su", "/data/local/xbin/su", "/data/local/bin/su", "/system/sd/xbin/su", "/system/bin/failsafe/su", "/data/local/su", "/su/bin/su", "/su/bin", "/system/xbin/daemonsu"}, new String[]{"com.devadvance.rootcloak", "com.devadvance.rootcloakplus", "com.koushikdutta.superuser", "com.thirdparty.superuser", "eu.chainfire.supersu", "com.noshufou.android.su"}, Runtime.getRuntime());
    }

    private boolean a() {
        String[] strArr;
        for (String str : this.f22364d) {
            try {
            } catch (RuntimeException e10) {
                this.f22363c.a(j5.ERROR, e10, "Error when trying to check if root file %s exists.", str);
            }
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    private boolean b(ILogger iLogger) {
        String[] strArr;
        PackageManager.PackageInfoFlags of2;
        p0 p0Var = new p0(iLogger);
        PackageManager packageManager = this.f22361a.getPackageManager();
        if (packageManager != null) {
            for (String str : this.f22365e) {
                try {
                    if (p0Var.d() >= 33) {
                        of2 = PackageManager.PackageInfoFlags.of(0L);
                        packageManager.getPackageInfo(str, of2);
                        return true;
                    }
                    packageManager.getPackageInfo(str, 0);
                    return true;
                } catch (PackageManager.NameNotFoundException unused) {
                }
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0055, code lost:
        if (0 == 0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0058, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean c() {
        /*
            r6 = this;
            java.lang.String r0 = "/system/xbin/which"
            java.lang.String r1 = "su"
            java.lang.String[] r0 = new java.lang.String[]{r0, r1}
            r1 = 0
            r2 = 0
            java.lang.Runtime r3 = r6.f22366f     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.lang.Process r2 = r3.exec(r0)     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.io.BufferedReader r0 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.io.InputStream r4 = r2.getInputStream()     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.nio.charset.Charset r5 = io.sentry.android.core.internal.util.m.f22360g     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            r3.<init>(r4, r5)     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            java.lang.String r3 = r0.readLine()     // Catch: java.lang.Throwable -> L30
            if (r3 == 0) goto L28
            r3 = 1
            goto L29
        L28:
            r3 = r1
        L29:
            r0.close()     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
            r2.destroy()
            return r3
        L30:
            r3 = move-exception
            r0.close()     // Catch: java.lang.Throwable -> L35
            goto L39
        L35:
            r0 = move-exception
            r3.addSuppressed(r0)     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
        L39:
            throw r3     // Catch: java.lang.Throwable -> L3a java.io.IOException -> L4a
        L3a:
            r0 = move-exception
            io.sentry.ILogger r3 = r6.f22363c     // Catch: java.lang.Throwable -> L59
            io.sentry.j5 r4 = io.sentry.j5.DEBUG     // Catch: java.lang.Throwable -> L59
            java.lang.String r5 = "Error when trying to check if SU exists."
            r3.b(r4, r5, r0)     // Catch: java.lang.Throwable -> L59
            if (r2 == 0) goto L58
        L46:
            r2.destroy()
            goto L58
        L4a:
            io.sentry.ILogger r0 = r6.f22363c     // Catch: java.lang.Throwable -> L59
            io.sentry.j5 r3 = io.sentry.j5.DEBUG     // Catch: java.lang.Throwable -> L59
            java.lang.String r4 = "SU isn't found on this Device."
            java.lang.Object[] r5 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> L59
            r0.c(r3, r4, r5)     // Catch: java.lang.Throwable -> L59
            if (r2 == 0) goto L58
            goto L46
        L58:
            return r1
        L59:
            r0 = move-exception
            if (r2 == 0) goto L5f
            r2.destroy()
        L5f:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.core.internal.util.m.c():boolean");
    }

    private boolean d() {
        String a10 = this.f22362b.a();
        if (a10 != null && a10.contains("test-keys")) {
            return true;
        }
        return false;
    }

    public boolean e() {
        if (!d() && !a() && !c() && !b(this.f22363c)) {
            return false;
        }
        return true;
    }

    m(Context context, p0 p0Var, ILogger iLogger, String[] strArr, String[] strArr2, Runtime runtime) {
        this.f22361a = (Context) io.sentry.util.q.c(context, "The application context is required.");
        this.f22362b = (p0) io.sentry.util.q.c(p0Var, "The BuildInfoProvider is required.");
        this.f22363c = (ILogger) io.sentry.util.q.c(iLogger, "The Logger is required.");
        this.f22364d = (String[]) io.sentry.util.q.c(strArr, "The root Files are required.");
        this.f22365e = (String[]) io.sentry.util.q.c(strArr2, "The root packages are required.");
        this.f22366f = (Runtime) io.sentry.util.q.c(runtime, "The Runtime is required.");
    }
}
