package com.yandex.metrica.networktasks.api;
/* loaded from: classes2.dex */
public class RetryPolicyConfig {

    /* renamed from: a  reason: collision with root package name */
    public final int f14205a;

    /* renamed from: b  reason: collision with root package name */
    public final int f14206b;

    public RetryPolicyConfig(int i10, int i11) {
        this.f14205a = i10;
        this.f14206b = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        RetryPolicyConfig retryPolicyConfig = (RetryPolicyConfig) obj;
        return this.f14205a == retryPolicyConfig.f14205a && this.f14206b == retryPolicyConfig.f14206b;
    }

    public int hashCode() {
        return (this.f14205a * 31) + this.f14206b;
    }

    public String toString() {
        return "RetryPolicyConfig{maxIntervalSeconds=" + this.f14205a + ", exponentialMultiplier=" + this.f14206b + '}';
    }
}
