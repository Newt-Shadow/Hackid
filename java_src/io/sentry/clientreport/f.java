package io.sentry.clientreport;

import com.arthenica.ffmpegkit.StreamInformation;
/* loaded from: classes2.dex */
public enum f {
    QUEUE_OVERFLOW("queue_overflow"),
    CACHE_OVERFLOW("cache_overflow"),
    RATELIMIT_BACKOFF("ratelimit_backoff"),
    NETWORK_ERROR("network_error"),
    SAMPLE_RATE(StreamInformation.KEY_SAMPLE_RATE),
    BEFORE_SEND("before_send"),
    EVENT_PROCESSOR("event_processor"),
    BACKPRESSURE("backpressure");
    
    private final String reason;

    f(String str) {
        this.reason = str;
    }

    public String getReason() {
        return this.reason;
    }
}
