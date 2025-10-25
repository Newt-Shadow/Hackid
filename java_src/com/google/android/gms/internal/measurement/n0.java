package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class n0 implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f6573a;

    /* renamed from: g  reason: collision with root package name */
    private final String f6574g;

    /* JADX INFO: Access modifiers changed from: protected */
    public n0(IBinder iBinder, String str) {
        this.f6573a = iBinder;
        this.f6574g = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel a(int i10, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f6573a.transact(i10, parcel, obtain, 0);
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

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6573a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e1(int i10, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f6573a.transact(i10, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f1(int i10, Parcel parcel) {
        try {
            this.f6573a.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel k() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f6574g);
        return obtain;
    }
}
