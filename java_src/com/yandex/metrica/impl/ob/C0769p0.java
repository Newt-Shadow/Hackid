package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C1012z4;
import com.yandex.metrica.networktasks.api.ConfigProvider;
import com.yandex.metrica.networktasks.api.NetworkServiceLocator;
/* renamed from: com.yandex.metrica.impl.ob.p0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0769p0<C extends C1012z4> extends C0938w2<C> {

    /* renamed from: e  reason: collision with root package name */
    private final E4 f13099e;

    /* renamed from: f  reason: collision with root package name */
    private final C0428b8 f13100f;

    public C0769p0(C c10, InterfaceC1002yi interfaceC1002yi, E4 e42, C0428b8 c0428b8) {
        super(c10, interfaceC1002yi);
        this.f13099e = e42;
        this.f13100f = c0428b8;
    }

    public void a(C0445c0 c0445c0) {
        if (!this.f13854c) {
            synchronized (this.f13853b) {
                if (!this.f13854c) {
                    f();
                }
            }
            NetworkServiceLocator.a().b().c(C0829rd.a(((C1012z4) e()).b(), (ConfigProvider) e(), c0445c0, this.f13099e, this.f13100f));
        }
    }
}
