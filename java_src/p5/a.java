package p5;

import android.os.IBinder;
import android.os.Parcel;
import n5.u;
/* loaded from: classes.dex */
public final class a extends a6.a {
    /* JADX INFO: Access modifiers changed from: package-private */
    public a(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.service.IClientTelemetryService");
    }

    public final void g1(u uVar) {
        Parcel k10 = k();
        a6.c.c(k10, uVar);
        f1(1, k10);
    }
}
