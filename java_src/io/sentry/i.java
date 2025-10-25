package io.sentry;

import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
/* loaded from: classes2.dex */
public enum i {
    All("__all__"),
    Default("default"),
    Error("error"),
    Session("session"),
    Attachment("attachment"),
    Monitor("monitor"),
    Profile("profile"),
    MetricBucket("metric_bucket"),
    Transaction("transaction"),
    Replay("replay"),
    Span("span"),
    Security("security"),
    UserReport("user_report"),
    Unknown(CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE);
    
    private final String category;

    i(String str) {
        this.category = str;
    }

    public String getCategory() {
        return this.category;
    }
}
