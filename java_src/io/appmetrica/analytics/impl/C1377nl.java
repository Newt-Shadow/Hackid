package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.data.ProtobufConverter;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;
/* renamed from: io.appmetrica.analytics.impl.nl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1377nl implements ProtobufConverter {
    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    /* renamed from: a */
    public final C1387o6 fromModel(C1402ol c1402ol) {
        C1387o6 c1387o6 = new C1387o6();
        c1387o6.f20275a = (String) WrapUtils.getOrDefault(c1402ol.f20310a, c1387o6.f20275a);
        c1387o6.f20276b = (String) WrapUtils.getOrDefault(c1402ol.f20311b, c1387o6.f20276b);
        c1387o6.f20277c = ((Integer) WrapUtils.getOrDefault(c1402ol.f20312c, Integer.valueOf(c1387o6.f20277c))).intValue();
        c1387o6.f20280f = ((Integer) WrapUtils.getOrDefault(c1402ol.f20313d, Integer.valueOf(c1387o6.f20280f))).intValue();
        c1387o6.f20278d = (String) WrapUtils.getOrDefault(c1402ol.f20314e, c1387o6.f20278d);
        c1387o6.f20279e = ((Boolean) WrapUtils.getOrDefault(c1402ol.f20315f, Boolean.valueOf(c1387o6.f20279e))).booleanValue();
        return c1387o6;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.data.Converter
    public final Object toModel(Object obj) {
        C1387o6 c1387o6 = (C1387o6) obj;
        throw new UnsupportedOperationException();
    }

    public final C1402ol a(C1387o6 c1387o6) {
        throw new UnsupportedOperationException();
    }
}
