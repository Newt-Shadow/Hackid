package com.yandex.metrica.impl.ob;

import com.yandex.metrica.ecommerce.ECommerceScreen;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.bb  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0431bb {

    /* renamed from: a  reason: collision with root package name */
    public final String f12040a;

    /* renamed from: b  reason: collision with root package name */
    public final List<String> f12041b;

    /* renamed from: c  reason: collision with root package name */
    public final String f12042c;

    /* renamed from: d  reason: collision with root package name */
    public final Map<String, String> f12043d;

    public C0431bb(ECommerceScreen eCommerceScreen) {
        this(eCommerceScreen.getName(), A2.a((Collection) eCommerceScreen.getCategoriesPath()), eCommerceScreen.getSearchQuery(), A2.c(eCommerceScreen.getPayload()));
    }

    public String toString() {
        return "ScreenWrapper{name='" + this.f12040a + "', categoriesPath=" + this.f12041b + ", searchQuery='" + this.f12042c + "', payload=" + this.f12043d + '}';
    }

    public C0431bb(String str, List<String> list, String str2, Map<String, String> map) {
        this.f12040a = str;
        this.f12041b = list;
        this.f12042c = str2;
        this.f12043d = map;
    }
}
