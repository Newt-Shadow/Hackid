package com.yandex.metrica;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public interface IMetricaService extends IInterface {
    void a(int i10, Bundle bundle);

    void a(Bundle bundle);

    void b(Bundle bundle);

    void reportData(Bundle bundle);

    /* loaded from: classes.dex */
    public static abstract class a extends Binder implements IMetricaService {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int f9538a = 0;

        public a() {
            attachInterface(this, "com.yandex.metrica.IMetricaService");
        }

        public static IMetricaService a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.yandex.metrica.IMetricaService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IMetricaService)) {
                return (IMetricaService) queryLocalInterface;
            }
            return new C0118a(iBinder);
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) {
            if (i10 != 1598968902) {
                Bundle bundle = null;
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 != 4) {
                                if (i10 != 5) {
                                    return super.onTransact(i10, parcel, parcel2, i11);
                                }
                                parcel.enforceInterface("com.yandex.metrica.IMetricaService");
                                int readInt = parcel.readInt();
                                if (parcel.readInt() != 0) {
                                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                                }
                                MetricaService.f9540c.a(readInt, bundle);
                                return true;
                            }
                            parcel.enforceInterface("com.yandex.metrica.IMetricaService");
                            if (parcel.readInt() != 0) {
                                bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                            }
                            MetricaService.f9540c.a(bundle);
                            return true;
                        }
                        parcel.enforceInterface("com.yandex.metrica.IMetricaService");
                        if (parcel.readInt() != 0) {
                            bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                        }
                        MetricaService.f9540c.b(bundle);
                        return true;
                    }
                    parcel.enforceInterface("com.yandex.metrica.IMetricaService");
                    if (parcel.readInt() != 0) {
                        bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                    }
                    MetricaService.f9540c.reportData(bundle);
                    return true;
                }
                parcel.enforceInterface("com.yandex.metrica.IMetricaService");
                String readString = parcel.readString();
                int readInt2 = parcel.readInt();
                String readString2 = parcel.readString();
                if (parcel.readInt() != 0) {
                    bundle = (Bundle) Bundle.CREATOR.createFromParcel(parcel);
                }
                MetricaService.f9540c.a(readString, readInt2, readString2, bundle);
                return true;
            }
            parcel2.writeString("com.yandex.metrica.IMetricaService");
            return true;
        }

        /* renamed from: com.yandex.metrica.IMetricaService$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        private static class C0118a implements IMetricaService {

            /* renamed from: a  reason: collision with root package name */
            private IBinder f9539a;

            C0118a(IBinder iBinder) {
                this.f9539a = iBinder;
            }

            @Override // com.yandex.metrica.IMetricaService
            public void a(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.yandex.metrica.IMetricaService");
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                    if (!this.f9539a.transact(4, obtain, null, 1)) {
                        int i10 = a.f9538a;
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f9539a;
            }

            @Override // com.yandex.metrica.IMetricaService
            public void b(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.yandex.metrica.IMetricaService");
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                    if (!this.f9539a.transact(3, obtain, null, 1)) {
                        int i10 = a.f9538a;
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.yandex.metrica.IMetricaService
            public void reportData(Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.yandex.metrica.IMetricaService");
                    obtain.writeInt(1);
                    bundle.writeToParcel(obtain, 0);
                    if (!this.f9539a.transact(2, obtain, null, 1)) {
                        int i10 = a.f9538a;
                    }
                } finally {
                    obtain.recycle();
                }
            }

            @Override // com.yandex.metrica.IMetricaService
            public void a(int i10, Bundle bundle) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("com.yandex.metrica.IMetricaService");
                    obtain.writeInt(i10);
                    if (bundle != null) {
                        obtain.writeInt(1);
                        bundle.writeToParcel(obtain, 0);
                    } else {
                        obtain.writeInt(0);
                    }
                    if (!this.f9539a.transact(5, obtain, null, 1)) {
                        int i11 = a.f9538a;
                    }
                } finally {
                    obtain.recycle();
                }
            }
        }
    }
}
