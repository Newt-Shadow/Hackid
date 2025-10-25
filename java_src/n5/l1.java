package n5;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class l1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        s sVar = null;
        int[] iArr = null;
        int[] iArr2 = null;
        boolean z10 = false;
        boolean z11 = false;
        int i10 = 0;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            switch (o5.b.k(q10)) {
                case 1:
                    sVar = (s) o5.b.e(parcel, q10, s.CREATOR);
                    break;
                case 2:
                    z10 = o5.b.l(parcel, q10);
                    break;
                case 3:
                    z11 = o5.b.l(parcel, q10);
                    break;
                case 4:
                    iArr = o5.b.c(parcel, q10);
                    break;
                case 5:
                    i10 = o5.b.s(parcel, q10);
                    break;
                case 6:
                    iArr2 = o5.b.c(parcel, q10);
                    break;
                default:
                    o5.b.w(parcel, q10);
                    break;
            }
        }
        o5.b.j(parcel, x10);
        return new f(sVar, z10, z11, iArr, i10, iArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new f[i10];
    }
}
