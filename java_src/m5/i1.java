package m5;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class i1 extends q0 {

    /* renamed from: b  reason: collision with root package name */
    protected final m6.l f25817b;

    public i1(int i10, m6.l lVar) {
        super(i10);
        this.f25817b = lVar;
    }

    @Override // m5.n1
    public final void a(Status status) {
        this.f25817b.d(new com.google.android.gms.common.api.b(status));
    }

    @Override // m5.n1
    public final void b(Exception exc) {
        this.f25817b.d(exc);
    }

    @Override // m5.n1
    public final void c(i0 i0Var) {
        try {
            h(i0Var);
        } catch (DeadObjectException e10) {
            a(n1.e(e10));
            throw e10;
        } catch (RemoteException e11) {
            a(n1.e(e11));
        } catch (RuntimeException e12) {
            this.f25817b.d(e12);
        }
    }

    protected abstract void h(i0 i0Var);
}
