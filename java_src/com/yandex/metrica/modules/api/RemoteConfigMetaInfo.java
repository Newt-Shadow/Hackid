package com.yandex.metrica.modules.api;
/* loaded from: classes2.dex */
public final class RemoteConfigMetaInfo {

    /* renamed from: a  reason: collision with root package name */
    private final long f14127a;

    /* renamed from: b  reason: collision with root package name */
    private final long f14128b;

    public RemoteConfigMetaInfo(long j10, long j11) {
        this.f14127a = j10;
        this.f14128b = j11;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RemoteConfigMetaInfo) {
                RemoteConfigMetaInfo remoteConfigMetaInfo = (RemoteConfigMetaInfo) obj;
                return this.f14127a == remoteConfigMetaInfo.f14127a && this.f14128b == remoteConfigMetaInfo.f14128b;
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j10 = this.f14127a;
        long j11 = this.f14128b;
        return (((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) ((j11 >>> 32) ^ j11));
    }

    public String toString() {
        return "RemoteConfigMetaInfo(firstSendTime=" + this.f14127a + ", lastUpdateTime=" + this.f14128b + ")";
    }
}
