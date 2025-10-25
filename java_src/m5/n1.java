package m5;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public abstract class n1 {

    /* renamed from: a  reason: collision with root package name */
    public final int f25841a;

    public n1(int i10) {
        this.f25841a = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ Status e(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void a(Status status);

    public abstract void b(Exception exc);

    public abstract void c(i0 i0Var);

    public abstract void d(z zVar, boolean z10);
}
