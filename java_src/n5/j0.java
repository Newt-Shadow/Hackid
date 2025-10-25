package n5;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class j0 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        int i10 = -1;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        String str = null;
        String str2 = null;
        long j10 = 0;
        long j11 = 0;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            switch (o5.b.k(q10)) {
                case 1:
                    i11 = o5.b.s(parcel, q10);
                    break;
                case 2:
                    i12 = o5.b.s(parcel, q10);
                    break;
                case 3:
                    i13 = o5.b.s(parcel, q10);
                    break;
                case 4:
                    j10 = o5.b.t(parcel, q10);
                    break;
                case 5:
                    j11 = o5.b.t(parcel, q10);
                    break;
                case 6:
                    str = o5.b.f(parcel, q10);
                    break;
                case 7:
                    str2 = o5.b.f(parcel, q10);
                    break;
                case 8:
                    i14 = o5.b.s(parcel, q10);
                    break;
                case 9:
                    i10 = o5.b.s(parcel, q10);
                    break;
                default:
                    o5.b.w(parcel, q10);
                    break;
            }
        }
        o5.b.j(parcel, x10);
        return new n(i11, i12, i13, j10, j11, str, str2, i14, i10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new n[i10];
    }
}
