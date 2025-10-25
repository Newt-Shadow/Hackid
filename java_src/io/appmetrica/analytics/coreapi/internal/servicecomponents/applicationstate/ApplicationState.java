package io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate;

import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import io.appmetrica.analytics.impl.H2;
/* loaded from: classes2.dex */
public enum ApplicationState {
    UNKNOWN(CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE),
    BACKGROUND(H2.f18288g),
    VISIBLE("visible");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f17676a;

    ApplicationState(String str) {
        this.f17676a = str;
    }

    public static ApplicationState fromString(String str) {
        ApplicationState[] values;
        ApplicationState applicationState = UNKNOWN;
        for (ApplicationState applicationState2 : values()) {
            if (applicationState2.f17676a.equals(str)) {
                return applicationState2;
            }
        }
        return applicationState;
    }

    public String getStringValue() {
        return this.f17676a;
    }
}
