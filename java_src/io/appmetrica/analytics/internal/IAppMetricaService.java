package io.appmetrica.analytics.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public interface IAppMetricaService extends IInterface {
    public static final String DESCRIPTOR = "io.appmetrica.analytics.internal.IAppMetricaService";

    /* loaded from: classes2.dex */
    public static class Default implements IAppMetricaService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // io.appmetrica.analytics.internal.IAppMetricaService
        public void pauseUserSession(Bundle bundle) {
        }

        @Override // io.appmetrica.analytics.internal.IAppMetricaService
        public void reportData(int i10, Bundle bundle) {
        }

        @Override // io.appmetrica.analytics.internal.IAppMetricaService
        public void resumeUserSession(Bundle bundle) {
        }
    }

    /* loaded from: classes2.dex */
    public static abstract class Stub extends Binder implements IAppMetricaService {
        public Stub() {
            attachInterface(this, IAppMetricaService.DESCRIPTOR);
        }

        public static IAppMetricaService asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IAppMetricaService.DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IAppMetricaService)) {
                return (IAppMetricaService) queryLocalInterface;
            }
            return new c(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 >= 1 && i10 <= 16777215) {
                parcel.enforceInterface(IAppMetricaService.DESCRIPTOR);
            }
            if (i10 == 1598968902) {
                parcel2.writeString(IAppMetricaService.DESCRIPTOR);
                return true;
            }
            Object obj = null;
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        return super.onTransact(i10, parcel, parcel2, i11);
                    }
                    int readInt = parcel.readInt();
                    Parcelable.Creator creator = Bundle.CREATOR;
                    if (parcel.readInt() != 0) {
                        obj = creator.createFromParcel(parcel);
                    }
                    reportData(readInt, (Bundle) obj);
                } else {
                    Parcelable.Creator creator2 = Bundle.CREATOR;
                    if (parcel.readInt() != 0) {
                        obj = creator2.createFromParcel(parcel);
                    }
                    pauseUserSession((Bundle) obj);
                }
            } else {
                Parcelable.Creator creator3 = Bundle.CREATOR;
                if (parcel.readInt() != 0) {
                    obj = creator3.createFromParcel(parcel);
                }
                resumeUserSession((Bundle) obj);
            }
            return true;
        }
    }

    /* loaded from: classes2.dex */
    public static class _Parcel {
    }

    void pauseUserSession(Bundle bundle);

    void reportData(int i10, Bundle bundle);

    void resumeUserSession(Bundle bundle);
}
