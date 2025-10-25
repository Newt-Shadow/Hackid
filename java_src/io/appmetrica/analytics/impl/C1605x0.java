package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
/* renamed from: io.appmetrica.analytics.impl.x0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1605x0 {

    /* renamed from: a  reason: collision with root package name */
    public final String f20891a;

    /* renamed from: b  reason: collision with root package name */
    public final String f20892b;

    /* renamed from: c  reason: collision with root package name */
    public final CounterConfigurationReporterType f20893c;

    /* renamed from: d  reason: collision with root package name */
    public final int f20894d;

    /* renamed from: e  reason: collision with root package name */
    public final String f20895e;

    /* renamed from: f  reason: collision with root package name */
    public final String f20896f;

    public C1605x0(String str, String str2, CounterConfigurationReporterType counterConfigurationReporterType, int i10, String str3, String str4) {
        this.f20891a = str;
        this.f20892b = str2;
        this.f20893c = counterConfigurationReporterType;
        this.f20894d = i10;
        this.f20895e = str3;
        this.f20896f = str4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1605x0) {
            C1605x0 c1605x0 = (C1605x0) obj;
            return kotlin.jvm.internal.m.a(this.f20891a, c1605x0.f20891a) && kotlin.jvm.internal.m.a(this.f20892b, c1605x0.f20892b) && this.f20893c == c1605x0.f20893c && this.f20894d == c1605x0.f20894d && kotlin.jvm.internal.m.a(this.f20895e, c1605x0.f20895e) && kotlin.jvm.internal.m.a(this.f20896f, c1605x0.f20896f);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f20892b.hashCode();
        int hashCode2 = this.f20893c.hashCode();
        int hashCode3 = (this.f20895e.hashCode() + ((Integer.hashCode(this.f20894d) + ((hashCode2 + ((hashCode + (this.f20891a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31;
        String str = this.f20896f;
        return hashCode3 + (str == null ? 0 : str.hashCode());
    }

    public final String toString() {
        return "AppMetricaNativeCrashMetadata(apiKey=" + this.f20891a + ", packageName=" + this.f20892b + ", reporterType=" + this.f20893c + ", processID=" + this.f20894d + ", processSessionID=" + this.f20895e + ", errorEnvironment=" + this.f20896f + ')';
    }
}
