package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.util.DisplayMetrics;
import io.sentry.a5;
import io.sentry.android.core.x0;
import io.sentry.j5;
import io.sentry.l6;
import io.sentry.protocol.DebugImage;
import io.sentry.s5;
import io.sentry.t3;
import io.sentry.w5;
import io.sentry.z4;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2.dex */
public final class i0 implements io.sentry.c {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22272a;

    /* renamed from: b  reason: collision with root package name */
    private final SentryAndroidOptions f22273b;

    /* renamed from: c  reason: collision with root package name */
    private final p0 f22274c;

    /* renamed from: d  reason: collision with root package name */
    private final a5 f22275d;

    /* renamed from: e  reason: collision with root package name */
    private final io.sentry.cache.t f22276e;

    public i0(Context context, SentryAndroidOptions sentryAndroidOptions, p0 p0Var) {
        this.f22272a = x0.h(context);
        this.f22273b = sentryAndroidOptions;
        this.f22274c = p0Var;
        this.f22276e = sentryAndroidOptions.findPersistingScopeObserver();
        this.f22275d = new a5(new w5(sentryAndroidOptions));
    }

    private void A(t3 t3Var) {
        if (t3Var.I() == null) {
            t3Var.Y("java");
        }
    }

    private void B(t3 t3Var) {
        if (t3Var.J() == null) {
            t3Var.Z((String) io.sentry.cache.h.b(this.f22273b, "release.json", String.class));
        }
    }

    private void C(z4 z4Var) {
        String str = (String) m(this.f22273b, "replay.json", String.class);
        if (!new File(this.f22273b.getCacheDirPath(), "replay_" + str).exists()) {
            if (!n(z4Var)) {
                return;
            }
            File[] listFiles = new File(this.f22273b.getCacheDirPath()).listFiles();
            String str2 = null;
            if (listFiles != null) {
                long j10 = Long.MIN_VALUE;
                for (File file : listFiles) {
                    if (file.isDirectory() && file.getName().startsWith("replay_") && file.lastModified() > j10 && file.lastModified() <= z4Var.u0().getTime()) {
                        j10 = file.lastModified();
                        str2 = file.getName().substring(7);
                    }
                }
            }
            str = str2;
        }
        if (str == null) {
            return;
        }
        io.sentry.cache.t.O(this.f22273b, str, "replay.json");
        z4Var.C().put("replay_id", str);
    }

    private void D(t3 t3Var) {
        if (t3Var.K() == null) {
            t3Var.a0((io.sentry.protocol.m) m(this.f22273b, "request.json", io.sentry.protocol.m.class));
        }
    }

