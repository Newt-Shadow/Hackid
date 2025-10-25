package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.k;
import n5.q;
/* loaded from: classes.dex */
public abstract class a extends BasePendingResult {

    /* renamed from: n  reason: collision with root package name */
    private final a.c f5909n;

    /* renamed from: o  reason: collision with root package name */
    private final com.google.android.gms.common.api.a f5910o;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(com.google.android.gms.common.api.a aVar, f fVar) {
        super((f) q.l(fVar, "GoogleApiClient must not be null"));
        q.l(aVar, "Api must not be null");
        this.f5909n = aVar.b();
        this.f5910o = aVar;
    }

    private void n(RemoteException remoteException) {
        o(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
    }

    protected abstract void k(a.b bVar);

    protected void l(k kVar) {
    }

    public final void m(a.b bVar) {
        try {
            k(bVar);
        } catch (DeadObjectException e10) {
            n(e10);
            throw e10;
        } catch (RemoteException e11) {
            n(e11);
        }
    }

    public final void o(Status status) {
        q.b(!status.n(), "Failed result must not be success");
        k c10 = c(status);
        f(c10);
        l(c10);
    }
}
