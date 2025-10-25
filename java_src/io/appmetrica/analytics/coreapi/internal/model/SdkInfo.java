package io.appmetrica.analytics.coreapi.internal.model;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class SdkInfo {

    /* renamed from: a  reason: collision with root package name */
    private final String f17672a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17673b;

    /* renamed from: c  reason: collision with root package name */
    private final String f17674c;

    public SdkInfo(String str, String str2, String str3) {
        this.f17672a = str;
        this.f17673b = str2;
        this.f17674c = str3;
    }

    public static /* synthetic */ SdkInfo copy$default(SdkInfo sdkInfo, String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = sdkInfo.f17672a;
        }
        if ((i10 & 2) != 0) {
            str2 = sdkInfo.f17673b;
        }
        if ((i10 & 4) != 0) {
            str3 = sdkInfo.f17674c;
        }
        return sdkInfo.copy(str, str2, str3);
    }

    public final String component1() {
        return this.f17672a;
    }

    public final String component2() {
        return this.f17673b;
    }

    public final String component3() {
        return this.f17674c;
    }

    public final SdkInfo copy(String str, String str2, String str3) {
        return new SdkInfo(str, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SdkInfo) {
            SdkInfo sdkInfo = (SdkInfo) obj;
            return m.a(this.f17672a, sdkInfo.f17672a) && m.a(this.f17673b, sdkInfo.f17673b) && m.a(this.f17674c, sdkInfo.f17674c);
        }
        return false;
    }

    public final String getSdkBuildNumber() {
        return this.f17673b;
    }

    public final String getSdkBuildType() {
        return this.f17674c;
    }

    public final String getSdkVersionName() {
        return this.f17672a;
    }

    public int hashCode() {
        int hashCode = this.f17673b.hashCode();
        return this.f17674c.hashCode() + ((hashCode + (this.f17672a.hashCode() * 31)) * 31);
    }

    public String toString() {
        return "SdkInfo(sdkVersionName=" + this.f17672a + ", sdkBuildNumber=" + this.f17673b + ", sdkBuildType=" + this.f17674c + ')';
    }
}
