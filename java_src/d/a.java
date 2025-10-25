package d;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* renamed from: f  reason: collision with root package name */
    public static final String f14272f = "android$support$v4$os$IResultReceiver".replace('$', '.');

    /* renamed from: d.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0136a extends Binder implements a {

        /* renamed from: d.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0137a implements a {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f14273a;

            C0137a(IBinder iBinder) {
                this.f14273a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f14273a;
            }
        }

        public AbstractBinderC0136a() {
            attachInterface(this, a.f14272f);
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(a.f14272f);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0137a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            String str = a.f14272f;
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(str);
                return true;
            } else if (i10 != 1) {
                return super.onTransact(i10, parcel, parcel2, i11);
            } else {
                d1(parcel.readInt(), (Bundle) b.b(parcel, Bundle.CREATOR));
                return true;
            }
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

    void d1(int i10, Bundle bundle);
}
