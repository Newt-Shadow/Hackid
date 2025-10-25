package b3;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import o6.q;
/* loaded from: classes.dex */
public abstract class q extends Binder {

    /* renamed from: a  reason: collision with root package name */
    private static final int f4334a;

    static {
        int i10;
        if (y4.q0.f32946a >= 30) {
            i10 = IBinder.getSuggestedMaxIpcSizeBytes();
        } else {
            i10 = 65536;
        }
        f4334a = i10;
    }

    public static o6.q a(IBinder iBinder) {
        int readInt;
        q.a r10 = o6.q.r();
        int i10 = 0;
        int i11 = 1;
        while (i11 != 0) {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInt(i10);
                try {
                    iBinder.transact(1, obtain, obtain2, 0);
                    while (true) {
                        readInt = obtain2.readInt();
                        if (readInt == 1) {
                            r10.a((Bundle) y4.a.e(obtain2.readBundle()));
                            i10++;
                        }
                    }
                    obtain2.recycle();
                    obtain.recycle();
                    i11 = readInt;
                } catch (RemoteException e10) {
                    throw new RuntimeException(e10);
                }
            } catch (Throwable th) {
                obtain2.recycle();
                obtain.recycle();
                throw th;
            }
        }
        return r10.k();
    }
}
