package i6;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.n0;
import com.google.android.gms.internal.measurement.p0;
import com.google.android.gms.measurement.internal.yc;
/* loaded from: classes.dex */
public final class i extends n0 implements k {
    /* JADX INFO: Access modifiers changed from: package-private */
    public i(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IUploadBatchesCallback");
    }

    @Override // i6.k
    public final void J0(yc ycVar) {
        Parcel k10 = k();
        p0.c(k10, ycVar);
        f1(2, k10);
    }
}
