package com.yandex.metrica.impl.ob;
/* loaded from: classes2.dex */
public class Qf implements Kn<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final Sf f11155a;

    public Qf(Sf sf2) {
        this.f11155a = sf2;
    }

    @Override // com.yandex.metrica.impl.ob.Kn
    public In a(Void r12) {
        this.f11155a.getClass();
        if (R2.h()) {
            return In.a(this);
        }
        return In.a(this, "YandexMetrica isn't initialized. Use YandexMetrica#activate(android.content.Context, String) method to activate.");
    }

    public In a() {
        this.f11155a.getClass();
        if (R2.h()) {
            return In.a(this);
        }
        return In.a(this, "YandexMetrica isn't initialized. Use YandexMetrica#activate(android.content.Context, String) method to activate.");
    }
}
