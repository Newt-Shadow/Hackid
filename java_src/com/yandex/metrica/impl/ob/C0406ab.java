package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceReferrer;
/* renamed from: com.yandex.metrica.impl.ob.ab  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0406ab {

    /* renamed from: a  reason: collision with root package name */
    public final String f11967a;

    /* renamed from: b  reason: collision with root package name */
    public final String f11968b;

    /* renamed from: c  reason: collision with root package name */
    public final C0431bb f11969c;

    public C0406ab(ECommerceReferrer eCommerceReferrer) {
        this(eCommerceReferrer.getType(), eCommerceReferrer.getIdentifier(), eCommerceReferrer.getScreen() == null ? null : new C0431bb(eCommerceReferrer.getScreen()));
    }

    public String toString() {
        return "ReferrerWrapper{type='" + this.f11967a + "', identifier='" + this.f11968b + "', screen=" + this.f11969c + '}';
    }

    public C0406ab(String str, String str2, C0431bb c0431bb) {
        this.f11967a = str;
        this.f11968b = str2;
        this.f11969c = c0431bb;
    }
}
