package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.NetworkServiceLocator;
import com.yandex.metrica.networktasks.api.NetworkTask;
/* renamed from: com.yandex.metrica.impl.ob.xi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0978xi implements InterfaceC1002yi {

    /* renamed from: a  reason: collision with root package name */
    private final C0834ri f13964a;

    public C0978xi(C0834ri c0834ri) {
        this.f13964a = c0834ri;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC1002yi
    public void a() {
        NetworkTask c10 = this.f13964a.c();
        if (c10 != null) {
            NetworkServiceLocator.a().b().c(c10);
        }
    }
}
