package l5;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class e0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        String str = null;
        IBinder iBinder = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            switch (o5.b.k(q10)) {
                case 1:
                    str = o5.b.f(parcel, q10);
                    break;
                case 2:
                    z10 = o5.b.l(parcel, q10);
                    break;
                case 3:
                    z11 = o5.b.l(parcel, q10);
                    break;
                case 4:
                    iBinder = o5.b.r(parcel, q10);
                    break;
                case 5:
                    z12 = o5.b.l(parcel, q10);
                    break;
                case 6:
                    z13 = o5.b.l(parcel, q10);
                    break;
                default:
                    o5.b.w(parcel, q10);
                    break;
            }
        }
        o5.b.j(parcel, x10);
        return new d0(str, z10, z11, iBinder, z12, z13);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new d0[i10];
    }
}
