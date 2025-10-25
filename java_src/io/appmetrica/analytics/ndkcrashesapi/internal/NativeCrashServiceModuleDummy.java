package io.appmetrica.analytics.ndkcrashesapi.internal;

import android.content.Context;
import java.util.List;
import yc.o;
/* loaded from: classes2.dex */
public final class NativeCrashServiceModuleDummy extends NativeCrashServiceModule {
    @Override // io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashServiceModule
    public void deleteCompletedCrashes() {
    }

    @Override // io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashServiceModule
    public List<NativeCrash> getAllCrashes() {
        List<NativeCrash> h10;
        h10 = o.h();
        return h10;
    }

    @Override // io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashServiceModule
    public void init(Context context, NativeCrashServiceConfig nativeCrashServiceConfig) {
    }

    @Override // io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashServiceModule
    public void markCrashCompleted(String str) {
    }

    @Override // io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashServiceModule
    public void setDefaultCrashHandler(NativeCrashHandler nativeCrashHandler) {
    }
}
