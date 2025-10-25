package z5;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
public final class g extends a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService");
    }

    public final void f1(i iVar) {
        Parcel k10 = k();
        f.c(k10, iVar);
        e1(1, k10);
    }

    public final void g1(String str, i iVar) {
        Parcel k10 = k();
        k10.writeString(str);
        f.c(k10, iVar);
        e1(2, k10);
    }
}
