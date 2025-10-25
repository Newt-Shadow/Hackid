package k6;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class g extends a6.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    public final void g1(j jVar, f fVar) {
        Parcel k10 = k();
        a6.c.c(k10, jVar);
        a6.c.d(k10, fVar);
        e1(12, k10);
    }
}
