package io.appmetrica.analytics.networktasks.internal;
/* loaded from: classes2.dex */
public interface ExponentialBackoffPolicy {
    boolean canBeExecuted(RetryPolicyConfig retryPolicyConfig);

    void onAllHostsAttemptsFinished(boolean z10);

    void onHostAttemptFinished(boolean z10);
}
