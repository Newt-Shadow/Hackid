package io.appmetrica.analytics.coreutils.internal.time;
/* loaded from: classes2.dex */
public final class TimePassedChecker {

    /* renamed from: a  reason: collision with root package name */
    private final TimeProvider f17774a;

    public TimePassedChecker(TimeProvider timeProvider) {
        this.f17774a = timeProvider;
    }

    public final boolean didTimePassMillis(long j10, long j11, String str) {
        long currentTimeMillis = this.f17774a.currentTimeMillis();
        if (currentTimeMillis < j10 || currentTimeMillis - j10 >= j11) {
            return true;
        }
        return false;
    }

    public final boolean didTimePassSeconds(long j10, long j11, String str) {
        long currentTimeSeconds = this.f17774a.currentTimeSeconds();
        if (currentTimeSeconds < j10 || currentTimeSeconds - j10 >= j11) {
            return true;
        }
        return false;
    }

    public TimePassedChecker() {
        this(new SystemTimeProvider());
    }
}
