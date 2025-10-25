package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Point;
import io.appmetrica.analytics.coreapi.internal.model.AppVersionInfo;
import io.appmetrica.analytics.coreapi.internal.model.ScreenInfo;
import io.appmetrica.analytics.coreapi.internal.model.SdkEnvironment;
import io.appmetrica.analytics.coreapi.internal.model.SdkInfo;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.SdkEnvironmentProvider;
import io.appmetrica.analytics.coreutils.internal.services.FrameworkDetector;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: io.appmetrica.analytics.impl.dj  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1126dj implements SdkEnvironmentProvider {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19524a;

    /* renamed from: b  reason: collision with root package name */
    public final Tb f19525b = new Tb();

    /* renamed from: c  reason: collision with root package name */
    public final CopyOnWriteArrayList f19526c = new CopyOnWriteArrayList();

    /* renamed from: d  reason: collision with root package name */
    public SdkEnvironment f19527d;

    /* renamed from: e  reason: collision with root package name */
    public String f19528e;

    public C1126dj(Context context) {
        this.f19524a = context;
        this.f19527d = new SdkEnvironment(new AppVersionInfo(PackageManagerUtils.getAppVersionName(context), PackageManagerUtils.getAppVersionCodeString(context)), FrameworkDetector.framework(), new ScreenInfo(0, 0, 0, 0.0f), new SdkInfo("7.8.0", "50130522", AbstractC1151ej.a()), "phone", Tb.a(context.getResources().getConfiguration()));
    }

    public final synchronized void a(ScreenInfo screenInfo) {
        float f10;
        if (screenInfo != null) {
            if (!kotlin.jvm.internal.m.a(screenInfo, getSdkEnvironment().getScreenInfo())) {
                String str = this.f19528e;
                if (str == null) {
                    Context context = this.f19524a;
                    Point point = new Point(screenInfo.getWidth(), screenInfo.getHeight());
                    SafePackageManager safePackageManager = Ee.f18177a;
                    try {
                        f10 = context.getResources().getDisplayMetrics().density;
                    } catch (Throwable unused) {
                        f10 = 0.0f;
                    }
                    if (f10 == 0.0f) {
                        str = "phone";
                    } else {
                        float f11 = point.x;
                        float f12 = point.y;
                        float min = Math.min(f11 / f10, f12 / f10);
                        float f13 = f10 * 160.0f;
                        float f14 = f11 / f13;
                        float f15 = f12 / f13;
                        double sqrt = Math.sqrt((f15 * f15) + (f14 * f14));
                        if (sqrt < 15.0d || Ee.f18177a.hasSystemFeature(context, "android.hardware.touchscreen")) {
                            if (sqrt < 7.0d && min < 600.0f) {
                                str = "phone";
                            }
                            str = "tablet";
                        } else {
                            str = "tv";
                        }
                    }
                }
                this.f19527d = SdkEnvironment.copy$default(getSdkEnvironment(), null, null, screenInfo, null, str, null, 43, null);
                Iterator it = this.f19526c.iterator();
                while (it.hasNext()) {
                    ((D5) ((InterfaceC1101cj) it.next())).d();
                }
            }
        }
    }

    public final void b(InterfaceC1101cj interfaceC1101cj) {
        this.f19526c.remove(interfaceC1101cj);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.servicecomponents.SdkEnvironmentProvider
    public final SdkEnvironment getSdkEnvironment() {
        SdkEnvironment sdkEnvironment = this.f19527d;
        if (sdkEnvironment != null) {
            return sdkEnvironment;
        }
        kotlin.jvm.internal.m.s("sdkEnvironment");
        return null;
    }

    public final synchronized void a(String str) {
        if (str != null) {
            if (!kotlin.jvm.internal.m.a(str, this.f19528e)) {
                this.f19528e = str;
                if (!kotlin.jvm.internal.m.a(str, getSdkEnvironment().getDeviceType())) {
                    this.f19527d = SdkEnvironment.copy$default(getSdkEnvironment(), null, null, null, null, str, null, 47, null);
                    Iterator it = this.f19526c.iterator();
                    while (it.hasNext()) {
                        ((D5) ((InterfaceC1101cj) it.next())).d();
                    }
                }
            }
        }
    }

    public final synchronized void a(String str, String str2) {
        if (str == null) {
            try {
                str = getSdkEnvironment().getAppVersionInfo().getAppVersionName();
            } finally {
            }
        }
        if (str2 == null) {
            str2 = getSdkEnvironment().getAppVersionInfo().getAppBuildNumber();
        }
        AppVersionInfo appVersionInfo = getSdkEnvironment().getAppVersionInfo();
        if (!kotlin.jvm.internal.m.a(appVersionInfo.getAppVersionName(), str) || !kotlin.jvm.internal.m.a(appVersionInfo.getAppBuildNumber(), str2)) {
            this.f19527d = SdkEnvironment.copy$default(getSdkEnvironment(), new AppVersionInfo(str, str2), null, null, null, null, null, 62, null);
            Iterator it = this.f19526c.iterator();
            while (it.hasNext()) {
                ((D5) ((InterfaceC1101cj) it.next())).d();
            }
        }
    }

    public final synchronized void a(Configuration configuration) {
        this.f19525b.getClass();
        List a10 = Tb.a(configuration);
        if (!kotlin.jvm.internal.m.a(getSdkEnvironment().getLocales(), a10)) {
            this.f19527d = SdkEnvironment.copy$default(getSdkEnvironment(), null, null, null, null, null, a10, 31, null);
            Iterator it = this.f19526c.iterator();
            while (it.hasNext()) {
                ((D5) ((InterfaceC1101cj) it.next())).d();
            }
        }
    }

    public final void a(InterfaceC1101cj interfaceC1101cj) {
        this.f19526c.add(interfaceC1101cj);
    }
}
