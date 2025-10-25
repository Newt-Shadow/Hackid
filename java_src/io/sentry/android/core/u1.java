package io.sentry.android.core;

import android.os.Looper;
import io.sentry.android.core.performance.g;
import io.sentry.l6;
import io.sentry.n6;
import io.sentry.p6;
import io.sentry.t1;
import io.sentry.z4;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class u1 implements io.sentry.y {

    /* renamed from: a  reason: collision with root package name */
    private boolean f22484a = false;

    /* renamed from: b  reason: collision with root package name */
    private final h f22485b;

    /* renamed from: c  reason: collision with root package name */
    private final SentryAndroidOptions f22486c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public u1(SentryAndroidOptions sentryAndroidOptions, h hVar) {
        this.f22486c = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.f22485b = (h) io.sentry.util.q.c(hVar, "ActivityFramesTracker is required");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void d(io.sentry.android.core.performance.g r10, io.sentry.protocol.y r11) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.core.u1.d(io.sentry.android.core.performance.g, io.sentry.protocol.y):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean e(io.sentry.protocol.y r7) {
        /*
            r6 = this;
            java.util.List r0 = r7.q0()
            java.util.Iterator r0 = r0.iterator()
        L8:
            boolean r1 = r0.hasNext()
            java.lang.String r2 = "app.start.warm"
            r3 = 1
            java.lang.String r4 = "app.start.cold"
            if (r1 == 0) goto L2e
            java.lang.Object r1 = r0.next()
            io.sentry.protocol.u r1 = (io.sentry.protocol.u) r1
            java.lang.String r5 = r1.d()
            boolean r4 = r5.contentEquals(r4)
            if (r4 != 0) goto L2d
            java.lang.String r1 = r1.d()
            boolean r1 = r1.contentEquals(r2)
            if (r1 == 0) goto L8
        L2d:
            return r3
        L2e:
            io.sentry.protocol.c r7 = r7.C()
            io.sentry.l6 r7 = r7.f()
            if (r7 == 0) goto L4d
            java.lang.String r0 = r7.b()
            boolean r0 = r0.equals(r4)
            if (r0 != 0) goto L4e
            java.lang.String r7 = r7.b()
            boolean r7 = r7.equals(r2)
            if (r7 == 0) goto L4d
            goto L4e
        L4d:
            r3 = 0
        L4e:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.sentry.android.core.u1.e(io.sentry.protocol.y):boolean");
    }

    private static boolean f(double d10, io.sentry.protocol.u uVar) {
        if (d10 >= uVar.f().doubleValue() && (uVar.g() == null || d10 <= uVar.g().doubleValue())) {
            return true;
        }
        return false;
    }

    private void g(io.sentry.protocol.y yVar) {
        boolean z10;
        boolean z11;
        Object obj;
        io.sentry.protocol.u uVar = null;
        io.sentry.protocol.u uVar2 = null;
        for (io.sentry.protocol.u uVar3 : yVar.q0()) {
            if ("ui.load.initial_display".equals(uVar3.d())) {
                uVar = uVar3;
            } else if ("ui.load.full_display".equals(uVar3.d())) {
                uVar2 = uVar3;
            }
            if (uVar != null && uVar2 != null) {
                break;
            }
        }
        if (uVar == null && uVar2 == null) {
            return;
        }
        for (io.sentry.protocol.u uVar4 : yVar.q0()) {
            if (uVar4 != uVar && uVar4 != uVar2) {
                Map b10 = uVar4.b();
                boolean z12 = false;
                if (b10 != null && (obj = b10.get("thread.name")) != null && !"main".equals(obj)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (uVar != null && f(uVar4.f().doubleValue(), uVar) && z10) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (uVar2 != null && f(uVar4.f().doubleValue(), uVar2)) {
                    z12 = true;
                }
                if (z11 || z12) {
                    Map b11 = uVar4.b();
                    if (b11 == null) {
                        b11 = new ConcurrentHashMap();
                        uVar4.h(b11);
                    }
                    if (z11) {
                        b11.put("ui.contributes_to_ttid", Boolean.TRUE);
                    }
                    if (z12) {
                        b11.put("ui.contributes_to_ttfd", Boolean.TRUE);
                    }
                }
            }
        }
    }

    private static io.sentry.protocol.u h(io.sentry.android.core.performance.h hVar, n6 n6Var, io.sentry.protocol.r rVar, String str) {
        HashMap hashMap = new HashMap(2);
        hashMap.put("thread.id", Long.valueOf(Looper.getMainLooper().getThread().getId()));
        hashMap.put("thread.name", "main");
        Boolean bool = Boolean.TRUE;
        hashMap.put("ui.contributes_to_ttid", bool);
        hashMap.put("ui.contributes_to_ttfd", bool);
        return new io.sentry.protocol.u(Double.valueOf(hVar.o()), Double.valueOf(hVar.l()), rVar, new n6(), n6Var, str, hVar.b(), p6.OK, "auto.ui", new ConcurrentHashMap(), new ConcurrentHashMap(), null, hashMap);
    }

    @Override // io.sentry.y
    public z4 b(z4 z4Var, io.sentry.c0 c0Var) {
        return z4Var;
    }

    @Override // io.sentry.y
    public synchronized io.sentry.protocol.y c(io.sentry.protocol.y yVar, io.sentry.c0 c0Var) {
        Map q10;
        String str;
        String str2;
        if (!this.f22486c.isTracingEnabled()) {
            return yVar;
        }
        io.sentry.android.core.performance.g p10 = io.sentry.android.core.performance.g.p();
        if (e(yVar)) {
            if (p10.B()) {
                long f10 = p10.k(this.f22486c).f();
                if (f10 != 0) {
                    io.sentry.protocol.h hVar = new io.sentry.protocol.h(Float.valueOf((float) f10), t1.a.MILLISECOND.apiName());
                    if (p10.l() == g.a.COLD) {
                        str2 = "app_start_cold";
                    } else {
                        str2 = "app_start_warm";
                    }
                    yVar.o0().put(str2, hVar);
                    d(p10, yVar);
                    p10.w();
                }
            }
            io.sentry.protocol.a a10 = yVar.C().a();
            if (a10 == null) {
                a10 = new io.sentry.protocol.a();
                yVar.C().g(a10);
            }
            if (p10.l() == g.a.COLD) {
                str = "cold";
            } else {
                str = "warm";
            }
            a10.s(str);
        }
        g(yVar);
        io.sentry.protocol.r G = yVar.G();
        l6 f11 = yVar.C().f();
        if (G != null && f11 != null && f11.b().contentEquals("ui.load") && (q10 = this.f22485b.q(G)) != null) {
            yVar.o0().putAll(q10);
        }
        return yVar;
    }
}
