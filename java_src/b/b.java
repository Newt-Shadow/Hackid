package b;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes.dex */
public interface b extends IInterface {

    /* renamed from: c  reason: collision with root package name */
    public static final String f3668c = "android$support$customtabs$ICustomTabsService".replace('$', '.');

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements b {

        /* renamed from: b.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0068a implements b {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f3669a;

            C0068a(IBinder iBinder) {
                this.f3669a = iBinder;
            }

            @Override // b.b
            public boolean A0(b.a aVar, int i10, Uri uri, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f3668c);
                    obtain.writeStrongInterface(aVar);
                    obtain.writeInt(i10);
                    boolean z10 = false;
                    C0069b.d(obtain, uri, 0);
                    C0069b.d(obtain, bundle, 0);
                    this.f3669a.transact(9, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // b.b
            public boolean B0(b.a aVar, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f3668c);
                    obtain.writeStrongInterface(aVar);
                    boolean z10 = false;
                    C0069b.d(obtain, bundle, 0);
                    this.f3669a.transact(6, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // b.b
            public boolean D0(b.a aVar, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f3668c);
                    obtain.writeStrongInterface(aVar);
                    boolean z10 = false;
                    C0069b.d(obtain, bundle, 0);
                    this.f3669a.transact(10, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // b.b
            public boolean P(b.a aVar, Uri uri, Bundle bundle, List list) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f3668c);
                    obtain.writeStrongInterface(aVar);
                    boolean z10 = false;
                    C0069b.d(obtain, uri, 0);
                    C0069b.d(obtain, bundle, 0);
                    C0069b.c(obtain, list, 0);
                    this.f3669a.transact(4, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // b.b
            public boolean V(long j10) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f3668c);
                    obtain.writeLong(j10);
                    boolean z10 = false;
                    this.f3669a.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // b.b
            public boolean a0(b.a aVar) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f3668c);
                    obtain.writeStrongInterface(aVar);
                    boolean z10 = false;
                    this.f3669a.transact(3, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f3669a;
            }

            @Override // b.b
            public boolean d0(b.a aVar, IBinder iBinder, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f3668c);
                    obtain.writeStrongInterface(aVar);
                    obtain.writeStrongBinder(iBinder);
                    boolean z10 = false;
                    C0069b.d(obtain, bundle, 0);
                    this.f3669a.transact(14, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // b.b
            public boolean l0(b.a aVar, Uri uri) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f3668c);
                    obtain.writeStrongInterface(aVar);
                    boolean z10 = false;
                    C0069b.d(obtain, uri, 0);
                    this.f3669a.transact(7, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // b.b
            public boolean r(b.a aVar, Uri uri, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f3668c);
                    obtain.writeStrongInterface(aVar);
                    boolean z10 = false;
                    C0069b.d(obtain, uri, 0);
                    C0069b.d(obtain, bundle, 0);
                    this.f3669a.transact(11, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // b.b
            public boolean u0(b.a aVar, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f3668c);
                    obtain.writeStrongInterface(aVar);
                    boolean z10 = false;
                    C0069b.d(obtain, bundle, 0);
                    this.f3669a.transact(13, obtain, obtain2, 0);
                    obtain2.readException();
                    if (obtain2.readInt() != 0) {
                        z10 = true;
                    }
                    return z10;
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // b.b
            public int x(b.a aVar, String str, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(b.f3668c);
                    obtain.writeStrongInterface(aVar);
                    obtain.writeString(str);
                    C0069b.d(obtain, bundle, 0);
                    this.f3669a.transact(8, obtain, obtain2, 0);
                    obtain2.readException();
                    return obtain2.readInt();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static b a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(b.f3668c);
            if (queryLocalInterface != null && (queryLocalInterface instanceof b)) {
                return (b) queryLocalInterface;
            }
            return new C0068a(iBinder);
        }
    }

    /* renamed from: b.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0069b {
        /* JADX INFO: Access modifiers changed from: private */
        public static void c(Parcel parcel, List list, int i10) {
            if (list == null) {
                parcel.writeInt(-1);
                return;
            }
            int size = list.size();
            parcel.writeInt(size);
            for (int i11 = 0; i11 < size; i11++) {
                d(parcel, (Parcelable) list.get(i11), i10);
            }
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

    boolean A0(b.a aVar, int i10, Uri uri, Bundle bundle);

    boolean B0(b.a aVar, Bundle bundle);

    boolean D0(b.a aVar, Bundle bundle);

    boolean P(b.a aVar, Uri uri, Bundle bundle, List list);

    boolean V(long j10);

    boolean a0(b.a aVar);

    boolean d0(b.a aVar, IBinder iBinder, Bundle bundle);

    boolean l0(b.a aVar, Uri uri);

    boolean r(b.a aVar, Uri uri, Bundle bundle);

    boolean u0(b.a aVar, Bundle bundle);

    int x(b.a aVar, String str, Bundle bundle);
}
