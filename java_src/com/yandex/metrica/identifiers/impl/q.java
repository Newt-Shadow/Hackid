package com.yandex.metrica.identifiers.impl;

import android.os.IBinder;
import android.os.IInterface;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class q extends kotlin.jvm.internal.n implements id.l {

    /* renamed from: e  reason: collision with root package name */
    public static final q f9678e = new q();

    q() {
        super(1);
    }

    @Override // id.l
    public Object invoke(Object obj) {
        v tVar;
        IBinder it = (IBinder) obj;
        kotlin.jvm.internal.m.e(it, "it");
        int i10 = u.f9682a;
        if (it == null) {
            tVar = null;
        } else {
            IInterface queryLocalInterface = it.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            if (queryLocalInterface != null && (queryLocalInterface instanceof v)) {
                tVar = (v) queryLocalInterface;
            } else {
                tVar = new t(it);
            }
        }
        kotlin.jvm.internal.m.d(tVar, "OpenDeviceIdentifierService.Stub.asInterface(it)");
        return tVar;
    }
}
