package io.appmetrica.analytics.coreapi.internal.identifiers;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class SdkIdentifiers {

    /* renamed from: a  reason: collision with root package name */
    private final String f17656a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17657b;

    /* renamed from: c  reason: collision with root package name */
    private final String f17658c;

    public SdkIdentifiers(String str, String str2, String str3) {
        this.f17656a = str;
        this.f17657b = str2;
        this.f17658c = str3;
    }

    public static /* synthetic */ SdkIdentifiers copy$default(SdkIdentifiers sdkIdentifiers, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = sdkIdentifiers.f17656a;
        }
        if ((i10 & 2) != 0) {
            str2 = sdkIdentifiers.f17657b;
        }
        if ((i10 & 4) != 0) {
            str3 = sdkIdentifiers.f17658c;
        }
        return sdkIdentifiers.copy(str, str2, str3);
    }

    public final String component1() {
        return this.f17656a;
    }

    public final String component2() {
        return this.f17657b;
    }

    public final String component3() {
        return this.f17658c;
    }

    public final SdkIdentifiers copy(String str, String str2, String str3) {
        return new SdkIdentifiers(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SdkIdentifiers) {
            SdkIdentifiers sdkIdentifiers = (SdkIdentifiers) obj;
            return m.a(this.f17656a, sdkIdentifiers.f17656a) && m.a(this.f17657b, sdkIdentifiers.f17657b) && m.a(this.f17658c, sdkIdentifiers.f17658c);
        }
        return false;
    }

    public final String getDeviceId() {
        return this.f17657b;
    }

    public final String getDeviceIdHash() {
        return this.f17658c;
    }

    public final String getUuid() {
        return this.f17656a;
    }

    public int hashCode() {
        String str = this.f17656a;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f17657b;
        int hashCode2 = (hashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f17658c;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    public String toString() {
        return "SdkIdentifiers(uuid=" + this.f17656a + ", deviceId=" + this.f17657b + ", deviceIdHash=" + this.f17658c + ')';
    }
}
