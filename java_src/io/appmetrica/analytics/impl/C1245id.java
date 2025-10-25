package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;
import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerContext;
import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerReporter;
/* renamed from: io.appmetrica.analytics.impl.id  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1245id implements ModuleEventServiceHandlerContext {

    /* renamed from: a  reason: collision with root package name */
    public final ModulePreferences f19783a;

    /* renamed from: b  reason: collision with root package name */
    public final ModulePreferences f19784b;

    /* renamed from: c  reason: collision with root package name */
    public final ModuleEventServiceHandlerReporter f19785c;

    public C1245id(ModulePreferences modulePreferences, ModulePreferences modulePreferences2, ModuleEventServiceHandlerReporter moduleEventServiceHandlerReporter) {
        this.f19783a = modulePreferences;
        this.f19784b = modulePreferences2;
        this.f19785c = moduleEventServiceHandlerReporter;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerContext
    public final ModuleEventServiceHandlerReporter getEventReporter() {
        return this.f19785c;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerContext
    public final ModulePreferences getLegacyModulePreferences() {
        return this.f19784b;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerContext
    public final ModulePreferences getModulePreferences() {
        return this.f19783a;
    }
}
