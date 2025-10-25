package io.appmetrica.analytics.ecommerce;
/* loaded from: classes2.dex */
public class ECommerceReferrer {

    /* renamed from: a  reason: collision with root package name */
    private String f17804a;

    /* renamed from: b  reason: collision with root package name */
    private String f17805b;

    /* renamed from: c  reason: collision with root package name */
    private ECommerceScreen f17806c;

    public String getIdentifier() {
        return this.f17805b;
    }

    public ECommerceScreen getScreen() {
        return this.f17806c;
    }

    public String getType() {
        return this.f17804a;
    }

    public ECommerceReferrer setIdentifier(String str) {
        this.f17805b = str;
        return this;
    }

    public ECommerceReferrer setScreen(ECommerceScreen eCommerceScreen) {
        this.f17806c = eCommerceScreen;
        return this;
    }

    public ECommerceReferrer setType(String str) {
        this.f17804a = str;
        return this;
    }

    public String toString() {
        return "ECommerceReferrer{type='" + this.f17804a + "', identifier='" + this.f17805b + "', screen=" + this.f17806c + '}';
    }
}
