package org.apache.tika.fork;
/* loaded from: classes2.dex */
class TimeoutLimits {
    private final long parseTimeoutMS;
    private final long pulseMS;
    private final long waitTimeoutMS;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TimeoutLimits(long j10, long j11, long j12) {
        this.pulseMS = j10;
        this.parseTimeoutMS = j11;
        this.waitTimeoutMS = j12;
    }

    public long getParseTimeoutMS() {
        return this.parseTimeoutMS;
    }

    public long getPulseMS() {
        return this.pulseMS;
    }

    public long getWaitTimeoutMS() {
        return this.waitTimeoutMS;
    }
}
