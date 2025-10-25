package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes.dex */
public abstract class a implements IInterface {

    /* renamed from: a  reason: collision with root package name */
    private final IBinder f5958a;

    /* renamed from: g  reason: collision with root package name */
    private final String f5959g;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(IBinder iBinder, String str) {
        this.f5958a = iBinder;
        this.f5959g = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f5958a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel e1(int i10, Parcel parcel) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f5958a.transact(i10, parcel, obtain, 0);
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
            this.f5958a.transact(i10, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final Parcel k() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f5959g);
        return obtain;
    }
}
