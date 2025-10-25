package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.C0927vf;
/* loaded from: classes2.dex */
public abstract class Ne<T> extends Se {

    /* renamed from: f  reason: collision with root package name */
    private final T f10898f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ne(int i10, String str, T t10, Kn<String> kn, Ke ke2) {
        super(i10, str, kn, ke2);
        this.f10898f = t10;
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0435bf
    public void a(C0410af c0410af) {
        C0927vf.a a10;
        if (!e() || (a10 = b().a(c0410af, c0410af.a(d(), c()), this)) == null) {
            return;
        }
        a(a10);
    }

    protected abstract void a(C0927vf.a aVar);

    public T f() {
        return this.f10898f;
    }
}
