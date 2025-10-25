package io.appmetrica.analytics.networktasks.internal;
/* loaded from: classes2.dex */
public final class AllHostsExponentialBackoffPolicy implements ExponentialBackoffPolicy {

    /* renamed from: a  reason: collision with root package name */
    private final ExponentialBackoffDataHolder f21256a;

    public AllHostsExponentialBackoffPolicy(ExponentialBackoffDataHolder exponentialBackoffDataHolder) {
        this.f21256a = exponentialBackoffDataHolder;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ExponentialBackoffPolicy
    public boolean canBeExecuted(RetryPolicyConfig retryPolicyConfig) {
        return this.f21256a.wasLastAttemptLongAgoEnough(retryPolicyConfig);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ExponentialBackoffPolicy
    public void onAllHostsAttemptsFinished(boolean z10) {
        if (z10) {
            this.f21256a.reset();
        } else {
            this.f21256a.updateLastAttemptInfo();
        }
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ExponentialBackoffPolicy
    public void onHostAttemptFinished(boolean z10) {
    }
}
