package io.appmetrica.analytics.ecommerce;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class ECommerceProduct {

    /* renamed from: a  reason: collision with root package name */
    private final String f17797a;

    /* renamed from: b  reason: collision with root package name */
    private String f17798b;

    /* renamed from: c  reason: collision with root package name */
    private List f17799c;

    /* renamed from: d  reason: collision with root package name */
    private Map f17800d;

    /* renamed from: e  reason: collision with root package name */
    private ECommercePrice f17801e;

    /* renamed from: f  reason: collision with root package name */
    private ECommercePrice f17802f;

    /* renamed from: g  reason: collision with root package name */
    private List f17803g;

    public ECommerceProduct(String str) {
        this.f17797a = str;
    }

    public ECommercePrice getActualPrice() {
        return this.f17801e;
    }

    public List<String> getCategoriesPath() {
        return this.f17799c;
    }

    public String getName() {
        return this.f17798b;
    }

    public ECommercePrice getOriginalPrice() {
        return this.f17802f;
    }

    public Map<String, String> getPayload() {
        return this.f17800d;
    }

    public List<String> getPromocodes() {
        return this.f17803g;
    }

    public String getSku() {
        return this.f17797a;
    }

    public ECommerceProduct setActualPrice(ECommercePrice eCommercePrice) {
        this.f17801e = eCommercePrice;
        return this;
    }

    public ECommerceProduct setCategoriesPath(List<String> list) {
        this.f17799c = list;
        return this;
    }

    public ECommerceProduct setName(String str) {
        this.f17798b = str;
        return this;
    }

    public ECommerceProduct setOriginalPrice(ECommercePrice eCommercePrice) {
        this.f17802f = eCommercePrice;
        return this;
    }

    public ECommerceProduct setPayload(Map<String, String> map) {
        this.f17800d = map;
        return this;
    }

    public ECommerceProduct setPromocodes(List<String> list) {
        this.f17803g = list;
        return this;
    }

    public String toString() {
        return "ECommerceProduct{sku='" + this.f17797a + "', name='" + this.f17798b + "', categoriesPath=" + this.f17799c + ", payload=" + this.f17800d + ", actualPrice=" + this.f17801e + ", originalPrice=" + this.f17802f + ", promocodes=" + this.f17803g + '}';
    }
}
