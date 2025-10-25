package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.ecommerce.ECommerceProduct;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Df {

    /* renamed from: a  reason: collision with root package name */
    public final String f18105a;

    /* renamed from: b  reason: collision with root package name */
    public final String f18106b;

    /* renamed from: c  reason: collision with root package name */
    public final List f18107c;

    /* renamed from: d  reason: collision with root package name */
    public final Map f18108d;

    /* renamed from: e  reason: collision with root package name */
    public final C1595wf f18109e;

    /* renamed from: f  reason: collision with root package name */
    public final C1595wf f18110f;

    /* renamed from: g  reason: collision with root package name */
    public final List f18111g;

    public Df(ECommerceProduct eCommerceProduct) {
        this(eCommerceProduct.getSku(), eCommerceProduct.getName(), CollectionUtils.arrayListCopyOfNullableCollection(eCommerceProduct.getCategoriesPath()), CollectionUtils.mapCopyOfNullableMap(eCommerceProduct.getPayload()), eCommerceProduct.getActualPrice() == null ? null : new C1595wf(eCommerceProduct.getActualPrice()), eCommerceProduct.getOriginalPrice() == null ? null : new C1595wf(eCommerceProduct.getOriginalPrice()), CollectionUtils.arrayListCopyOfNullableCollection(eCommerceProduct.getPromocodes()));
    }

    public final String toString() {
        return "ProductWrapper{sku='" + this.f18105a + "', name='" + this.f18106b + "', categoriesPath=" + this.f18107c + ", payload=" + this.f18108d + ", actualPrice=" + this.f18109e + ", originalPrice=" + this.f18110f + ", promocodes=" + this.f18111g + '}';
    }

    public Df(String str, String str2, List list, Map map, C1595wf c1595wf, C1595wf c1595wf2, List list2) {
        this.f18105a = str;
        this.f18106b = str2;
        this.f18107c = list;
        this.f18108d = map;
        this.f18109e = c1595wf;
        this.f18110f = c1595wf2;
        this.f18111g = list2;
    }
}
