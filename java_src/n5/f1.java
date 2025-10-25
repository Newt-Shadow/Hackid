package n5;

import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
/* loaded from: classes.dex */
public final class f1 extends u0 {

    /* renamed from: a  reason: collision with root package name */
    private c f26298a;

    /* renamed from: g  reason: collision with root package name */
    private final int f26299g;

    public f1(c cVar, int i10) {
        this.f26298a = cVar;
        this.f26299g = i10;
    }

    @Override // n5.l
    public final void B(int i10, IBinder iBinder, j1 j1Var) {
        c cVar = this.f26298a;
        q.l(cVar, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        q.k(j1Var);
        c.c0(cVar, j1Var);
        h0(i10, iBinder, j1Var.f26333a);
    }

    @Override // n5.l
    public final void K(int i10, Bundle bundle) {
        Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
    }

    @Override // n5.l
    public final void h0(int i10, IBinder iBinder, Bundle bundle) {
        q.l(this.f26298a, "onPostInitComplete can be called only once per call to getRemoteService");
        this.f26298a.N(i10, iBinder, bundle, this.f26299g);
        this.f26298a = null;
    }
}
