package com.yandex.metrica.identifiers.impl;

import android.os.IBinder;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class n extends kotlin.jvm.internal.n implements id.l {

    /* renamed from: e  reason: collision with root package name */
    public static final n f9675e = new n();

    n() {
        super(1);
    }

    @Override // id.l
    public Object invoke(Object obj) {
        IBinder it = (IBinder) obj;
        kotlin.jvm.internal.m.e(it, "it");
        c a10 = b.a(it);
        kotlin.jvm.internal.m.d(a10, "YandexAdvIdInterface.Stub.asInterface(it)");
        return a10;
    }
}
