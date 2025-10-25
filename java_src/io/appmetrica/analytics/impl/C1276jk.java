package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigMetaInfo;
/* renamed from: io.appmetrica.analytics.impl.jk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1276jk implements ModuleRemoteConfig {

    /* renamed from: a  reason: collision with root package name */
    public final SdkIdentifiers f19873a;

    /* renamed from: b  reason: collision with root package name */
    public final RemoteConfigMetaInfo f19874b;

    /* renamed from: c  reason: collision with root package name */
    public final Object f19875c;

    public C1276jk(SdkIdentifiers sdkIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj) {
        this.f19873a = sdkIdentifiers;
        this.f19874b = remoteConfigMetaInfo;
        this.f19875c = obj;
    }

    public final C1276jk a(SdkIdentifiers sdkIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj) {
        return new C1276jk(sdkIdentifiers, remoteConfigMetaInfo, obj);
    }

    public final RemoteConfigMetaInfo b() {
        return this.f19874b;
    }

    public final Object c() {
        return this.f19875c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1276jk)) {
            return false;
        }
        C1276jk c1276jk = (C1276jk) obj;
        if (kotlin.jvm.internal.m.a(this.f19873a, c1276jk.f19873a) && kotlin.jvm.internal.m.a(this.f19874b, c1276jk.f19874b) && kotlin.jvm.internal.m.a(this.f19875c, c1276jk.f19875c)) {
            return true;
        }
        return false;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig
    public final Object getFeaturesConfig() {
        return this.f19875c;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig
    public final SdkIdentifiers getIdentifiers() {
        return this.f19873a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig
    public final RemoteConfigMetaInfo getRemoteConfigMetaInfo() {
        return this.f19874b;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = (this.f19874b.hashCode() + (this.f19873a.hashCode() * 31)) * 31;
        Object obj = this.f19875c;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        return hashCode2 + hashCode;
    }

    public final String toString() {
        return "ServiceModuleRemoteConfigModel(identifiers=" + this.f19873a + ", remoteConfigMetaInfo=" + this.f19874b + ", featuresConfig=" + this.f19875c + ')';
    }

    public final SdkIdentifiers a() {
        return this.f19873a;
    }

    public static C1276jk a(C1276jk c1276jk, SdkIdentifiers sdkIdentifiers, RemoteConfigMetaInfo remoteConfigMetaInfo, Object obj, int i10, Object obj2) {
        if ((i10 & 1) != 0) {
            sdkIdentifiers = c1276jk.f19873a;
        }
        if ((i10 & 2) != 0) {
            remoteConfigMetaInfo = c1276jk.f19874b;
        }
        if ((i10 & 4) != 0) {
            obj = c1276jk.f19875c;
        }
        c1276jk.getClass();
        return new C1276jk(sdkIdentifiers, remoteConfigMetaInfo, obj);
    }
}
