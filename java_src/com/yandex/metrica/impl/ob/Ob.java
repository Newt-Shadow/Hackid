package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Ob implements Gc {

    /* renamed from: a  reason: collision with root package name */
    private final dc.d f10936a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0557gc f10937b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ob(InterfaceC0557gc interfaceC0557gc, dc.d dVar) {
        this.f10937b = interfaceC0557gc;
        this.f10936a = dVar;
    }

    @Override // com.yandex.metrica.impl.ob.Gc
    public void a() {
        this.f10937b.a(this.f10936a.currentTimeSeconds());
    }
}
