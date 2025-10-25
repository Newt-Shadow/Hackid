package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.internal.IdentifiersResult;
/* loaded from: classes2.dex */
public final class Bd {

    /* renamed from: a  reason: collision with root package name */
    public final Context f17997a;

    /* renamed from: b  reason: collision with root package name */
    public final Wa f17998b;

    /* renamed from: c  reason: collision with root package name */
    public final I9 f17999c;

    /* renamed from: d  reason: collision with root package name */
    public final C1644ye f18000d;

    /* renamed from: e  reason: collision with root package name */
    public final Vn f18001e;

    /* renamed from: f  reason: collision with root package name */
    public volatile IdentifiersResult f18002f;

    public Bd(Context context, Wa wa2) {
        this(context, wa2, Cd.a(context), new C1644ye(context), new Vn());
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.appmetrica.analytics.internal.IdentifiersResult a() {
        /*
            r5 = this;
            io.appmetrica.analytics.internal.IdentifiersResult r0 = r5.f18002f
            if (r0 == 0) goto L18
            io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus r1 = r0.status
            io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus r2 = io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus.OK
            if (r1 != r2) goto L18
            io.appmetrica.analytics.impl.Vn r1 = r5.f18001e
            java.lang.String r2 = r0.f21091id
            r1.getClass()
            boolean r1 = io.appmetrica.analytics.impl.Vn.a(r2)
            if (r1 == 0) goto L18
            return r0
        L18:
            r1 = 0
            io.appmetrica.analytics.impl.I9 r2 = r5.f17999c     // Catch: java.lang.Throwable -> L79
            java.util.concurrent.locks.ReentrantLock r3 = r2.f18380a     // Catch: java.lang.Throwable -> L79
            r3.lock()     // Catch: java.lang.Throwable -> L79
            io.appmetrica.analytics.impl.ka r2 = r2.f18381b     // Catch: java.lang.Throwable -> L79
            r2.a()     // Catch: java.lang.Throwable -> L79
            io.appmetrica.analytics.internal.IdentifiersResult r0 = r5.f18002f     // Catch: java.lang.Throwable -> L79
            if (r0 == 0) goto L3d
            io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus r2 = r0.status     // Catch: java.lang.Throwable -> L79
            io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus r3 = io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus.OK     // Catch: java.lang.Throwable -> L79
            if (r2 != r3) goto L3d
            io.appmetrica.analytics.impl.Vn r2 = r5.f18001e     // Catch: java.lang.Throwable -> L79
            java.lang.String r3 = r0.f21091id     // Catch: java.lang.Throwable -> L79
            r2.getClass()     // Catch: java.lang.Throwable -> L79
            boolean r2 = io.appmetrica.analytics.impl.Vn.a(r3)     // Catch: java.lang.Throwable -> L79
            if (r2 == 0) goto L3d
            goto L79
        L3d:
            io.appmetrica.analytics.impl.ye r2 = r5.f18000d     // Catch: java.lang.Throwable -> L79
            android.content.Context r2 = r2.f20983a     // Catch: java.lang.Throwable -> L79
            java.lang.String r3 = "uuid.dat"
            java.io.File r2 = io.appmetrica.analytics.coreutils.internal.io.FileUtils.getFileFromSdkStorage(r2, r3)     // Catch: java.lang.Throwable -> L79
            java.lang.String r2 = io.appmetrica.analytics.impl.Va.a(r2)     // Catch: java.lang.Throwable -> L79
            io.appmetrica.analytics.impl.Vn r3 = r5.f18001e     // Catch: java.lang.Throwable -> L79
            r3.getClass()     // Catch: java.lang.Throwable -> L79
            boolean r3 = io.appmetrica.analytics.impl.Vn.a(r2)     // Catch: java.lang.Throwable -> L79
            if (r3 != 0) goto L64
            io.appmetrica.analytics.impl.Wa r2 = r5.f17998b     // Catch: java.lang.Throwable -> L79
            android.content.Context r3 = r5.f17997a     // Catch: java.lang.Throwable -> L79
            java.lang.String r2 = r2.a(r3)     // Catch: java.lang.Throwable -> L79
            io.appmetrica.analytics.impl.ye r3 = r5.f18000d     // Catch: java.lang.Throwable -> L79
            java.lang.String r2 = r3.a(r2)     // Catch: java.lang.Throwable -> L79
        L64:
            io.appmetrica.analytics.impl.Vn r3 = r5.f18001e     // Catch: java.lang.Throwable -> L79
            r3.getClass()     // Catch: java.lang.Throwable -> L79
            boolean r3 = io.appmetrica.analytics.impl.Vn.a(r2)     // Catch: java.lang.Throwable -> L79
            if (r3 == 0) goto L79
            io.appmetrica.analytics.internal.IdentifiersResult r3 = new io.appmetrica.analytics.internal.IdentifiersResult     // Catch: java.lang.Throwable -> L79
            io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus r4 = io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus.OK     // Catch: java.lang.Throwable -> L79
            r3.<init>(r2, r4, r1)     // Catch: java.lang.Throwable -> L79
            r5.f18002f = r3     // Catch: java.lang.Throwable -> L78
        L78:
            r0 = r3
        L79:
            io.appmetrica.analytics.impl.I9 r2 = r5.f17999c
            io.appmetrica.analytics.impl.ka r3 = r2.f18381b
            r3.b()
            java.util.concurrent.locks.ReentrantLock r2 = r2.f18380a
            r2.unlock()
            if (r0 == 0) goto L88
            goto L91
        L88:
            io.appmetrica.analytics.internal.IdentifiersResult r0 = new io.appmetrica.analytics.internal.IdentifiersResult
            io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus r2 = io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus.UNKNOWN
            java.lang.String r3 = "Uuid must be obtained via async API AppMetrica#requestStartupParams(Context, StartupParamsCallback, List<String>)"
            r0.<init>(r1, r2, r3)
        L91:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.Bd.a():io.appmetrica.analytics.internal.IdentifiersResult");
    }

    public Bd(Context context, Wa wa2, I9 i92, C1644ye c1644ye, Vn vn) {
        this.f17997a = context;
        this.f17998b = wa2;
        this.f17999c = i92;
        this.f18000d = c1644ye;
        this.f18001e = vn;
        try {
            i92.a();
            c1644ye.a();
            i92.b();
        } catch (Throwable unused) {
            this.f17999c.b();
        }
    }
}
