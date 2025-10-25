package b;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* renamed from: b  reason: collision with root package name */
    public static final String f3667b = "android$support$customtabs$ICustomTabsCallback".replace('$', '.');

    /* renamed from: b.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0067a extends Binder implements a {
        public AbstractBinderC0067a() {
            attachInterface(this, a.f3667b);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            boolean z10;
            String str = a.f3667b;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            switch (i10) {
                case 2:
                    I0(parcel.readInt(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    break;
                case 3:
                    z0(parcel.readString(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    break;
                case 4:
                    W0((Bundle) b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 5:
                    S0(parcel.readString(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    break;
                case 6:
                    int readInt = parcel.readInt();
                    Uri uri = (Uri) b.c(parcel, Uri.CREATOR);
                    if (parcel.readInt() != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    Y0(readInt, uri, z10, (Bundle) b.c(parcel, Bundle.CREATOR));
                    break;
                case 7:
                    Bundle M = M(parcel.readString(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    parcel2.writeNoException();
                    b.d(parcel2, M, 1);
                    break;
                case 8:
                    n0(parcel.readInt(), parcel.readInt(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    break;
                case 9:
                    E0((Bundle) b.c(parcel, Bundle.CREATOR));
                    break;
                case 10:
                    z(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), (Bundle) b.c(parcel, Bundle.CREATOR));
                    break;
                case 11:
                    Y((Bundle) b.c(parcel, Bundle.CREATOR));
                    break;
                case 12:
                    c0((Bundle) b.c(parcel, Bundle.CREATOR));
                    break;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static Object c(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void d(Parcel parcel, Parcelable parcelable, int i10) {
            if (parcelable != null) {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i10);
                return;
            }
            parcel.writeInt(0);
        }
    }

    void E0(Bundle bundle);

    void I0(int i10, Bundle bundle);

    Bundle M(String str, Bundle bundle);

    void S0(String str, Bundle bundle);

    void W0(Bundle bundle);

    void Y(Bundle bundle);

    void Y0(int i10, Uri uri, boolean z10, Bundle bundle);

    void c0(Bundle bundle);

    void n0(int i10, int i11, Bundle bundle);

    void z(int i10, int i11, int i12, int i13, int i14, Bundle bundle);

    void z0(String str, Bundle bundle);
}
