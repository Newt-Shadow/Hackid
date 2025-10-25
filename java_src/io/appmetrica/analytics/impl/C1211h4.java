package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
/* renamed from: io.appmetrica.analytics.impl.h4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1211h4 {

    /* renamed from: a  reason: collision with root package name */
    public final String f19711a;

    /* renamed from: b  reason: collision with root package name */
    public final String f19712b;

    /* renamed from: c  reason: collision with root package name */
    public final Integer f19713c;

    /* renamed from: d  reason: collision with root package name */
    public final String f19714d;

    /* renamed from: e  reason: collision with root package name */
    public final CounterConfigurationReporterType f19715e;

    public C1211h4(String str, String str2, Integer num, String str3, CounterConfigurationReporterType counterConfigurationReporterType) {
        this.f19711a = str;
        this.f19712b = str2;
        this.f19713c = num;
        this.f19714d = str3;
        this.f19715e = counterConfigurationReporterType;
    }

    public static C1211h4 a(Z3 z32) {
        return new C1211h4(z32.f19320b.getApiKey(), z32.f19319a.f20987a.getAsString("PROCESS_CFG_PACKAGE_NAME"), z32.f19319a.f20987a.getAsInteger("PROCESS_CFG_PROCESS_ID"), z32.f19319a.f20987a.getAsString("PROCESS_CFG_PROCESS_SESSION_ID"), z32.f19320b.getReporterType());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1211h4.class != obj.getClass()) {
            return false;
        }
        C1211h4 c1211h4 = (C1211h4) obj;
        String str = this.f19711a;
        if (str == null ? c1211h4.f19711a != null : !str.equals(c1211h4.f19711a)) {
            return false;
        }
        if (!this.f19712b.equals(c1211h4.f19712b)) {
            return false;
        }
        Integer num = this.f19713c;
        if (num == null ? c1211h4.f19713c != null : !num.equals(c1211h4.f19713c)) {
            return false;
        }
        String str2 = this.f19714d;
        if (str2 == null ? c1211h4.f19714d != null : !str2.equals(c1211h4.f19714d)) {
            return false;
        }
        if (this.f19715e == c1211h4.f19715e) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i10;
        int i11;
        String str = this.f19711a;
        int i12 = 0;
        if (str != null) {
            i10 = str.hashCode();
        } else {
            i10 = 0;
        }
        int hashCode = (this.f19712b.hashCode() + (i10 * 31)) * 31;
        Integer num = this.f19713c;
        if (num != null) {
            i11 = num.hashCode();
        } else {
            i11 = 0;
        }
        int i13 = (hashCode + i11) * 31;
        String str2 = this.f19714d;
        if (str2 != null) {
            i12 = str2.hashCode();
        }
        return this.f19715e.hashCode() + ((i13 + i12) * 31);
    }

    public final String toString() {
        return "ClientDescription{mApiKey='" + this.f19711a + "', mPackageName='" + this.f19712b + "', mProcessID=" + this.f19713c + ", mProcessSessionID='" + this.f19714d + "', mReporterType=" + this.f19715e + '}';
    }
}
