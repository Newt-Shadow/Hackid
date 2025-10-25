package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Mb extends Uc<Xb> {

    /* renamed from: c  reason: collision with root package name */
    private final String f10800c;

    public Mb(InterfaceC0557gc interfaceC0557gc, String str) {
        this(interfaceC0557gc, str, new C0962x2());
    }

    @Override // com.yandex.metrica.impl.ob.Lb
    public boolean a(Object obj) {
        Wb wb2 = ((Xb) obj).f11779b;
        return wb2 != null && a(wb2.f11693b);
    }

    @Override // com.yandex.metrica.impl.ob.Lb
    public boolean b(Object obj) {
        return ((Xb) obj).f11778a.f11152a;
    }

    Mb(InterfaceC0557gc interfaceC0557gc, String str, C0962x2 c0962x2) {
        super(interfaceC0557gc, c0962x2);
        this.f10800c = str;
    }

    @Override // com.yandex.metrica.impl.ob.Uc
    protected String a() {
        return this.f10800c;
    }
}
