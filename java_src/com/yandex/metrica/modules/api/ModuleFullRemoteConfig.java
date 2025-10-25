package com.yandex.metrica.modules.api;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class ModuleFullRemoteConfig {

    /* renamed from: a  reason: collision with root package name */
    private final CommonIdentifiers f14124a;

    /* renamed from: b  reason: collision with root package name */
    private final RemoteConfigMetaInfo f14125b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f14126c;

    public ModuleFullRemoteConfig(CommonIdentifiers commonIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj) {
        m.e(commonIdentifiers, "commonIdentifiers");
        m.e(remoteConfigMetaInfo, "remoteConfigMetaInfo");
        this.f14124a = commonIdentifiers;
        this.f14125b = remoteConfigMetaInfo;
        this.f14126c = obj;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ModuleFullRemoteConfig) {
                ModuleFullRemoteConfig moduleFullRemoteConfig = (ModuleFullRemoteConfig) obj;
                return m.a(this.f14124a, moduleFullRemoteConfig.f14124a) && m.a(this.f14125b, moduleFullRemoteConfig.f14125b) && m.a(this.f14126c, moduleFullRemoteConfig.f14126c);
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        CommonIdentifiers commonIdentifiers = this.f14124a;
        int hashCode = (commonIdentifiers != null ? commonIdentifiers.hashCode() : 0) * 31;
        RemoteConfigMetaInfo remoteConfigMetaInfo = this.f14125b;
        int hashCode2 = (hashCode + (remoteConfigMetaInfo != null ? remoteConfigMetaInfo.hashCode() : 0)) * 31;
        Object obj = this.f14126c;
        return hashCode2 + (obj != null ? obj.hashCode() : 0);
    }

    public String toString() {
        return "ModuleFullRemoteConfig(commonIdentifiers=" + this.f14124a + ", remoteConfigMetaInfo=" + this.f14125b + ", moduleConfig=" + this.f14126c + ")";
    }
}
