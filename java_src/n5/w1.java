package n5;

import android.os.IBinder;
import android.os.Parcel;
import u5.a;
/* loaded from: classes.dex */
public final class w1 extends c6.a implements t0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public w1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // n5.t0
    public final int f() {
        Parcel a10 = a(2, k());
        int readInt = a10.readInt();
        a10.recycle();
        return readInt;
    }

    @Override // n5.t0
    public final u5.a g() {
        Parcel a10 = a(1, k());
        u5.a d10 = a.AbstractBinderC0341a.d(a10.readStrongBinder());
        a10.recycle();
        return d10;
    }
}
