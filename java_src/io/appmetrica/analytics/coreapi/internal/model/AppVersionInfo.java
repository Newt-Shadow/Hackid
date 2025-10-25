package io.appmetrica.analytics.coreapi.internal.model;

import kotlin.jvm.internal.m;
/* loaded from: classes2.dex */
public final class AppVersionInfo {

    /* renamed from: a  reason: collision with root package name */
    private final String f17660a;

    /* renamed from: b  reason: collision with root package name */
    private final String f17661b;

    public AppVersionInfo(String str, String str2) {
        this.f17660a = str;
        this.f17661b = str2;
    }

    public static /* synthetic */ AppVersionInfo copy$default(AppVersionInfo appVersionInfo, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = appVersionInfo.f17660a;
        }
        if ((i10 & 2) != 0) {
            str2 = appVersionInfo.f17661b;
        }
        return appVersionInfo.copy(str, str2);
    }

    public final String component1() {
        return this.f17660a;
    }

    public final String component2() {
        return this.f17661b;
    }

    public final AppVersionInfo copy(String str, String str2) {
        return new AppVersionInfo(str, str2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof AppVersionInfo) {
            AppVersionInfo appVersionInfo = (AppVersionInfo) obj;
            return m.a(this.f17660a, appVersionInfo.f17660a) && m.a(this.f17661b, appVersionInfo.f17661b);
        }
        return false;
    }

    public final String getAppBuildNumber() {
        return this.f17661b;
    }

    public final String getAppVersionName() {
        return this.f17660a;
    }

    public int hashCode() {
        return this.f17661b.hashCode() + (this.f17660a.hashCode() * 31);
    }

    public String toString() {
        return "AppVersionInfo(appVersionName=" + this.f17660a + ", appBuildNumber=" + this.f17661b + ')';
    }
}
