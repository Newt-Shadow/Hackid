package com.yandex.metrica.impl.ob;

import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
class Wl implements Callable<String> {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Xl f11707a;

    Wl(Xl xl) {
        this.f11707a = xl;
    }

    @Override // java.util.concurrent.Callable
    public String call() {
        String a10;
        a10 = this.f11707a.a();
        return a10;
    }
}
