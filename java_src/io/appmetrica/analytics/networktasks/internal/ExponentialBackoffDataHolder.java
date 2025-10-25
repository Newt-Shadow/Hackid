package io.appmetrica.analytics.networktasks.internal;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
/* loaded from: classes2.dex */
public class ExponentialBackoffDataHolder {

    /* renamed from: a  reason: collision with root package name */
    private final TimePassedChecker f21267a;

    /* renamed from: b  reason: collision with root package name */
    private final TimeProvider f21268b;

    /* renamed from: c  reason: collision with root package name */
    private final HostRetryInfoProvider f21269c;

    /* renamed from: d  reason: collision with root package name */
    private long f21270d;

    /* renamed from: e  reason: collision with root package name */
    private int f21271e;

    /* renamed from: f  reason: collision with root package name */
    private final String f21272f;

    public ExponentialBackoffDataHolder(HostRetryInfoProvider hostRetryInfoProvider, String str) {
        this(hostRetryInfoProvider, new SystemTimeProvider(), new TimePassedChecker(), str);
    }

    public void reset() {
        this.f21271e = 1;
        this.f21270d = 0L;
        this.f21269c.saveNextSendAttemptNumber(1);
        this.f21269c.saveLastAttemptTimeSeconds(this.f21270d);
    }

    public void updateLastAttemptInfo() {
        long currentTimeSeconds = this.f21268b.currentTimeSeconds();
        this.f21270d = currentTimeSeconds;
        this.f21271e++;
        this.f21269c.saveLastAttemptTimeSeconds(currentTimeSeconds);
        this.f21269c.saveNextSendAttemptNumber(this.f21271e);
    }

    public boolean wasLastAttemptLongAgoEnough(RetryPolicyConfig retryPolicyConfig) {
        if (retryPolicyConfig != null) {
            long j10 = this.f21270d;
            if (j10 != 0) {
                TimePassedChecker timePassedChecker = this.f21267a;
                int i10 = ((1 << (this.f21271e - 1)) - 1) * retryPolicyConfig.exponentialMultiplier;
                int i11 = retryPolicyConfig.maxIntervalSeconds;
                if (i10 > i11) {
                    i10 = i11;
                }
                return timePassedChecker.didTimePassSeconds(j10, i10, this.f21272f);
            }
        }
        return true;
    }

    ExponentialBackoffDataHolder(HostRetryInfoProvider hostRetryInfoProvider, SystemTimeProvider systemTimeProvider, TimePassedChecker timePassedChecker, String str) {
        this.f21269c = hostRetryInfoProvider;
        this.f21268b = systemTimeProvider;
        this.f21267a = timePassedChecker;
        this.f21270d = hostRetryInfoProvider.getLastAttemptTimeSeconds();
        this.f21271e = hostRetryInfoProvider.getNextSendAttemptNumber();
        this.f21272f = String.format("[ExponentialBackoffDataHolder-%s]", str);
    }
}
