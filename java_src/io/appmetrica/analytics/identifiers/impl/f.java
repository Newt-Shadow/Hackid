package io.appmetrica.analytics.identifiers.impl;

import android.content.Context;
import android.content.Intent;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final e f17902a;

    /* renamed from: b  reason: collision with root package name */
    public final id.l f17903b;

    /* renamed from: c  reason: collision with root package name */
    public final String f17904c;

    /* renamed from: d  reason: collision with root package name */
    public final SafePackageManager f17905d;

    public f(e eVar, id.l lVar, String str, SafePackageManager safePackageManager) {
        this.f17902a = eVar;
        this.f17903b = lVar;
        this.f17904c = str;
        this.f17905d = safePackageManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(android.content.Context r5) {
        /*
            r4 = this;
            io.appmetrica.analytics.identifiers.impl.e r0 = r4.f17902a
            android.content.Intent r0 = r0.f17899a
            io.appmetrica.analytics.coreutils.internal.services.SafePackageManager r1 = r4.f17905d
            r2 = 0
            android.content.pm.ResolveInfo r0 = r1.resolveService(r5, r0, r2)
            if (r0 == 0) goto L59
            io.appmetrica.analytics.identifiers.impl.e r0 = r4.f17902a     // Catch: java.lang.Throwable -> L34
            android.content.Intent r1 = r0.f17899a     // Catch: java.lang.Throwable -> L34
            r2 = 1
            boolean r5 = r5.bindService(r1, r0, r2)     // Catch: java.lang.Throwable -> L34
            if (r5 == 0) goto L34
            io.appmetrica.analytics.identifiers.impl.e r5 = r4.f17902a     // Catch: java.lang.Throwable -> L34
            android.os.IBinder r0 = r5.f17900b     // Catch: java.lang.Throwable -> L34
            if (r0 != 0) goto L31
            java.lang.Object r0 = r5.f17901c     // Catch: java.lang.Throwable -> L34
            monitor-enter(r0)     // Catch: java.lang.Throwable -> L34
            android.os.IBinder r1 = r5.f17900b     // Catch: java.lang.Throwable -> L2e
            if (r1 != 0) goto L2c
            java.lang.Object r1 = r5.f17901c     // Catch: java.lang.InterruptedException -> L2c java.lang.Throwable -> L2e
            r2 = 3000(0xbb8, double:1.482E-320)
            r1.wait(r2)     // Catch: java.lang.InterruptedException -> L2c java.lang.Throwable -> L2e
        L2c:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2e
            goto L31
        L2e:
            r5 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L2e
            throw r5     // Catch: java.lang.Throwable -> L34
        L31:
            android.os.IBinder r5 = r5.f17900b     // Catch: java.lang.Throwable -> L34
            goto L35
        L34:
            r5 = 0
        L35:
            if (r5 == 0) goto L3e
            id.l r0 = r4.f17903b
            java.lang.Object r5 = r0.invoke(r5)
            return r5
        L3e:
            io.appmetrica.analytics.identifiers.impl.g r5 = new io.appmetrica.analytics.identifiers.impl.g
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "could not bind to "
            r0.<init>(r1)
            java.lang.String r1 = r4.f17904c
            r0.append(r1)
            java.lang.String r1 = " services"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5.<init>(r0)
            throw r5
        L59:
            io.appmetrica.analytics.identifiers.impl.l r5 = new io.appmetrica.analytics.identifiers.impl.l
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "could not resolve "
            r0.<init>(r1)
            java.lang.String r1 = r4.f17904c
            r0.append(r1)
            java.lang.String r1 = " services"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r5.<init>(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.identifiers.impl.f.a(android.content.Context):java.lang.Object");
    }

    public final void b(Context context) {
        try {
            this.f17902a.a(context);
        } catch (Throwable unused) {
        }
    }

    public f(Intent intent, id.l lVar, String str) {
        this(new e(intent, str), lVar, str, new SafePackageManager());
    }
}
