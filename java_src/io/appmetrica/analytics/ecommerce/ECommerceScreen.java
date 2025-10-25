package io.appmetrica.analytics.ecommerce;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class ECommerceScreen {

    /* renamed from: a  reason: collision with root package name */
    private String f17807a;

    /* renamed from: b  reason: collision with root package name */
    private List f17808b;

    /* renamed from: c  reason: collision with root package name */
    private String f17809c;

    /* renamed from: d  reason: collision with root package name */
    private Map f17810d;

    public List<String> getCategoriesPath() {
        return this.f17808b;
    }

    public String getName() {
        return this.f17807a;
    }

    public Map<String, String> getPayload() {
        return this.f17810d;
    }

    public String getSearchQuery() {
        return this.f17809c;
    }

    public ECommerceScreen setCategoriesPath(List<String> list) {
        this.f17808b = list;
        return this;
    }

    public ECommerceScreen setName(String str) {
        this.f17807a = str;
        return this;
    }

    public ECommerceScreen setPayload(Map<String, String> map) {
        this.f17810d = map;
        return this;
    }

    public ECommerceScreen setSearchQuery(String str) {
        this.f17809c = str;
        return this;
    }

    public String toString() {
        return "ECommerceScreen{name='" + this.f17807a + "', categoriesPath=" + this.f17808b + ", searchQuery='" + this.f17809c + "', payload=" + this.f17810d + '}';
    }
}
