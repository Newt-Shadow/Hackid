package io.appmetrica.analytics.impl;

import android.content.Context;
import android.os.Handler;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.logger.appmetrica.internal.ImportantLogger;
import io.appmetrica.analytics.logger.common.BaseReleaseLogger;
/* renamed from: io.appmetrica.analytics.impl.i0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1232i0 implements Na {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19760a;

    /* renamed from: b  reason: collision with root package name */
    public final IHandlerExecutor f19761b;

    /* renamed from: c  reason: collision with root package name */
    public final C1559v4 f19762c = new C1559v4();

    /* renamed from: d  reason: collision with root package name */
    public final Handler f19763d = f().getHandler();

    /* renamed from: e  reason: collision with root package name */
    public final U1 f19764e = new U1();

    /* renamed from: f  reason: collision with root package name */
    public final C1591wb f19765f = new C1591wb();

    public C1232i0(Context context, C1260j4 c1260j4) {
        this.f19760a = context;
        this.f19761b = c1260j4.a();
        BaseReleaseLogger.init(context);
        f().execute(new Runnable() { // from class: io.appmetrica.analytics.impl.sp
            @Override // java.lang.Runnable
            public final void run() {
                C1232i0.e();
            }
        });
        a().a();
        X3.a().onCreate();
    }

    public static final void e() {
        ImportantLogger.INSTANCE.info("AppMetrica", "Initializing of AppMetrica, " + StringUtils.capitalize("release") + " type, Version 7.8.0, API Level " + AppMetrica.getLibraryApiLevel() + ", Dated 09.04.2025.", new Object[0]);
    }

    @Override // io.appmetrica.analytics.impl.Na
    public final C1559v4 a() {
        return this.f19762c;
    }

    @Override // io.appmetrica.analytics.impl.Na
    public final Handler b() {
        return this.f19763d;
    }

    @Override // io.appmetrica.analytics.impl.Na
    public final U1 c() {
        return this.f19764e;
    }

    @Override // io.appmetrica.analytics.impl.Na
    public final C1591wb d() {
        return this.f19765f;
    }

    public final IHandlerExecutor f() {
        return this.f19761b;
    }

    @Override // io.appmetrica.analytics.impl.Na
    public final ICommonExecutor getDefaultExecutor() {
        return this.f19761b;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0031 A[Catch: all -> 0x0052, TryCatch #0 {, blocks: (B:3:0x0001, B:6:0x0007, B:8:0x000b, B:10:0x000f, B:13:0x0016, B:18:0x0031, B:20:0x0035, B:22:0x0039, B:25:0x0040, B:28:0x004d, B:26:0x0046, B:14:0x001c, B:16:0x0028), top: B:34:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004d A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:6:0x0007, B:8:0x000b, B:10:0x000f, B:13:0x0016, B:18:0x0031, B:20:0x0035, B:22:0x0039, B:25:0x0040, B:28:0x004d, B:26:0x0046, B:14:0x001c, B:16:0x0028), top: B:34:0x0001 }] */
    @Override // io.appmetrica.analytics.impl.Na
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(io.appmetrica.analytics.AppMetricaConfig r3, io.appmetrica.analytics.impl.InterfaceC1168fb r4) {
        /*
            r2 = this;
            monitor-enter(r2)
            boolean r0 = io.appmetrica.analytics.impl.C1381o0.f20246g     // Catch: java.lang.Throwable -> L52
            if (r0 != 0) goto L50
            if (r3 == 0) goto L1c
            java.lang.Boolean r0 = r3.crashReporting     // Catch: java.lang.Throwable -> L52
            if (r0 != 0) goto Ld
            java.lang.Boolean r0 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L52
        Ld:
            if (r0 == 0) goto L1c
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L52
            if (r0 == 0) goto L16
            goto L1c
        L16:
            io.appmetrica.analytics.impl.wb r4 = r2.f19765f     // Catch: java.lang.Throwable -> L52
            r4.a()     // Catch: java.lang.Throwable -> L52
            goto L2f
        L1c:
            io.appmetrica.analytics.impl.wb r0 = r2.f19765f     // Catch: java.lang.Throwable -> L52
            r0.c()     // Catch: java.lang.Throwable -> L52
            io.appmetrica.analytics.impl.wb r0 = r2.f19765f     // Catch: java.lang.Throwable -> L52
            r0.b()     // Catch: java.lang.Throwable -> L52
            if (r3 == 0) goto L2f
            io.appmetrica.analytics.impl.wb r0 = r2.f19765f     // Catch: java.lang.Throwable -> L52
            android.content.Context r1 = r2.f19760a     // Catch: java.lang.Throwable -> L52
            r0.a(r1, r3, r4)     // Catch: java.lang.Throwable -> L52
        L2f:
            if (r3 == 0) goto L46
            java.lang.Boolean r4 = r3.appOpenTrackingEnabled     // Catch: java.lang.Throwable -> L52
            if (r4 != 0) goto L37
            java.lang.Boolean r4 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L52
        L37:
            if (r4 == 0) goto L46
            boolean r4 = r4.booleanValue()     // Catch: java.lang.Throwable -> L52
            if (r4 == 0) goto L40
            goto L46
        L40:
            io.appmetrica.analytics.impl.U1 r4 = r2.f19764e     // Catch: java.lang.Throwable -> L52
            r4.c()     // Catch: java.lang.Throwable -> L52
            goto L4b
        L46:
            io.appmetrica.analytics.impl.U1 r4 = r2.f19764e     // Catch: java.lang.Throwable -> L52
            r4.b()     // Catch: java.lang.Throwable -> L52
        L4b:
            if (r3 == 0) goto L50
            r3 = 1
            io.appmetrica.analytics.impl.C1381o0.f20246g = r3     // Catch: java.lang.Throwable -> L52
        L50:
            monitor-exit(r2)
            return
        L52:
            r3 = move-exception
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1232i0.a(io.appmetrica.analytics.AppMetricaConfig, io.appmetrica.analytics.impl.fb):void");
    }
}
