package io.appmetrica.analytics.remotepermissions.internal;

import io.appmetrica.analytics.coreapi.internal.data.Converter;
import io.appmetrica.analytics.coreapi.internal.data.JsonParser;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import io.appmetrica.analytics.modulesapi.internal.common.AskForPermissionStrategyModuleProvider;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleRemoteConfig;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.remotepermissions.impl.a;
import io.appmetrica.analytics.remotepermissions.impl.b;
import io.appmetrica.analytics.remotepermissions.impl.d;
import io.appmetrica.analytics.remotepermissions.impl.e;
import java.util.List;
import java.util.Map;
import java.util.Set;
import xc.q;
import yc.g0;
import yc.m0;
import yc.o;
/* loaded from: classes2.dex */
public final class RemotePermissionsModuleEntryPoint extends ModuleServiceEntryPoint<a> implements AskForPermissionStrategyModuleProvider, RemoteConfigUpdateListener<a> {

    /* renamed from: a  reason: collision with root package name */
    private final d f21354a = new d();

    /* renamed from: b  reason: collision with root package name */
    private final b f21355b = new b();

    /* renamed from: c  reason: collision with root package name */
    private final RemotePermissionsModuleEntryPoint f21356c = this;

    /* renamed from: d  reason: collision with root package name */
    private final e f21357d = new e();

    /* renamed from: e  reason: collision with root package name */
    private final String f21358e = "rp";

    /* renamed from: f  reason: collision with root package name */
    private final RemotePermissionsModuleEntryPoint$remoteConfigExtensionConfiguration$1 f21359f = new RemoteConfigExtensionConfiguration<a>() { // from class: io.appmetrica.analytics.remotepermissions.internal.RemotePermissionsModuleEntryPoint$remoteConfigExtensionConfiguration$1
        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Map<String, Integer> getBlocks() {
            Map<String, Integer> c10;
            c10 = g0.c(q.a("permissions", 1));
            return c10;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public List<String> getFeatures() {
            List<String> h10;
            h10 = o.h();
            return h10;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public JsonParser<a> getJsonParser() {
            JsonParser<a> jsonParser;
            jsonParser = RemotePermissionsModuleEntryPoint.this.f21354a;
            return jsonParser;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public Converter<a, byte[]> getProtobufConverter() {
            Converter<a, byte[]> converter;
            converter = RemotePermissionsModuleEntryPoint.this.f21355b;
            return converter;
        }

        @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration
        public RemoteConfigUpdateListener<a> getRemoteConfigUpdateListener() {
            RemoteConfigUpdateListener<a> remoteConfigUpdateListener;
            remoteConfigUpdateListener = RemotePermissionsModuleEntryPoint.this.f21356c;
            return remoteConfigUpdateListener;
        }
    };

    @Override // io.appmetrica.analytics.modulesapi.internal.common.AskForPermissionStrategyModuleProvider
    public PermissionStrategy getAskForPermissionStrategy() {
        return this.f21357d;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public String getIdentifier() {
        return this.f21358e;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public RemoteConfigExtensionConfiguration<a> getRemoteConfigExtensionConfiguration() {
        return this.f21359f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint
    public void initServiceSide(ServiceContext serviceContext, ModuleRemoteConfig<a> moduleRemoteConfig) {
        Set b10;
        e eVar = this.f21357d;
        a featuresConfig = moduleRemoteConfig.getFeaturesConfig();
        if (featuresConfig == null || (b10 = featuresConfig.f21345a) == null) {
            b10 = m0.b();
        }
        synchronized (eVar) {
            eVar.f21351a = b10;
        }
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigUpdateListener
    public void onRemoteConfigUpdated(ModuleRemoteConfig<a> moduleRemoteConfig) {
        Set b10;
        e eVar = this.f21357d;
        a featuresConfig = moduleRemoteConfig.getFeaturesConfig();
        if (featuresConfig == null || (b10 = featuresConfig.f21345a) == null) {
            b10 = m0.b();
        }
        synchronized (eVar) {
            eVar.f21351a = b10;
        }
    }
}
