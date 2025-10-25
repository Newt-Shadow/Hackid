package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.plugins.PluginErrorDetails;
import io.appmetrica.analytics.plugins.StackTraceItem;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class He {

    /* renamed from: a  reason: collision with root package name */
    public final Y9 f18307a;

    public He(Y9 y92) {
        this.f18307a = y92;
    }

    public final C1603wn a(PluginErrorDetails pluginErrorDetails) {
        ArrayList arrayList;
        int r10;
        String exceptionClass = pluginErrorDetails.getExceptionClass();
        String message = pluginErrorDetails.getMessage();
        List<StackTraceItem> stacktrace = pluginErrorDetails.getStacktrace();
        String platform = pluginErrorDetails.getPlatform();
        String virtualMachineVersion = pluginErrorDetails.getVirtualMachineVersion();
        Map<String, String> pluginEnvironment = pluginErrorDetails.getPluginEnvironment();
        String str = (String) this.f18307a.f19289b.a();
        Boolean bool = (Boolean) this.f18307a.f19290c.a();
        if (stacktrace != null) {
            r10 = yc.p.r(stacktrace, 10);
            arrayList = new ArrayList(r10);
            for (StackTraceItem stackTraceItem : stacktrace) {
                arrayList.add(new C1402ol(stackTraceItem.getClassName(), stackTraceItem.getFileName(), stackTraceItem.getLine(), stackTraceItem.getColumn(), stackTraceItem.getMethodName(), null));
            }
        } else {
            arrayList = null;
        }
        return new C1603wn(new C1354mn(exceptionClass, message, arrayList, null, null), null, null, platform, virtualMachineVersion, pluginEnvironment, str, bool);
    }
}
