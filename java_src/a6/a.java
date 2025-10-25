package a6;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f111a;

    /* renamed from: g  reason: collision with root package name */
    private final String f112g;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f111a = iBinder;
        this.f112g = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f111a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e1(int i10, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f111a.transact(i10, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f1(int i10, Parcel parcel) {
        try {
            this.f111a.transact(1, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel k() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f112g);
        return obtain;
    }
}
