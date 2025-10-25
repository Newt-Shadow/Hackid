package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigMetaInfo;
/* loaded from: classes2.dex */
public final class Ig implements RemoteConfigMetaInfo {

    /* renamed from: a  reason: collision with root package name */
    public final long f18391a;

    /* renamed from: b  reason: collision with root package name */
    public final long f18392b;

    public Ig(long j10, long j11) {
        this.f18391a = j10;
        this.f18392b = j11;
    }

    public final Ig a(long j10, long j11) {
        return new Ig(j10, j11);
    }

    public final long b() {
        return this.f18392b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ig)) {
            return false;
        }
        Ig ig = (Ig) obj;
        if (this.f18391a == ig.f18391a && this.f18392b == ig.f18392b) {
            return true;
        }
        return false;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigMetaInfo
    public final long getFirstSendTime() {
        return this.f18391a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigMetaInfo
    public final long getLastUpdateTime() {
        return this.f18392b;
    }

    public final int hashCode() {
        return Long.hashCode(this.f18392b) + (Long.hashCode(this.f18391a) * 31);
    }

    public final String toString() {
        return "RemoteConfigMetaInfoModel(firstSendTime=" + this.f18391a + ", lastUpdateTime=" + this.f18392b + ')';
    }

    public final long a() {
        return this.f18391a;
    }

    public static Ig a(Ig ig, long j10, long j11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = ig.f18391a;
        }
        if ((i10 & 2) != 0) {
            j11 = ig.f18392b;
        }
        ig.getClass();
        return new Ig(j10, j11);
    }
}
