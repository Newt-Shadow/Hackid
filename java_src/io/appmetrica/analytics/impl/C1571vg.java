package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.ecommerce.ECommerceReferrer;
/* renamed from: io.appmetrica.analytics.impl.vg  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1571vg {

    /* renamed from: a  reason: collision with root package name */
    public final String f20807a;

    /* renamed from: b  reason: collision with root package name */
    public final String f20808b;

    /* renamed from: c  reason: collision with root package name */
    public final C1076bj f20809c;

    public C1571vg(ECommerceReferrer eCommerceReferrer) {
        this(eCommerceReferrer.getType(), eCommerceReferrer.getIdentifier(), eCommerceReferrer.getScreen() == null ? null : new C1076bj(eCommerceReferrer.getScreen()));
    }

    public final String toString() {
        return "ReferrerWrapper{type='" + this.f20807a + "', identifier='" + this.f20808b + "', screen=" + this.f20809c + '}';
    }

    public C1571vg(String str, String str2, C1076bj c1076bj) {
        this.f20807a = str;
        this.f20808b = str2;
        this.f20809c = c1076bj;
    }
}
