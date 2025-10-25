package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.StartupParamsCallback;
import java.util.HashMap;
/* renamed from: io.appmetrica.analytics.impl.wl  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1601wl extends HashMap {
    public C1601wl() {
        put(EnumC1551ul.UNKNOWN, StartupParamsCallback.Reason.UNKNOWN);
        put(EnumC1551ul.NETWORK, StartupParamsCallback.Reason.NETWORK);
        put(EnumC1551ul.PARSE, StartupParamsCallback.Reason.INVALID_RESPONSE);
    }
}
