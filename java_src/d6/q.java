package d6;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class q implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        ArrayList arrayList = p.f15030l;
        LocationRequest locationRequest = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        boolean z10 = false;
        boolean z11 = false;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        long j10 = Long.MAX_VALUE;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            int k10 = o5.b.k(q10);
            if (k10 != 1) {
                switch (k10) {
                    case 5:
                        arrayList = o5.b.i(parcel, q10, n5.d.CREATOR);
                        continue;
                    case 6:
                        str = o5.b.f(parcel, q10);
                        continue;
                    case 7:
                        z10 = o5.b.l(parcel, q10);
                        continue;
                    case 8:
                        z11 = o5.b.l(parcel, q10);
                        continue;
                    case 9:
                        z12 = o5.b.l(parcel, q10);
                        continue;
                    case 10:
                        str2 = o5.b.f(parcel, q10);
                        continue;
                    case 11:
                        z13 = o5.b.l(parcel, q10);
                        continue;
                    case 12:
                        z14 = o5.b.l(parcel, q10);
                        continue;
                    case 13:
                        str3 = o5.b.f(parcel, q10);
                        continue;
                    case 14:
                        j10 = o5.b.t(parcel, q10);
                        continue;
                    default:
                        o5.b.w(parcel, q10);
                        continue;
                }
            } else {
                locationRequest = (LocationRequest) o5.b.e(parcel, q10, LocationRequest.CREATOR);
            }
        }
        o5.b.j(parcel, x10);
        return new p(locationRequest, arrayList, str, z10, z11, z12, str2, z13, z14, str3, j10);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i10) {
        return new p[i10];
    }
}
