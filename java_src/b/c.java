package b;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public interface c extends IInterface {

    /* renamed from: d  reason: collision with root package name */
    public static final String f3670d = "android$support$customtabs$IEngagementSignalsCallback".replace('$', '.');

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements c {
        public a() {
            attachInterface(this, c.f3670d);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = c.f3670d;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            boolean z10 = false;
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 4) {
                        return super.onTransact(i10, parcel, parcel2, i11);
                    }
                    if (parcel.readInt() != 0) {
                        z10 = true;
                    }
                    onSessionEnded(z10, (Bundle) b.b(parcel, Bundle.CREATOR));
                } else {
                    onGreatestScrollPercentageIncreased(parcel.readInt(), (Bundle) b.b(parcel, Bundle.CREATOR));
                }
            } else {
                if (parcel.readInt() != 0) {
                    z10 = true;
                }
                onVerticalScrollEvent(z10, (Bundle) b.b(parcel, Bundle.CREATOR));
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static Object b(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }
    }

    void onGreatestScrollPercentageIncreased(int i10, Bundle bundle);

    void onSessionEnded(boolean z10, Bundle bundle);

    void onVerticalScrollEvent(boolean z10, Bundle bundle);
}
