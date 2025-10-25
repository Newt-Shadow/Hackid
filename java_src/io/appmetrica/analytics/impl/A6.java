package io.appmetrica.analytics.impl;

import android.content.Context;
/* loaded from: classes2.dex */
public final class A6 {

    /* renamed from: a  reason: collision with root package name */
    public final C1341ma f17933a;

    /* renamed from: b  reason: collision with root package name */
    public final C1536u6 f17934b;

    /* renamed from: c  reason: collision with root package name */
    public final Context f17935c;

    /* renamed from: d  reason: collision with root package name */
    public final C1316la f17936d;

    public A6(Context context) {
        this(context, new C1341ma(), new C1536u6(), C1316la.a(context));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:3|(5:(9:5|(2:7|(1:9)(1:13))|14|15|16|18|19|20|21)(1:27)|18|19|20|21)|(1:11)|14|15|16) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0097, code lost:
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(io.appmetrica.analytics.impl.C1597wh r6) {
        /*
            r5 = this;
            android.content.Context r0 = r5.f17935c
            java.io.File r0 = io.appmetrica.analytics.coreutils.internal.io.FileUtils.getCrashesDirectory(r0)
            io.appmetrica.analytics.impl.u6 r1 = r5.f17934b
            r1.getClass()
            if (r0 != 0) goto Lf
            goto L9e
        Lf:
            boolean r1 = r0.exists()
            if (r1 == 0) goto L27
            boolean r1 = r0.isDirectory()
            if (r1 == 0) goto L1c
            goto L2d
        L1c:
            boolean r1 = r0.delete()
            if (r1 == 0) goto L9e
            boolean r1 = r0.mkdir()
            goto L2b
        L27:
            boolean r1 = r0.mkdir()
        L2b:
            if (r1 == 0) goto L9e
        L2d:
            io.appmetrica.analytics.impl.Gh r1 = r6.f20870e
            io.appmetrica.analytics.impl.yf r1 = r1.f19319a
            android.content.ContentValues r2 = r1.f20987a
            java.lang.String r3 = "PROCESS_CFG_PROCESS_ID"
            java.lang.Integer r2 = r2.getAsInteger(r3)
            android.content.ContentValues r1 = r1.f20987a
            java.lang.String r3 = "PROCESS_CFG_PROCESS_SESSION_ID"
            java.lang.String r1 = r1.getAsString(r3)
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            r3.append(r2)
            java.lang.String r2 = "-"
            r3.append(r2)
            r3.append(r1)
            java.lang.String r1 = r3.toString()
            io.appmetrica.analytics.impl.la r2 = r5.f17936d
            io.appmetrica.analytics.impl.I9 r2 = r2.a(r1)
            java.util.concurrent.locks.ReentrantLock r3 = r2.f18380a     // Catch: java.lang.Throwable -> L97
            r3.lock()     // Catch: java.lang.Throwable -> L97
            io.appmetrica.analytics.impl.ka r3 = r2.f18381b     // Catch: java.lang.Throwable -> L97
            r3.a()     // Catch: java.lang.Throwable -> L97
            io.appmetrica.analytics.impl.ma r3 = r5.f17933a     // Catch: java.lang.Throwable -> L97
            r3.getClass()     // Catch: java.lang.Throwable -> L97
            java.io.File r3 = new java.io.File     // Catch: java.lang.Throwable -> L97
            r3.<init>(r0, r1)     // Catch: java.lang.Throwable -> L97
            java.io.PrintWriter r0 = new java.io.PrintWriter     // Catch: java.lang.Throwable -> L97
            java.io.BufferedOutputStream r1 = new java.io.BufferedOutputStream     // Catch: java.lang.Throwable -> L97
            java.io.FileOutputStream r4 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L97
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L97
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L97
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L97
            io.appmetrica.analytics.impl.vb r1 = new io.appmetrica.analytics.impl.vb     // Catch: java.lang.Throwable -> L98
            io.appmetrica.analytics.impl.e6 r3 = r6.f20866a     // Catch: java.lang.Throwable -> L98
            io.appmetrica.analytics.impl.Gh r4 = r6.f20870e     // Catch: java.lang.Throwable -> L98
            java.util.HashMap r6 = r6.f20869d     // Catch: java.lang.Throwable -> L98
            r1.<init>(r3, r4, r6)     // Catch: java.lang.Throwable -> L98
            java.lang.String r6 = r1.k()     // Catch: java.lang.Throwable -> L98
            r0.write(r6)     // Catch: java.lang.Throwable -> L98
            io.appmetrica.analytics.impl.Rn.a(r0)
            r2.c()
            goto L9e
        L97:
            r0 = 0
        L98:
            io.appmetrica.analytics.impl.Rn.a(r0)
            r2.c()
        L9e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.A6.a(io.appmetrica.analytics.impl.wh):void");
    }

    public A6(Context context, C1341ma c1341ma, C1536u6 c1536u6, C1316la c1316la) {
        this.f17935c = context;
        this.f17933a = c1341ma;
        this.f17934b = c1536u6;
        this.f17936d = c1316la;
    }
}
