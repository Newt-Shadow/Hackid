package io.appmetrica.analytics.coreutils.internal.services;

import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class UtilityServiceConfiguration {

    /* renamed from: a  reason: collision with root package name */
    private final long f17751a;

    /* renamed from: b  reason: collision with root package name */
    private final long f17752b;

    public UtilityServiceConfiguration() {
        this(0L, 0L, 3, null);
    }

    public static /* synthetic */ UtilityServiceConfiguration copy$default(UtilityServiceConfiguration utilityServiceConfiguration, long j10, long j11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = utilityServiceConfiguration.f17751a;
        }
        if ((i10 & 2) != 0) {
            j11 = utilityServiceConfiguration.f17752b;
        }
        return utilityServiceConfiguration.copy(j10, j11);
    }

    public final long component1() {
        return this.f17751a;
    }

    public final long component2() {
        return this.f17752b;
    }

    public final UtilityServiceConfiguration copy(long j10, long j11) {
        return new UtilityServiceConfiguration(j10, j11);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UtilityServiceConfiguration) {
            UtilityServiceConfiguration utilityServiceConfiguration = (UtilityServiceConfiguration) obj;
            return this.f17751a == utilityServiceConfiguration.f17751a && this.f17752b == utilityServiceConfiguration.f17752b;
        }
        return false;
    }

    public final long getInitialConfigTime() {
        return this.f17751a;
    }

    public final long getLastUpdateConfigTime() {
        return this.f17752b;
    }

    public int hashCode() {
        return Long.hashCode(this.f17752b) + (Long.hashCode(this.f17751a) * 31);
    }

    public String toString() {
        return "UtilityServiceConfiguration(initialConfigTime=" + this.f17751a + ", lastUpdateConfigTime=" + this.f17752b + ')';
    }

    public UtilityServiceConfiguration(long j10, long j11) {
        this.f17751a = j10;
        this.f17752b = j11;
    }

    public /* synthetic */ UtilityServiceConfiguration(long j10, long j11, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0L : j10, (i10 & 2) != 0 ? 0L : j11);
    }
}
