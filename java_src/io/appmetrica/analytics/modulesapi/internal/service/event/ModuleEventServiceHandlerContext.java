package io.appmetrica.analytics.modulesapi.internal.service.event;

import io.appmetrica.analytics.modulesapi.internal.common.ModulePreferences;
/* loaded from: classes2.dex */
public interface ModuleEventServiceHandlerContext {
    ModuleEventServiceHandlerReporter getEventReporter();

    ModulePreferences getLegacyModulePreferences();

    ModulePreferences getModulePreferences();
}
