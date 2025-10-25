package io.appmetrica.analytics.screenshot.internal;

import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.modulesapi.internal.service.ClientConfigProvider;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.screenshot.impl.B;
import io.appmetrica.analytics.screenshot.impl.G;
import io.appmetrica.analytics.screenshot.impl.H;
import io.appmetrica.analytics.screenshot.impl.I;
import io.appmetrica.analytics.screenshot.impl.g0;
import io.appmetrica.analytics.screenshot.impl.j0;
import java.util.List;
import java.util.Map;
import xc.q;
import yc.n;
/* loaded from: classes2.dex */
public final class ScreenshotServiceModuleEntryPoint extends ModuleServiceEntryPoint<G> {

    /* renamed from: a  reason: collision with root package name */
    private g0 f21472a;

    /* renamed from: b  reason: collision with root package name */
    private final j0 f21473b = new j0();

    /* renamed from: c  reason: collision with root package name */
    private final I f21474c = new I(null, null, 3, null);

    /* renamed from: d  reason: collision with root package name */
    private final H f21475d = new H(null, 1, null);

    /* renamed from: e  reason: collision with root package name */
    private final ScreenshotServiceModuleEntryPoint$configUpdateListener$1 f21476e = new RemoteConfigUpdateListener<G>() { // from class: io.appmetrica.analytics.screenshot.internal.ScreenshotServiceModuleEntryPoint$configUpdateListener$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener
        public void onRemoteConfigUpdated(ModuleRemoteConfig<G> moduleRemoteConfig) {
            g0 g0Var;
            ScreenshotServiceModuleEntryPoint screenshotServiceModuleEntryPoint = ScreenshotServiceModuleEntryPoint.this;
            G featuresConfig = moduleRemoteConfig.getFeaturesConfig();
            if (featuresConfig != null) {
                g0Var = new g0(featuresConfig);
            } else {
                g0Var = null;
            }
            screenshotServiceModuleEntryPoint.f21472a = g0Var;
        }
    };

    /* renamed from: f  reason: collision with root package name */
    private final String f21477f = "screenshot";

    /* renamed from: g  reason: collision with root package name */
    private final ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1 f21478g = new RemoteConfigExtensionConfiguration<G>() { // from class: io.appmetrica.analytics.screenshot.internal.ScreenshotServiceModuleEntryPoint$remoteConfigExtensionConfiguration$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Map<String, Integer> getBlocks() {
            Map<String, Integer> c10;
            c10 = yc.g0.c(q.a("scr", 1));
            return c10;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public List<String> getFeatures() {
            List<String> b10;
            b10 = n.b("scr");
            return b10;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public JsonParser<G> getJsonParser() {
            I i10;
            i10 = ScreenshotServiceModuleEntryPoint.this.f21474c;
            return i10;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Converter<G, byte[]> getProtobufConverter() {
            H h10;
            h10 = ScreenshotServiceModuleEntryPoint.this.f21475d;
            return h10;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public RemoteConfigUpdateListener<G> getRemoteConfigUpdateListener() {
            ScreenshotServiceModuleEntryPoint$configUpdateListener$1 screenshotServiceModuleEntryPoint$configUpdateListener$1;
            screenshotServiceModuleEntryPoint$configUpdateListener$1 = ScreenshotServiceModuleEntryPoint.this.f21476e;
            return screenshotServiceModuleEntryPoint$configUpdateListener$1;
        }
    };

    /* renamed from: h  reason: collision with root package name */
    private final ScreenshotServiceModuleEntryPoint$clientConfigProvider$1 f21479h = new ClientConfigProvider() { // from class: io.appmetrica.analytics.screenshot.internal.ScreenshotServiceModuleEntryPoint$clientConfigProvider$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.ClientConfigProvider
        public Bundle getConfigBundleForClient() {
            j0 j0Var;
            g0 g0Var;
            j0Var = ScreenshotServiceModuleEntryPoint.this.f21473b;
            g0Var = ScreenshotServiceModuleEntryPoint.this.f21472a;
            j0Var.getClass();
            if (g0Var == null) {
                return null;
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable("config", new B(g0Var));
            return bundle;
        }
    };

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public ClientConfigProvider getClientConfigProvider() {
        return this.f21479h;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public String getIdentifier() {
        return this.f21477f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public RemoteConfigExtensionConfiguration<G> getRemoteConfigExtensionConfiguration() {
        return this.f21478g;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public void initServiceSide(ServiceContext serviceContext, ModuleRemoteConfig<G> moduleRemoteConfig) {
        g0 g0Var;
        G featuresConfig = moduleRemoteConfig.getFeaturesConfig();
        if (featuresConfig != null) {
            g0Var = new g0(featuresConfig);
        } else {
            g0Var = null;
        }
        this.f21472a = g0Var;
    }
}
