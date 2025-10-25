package m5;

import android.util.Log;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public final class j1 extends n1 {

    /* renamed from: b  reason: collision with root package name */
    protected final com.google.android.gms.common.api.internal.a f25823b;

    public j1(int i10, com.google.android.gms.common.api.internal.a aVar) {
        super(i10);
        this.f25823b = (com.google.android.gms.common.api.internal.a) n5.q.l(aVar, "Null methods are not runnable.");
    }

    @Override // m5.n1
    public final void a(Status status) {
        try {
            this.f25823b.o(status);
        } catch (IllegalStateException e10) {
            Log.w("ApiCallRunner", "Exception reporting failure", e10);
        }
    }

    @Override // m5.n1
    public final void b(Exception exc) {
        String simpleName = exc.getClass().getSimpleName();
        String localizedMessage = exc.getLocalizedMessage();
        try {
            this.f25823b.o(new Status(10, simpleName + ": " + localizedMessage));
        } catch (IllegalStateException e10) {
            Log.w("ApiCallRunner", "Exception reporting failure", e10);
        }
    }

    @Override // m5.n1
    public final void c(i0 i0Var) {
        try {
            this.f25823b.m(i0Var.v());
        } catch (RuntimeException e10) {
            b(e10);
        }
    }

    @Override // m5.n1
    public final void d(z zVar, boolean z10) {
        zVar.c(this.f25823b, z10);
    }
}
