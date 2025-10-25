package k5;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class d implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        Intent intent = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            if (o5.b.k(q10) != 1) {
                o5.b.w(parcel, q10);
            } else {
                intent = (Intent) o5.b.e(parcel, q10, Intent.CREATOR);
            }
        }
        o5.b.j(parcel, x10);
        return new a(intent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i10) {
        return new a[i10];
    }
}
