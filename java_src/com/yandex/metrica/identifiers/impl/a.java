package com.yandex.metrica.identifiers.impl;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes.dex */
class a implements c {

    /* renamed from: a  reason: collision with root package name */
    private IBinder f9655a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(IBinder iBinder) {
        this.f9655a = iBinder;
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this.f9655a;
    }

    @Override // com.yandex.metrica.identifiers.impl.c
    public String b() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.yandex.android.advid.service.YandexAdvIdInterface");
            if (!this.f9655a.transact(1, obtain, obtain2, 0)) {
                int i10 = b.f9656a;
            }
            obtain2.readException();
            return obtain2.readString();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // com.yandex.metrica.identifiers.impl.c
    public boolean d() {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.yandex.android.advid.service.YandexAdvIdInterface");
            if (!this.f9655a.transact(2, obtain, obtain2, 0)) {
                int i10 = b.f9656a;
            }
            obtain2.readException();
            return obtain2.readInt() != 0;
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
