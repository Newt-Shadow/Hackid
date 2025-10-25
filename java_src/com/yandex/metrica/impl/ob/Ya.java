package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceProduct;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Ya {

    /* renamed from: a  reason: collision with root package name */
    public final String f11834a;

    /* renamed from: b  reason: collision with root package name */
    public final String f11835b;

    /* renamed from: c  reason: collision with root package name */
    public final List<String> f11836c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, String> f11837d;

    /* renamed from: e  reason: collision with root package name */
    public final Xa f11838e;

    /* renamed from: f  reason: collision with root package name */
    public final Xa f11839f;

    /* renamed from: g  reason: collision with root package name */
    public final List<String> f11840g;

    public Ya(ECommerceProduct eCommerceProduct) {
        this(eCommerceProduct.getSku(), eCommerceProduct.getName(), A2.a((Collection) eCommerceProduct.getCategoriesPath()), A2.c(eCommerceProduct.getPayload()), eCommerceProduct.getActualPrice() == null ? null : new Xa(eCommerceProduct.getActualPrice()), eCommerceProduct.getOriginalPrice() == null ? null : new Xa(eCommerceProduct.getOriginalPrice()), A2.a((Collection) eCommerceProduct.getPromocodes()));
    }

    public String toString() {
        return "ProductWrapper{sku='" + this.f11834a + "', name='" + this.f11835b + "', categoriesPath=" + this.f11836c + ", payload=" + this.f11837d + ", actualPrice=" + this.f11838e + ", originalPrice=" + this.f11839f + ", promocodes=" + this.f11840g + '}';
    }

    public Ya(String str, String str2, List<String> list, Map<String, String> map, Xa xa2, Xa xa3, List<String> list2) {
        this.f11834a = str;
        this.f11835b = str2;
        this.f11836c = list;
        this.f11837d = map;
        this.f11838e = xa2;
        this.f11839f = xa3;
        this.f11840g = list2;
    }
}
