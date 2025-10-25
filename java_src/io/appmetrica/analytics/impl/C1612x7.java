package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.services.FrameworkDetector;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
/* renamed from: io.appmetrica.analytics.impl.x7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1612x7 {

    /* renamed from: a  reason: collision with root package name */
    public final String f20905a;

    /* renamed from: b  reason: collision with root package name */
    public final String f20906b;

    /* renamed from: c  reason: collision with root package name */
    public final String f20907c;

    /* renamed from: d  reason: collision with root package name */
    public final String f20908d;

    /* renamed from: e  reason: collision with root package name */
    public final String f20909e;

    /* renamed from: f  reason: collision with root package name */
    public final String f20910f;

    /* renamed from: g  reason: collision with root package name */
    public final String f20911g;

    /* renamed from: h  reason: collision with root package name */
    public final String f20912h;

    /* renamed from: i  reason: collision with root package name */
    public final String f20913i;

    /* renamed from: j  reason: collision with root package name */
    public final String f20914j;

    /* renamed from: k  reason: collision with root package name */
    public final String f20915k;

    /* renamed from: l  reason: collision with root package name */
    public final String f20916l;

    /* renamed from: m  reason: collision with root package name */
    public final String f20917m;

    /* renamed from: n  reason: collision with root package name */
    public final String f20918n;

    public C1612x7(C1466rb c1466rb) {
        this.f20905a = c1466rb.b("dId");
        this.f20906b = c1466rb.b("uId");
        this.f20907c = c1466rb.b("analyticsSdkVersionName");
        this.f20908d = c1466rb.b("kitBuildNumber");
        this.f20909e = c1466rb.b("kitBuildType");
        this.f20910f = c1466rb.b("appVer");
        this.f20911g = c1466rb.optString("app_debuggable", CommonUrlParts.Values.FALSE_INTEGER);
        this.f20912h = c1466rb.b("appBuild");
        this.f20913i = c1466rb.b("osVer");
        this.f20915k = c1466rb.b("lang");
        this.f20916l = c1466rb.b("root");
        this.f20917m = c1466rb.optString(CommonUrlParts.APP_FRAMEWORK, FrameworkDetector.framework());
        int optInt = c1466rb.optInt("osApiLev", -1);
        this.f20914j = optInt == -1 ? null : String.valueOf(optInt);
        int optInt2 = c1466rb.optInt("attribution_id", 0);
        this.f20918n = optInt2 > 0 ? String.valueOf(optInt2) : null;
    }

    public final String toString() {
        return "DbNetworkTaskConfig{deviceId='" + this.f20905a + "', uuid='" + this.f20906b + "', analyticsSdkVersionName='" + this.f20907c + "', kitBuildNumber='" + this.f20908d + "', kitBuildType='" + this.f20909e + "', appVersion='" + this.f20910f + "', appDebuggable='" + this.f20911g + "', appBuildNumber='" + this.f20912h + "', osVersion='" + this.f20913i + "', osApiLevel='" + this.f20914j + "', locale='" + this.f20915k + "', deviceRootStatus='" + this.f20916l + "', appFramework='" + this.f20917m + "', attributionId='" + this.f20918n + "'}";
    }

    public C1612x7() {
        this.f20905a = null;
        this.f20906b = null;
        this.f20907c = null;
        this.f20908d = null;
        this.f20909e = null;
        this.f20910f = null;
        this.f20911g = null;
        this.f20912h = null;
        this.f20913i = null;
        this.f20914j = null;
        this.f20915k = null;
        this.f20916l = null;
        this.f20917m = null;
        this.f20918n = null;
    }
}
