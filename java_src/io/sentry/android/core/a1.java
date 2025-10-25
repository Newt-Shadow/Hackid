package io.sentry.android.core;

import android.content.Context;
import android.content.pm.PackageInfo;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.sentry.android.core.x0;
import io.sentry.j5;
import io.sentry.t3;
import io.sentry.t5;
import io.sentry.z4;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class a1 implements io.sentry.y {

    /* renamed from: a  reason: collision with root package name */
    final Context f22125a;

    /* renamed from: b  reason: collision with root package name */
    private final p0 f22126b;

    /* renamed from: c  reason: collision with root package name */
    private final SentryAndroidOptions f22127c;

    /* renamed from: d  reason: collision with root package name */
    private final Future f22128d;

    public a1(Context context, p0 p0Var, final SentryAndroidOptions sentryAndroidOptions) {
        this.f22125a = (Context) io.sentry.util.q.c(x0.h(context), "The application context is required.");
        this.f22126b = (p0) io.sentry.util.q.c(p0Var, "The BuildInfoProvider is required.");
        this.f22127c = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "The options object is required.");
        ExecutorService newSingleThreadExecutor = Executors.newSingleThreadExecutor();
        this.f22128d = newSingleThreadExecutor.submit(new Callable() { // from class: io.sentry.android.core.z0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                b1 f10;
                f10 = a1.this.f(sentryAndroidOptions);
                return f10;
            }
        });
        newSingleThreadExecutor.shutdown();
    }

    private static void e(z4 z4Var) {
        boolean z10;
        io.sentry.protocol.w i10;
        List<io.sentry.protocol.v> d10;
        List p02 = z4Var.p0();
        if (p02 != null) {
            z10 = true;
            if (p02.size() > 1) {
                io.sentry.protocol.q qVar = (io.sentry.protocol.q) p02.get(p02.size() - 1);
                if ("java.lang".equals(qVar.h()) && (i10 = qVar.i()) != null && (d10 = i10.d()) != null) {
                    for (io.sentry.protocol.v vVar : d10) {
                        if ("com.android.internal.os.RuntimeInit$MethodAndArgsCaller".equals(vVar.r())) {
                            break;
                        }
                    }
                }
            }
        }
        z10 = false;
        if (z10) {
            Collections.reverse(p02);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ b1 f(SentryAndroidOptions sentryAndroidOptions) {
        return b1.i(this.f22125a, sentryAndroidOptions);
    }

    private void g(t3 t3Var) {
        String str;
        io.sentry.protocol.l c10 = t3Var.C().c();
        try {
            t3Var.C().k(((b1) this.f22128d.get()).j());
        } catch (Throwable th) {
            this.f22127c.getLogger().b(j5.ERROR, "Failed to retrieve os system", th);
        }
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

    private void h(t3 t3Var) {
        io.sentry.protocol.b0 Q = t3Var.Q();
        if (Q == null) {
            Q = new io.sentry.protocol.b0();
            t3Var.f0(Q);
        }
        if (Q.m() == null) {
            Q.q(g1.a(this.f22125a));
        }
        if (Q.n() == null && this.f22127c.isSendDefaultPii()) {
            Q.r("{{auto}}");
        }
    }

    private void i(t3 t3Var, io.sentry.c0 c0Var) {
        io.sentry.protocol.a a10 = t3Var.C().a();
        if (a10 == null) {
            a10 = new io.sentry.protocol.a();
        }
        j(a10, c0Var);
        n(t3Var, a10);
        t3Var.C().g(a10);
    }

    private void j(io.sentry.protocol.a aVar, io.sentry.c0 c0Var) {
        Boolean b10;
        aVar.n(x0.j(this.f22125a));
        io.sentry.android.core.performance.h k10 = io.sentry.android.core.performance.g.p().k(this.f22127c);
        if (k10.s()) {
            aVar.o(io.sentry.j.n(k10.m()));
        }
        if (!io.sentry.util.j.i(c0Var) && aVar.k() == null && (b10 = o0.a().b()) != null) {
            aVar.q(Boolean.valueOf(!b10.booleanValue()));
        }
    }

    private void k(t3 t3Var, boolean z10, boolean z11) {
        h(t3Var);
        l(t3Var, z10, z11);
        o(t3Var);
    }

    private void l(t3 t3Var, boolean z10, boolean z11) {
        if (t3Var.C().b() == null) {
            try {
                t3Var.C().i(((b1) this.f22128d.get()).a(z10, z11));
            } catch (Throwable th) {
                this.f22127c.getLogger().b(j5.ERROR, "Failed to retrieve device info", th);
            }
            g(t3Var);
        }
    }

    private void m(t3 t3Var, String str) {
        if (t3Var.E() == null) {
            t3Var.T(str);
        }
    }

    private void n(t3 t3Var, io.sentry.protocol.a aVar) {
        PackageInfo q10 = x0.q(this.f22125a, Base64Utils.IO_BUFFER_SIZE, this.f22127c.getLogger(), this.f22126b);
        if (q10 != null) {
            m(t3Var, x0.s(q10, this.f22126b));
            x0.F(q10, this.f22126b, aVar);
        }
    }

    private void o(t3 t3Var) {
        try {
            x0.a l10 = ((b1) this.f22128d.get()).l();
            if (l10 != null) {
                for (Map.Entry entry : l10.a().entrySet()) {
                    t3Var.d0((String) entry.getKey(), (String) entry.getValue());
                }
            }
        } catch (Throwable th) {
            this.f22127c.getLogger().b(j5.ERROR, "Error getting side loaded info.", th);
        }
    }

    private void p(z4 z4Var, io.sentry.c0 c0Var) {
        if (z4Var.t0() != null) {
            boolean i10 = io.sentry.util.j.i(c0Var);
            for (io.sentry.protocol.x xVar : z4Var.t0()) {
                boolean d10 = io.sentry.android.core.internal.util.c.b().d(xVar);
                if (xVar.o() == null) {
                    xVar.r(Boolean.valueOf(d10));
                }
                if (!i10 && xVar.p() == null) {
                    xVar.v(Boolean.valueOf(d10));
                }
            }
        }
    }

    private boolean q(t3 t3Var, io.sentry.c0 c0Var) {
        if (io.sentry.util.j.u(c0Var)) {
            return true;
        }
        this.f22127c.getLogger().c(j5.DEBUG, "Event was cached so not applying data relevant to the current app execution/version: %s", t3Var.G());
        return false;
    }

    @Override // io.sentry.y
    public t5 a(t5 t5Var, io.sentry.c0 c0Var) {
        boolean q10 = q(t5Var, c0Var);
        if (q10) {
            i(t5Var, c0Var);
        }
        k(t5Var, false, q10);
        return t5Var;
    }

    @Override // io.sentry.y
    public z4 b(z4 z4Var, io.sentry.c0 c0Var) {
        boolean q10 = q(z4Var, c0Var);
        if (q10) {
            i(z4Var, c0Var);
            p(z4Var, c0Var);
        }
        k(z4Var, true, q10);
        e(z4Var);
        return z4Var;
    }

    @Override // io.sentry.y
    public io.sentry.protocol.y c(io.sentry.protocol.y yVar, io.sentry.c0 c0Var) {
        boolean q10 = q(yVar, c0Var);
        if (q10) {
            i(yVar, c0Var);
        }
        k(yVar, false, q10);
        return yVar;
    }
}
