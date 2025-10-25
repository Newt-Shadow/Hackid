package x5;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class g extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.appset.internal.IAppSetService");
    }

    public final void f1(c5.c cVar, f fVar) {
        Parcel k10 = k();
        c.b(k10, cVar);
        c.c(k10, fVar);
        e1(1, k10);
    }
}
