package io.appmetrica.analytics.screenshot.internal;

import io.appmetrica.analytics.modulesapi.internal.client.BundleToServiceConfigConverter;
import io.appmetrica.analytics.modulesapi.internal.client.ClientContext;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleServiceConfig;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigUpdateListener;
import io.appmetrica.analytics.screenshot.impl.B;
import io.appmetrica.analytics.screenshot.impl.C1682d;
import io.appmetrica.analytics.screenshot.impl.C1686h;
import io.appmetrica.analytics.screenshot.impl.C1689k;
import io.appmetrica.analytics.screenshot.impl.C1690l;
import io.appmetrica.analytics.screenshot.impl.C1698u;
import io.appmetrica.analytics.screenshot.impl.C1699v;
import io.appmetrica.analytics.screenshot.impl.D;
import io.appmetrica.analytics.screenshot.impl.P;
import io.appmetrica.analytics.screenshot.impl.S;
import io.appmetrica.analytics.screenshot.impl.d0;
import java.util.List;
import kotlin.jvm.internal.m;
import xc.t;
import yc.o;
/* loaded from: classes2.dex */
public final class ScreenshotClientModuleEntryPoint extends ModuleClientEntryPoint<B> {

    /* renamed from: a  reason: collision with root package name */
    private C1689k f21464a;

    /* renamed from: d  reason: collision with root package name */
    private S f21467d;

    /* renamed from: b  reason: collision with root package name */
    private final C1686h f21465b = new C1686h();

    /* renamed from: c  reason: collision with root package name */
    private final ScreenshotClientModuleEntryPoint$configUpdateListener$1 f21466c = new ServiceConfigUpdateListener<B>() { // from class: io.appmetrica.analytics.screenshot.internal.ScreenshotClientModuleEntryPoint$configUpdateListener$1
        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigUpdateListener
        public void onServiceConfigUpdated(ModuleServiceConfig<B> moduleServiceConfig) {
            C1689k c1689k;
            S s10;
            S s11;
            C1689k c1689k2;
            C1690l c1690l;
            ScreenshotClientModuleEntryPoint screenshotClientModuleEntryPoint = ScreenshotClientModuleEntryPoint.this;
            synchronized (screenshotClientModuleEntryPoint) {
                B featuresConfig = moduleServiceConfig.getFeaturesConfig();
                S s12 = null;
                if (featuresConfig != null) {
                    boolean b10 = featuresConfig.b();
                    D a10 = featuresConfig.a();
                    if (a10 != null) {
                        c1690l = new C1690l(a10);
                    } else {
                        c1690l = null;
                    }
                    c1689k = new C1689k(b10, c1690l);
                } else {
                    c1689k = null;
                }
                screenshotClientModuleEntryPoint.f21464a = c1689k;
                s10 = screenshotClientModuleEntryPoint.f21467d;
                if (s10 != null) {
                    s11 = screenshotClientModuleEntryPoint.f21467d;
                    if (s11 == null) {
                        m.s("screenshotCaptorsController");
                    } else {
                        s12 = s11;
                    }
                    c1689k2 = screenshotClientModuleEntryPoint.f21464a;
                    s12.a(c1689k2);
                }
                t tVar = t.f32733a;
            }
        }
    };

    /* renamed from: e  reason: collision with root package name */
    private final String f21468e = "screenshot";

    /* renamed from: f  reason: collision with root package name */
    private final ScreenshotClientModuleEntryPoint$serviceConfigExtensionConfiguration$1 f21469f = new ServiceConfigExtensionConfiguration<B>() { // from class: io.appmetrica.analytics.screenshot.internal.ScreenshotClientModuleEntryPoint$serviceConfigExtensionConfiguration$1
        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration
        public BundleToServiceConfigConverter<B> getBundleConverter() {
            C1686h c1686h;
            c1686h = ScreenshotClientModuleEntryPoint.this.f21465b;
            return c1686h;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration
        public ServiceConfigUpdateListener<B> getServiceConfigUpdateListener() {
            ScreenshotClientModuleEntryPoint$configUpdateListener$1 screenshotClientModuleEntryPoint$configUpdateListener$1;
            screenshotClientModuleEntryPoint$configUpdateListener$1 = ScreenshotClientModuleEntryPoint.this.f21466c;
            return screenshotClientModuleEntryPoint$configUpdateListener$1;
        }
    };

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public String getIdentifier() {
        return this.f21468e;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public ServiceConfigExtensionConfiguration<B> getServiceConfigExtensionConfiguration() {
        return this.f21469f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void initClientSide(ClientContext clientContext) {
        List k10;
        synchronized (this) {
            C1699v c1699v = new C1699v(clientContext);
            k10 = o.k(new C1682d(clientContext, c1699v), new d0(clientContext, c1699v), new C1698u(clientContext, c1699v));
            this.f21467d = new S(k10);
            t tVar = t.f32733a;
        }
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint
    public void onActivated() {
        synchronized (this) {
            S s10 = this.f21467d;
            if (s10 != null) {
                C1689k c1689k = this.f21464a;
                for (P p10 : s10.f21392a) {
                    p10.a();
                }
                s10.a(c1689k);
            }
            t tVar = t.f32733a;
        }
    }
}
