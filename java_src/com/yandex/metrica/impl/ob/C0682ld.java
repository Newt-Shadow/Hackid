package com.yandex.metrica.impl.ob;

import com.yandex.metrica.networktasks.api.ExponentialBackoffDataHolder;
import com.yandex.metrica.networktasks.api.ExponentialBackoffPolicy;
import com.yandex.metrica.networktasks.api.RetryPolicyConfig;
/* renamed from: com.yandex.metrica.impl.ob.ld  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0682ld implements ExponentialBackoffPolicy {

    /* renamed from: a  reason: collision with root package name */
    private final ExponentialBackoffDataHolder f12801a;

    public C0682ld(ExponentialBackoffDataHolder exponentialBackoffDataHolder) {
        this.f12801a = exponentialBackoffDataHolder;
    }

    @Override // com.yandex.metrica.networktasks.api.ExponentialBackoffPolicy
    public boolean canBeExecuted(RetryPolicyConfig retryPolicyConfig) {
        return this.f12801a.c(retryPolicyConfig);
    }

    @Override // com.yandex.metrica.networktasks.api.ExponentialBackoffPolicy
    public void onAllHostsAttemptsFinished(boolean z10) {
        if (z10) {
            this.f12801a.a();
        } else {
            this.f12801a.b();
        }
    }

    @Override // com.yandex.metrica.networktasks.api.ExponentialBackoffPolicy
    public void onHostAttemptFinished(boolean z10) {
    }
}
