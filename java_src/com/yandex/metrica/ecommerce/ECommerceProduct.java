package com.yandex.metrica.ecommerce;

import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ECommerceProduct {

    /* renamed from: a  reason: collision with root package name */
    private final String f9613a;

    /* renamed from: b  reason: collision with root package name */
    private String f9614b;

    /* renamed from: c  reason: collision with root package name */
    private List f9615c;

    /* renamed from: d  reason: collision with root package name */
    private Map f9616d;

    /* renamed from: e  reason: collision with root package name */
    private ECommercePrice f9617e;

    /* renamed from: f  reason: collision with root package name */
    private ECommercePrice f9618f;

    /* renamed from: g  reason: collision with root package name */
    private List f9619g;

    public ECommerceProduct(String str) {
        this.f9613a = str;
    }

    public ECommercePrice getActualPrice() {
        return this.f9617e;
    }

    public List<String> getCategoriesPath() {
        return this.f9615c;
    }

    public String getName() {
        return this.f9614b;
    }

    public ECommercePrice getOriginalPrice() {
        return this.f9618f;
    }

    public Map<String, String> getPayload() {
        return this.f9616d;
    }

    public List<String> getPromocodes() {
        return this.f9619g;
    }

    public String getSku() {
        return this.f9613a;
    }

    public ECommerceProduct setActualPrice(ECommercePrice eCommercePrice) {
        this.f9617e = eCommercePrice;
        return this;
    }

    public ECommerceProduct setCategoriesPath(List<String> list) {
        this.f9615c = list;
        return this;
    }

    public ECommerceProduct setName(String str) {
        this.f9614b = str;
        return this;
    }

    public ECommerceProduct setOriginalPrice(ECommercePrice eCommercePrice) {
        this.f9618f = eCommercePrice;
        return this;
    }

    public ECommerceProduct setPayload(Map<String, String> map) {
        this.f9616d = map;
        return this;
    }

    public ECommerceProduct setPromocodes(List<String> list) {
        this.f9619g = list;
        return this;
    }

    public String toString() {
        return "ECommerceProduct{sku='" + this.f9613a + "', name='" + this.f9614b + "', categoriesPath=" + this.f9615c + ", payload=" + this.f9616d + ", actualPrice=" + this.f9617e + ", originalPrice=" + this.f9618f + ", promocodes=" + this.f9619g + '}';
    }
}
