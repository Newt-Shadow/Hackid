package td;

import java.util.concurrent.locks.LockSupport;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class e extends a {

    /* renamed from: d  reason: collision with root package name */
    private final Thread f30639d;

    /* renamed from: e  reason: collision with root package name */
    private final d1 f30640e;

    public e(ad.i iVar, Thread thread, d1 d1Var) {
        super(iVar, true, true);
        this.f30639d = thread;
        this.f30640e = d1Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // td.z1
    public void F(Object obj) {
        if (!kotlin.jvm.internal.m.a(Thread.currentThread(), this.f30639d)) {
            Thread thread = this.f30639d;
            c.a();
            LockSupport.unpark(thread);
        }
    }

    public final Object S0() {
        long j10;
        c.a();
        try {
            d1 d1Var = this.f30640e;
            a0 a0Var = null;
            if (d1Var != null) {
                d1.Y0(d1Var, false, 1, null);
            }
            while (!Thread.interrupted()) {
                d1 d1Var2 = this.f30640e;
                if (d1Var2 != null) {
                    j10 = d1Var2.b1();
                } else {
                    j10 = Long.MAX_VALUE;
                }
                if (!X()) {
                    c.a();
                    LockSupport.parkNanos(this, j10);
                } else {
                    d1 d1Var3 = this.f30640e;
                    if (d1Var3 != null) {
                        d1.T0(d1Var3, false, 1, null);
                    }
                    c.a();
                    Object h10 = a2.h(g0());
                    if (h10 instanceof a0) {
                        a0Var = (a0) h10;
                    }
                    if (a0Var == null) {
                        return h10;
                    }
                    throw a0Var.f30621a;
                }
            }
            InterruptedException interruptedException = new InterruptedException();
            J(interruptedException);
            throw interruptedException;
        } catch (Throwable th) {
            c.a();
            throw th;
        }
    }

    @Override // td.z1
    protected boolean p0() {
        return true;
    }
}
