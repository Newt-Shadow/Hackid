package io.appmetrica.analytics.coreapi.internal.model;

import java.util.List;
import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class SdkEnvironment {

    /* renamed from: a  reason: collision with root package name */
    private final AppVersionInfo f17666a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17667b;

    /* renamed from: c  reason: collision with root package name */
    private final ScreenInfo f17668c;

    /* renamed from: d  reason: collision with root package name */
    private final SdkInfo f17669d;

    /* renamed from: e  reason: collision with root package name */
    private final String f17670e;

    /* renamed from: f  reason: collision with root package name */
    private final List f17671f;

    public SdkEnvironment(AppVersionInfo appVersionInfo, String str, ScreenInfo screenInfo, SdkInfo sdkInfo, String str2, List<String> list) {
        this.f17666a = appVersionInfo;
        this.f17667b = str;
        this.f17668c = screenInfo;
        this.f17669d = sdkInfo;
        this.f17670e = str2;
        this.f17671f = list;
    }

    public static /* synthetic */ SdkEnvironment copy$default(SdkEnvironment sdkEnvironment, AppVersionInfo appVersionInfo, String str, ScreenInfo screenInfo, SdkInfo sdkInfo, String str2, List list, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            appVersionInfo = sdkEnvironment.f17666a;
        }
        if ((i10 & 2) != 0) {
            str = sdkEnvironment.f17667b;
        }
        String str3 = str;
        if ((i10 & 4) != 0) {
            screenInfo = sdkEnvironment.f17668c;
        }
        ScreenInfo screenInfo2 = screenInfo;
        if ((i10 & 8) != 0) {
            sdkInfo = sdkEnvironment.f17669d;
        }
        SdkInfo sdkInfo2 = sdkInfo;
        if ((i10 & 16) != 0) {
            str2 = sdkEnvironment.f17670e;
        }
        String str4 = str2;
        List list2 = list;
        if ((i10 & 32) != 0) {
            list2 = sdkEnvironment.f17671f;
        }
        return sdkEnvironment.copy(appVersionInfo, str3, screenInfo2, sdkInfo2, str4, list2);
    }

    public final AppVersionInfo component1() {
        return this.f17666a;
    }

    public final String component2() {
        return this.f17667b;
    }

    public final ScreenInfo component3() {
        return this.f17668c;
    }

    public final SdkInfo component4() {
        return this.f17669d;
    }

    public final String component5() {
        return this.f17670e;
    }

    public final List<String> component6() {
        return this.f17671f;
    }

    public final SdkEnvironment copy(AppVersionInfo appVersionInfo, String str, ScreenInfo screenInfo, SdkInfo sdkInfo, String str2, List<String> list) {
        return new SdkEnvironment(appVersionInfo, str, screenInfo, sdkInfo, str2, list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SdkEnvironment) {
            SdkEnvironment sdkEnvironment = (SdkEnvironment) obj;
            return m.a(this.f17666a, sdkEnvironment.f17666a) && m.a(this.f17667b, sdkEnvironment.f17667b) && m.a(this.f17668c, sdkEnvironment.f17668c) && m.a(this.f17669d, sdkEnvironment.f17669d) && m.a(this.f17670e, sdkEnvironment.f17670e) && m.a(this.f17671f, sdkEnvironment.f17671f);
        }
        return false;
    }

    public final String getAppFramework() {
        return this.f17667b;
    }

    public final AppVersionInfo getAppVersionInfo() {
        return this.f17666a;
    }

    public final String getDeviceType() {
        return this.f17670e;
    }

    public final List<String> getLocales() {
        return this.f17671f;
    }

    public final ScreenInfo getScreenInfo() {
        return this.f17668c;
    }

    public final SdkInfo getSdkInfo() {
        return this.f17669d;
    }

    public int hashCode() {
        int hashCode = this.f17667b.hashCode();
        int hashCode2 = this.f17668c.hashCode();
        int hashCode3 = this.f17669d.hashCode();
        int hashCode4 = this.f17670e.hashCode();
        return this.f17671f.hashCode() + ((hashCode4 + ((hashCode3 + ((hashCode2 + ((hashCode + (this.f17666a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public String toString() {
        return "SdkEnvironment(appVersionInfo=" + this.f17666a + ", appFramework=" + this.f17667b + ", screenInfo=" + this.f17668c + ", sdkInfo=" + this.f17669d + ", deviceType=" + this.f17670e + ", locales=" + this.f17671f + ')';
    }
}
