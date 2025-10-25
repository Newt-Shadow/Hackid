package m5;

import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public interface f extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class a extends a6.b implements f {
        public a() {
            super("com.google.android.gms.common.api.internal.IStatusCallback");
        }

        @Override // a6.b
        protected final boolean e1(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 == 1) {
                a6.c.b(parcel);
                I((Status) a6.c.a(parcel, Status.CREATOR));
                return true;
            }
            return false;
        }
    }

    void I(Status status);
}