    private void E(t3 t3Var) {
        Map map = (Map) m(this.f22273b, "tags.json", Map.class);
        if (map == null) {
            return;
        }
        if (t3Var.N() == null) {
            t3Var.e0(new HashMap(map));
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!t3Var.N().containsKey(entry.getKey())) {
                t3Var.d0((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    private void F(t3 t3Var) {
        if (t3Var.L() == null) {
            t3Var.b0((io.sentry.protocol.p) io.sentry.cache.h.b(this.f22273b, "sdk-version.json", io.sentry.protocol.p.class));
        }
    }

    private void G(t3 t3Var) {
        try {
            x0.a l10 = b1.i(this.f22272a, this.f22273b).l();
            if (l10 != null) {
                for (Map.Entry entry : l10.a().entrySet()) {
                    t3Var.d0((String) entry.getKey(), (String) entry.getValue());
                }
            }
        } catch (Throwable th) {
            this.f22273b.getLogger().b(j5.ERROR, "Error getting side loaded info.", th);
        }
    }

    private void H(z4 z4Var) {
        l(z4Var);
        G(z4Var);
    }

    private void I(z4 z4Var) {
        l6 l6Var = (l6) m(this.f22273b, "trace.json", l6.class);
        if (z4Var.C().f() == null && l6Var != null && l6Var.h() != null && l6Var.k() != null) {
            z4Var.C().n(l6Var);
        }
    }

    private void J(z4 z4Var) {
        String str = (String) m(this.f22273b, "transaction.json", String.class);
        if (z4Var.v0() == null) {
            z4Var.G0(str);
        }
    }

    private void K(t3 t3Var) {
        if (t3Var.Q() == null) {
            t3Var.f0((io.sentry.protocol.b0) m(this.f22273b, "user.json", io.sentry.protocol.b0.class));
        }
    }

    private void d(z4 z4Var, Object obj) {
        B(z4Var);
        u(z4Var);
        t(z4Var);
        r(z4Var);
        F(z4Var);
        o(z4Var, obj);
        z(z4Var);
    }

    private void e(z4 z4Var, Object obj) {
        D(z4Var);
        K(z4Var);
        E(z4Var);
        p(z4Var);
        w(z4Var);
        q(z4Var);
        J(z4Var);
        x(z4Var, obj);
        y(z4Var);
        I(z4Var);
        C(z4Var);
    }

    private io.sentry.protocol.x f(List list) {
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                io.sentry.protocol.x xVar = (io.sentry.protocol.x) it.next();
                String m10 = xVar.m();
                if (m10 != null && m10.equals("main")) {
                    return xVar;
                }
            }
            return null;
        }
        return null;
    }

    private io.sentry.protocol.e g() {
        io.sentry.protocol.e eVar = new io.sentry.protocol.e();
        if (this.f22273b.isSendDefaultPii()) {
            eVar.g0(x0.l(this.f22272a));
        }
        eVar.c0(Build.MANUFACTURER);
        eVar.Q(Build.BRAND);
        eVar.V(x0.n(this.f22273b.getLogger()));
        eVar.e0(Build.MODEL);
        eVar.f0(Build.ID);
        eVar.M(x0.k(this.f22274c));
        ActivityManager.MemoryInfo p10 = x0.p(this.f22272a, this.f22273b.getLogger());
        if (p10 != null) {
            eVar.d0(i(p10));
        }
        eVar.p0(this.f22274c.f());
        DisplayMetrics m10 = x0.m(this.f22272a, this.f22273b.getLogger());
        if (m10 != null) {
            eVar.o0(Integer.valueOf(m10.widthPixels));
            eVar.n0(Integer.valueOf(m10.heightPixels));
            eVar.l0(Float.valueOf(m10.density));
            eVar.m0(Integer.valueOf(m10.densityDpi));
        }
        if (eVar.J() == null) {
            eVar.Y(h());
        }
        List c10 = io.sentry.android.core.internal.util.f.a().c();
        if (!c10.isEmpty()) {
            eVar.k0(Double.valueOf(((Integer) Collections.max(c10)).doubleValue()));
            eVar.j0(Integer.valueOf(c10.size()));
        }
        return eVar;
    }

    private String h() {
        try {
            return g1.a(this.f22272a);
        } catch (Throwable th) {
            this.f22273b.getLogger().b(j5.ERROR, "Error getting installationId.", th);
            return null;
        }
    }

    private Long i(ActivityManager.MemoryInfo memoryInfo) {
        return Long.valueOf(memoryInfo.totalMem);
    }

    private boolean j(Object obj) {
        if (obj instanceof io.sentry.hints.a) {
            return "anr_background".equals(((io.sentry.hints.a) obj).g());
        }
        return false;
    }

    private void k(t3 t3Var) {
        String str;
        io.sentry.protocol.l c10 = t3Var.C().c();
        t3Var.C().k(b1.i(this.f22272a, this.f22273b).j());
        if (c10 != null) {
            String g10 = c10.g();
            if (g10 != null && !g10.isEmpty()) {
                str = "os_" + g10.trim().toLowerCase(Locale.ROOT);
            } else {
                str = "os_1";
            }
            t3Var.C().put(str, c10);
        }
    }

    private void l(t3 t3Var) {
        io.sentry.protocol.b0 Q = t3Var.Q();
        if (Q == null) {
            Q = new io.sentry.protocol.b0();
            t3Var.f0(Q);
        }
        if (Q.m() == null) {
            Q.q(h());
        }
        if (Q.n() == null && this.f22273b.isSendDefaultPii()) {
            Q.r("{{auto}}");
        }
    }

    private Object m(s5 s5Var, String str, Class cls) {
        io.sentry.cache.t tVar = this.f22276e;
        if (tVar == null) {
            return null;
        }
        return tVar.L(s5Var, str, cls);
    }

    private boolean n(z4 z4Var) {
        String str = (String) io.sentry.cache.h.b(this.f22273b, "replay-error-sample-rate.json", String.class);
        if (str == null) {
            return false;
        }
        try {
            if (Double.parseDouble(str) >= io.sentry.util.v.a().c()) {
                return true;
            }
            this.f22273b.getLogger().c(j5.DEBUG, "Not capturing replay for ANR %s due to not being sampled.", z4Var.G());
            return false;
        } catch (Throwable th) {
            this.f22273b.getLogger().b(j5.ERROR, "Error parsing replay sample rate.", th);
            return false;
        }
    }

    private void o(t3 t3Var, Object obj) {
        String str;
        io.sentry.protocol.a a10 = t3Var.C().a();
        if (a10 == null) {
            a10 = new io.sentry.protocol.a();
        }
        a10.n(x0.j(this.f22272a));
        a10.q(Boolean.valueOf(!j(obj)));
        PackageInfo r10 = x0.r(this.f22272a, this.f22274c);
        if (r10 != null) {
            a10.m(r10.packageName);
        }
        if (t3Var.J() != null) {
            str = t3Var.J();
        } else {
            str = (String) io.sentry.cache.h.b(this.f22273b, "release.json", String.class);
        }
        if (str != null) {
            try {
                String substring = str.substring(str.indexOf(64) + 1, str.indexOf(43));
                String substring2 = str.substring(str.indexOf(43) + 1);
                a10.p(substring);
                a10.l(substring2);
            } catch (Throwable unused) {
                this.f22273b.getLogger().c(j5.WARNING, "Failed to parse release from scope cache: %s", str);
            }
        }
        t3Var.C().g(a10);
    }

    private void p(t3 t3Var) {
        List list = (List) m(this.f22273b, "breadcrumbs.json", List.class);
        if (list == null) {
            return;
        }
        if (t3Var.B() == null) {
            t3Var.R(list);
        } else {
            t3Var.B().addAll(list);
        }
    }

    private void q(t3 t3Var) {
        io.sentry.protocol.c cVar = (io.sentry.protocol.c) m(this.f22273b, "contexts.json", io.sentry.protocol.c.class);
        if (cVar == null) {
            return;
        }
        io.sentry.protocol.c C = t3Var.C();
        Iterator it = new io.sentry.protocol.c(cVar).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Object value = entry.getValue();
            if (!"trace".equals(entry.getKey()) || !(value instanceof l6)) {
                if (!C.containsKey(entry.getKey())) {
                    C.put((String) entry.getKey(), value);
                }
            }
        }
    }

    private void r(t3 t3Var) {
        io.sentry.protocol.d D = t3Var.D();
        if (D == null) {
            D = new io.sentry.protocol.d();
        }
        if (D.c() == null) {
            D.d(new ArrayList());
        }
        List c10 = D.c();
        if (c10 != null) {
            String str = (String) io.sentry.cache.h.b(this.f22273b, "proguard-uuid.json", String.class);
            if (str != null) {
                DebugImage debugImage = new DebugImage();
                debugImage.setType(DebugImage.PROGUARD);
                debugImage.setUuid(str);
                c10.add(debugImage);
            }
            t3Var.S(D);
        }
    }

    private void s(t3 t3Var) {
        if (t3Var.C().b() == null) {
            t3Var.C().i(g());
        }
    }

    private void t(t3 t3Var) {
        String str;
        if (t3Var.E() == null) {
            t3Var.T((String) io.sentry.cache.h.b(this.f22273b, "dist.json", String.class));
        }
        if (t3Var.E() == null && (str = (String) io.sentry.cache.h.b(this.f22273b, "release.json", String.class)) != null) {
            try {
                t3Var.T(str.substring(str.indexOf(43) + 1));
            } catch (Throwable unused) {
                this.f22273b.getLogger().c(j5.WARNING, "Failed to parse release from scope cache: %s", str);
            }
        }
    }

    private void u(t3 t3Var) {
        if (t3Var.F() == null) {
            String str = (String) io.sentry.cache.h.b(this.f22273b, "environment.json", String.class);
            if (str == null) {
                str = this.f22273b.getEnvironment();
            }
            t3Var.U(str);
        }
    }

    private void v(z4 z4Var, Object obj) {
        io.sentry.protocol.i iVar = new io.sentry.protocol.i();
        if (!((io.sentry.hints.c) obj).a()) {
            iVar.j("HistoricalAppExitInfo");
        } else {
            iVar.j("AppExitInfo");
        }
        String str = "ANR";
        if (j(obj)) {
            str = "Background ANR";
        }
        ApplicationNotResponding applicationNotResponding = new ApplicationNotResponding(str, Thread.currentThread());
        io.sentry.protocol.x f10 = f(z4Var.t0());
        if (f10 == null) {
            f10 = new io.sentry.protocol.x();
            f10.y(new io.sentry.protocol.w());
        }
        z4Var.z0(this.f22275d.e(f10, iVar, applicationNotResponding));
    }

    private void w(t3 t3Var) {
        Map map = (Map) m(this.f22273b, "extras.json", Map.class);
        if (map == null) {
            return;
        }
        if (t3Var.H() == null) {
            t3Var.X(new HashMap(map));
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!t3Var.H().containsKey(entry.getKey())) {
                t3Var.H().put((String) entry.getKey(), entry.getValue());
            }
        }
    }

