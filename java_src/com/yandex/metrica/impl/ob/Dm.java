package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Dm {

    /* renamed from: a  reason: collision with root package name */
    private final Zl<Em, Cm> f9926a;

    /* renamed from: b  reason: collision with root package name */
    private final Zl<EnumC0396a1, Cm> f9927b;

    public Dm() {
        this(new Am(), new Fm(), new C0982xm());
    }

    public Cm a(Em em) {
        return this.f9926a.a(em);
    }

    public Dm(Cm cm, Cm cm2, Cm cm3) {
        Zl<Em, Cm> zl = new Zl<>(cm);
        this.f9926a = zl;
        zl.a(Em.NONE, cm);
        zl.a(Em.EXTERNALLY_ENCRYPTED_EVENT_CRYPTER, cm2);
        zl.a(Em.AES_VALUE_ENCRYPTION, cm3);
        Zl<EnumC0396a1, Cm> zl2 = new Zl<>(cm);
        this.f9927b = zl2;
        zl2.a(EnumC0396a1.EVENT_TYPE_IDENTITY, cm3);
    }

    public Cm a(C0445c0 c0445c0) {
        return this.f9927b.a(EnumC0396a1.a(c0445c0.o()));
    }
}
