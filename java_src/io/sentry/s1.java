package io.sentry;

import io.sentry.protocol.DebugImage;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class s1 implements y, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final s5 f23634a;

    /* renamed from: b  reason: collision with root package name */
    private final x5 f23635b;

    /* renamed from: c  reason: collision with root package name */
    private final a5 f23636c;

    /* renamed from: d  reason: collision with root package name */
    private volatile f0 f23637d = null;

    public s1(s5 s5Var) {
        s5 s5Var2 = (s5) io.sentry.util.q.c(s5Var, "The SentryOptions is required.");
        this.f23634a = s5Var2;
        w5 w5Var = new w5(s5Var2);
        this.f23636c = new a5(w5Var);
        this.f23635b = new x5(w5Var, s5Var2);
    }

    private void E(t3 t3Var) {
        if (t3Var.M() == null) {
            t3Var.c0(this.f23634a.getServerName());
        }
        if (this.f23634a.isAttachServerName() && t3Var.M() == null) {
            e();
            if (this.f23637d != null) {
                t3Var.c0(this.f23637d.d());
            }
        }
    }

    private void H(t3 t3Var) {
        if (t3Var.N() == null) {
            t3Var.e0(new HashMap(this.f23634a.getTags()));
            return;
        }
        for (Map.Entry<String, String> entry : this.f23634a.getTags().entrySet()) {
            if (!t3Var.N().containsKey(entry.getKey())) {
                t3Var.d0(entry.getKey(), entry.getValue());
            }
        }
    }

    private void P(z4 z4Var, c0 c0Var) {
        boolean z10;
        if (z4Var.t0() == null) {
            List<io.sentry.protocol.q> p02 = z4Var.p0();
            ArrayList arrayList = null;
            if (p02 != null && !p02.isEmpty()) {
                for (io.sentry.protocol.q qVar : p02) {
                    if (qVar.g() != null && qVar.j() != null) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(qVar.j());
                    }
                }
            }
            if (!this.f23634a.isAttachThreads() && !io.sentry.util.j.h(c0Var, io.sentry.hints.a.class)) {
                if (this.f23634a.isAttachStacktrace()) {
                    if ((p02 == null || p02.isEmpty()) && !f(c0Var)) {
                        z4Var.E0(this.f23635b.a());
                        return;
                    }
                    return;
                }
                return;
            }
            Object g10 = io.sentry.util.j.g(c0Var);
            if (g10 instanceof io.sentry.hints.a) {
                z10 = ((io.sentry.hints.a) g10).d();
            } else {
                z10 = false;
            }
            z4Var.E0(this.f23635b.b(arrayList, z10));
        }
    }

    private boolean W(t3 t3Var, c0 c0Var) {
        if (io.sentry.util.j.u(c0Var)) {
            return true;
        }
        this.f23634a.getLogger().c(j5.DEBUG, "Event was cached so not applying data relevant to the current app execution/version: %s", t3Var.G());
        return false;
    }

    private void e() {
        if (this.f23637d == null) {
            synchronized (this) {
                if (this.f23637d == null) {
                    this.f23637d = f0.e();
                }
            }
        }
    }

    private boolean f(c0 c0Var) {
        return io.sentry.util.j.h(c0Var, io.sentry.hints.e.class);
    }

    private void g(t3 t3Var) {
        io.sentry.protocol.b0 Q = t3Var.Q();
        if (Q == null) {
            Q = new io.sentry.protocol.b0();
            t3Var.f0(Q);
        }
        if (Q.n() == null && this.f23634a.isSendDefaultPii()) {
            Q.r("{{auto}}");
        }
    }

    private void h(t3 t3Var) {
        x(t3Var);
        s(t3Var);
        E(t3Var);
        q(t3Var);
        z(t3Var);
        H(t3Var);
        g(t3Var);
    }

    private void j(t3 t3Var) {
        w(t3Var);
    }

    private void k(t3 t3Var) {
        ArrayList arrayList = new ArrayList();
        if (this.f23634a.getProguardUuid() != null) {
            DebugImage debugImage = new DebugImage();
            debugImage.setType(DebugImage.PROGUARD);
            debugImage.setUuid(this.f23634a.getProguardUuid());
            arrayList.add(debugImage);
        }
        for (String str : this.f23634a.getBundleIds()) {
            DebugImage debugImage2 = new DebugImage();
            debugImage2.setType(DebugImage.JVM);
            debugImage2.setDebugId(str);
            arrayList.add(debugImage2);
        }
        if (!arrayList.isEmpty()) {
            io.sentry.protocol.d D = t3Var.D();
            if (D == null) {
                D = new io.sentry.protocol.d();
            }
            if (D.c() == null) {
                D.d(arrayList);
            } else {
                D.c().addAll(arrayList);
            }
            t3Var.S(D);
        }
    }

    private void q(t3 t3Var) {
        if (t3Var.E() == null) {
            t3Var.T(this.f23634a.getDist());
        }
    }

    private void s(t3 t3Var) {
        if (t3Var.F() == null) {
            t3Var.U(this.f23634a.getEnvironment());
        }
    }

    private void u(z4 z4Var) {
        Throwable P = z4Var.P();
        if (P != null) {
            z4Var.z0(this.f23636c.c(P));
        }
    }

    private void v(z4 z4Var) {
        Map a10 = this.f23634a.getModulesLoader().a();
        if (a10 == null) {
            return;
        }
        Map s02 = z4Var.s0();
        if (s02 == null) {
            z4Var.D0(a10);
        } else {
            s02.putAll(a10);
        }
    }

    private void w(t3 t3Var) {
        if (t3Var.I() == null) {
            t3Var.Y("java");
        }
    }

    private void x(t3 t3Var) {
        if (t3Var.J() == null) {
            t3Var.Z(this.f23634a.getRelease());
        }
    }

    private void z(t3 t3Var) {
        if (t3Var.L() == null) {
            t3Var.b0(this.f23634a.getSdkVersion());
        }
    }

    @Override // io.sentry.y
    public t5 a(t5 t5Var, c0 c0Var) {
        j(t5Var);
        if (W(t5Var, c0Var)) {
            h(t5Var);
            io.sentry.protocol.p i10 = this.f23634a.getSessionReplay().i();
            if (i10 != null) {
                t5Var.b0(i10);
            }
        }
        return t5Var;
    }

    @Override // io.sentry.y
    public z4 b(z4 z4Var, c0 c0Var) {
        j(z4Var);
        u(z4Var);
        k(z4Var);
        v(z4Var);
        if (W(z4Var, c0Var)) {
            h(z4Var);
            P(z4Var, c0Var);
        }
        return z4Var;
    }

    @Override // io.sentry.y
    public io.sentry.protocol.y c(io.sentry.protocol.y yVar, c0 c0Var) {
        j(yVar);
        k(yVar);
        if (W(yVar, c0Var)) {
            h(yVar);
        }
        return yVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f23637d != null) {
            this.f23637d.c();
        }
    }
}
