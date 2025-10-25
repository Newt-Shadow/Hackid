package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.ecommerce.ECommerceScreen;
import java.util.List;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.bj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1076bj {

    /* renamed from: a  reason: collision with root package name */
    public final String f19435a;

    /* renamed from: b  reason: collision with root package name */
    public final List f19436b;

    /* renamed from: c  reason: collision with root package name */
    public final String f19437c;

    /* renamed from: d  reason: collision with root package name */
    public final Map f19438d;

    public C1076bj(ECommerceScreen eCommerceScreen) {
        this(eCommerceScreen.getName(), eCommerceScreen.getSearchQuery(), CollectionUtils.arrayListCopyOfNullableCollection(eCommerceScreen.getCategoriesPath()), CollectionUtils.mapCopyOfNullableMap(eCommerceScreen.getPayload()));
    }

    public final String toString() {
        return "ScreenWrapper{name='" + this.f19435a + "', categoriesPath=" + this.f19436b + ", searchQuery='" + this.f19437c + "', payload=" + this.f19438d + '}';
    }

    public C1076bj(String str, String str2, List list, Map map) {
        this.f19435a = str;
        this.f19436b = list;
        this.f19437c = str2;
        this.f19438d = map;
    }
}
