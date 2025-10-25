package x5;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f32482a;

    /* renamed from: g  reason: collision with root package name */
    private final String f32483g = "com.google.android.gms.appset.internal.IAppSetService";

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f32482a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f32482a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e1(int i10, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f32482a.transact(1, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel k() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f32483g);
        return obtain;
    }
}
