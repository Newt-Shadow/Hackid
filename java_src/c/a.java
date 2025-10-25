package c;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes.dex */
public interface a extends IInterface {

    /* renamed from: e  reason: collision with root package name */
    public static final String f4784e = "android$support$v4$app$INotificationSideChannel".replace('$', '.');

    /* renamed from: c.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractBinderC0084a extends Binder implements a {

        /* renamed from: c.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0085a implements a {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f4785a;

            C0085a(IBinder iBinder) {
                this.f4785a = iBinder;
            }

            @Override // c.a
            public void X0(String str, int i10, String str2, Notification notification) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(a.f4784e);
                    obtain.writeString(str);
                    obtain.writeInt(i10);
                    obtain.writeString(str2);
                    b.b(obtain, notification, 0);
                    this.f4785a.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4785a;
            }
        }

        public static a a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(a.f4784e);
            if (queryLocalInterface != null && (queryLocalInterface instanceof a)) {
                return (a) queryLocalInterface;
            }
            return new C0085a(iBinder);
        }
    }

    /* loaded from: classes.dex */
    public static class b {
        /* JADX INFO: Access modifiers changed from: private */
        public static void b(Parcel parcel, Parcelable parcelable, int i10) {
            if (parcelable != null) {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i10);
                return;
            }
            parcel.writeInt(0);
        }
    }

    void X0(String str, int i10, String str2, Notification notification);
}
