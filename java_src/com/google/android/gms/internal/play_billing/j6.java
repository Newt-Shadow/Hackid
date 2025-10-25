package com.google.android.gms.internal.play_billing;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class j6 implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f7030a;

    /* renamed from: g  reason: collision with root package name */
    private final String f7031g = "com.android.vending.billing.IInAppBillingService";

    /* JADX INFO: Access modifiers changed from: protected */
    public j6(IBinder iBinder, String str) {
        this.f7030a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f7030a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel e1(int i10, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f7030a.transact(i10, parcel, obtain, 0);
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
    public final void f1(int i10, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f7030a.transact(i10, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g1(int i10, Parcel parcel) {
        try {
            this.f7030a.transact(i10, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel k() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f7031g);
        return obtain;
    }
}
