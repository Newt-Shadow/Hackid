package m5;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public final class l1 extends q0 {

    /* renamed from: b  reason: collision with root package name */
    private final u f25829b;

    /* renamed from: c  reason: collision with root package name */
    private final m6.l f25830c;

    /* renamed from: d  reason: collision with root package name */
    private final s f25831d;

    public l1(int i10, u uVar, m6.l lVar, s sVar) {
        super(i10);
        this.f25830c = lVar;
        this.f25829b = uVar;
        this.f25831d = sVar;
        if (i10 == 2 && uVar.c()) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // m5.n1
    public final void a(Status status) {
        this.f25830c.d(this.f25831d.a(status));
    }

    @Override // m5.n1
    public final void b(Exception exc) {
        this.f25830c.d(exc);
    }

    @Override // m5.n1
    public final void c(i0 i0Var) {
        try {
            this.f25829b.b(i0Var.v(), this.f25830c);
        } catch (DeadObjectException e10) {
            throw e10;
        } catch (RemoteException e11) {
            a(n1.e(e11));
        } catch (RuntimeException e12) {
            this.f25830c.d(e12);
        }
    }

    @Override // m5.n1
    public final void d(z zVar, boolean z10) {
        zVar.d(this.f25830c, z10);
    }

    @Override // m5.q0
    public final boolean f(i0 i0Var) {
        return this.f25829b.c();
    }

    @Override // m5.q0
    public final l5.d[] g(i0 i0Var) {
        return this.f25829b.e();
    }
}
