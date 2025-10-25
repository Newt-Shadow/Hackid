package com.yandex.metrica.ecommerce;
/* loaded from: classes.dex */
public class ECommerceReferrer {

    /* renamed from: a  reason: collision with root package name */
    private String f9620a;

    /* renamed from: b  reason: collision with root package name */
    private String f9621b;

    /* renamed from: c  reason: collision with root package name */
    private ECommerceScreen f9622c;

    public String getIdentifier() {
        return this.f9621b;
    }

    public ECommerceScreen getScreen() {
        return this.f9622c;
    }

    public String getType() {
        return this.f9620a;
    }

    public ECommerceReferrer setIdentifier(String str) {
        this.f9621b = str;
        return this;
    }

    public ECommerceReferrer setScreen(ECommerceScreen eCommerceScreen) {
        this.f9622c = eCommerceScreen;
        return this;
    }

    public ECommerceReferrer setType(String str) {
        this.f9620a = str;
        return this;
    }

    public String toString() {
        return "ECommerceReferrer{type='" + this.f9620a + "', identifier='" + this.f9621b + "', screen=" + this.f9622c + '}';
    }
}
