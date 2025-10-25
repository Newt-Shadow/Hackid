package m2;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f25597a;

    /* renamed from: g  reason: collision with root package name */
    private final String f25598g = "com.google.android.finsky.externalreferrer.IGetInstallReferrerService";

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder) {
        this.f25597a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f25597a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel e1(Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f25597a.transact(1, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e10) {
                obtain.recycle();
                throw e10;
            }
        } finally {
            parcel.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel k() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f25598g);
        return obtain;
    }
}
