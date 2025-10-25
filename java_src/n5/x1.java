package n5;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class x1 extends c6.d implements t0 {
    public x1() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    public static t0 d(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        if (queryLocalInterface instanceof t0) {
            return (t0) queryLocalInterface;
        }
        return new w1(iBinder);
    }

    @Override // c6.d
    protected final boolean a(int i10, Parcel parcel, Parcel parcel2, int i11) {
        if (i10 != 1) {
            if (i10 != 2) {
                return false;
            }
            int f10 = f();
            parcel2.writeNoException();
            parcel2.writeInt(f10);
        } else {
            u5.a g10 = g();
            parcel2.writeNoException();
            c6.e.d(parcel2, g10);
        }
        return true;
    }
}
