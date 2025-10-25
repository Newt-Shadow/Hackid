package i6;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.n0;
import java.util.List;
/* loaded from: classes.dex */
public final class f extends n0 implements h {
    /* JADX INFO: Access modifiers changed from: package-private */
    public f(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.ITriggerUrisCallback");
    }

    @Override // i6.h
    public final void M0(List list) {
        Parcel k10 = k();
        k10.writeTypedList(list);
        f1(2, k10);
    }
}
