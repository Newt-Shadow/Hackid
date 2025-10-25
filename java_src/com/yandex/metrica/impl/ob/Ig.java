package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.Tl;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
/* loaded from: classes2.dex */
public class Ig {

    /* renamed from: a  reason: collision with root package name */
    public final String f10406a;

    /* renamed from: b  reason: collision with root package name */
    public final String f10407b;
    @Deprecated

    /* renamed from: c  reason: collision with root package name */
    public final String f10408c;

    /* renamed from: d  reason: collision with root package name */
    public final String f10409d;

    /* renamed from: e  reason: collision with root package name */
    public final String f10410e;

    /* renamed from: f  reason: collision with root package name */
    public final String f10411f;

    /* renamed from: g  reason: collision with root package name */
    public final String f10412g;

    /* renamed from: h  reason: collision with root package name */
    public final String f10413h;

    /* renamed from: i  reason: collision with root package name */
    public final String f10414i;

    /* renamed from: j  reason: collision with root package name */
    public final String f10415j;

    /* renamed from: k  reason: collision with root package name */
    public final String f10416k;

    /* renamed from: l  reason: collision with root package name */
    public final String f10417l;

    /* renamed from: m  reason: collision with root package name */
    public final String f10418m;

    /* renamed from: n  reason: collision with root package name */
    public final String f10419n;

    /* renamed from: o  reason: collision with root package name */
    public final String f10420o;

    /* renamed from: p  reason: collision with root package name */
    public final String f10421p;

    public Ig(Tl.a aVar) {
        this.f10406a = aVar.c("dId");
        this.f10407b = aVar.c("uId");
        this.f10408c = aVar.b("kitVer");
        this.f10409d = aVar.c("analyticsSdkVersionName");
        this.f10410e = aVar.c("kitBuildNumber");
        this.f10411f = aVar.c("kitBuildType");
        this.f10412g = aVar.c("appVer");
        this.f10413h = aVar.optString("app_debuggable", CommonUrlParts.Values.FALSE_INTEGER);
        this.f10414i = aVar.c("appBuild");
        this.f10415j = aVar.c("osVer");
        this.f10417l = aVar.c("lang");
        this.f10418m = aVar.c("root");
        this.f10421p = aVar.c("commit_hash");
        this.f10419n = aVar.optString(CommonUrlParts.APP_FRAMEWORK, C0572h2.a());
        int optInt = aVar.optInt("osApiLev", -1);
        this.f10416k = optInt == -1 ? null : String.valueOf(optInt);
        int optInt2 = aVar.optInt("attribution_id", 0);
        this.f10420o = optInt2 > 0 ? String.valueOf(optInt2) : null;
    }

    public String toString() {
        return "DbNetworkTaskConfig{deviceId='" + this.f10406a + "', uuid='" + this.f10407b + "', kitVersion='" + this.f10408c + "', analyticsSdkVersionName='" + this.f10409d + "', kitBuildNumber='" + this.f10410e + "', kitBuildType='" + this.f10411f + "', appVersion='" + this.f10412g + "', appDebuggable='" + this.f10413h + "', appBuildNumber='" + this.f10414i + "', osVersion='" + this.f10415j + "', osApiLevel='" + this.f10416k + "', locale='" + this.f10417l + "', deviceRootStatus='" + this.f10418m + "', appFramework='" + this.f10419n + "', attributionId='" + this.f10420o + "', commitHash='" + this.f10421p + "'}";
    }

    public Ig() {
        this.f10406a = null;
        this.f10407b = null;
        this.f10408c = null;
        this.f10409d = null;
        this.f10410e = null;
        this.f10411f = null;
        this.f10412g = null;
        this.f10413h = null;
        this.f10414i = null;
        this.f10415j = null;
        this.f10416k = null;
        this.f10417l = null;
        this.f10418m = null;
        this.f10419n = null;
        this.f10420o = null;
        this.f10421p = null;
    }
}