    private void x(z4 z4Var, Object obj) {
        String str;
        List list = (List) m(this.f22273b, "fingerprint.json", List.class);
        if (z4Var.q0() == null) {
            z4Var.A0(list);
        }
        boolean j10 = j(obj);
        if (z4Var.q0() == null) {
            String[] strArr = new String[2];
            strArr[0] = "{{ default }}";
            if (j10) {
                str = "background-anr";
            } else {
                str = "foreground-anr";
            }
            strArr[1] = str;
            z4Var.A0(Arrays.asList(strArr));
        }
    }

    private void y(z4 z4Var) {
        j5 j5Var = (j5) m(this.f22273b, "level.json", j5.class);
        if (z4Var.r0() == null) {
            z4Var.B0(j5Var);
        }
    }

    private void z(t3 t3Var) {
        Map map = (Map) io.sentry.cache.h.b(this.f22273b, "tags.json", Map.class);
        if (map == null) {
            return;
        }
        if (t3Var.N() == null) {
            t3Var.e0(new HashMap(map));
            return;
        }
        for (Map.Entry entry : map.entrySet()) {
            if (!t3Var.N().containsKey(entry.getKey())) {
                t3Var.d0((String) entry.getKey(), (String) entry.getValue());
            }
        }
    }

    @Override // io.sentry.y
    public z4 b(z4 z4Var, io.sentry.c0 c0Var) {
        Object g10 = io.sentry.util.j.g(c0Var);
        if (!(g10 instanceof io.sentry.hints.c)) {
            this.f22273b.getLogger().c(j5.WARNING, "The event is not Backfillable, but has been passed to BackfillingEventProcessor, skipping.", new Object[0]);
            return z4Var;
        }
        v(z4Var, g10);
        A(z4Var);
        k(z4Var);
        s(z4Var);
        if (!((io.sentry.hints.c) g10).a()) {
            this.f22273b.getLogger().c(j5.DEBUG, "The event is Backfillable, but should not be enriched, skipping.", new Object[0]);
            return z4Var;
        }
        e(z4Var, g10);
        d(z4Var, g10);
        H(z4Var);
        return z4Var;
    }

    @Override // io.sentry.y
    public io.sentry.protocol.y c(io.sentry.protocol.y yVar, io.sentry.c0 c0Var) {
        return yVar;
    }
}
