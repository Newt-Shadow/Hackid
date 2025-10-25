package io.appmetrica.analytics.billingv6.impl;

import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class m extends kotlin.jvm.internal.n implements id.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Map f17607a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Map f17608b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ p f17609c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(LinkedHashMap linkedHashMap, Map map, p pVar) {
        super(0);
        this.f17607a = linkedHashMap;
        this.f17608b = map;
        this.f17609c = pVar;
    }

    @Override // id.a
    public final Object invoke() {
        Map map = this.f17607a;
        Map map2 = this.f17608b;
        p pVar = this.f17609c;
        t.a(map, map2, pVar.f17619d, pVar.f17618c.getBillingInfoManager());
        return xc.t.f32733a;
    }
}
