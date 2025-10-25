package io.appmetrica.analytics.screenshot.impl;

import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.common.InternalClientModuleFacade;
import io.appmetrica.analytics.modulesapi.internal.common.InternalModuleEvent;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.screenshot.impl.v  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1699v implements Q {

    /* renamed from: a  reason: collision with root package name */
    public final ClientContext f21459a;

    public C1699v(ClientContext clientContext) {
        this.f21459a = clientContext;
    }

    public final void a(String str) {
        Map<String, ? extends Object> c10;
        InternalClientModuleFacade internalClientModuleFacade = this.f21459a.getInternalClientModuleFacade();
        InternalModuleEvent.Builder withName = InternalModuleEvent.Companion.newBuilder(4).withName("appmetrica_system_event_screenshot");
        c10 = yc.g0.c(xc.q.a("type", str));
        internalClientModuleFacade.reportEvent(withName.withAttributes(c10).withCategory(InternalModuleEvent.Category.SYSTEM).build());
    }
}
