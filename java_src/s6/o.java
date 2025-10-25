package s6;

import e7.a0;
import e7.c0;
import e7.i0;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    private final c0.b f29442a;

    private o(c0.b bVar) {
        this.f29442a = bVar;
    }

    private synchronized c0.c c(e7.y yVar, i0 i0Var) {
        int g10;
        g10 = g();
        if (i0Var != i0.UNKNOWN_PREFIX) {
        } else {
            throw new GeneralSecurityException("unknown output prefix type");
        }
        return (c0.c) c0.c.e0().t(yVar).u(g10).w(e7.z.ENABLED).v(i0Var).j();
    }

    private synchronized boolean e(int i10) {
        for (c0.c cVar : this.f29442a.w()) {
            if (cVar.a0() == i10) {
                return true;
            }
        }
        return false;
    }

    private synchronized c0.c f(a0 a0Var) {
        return c(x.k(a0Var), a0Var.Z());
    }

    private synchronized int g() {
        int c10;
        c10 = com.google.crypto.tink.internal.t.c();
        while (e(c10)) {
            c10 = com.google.crypto.tink.internal.t.c();
        }
        return c10;
    }

    public static o i() {
        return new o(c0.d0());
    }

    public static o j(n nVar) {
        return new o((c0.b) nVar.h().T());
    }

    public synchronized o a(l lVar) {
        b(lVar.b(), false);
        return this;
    }

    public synchronized int b(a0 a0Var, boolean z10) {
        c0.c f10;
        f10 = f(a0Var);
        this.f29442a.t(f10);
        if (z10) {
            this.f29442a.x(f10.a0());
        }
        return f10.a0();
    }

    public synchronized n d() {
        return n.e((c0) this.f29442a.j());
    }

    public synchronized o h(int i10) {
        for (int i11 = 0; i11 < this.f29442a.v(); i11++) {
            c0.c u10 = this.f29442a.u(i11);
            if (u10.a0() == i10) {
                if (u10.c0().equals(e7.z.ENABLED)) {
                    this.f29442a.x(i10);
                } else {
                    throw new GeneralSecurityException("cannot set key as primary because it's not enabled: " + i10);
                }
            }
        }
        throw new GeneralSecurityException("key not found: " + i10);
        return this;
    }
}
