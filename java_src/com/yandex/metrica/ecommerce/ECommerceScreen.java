package com.yandex.metrica.ecommerce;

import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class ECommerceScreen {

    /* renamed from: a  reason: collision with root package name */
    private String f9623a;

    /* renamed from: b  reason: collision with root package name */
    private List f9624b;

    /* renamed from: c  reason: collision with root package name */
    private String f9625c;

    /* renamed from: d  reason: collision with root package name */
    private Map f9626d;

    public List<String> getCategoriesPath() {
        return this.f9624b;
    }

    public String getName() {
        return this.f9623a;
    }

    public Map<String, String> getPayload() {
        return this.f9626d;
    }

    public String getSearchQuery() {
        return this.f9625c;
    }

    public ECommerceScreen setCategoriesPath(List<String> list) {
        this.f9624b = list;
        return this;
    }

    public ECommerceScreen setName(String str) {
        this.f9623a = str;
        return this;
    }

    public ECommerceScreen setPayload(Map<String, String> map) {
        this.f9626d = map;
        return this;
    }

    public ECommerceScreen setSearchQuery(String str) {
        this.f9625c = str;
        return this;
    }

    public String toString() {
        return "ECommerceScreen{name='" + this.f9623a + "', categoriesPath=" + this.f9624b + ", searchQuery='" + this.f9625c + "', payload=" + this.f9626d + '}';
    }
}
