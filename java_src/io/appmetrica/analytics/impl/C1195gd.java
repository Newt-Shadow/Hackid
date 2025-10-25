package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerFactory;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.gd  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1195gd {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedHashMap f19674a = new LinkedHashMap();

    public final LinkedHashMap a(String str) {
        int b10;
        LinkedHashMap linkedHashMap = this.f19674a;
        b10 = yc.g0.b(linkedHashMap.size());
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(b10);
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry.getKey(), ((ModuleEventServiceHandlerFactory) entry.getValue()).createEventHandler(str));
        }
        return linkedHashMap2;
    }
}
