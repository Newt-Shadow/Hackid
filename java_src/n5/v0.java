package n5;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
final class v0 implements m {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f26405a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v0(IBinder iBinder) {
        this.f26405a = iBinder;
    }

    @Override // n5.m
    public final void N0(l lVar, g gVar) {
        IBinder iBinder;
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            if (lVar != null) {
                iBinder = lVar.asBinder();
            } else {
                iBinder = null;
            }
            obtain.writeStrongBinder(iBinder);
            if (gVar != null) {
                obtain.writeInt(1);
                m1.a(gVar, obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.f26405a.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f26405a;
    }
}
