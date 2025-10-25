package d6;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final class s implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int x10 = o5.b.x(parcel);
        int i10 = 1;
        p pVar = null;
        IBinder iBinder = null;
        PendingIntent pendingIntent = null;
        IBinder iBinder2 = null;
        IBinder iBinder3 = null;
        while (parcel.dataPosition() < x10) {
            int q10 = o5.b.q(parcel);
            switch (o5.b.k(q10)) {
                case 1:
                    i10 = o5.b.s(parcel, q10);
                    break;
                case 2:
                    pVar = (p) o5.b.e(parcel, q10, p.CREATOR);
                    break;
                case 3:
                    iBinder = o5.b.r(parcel, q10);
                    break;
                case 4:
                    pendingIntent = (PendingIntent) o5.b.e(parcel, q10, PendingIntent.CREATOR);
                    break;
                case 5:
                    iBinder2 = o5.b.r(parcel, q10);
                    break;
                case 6:
                    iBinder3 = o5.b.r(parcel, q10);
                    break;
                default:
                    o5.b.w(parcel, q10);
                    break;
            }
        }
        o5.b.j(parcel, x10);
        return new r(i10, pVar, iBinder, pendingIntent, iBinder2, iBinder3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i10) {
        return new r[i10];
    }
}
