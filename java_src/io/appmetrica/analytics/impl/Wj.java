package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.control.DataSendingRestrictionController;
import io.appmetrica.analytics.coreapi.internal.crypto.CryptoProvider;
import io.appmetrica.analytics.coreapi.internal.identifiers.PlatformIdentifiers;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ActivationBarrier;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.FirstExecutionConditionService;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.SdkEnvironmentProvider;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.applicationstate.ApplicationStateProvider;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.batteryinfo.ChargeTypeProvider;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.modulesapi.internal.common.ExecutorProvider;
import io.appmetrica.analytics.modulesapi.internal.common.ModuleSelfReporter;
import io.appmetrica.analytics.modulesapi.internal.service.LocationServiceApi;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceLifecycleController;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceNetworkContext;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceStorageProvider;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceWakeLock;
/* loaded from: classes2.dex */
public final class Wj implements ServiceContext {

    /* renamed from: a  reason: collision with root package name */
    public final ModuleServiceLifecycleController f19192a;

    /* renamed from: b  reason: collision with root package name */
    public final Rd f19193b = new Rd(getContext());

    /* renamed from: c  reason: collision with root package name */
    public final C1319ld f19194c = new C1319ld();

    /* renamed from: d  reason: collision with root package name */
    public final C1426pk f19195d = new C1426pk(getContext(), new C1401ok(new O1()));

    /* renamed from: e  reason: collision with root package name */
    public final C1326lk f19196e = new C1326lk(getContext(), C1665za.j().x(), C1288k7.a(getContext()).h());

    /* renamed from: f  reason: collision with root package name */
    public final K9 f19197f = new K9();

    /* renamed from: g  reason: collision with root package name */
    public final C6 f19198g = new C6();

    public Wj(ModuleServiceLifecycleController moduleServiceLifecycleController) {
        this.f19192a = moduleServiceLifecycleController;
    }

    public final Rd a() {
        return this.f19193b;
    }

    public final C1319ld b() {
        return this.f19194c;
    }

    public final C1326lk c() {
        return this.f19196e;
    }

    public final C1426pk d() {
        return this.f19195d;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final ActivationBarrier getActivationBarrier() {
        return C1665za.E.B.getActivationBarrier();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final ApplicationStateProvider getApplicationStateProvider() {
        return C1665za.E.k().f18815b;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final ChargeTypeProvider getChargeTypeProvider() {
        C1665za c1665za = C1665za.E;
        C1035a3 c1035a3 = c1665za.f21041e;
        if (c1035a3 == null) {
            synchronized (c1665za) {
                c1035a3 = c1665za.f21041e;
                if (c1035a3 == null) {
                    c1035a3 = new C1035a3(c1665za.f21040d.a(), c1665za.k().f18814a);
                    c1665za.f21041e = c1035a3;
                }
            }
        }
        return c1035a3;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final Context getContext() {
        return C1665za.E.f21037a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final CryptoProvider getCryptoProvider() {
        return this.f19198g;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final DataSendingRestrictionController getDataSendingRestrictionController() {
        return C1665za.E.g();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final ExecutorProvider getExecutorProvider() {
        return this.f19197f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final FirstExecutionConditionService getFirstExecutionConditionService() {
        return C1665za.E.B.getFirstExecutionService();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final LocationServiceApi getLocationServiceApi() {
        return C1665za.E.l();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final ModuleServiceLifecycleController getModuleServiceLifecycleController() {
        return this.f19192a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final ServiceNetworkContext getNetworkContext() {
        return this.f19193b;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final PermissionExtractor getPermissionExtractor() {
        return C1665za.E.i();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final PlatformIdentifiers getPlatformIdentifiers() {
        return C1665za.E.r();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final SdkEnvironmentProvider getSdkEnvironmentProvider() {
        return C1665za.E.u();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final ModuleSelfReporter getSelfReporter() {
        return this.f19194c;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final ServiceStorageProvider getServiceStorageProvider() {
        return this.f19196e;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ServiceContext
    public final ServiceWakeLock getServiceWakeLock() {
        return this.f19195d;
    }
}
