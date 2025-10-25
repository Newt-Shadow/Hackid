package io.appmetrica.analytics.coreutils.internal.time;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class SystemTimeOffsetProvider {

    /* renamed from: a  reason: collision with root package name */
    private final SystemTimeProvider f17773a;

    public SystemTimeOffsetProvider(SystemTimeProvider systemTimeProvider) {
        this.f17773a = systemTimeProvider;
    }

    public final long elapsedRealtimeOffset(long j10, TimeUnit timeUnit) {
        return this.f17773a.elapsedRealtime() - timeUnit.toMillis(j10);
    }

    public final long elapsedRealtimeOffsetInSeconds(long j10, TimeUnit timeUnit) {
        return TimeUnit.MILLISECONDS.toSeconds(elapsedRealtimeOffset(j10, timeUnit));
    }

    public final long offsetInSecondsIfNotZero(long j10, TimeUnit timeUnit) {
        if (j10 == 0) {
            return 0L;
        }
        return this.f17773a.currentTimeSeconds() - timeUnit.toSeconds(j10);
    }

    public final long systemNanoTimeOffsetInNanos(long j10, TimeUnit timeUnit) {
        return this.f17773a.systemNanoTime() - timeUnit.toNanos(j10);
    }

    public final long systemNanoTimeOffsetInSeconds(long j10, TimeUnit timeUnit) {
        return TimeUnit.NANOSECONDS.toSeconds(systemNanoTimeOffsetInNanos(j10, timeUnit));
    }

    public SystemTimeOffsetProvider() {
        this(new SystemTimeProvider());
    }
}
