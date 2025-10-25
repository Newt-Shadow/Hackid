package io.appmetrica.analytics.impl;

import android.location.Location;
import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.backport.Consumer;
import io.appmetrica.analytics.coreapi.internal.control.Toggle;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.coreapi.internal.permission.PermissionStrategy;
import io.appmetrica.analytics.modulesapi.internal.common.AskForPermissionStrategyModuleProvider;
import io.appmetrica.analytics.modulesapi.internal.service.ClientConfigProvider;
import io.appmetrica.analytics.modulesapi.internal.service.LocationServiceExtension;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleLocationSourcesServiceController;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServicesDatabase;
import io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.service.ServiceContext;
import io.appmetrica.analytics.modulesapi.internal.service.event.ModuleEventServiceHandlerFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: io.appmetrica.analytics.impl.kk  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1301kk implements InterfaceC1070bd, Vl, AskForPermissionStrategyModuleProvider {

    /* renamed from: a  reason: collision with root package name */
    public final String f19987a = "rp";

    /* renamed from: b  reason: collision with root package name */
    public final CopyOnWriteArrayList f19988b = new CopyOnWriteArrayList();

    /* renamed from: c  reason: collision with root package name */
    public volatile AskForPermissionStrategyModuleProvider f19989c = new M7();

    @Override // io.appmetrica.analytics.impl.Vl
    public final void a(Ql ql) {
        SdkIdentifiers sdkIdentifiers = new SdkIdentifiers(ql.e(), ql.a(), ql.b());
        Ig ig = new Ig(ql.c(), ql.d());
        for (ModuleServiceEntryPoint moduleServiceEntryPoint : this.f19988b) {
            RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration = moduleServiceEntryPoint.getRemoteConfigExtensionConfiguration();
            if (remoteConfigExtensionConfiguration != null) {
                remoteConfigExtensionConfiguration.getRemoteConfigUpdateListener().onRemoteConfigUpdated(new C1276jk(sdkIdentifiers, ig, ql.B.get(moduleServiceEntryPoint.getIdentifier())));
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1070bd
    public final List<ModuleServicesDatabase> b() {
        String b10;
        Map c10;
        Map c11;
        Object obj;
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        CopyOnWriteArrayList copyOnWriteArrayList = this.f19988b;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            ModuleServiceEntryPoint moduleServiceEntryPoint = (ModuleServiceEntryPoint) it.next();
            try {
                ModuleServicesDatabase moduleServicesDatabase = moduleServiceEntryPoint.getModuleServicesDatabase();
                if (moduleServicesDatabase != null) {
                    obj = Boolean.valueOf(arrayList.add(moduleServicesDatabase));
                } else {
                    obj = null;
                }
            } catch (Throwable th) {
                hashSet.add(moduleServiceEntryPoint);
                String identifier = moduleServiceEntryPoint.getIdentifier();
                Oj oj = AbstractC1375nj.f20222a;
                b10 = xc.b.b(th);
                c10 = yc.g0.c(xc.q.a("db", b10));
                c11 = yc.g0.c(xc.q.a(identifier, c10));
                oj.getClass();
                oj.a(new Nj("service_module_errors", c11));
                obj = xc.t.f32733a;
            }
            if (obj != null) {
                arrayList2.add(obj);
            }
        }
        this.f19988b.removeAll(hashSet);
        return arrayList;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1070bd
    public final Map<String, C1294kd> c() {
        Map<String, C1294kd> o10;
        xc.k kVar;
        CopyOnWriteArrayList<ModuleServiceEntryPoint> copyOnWriteArrayList = this.f19988b;
        ArrayList arrayList = new ArrayList();
        for (ModuleServiceEntryPoint moduleServiceEntryPoint : copyOnWriteArrayList) {
            RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration = moduleServiceEntryPoint.getRemoteConfigExtensionConfiguration();
            if (remoteConfigExtensionConfiguration != null) {
                kVar = xc.q.a(moduleServiceEntryPoint.getIdentifier(), new C1294kd(remoteConfigExtensionConfiguration));
            } else {
                kVar = null;
            }
            if (kVar != null) {
                arrayList.add(kVar);
            }
        }
        o10 = yc.h0.o(arrayList);
        return o10;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
        r2 = yc.j0.t(r2);
     */
    @Override // io.appmetrica.analytics.impl.InterfaceC1070bd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Map<java.lang.String, java.lang.Integer> d() {
        /*
            r3 = this;
            java.util.concurrent.CopyOnWriteArrayList r0 = r3.f19988b
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>()
            java.util.Iterator r0 = r0.iterator()
        Lb:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L31
            java.lang.Object r2 = r0.next()
            io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint r2 = (io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint) r2
            io.appmetrica.analytics.modulesapi.internal.service.RemoteConfigExtensionConfiguration r2 = r2.getRemoteConfigExtensionConfiguration()
            if (r2 == 0) goto L29
            java.util.Map r2 = r2.getBlocks()
            if (r2 == 0) goto L29
            java.util.List r2 = yc.e0.t(r2)
            if (r2 != 0) goto L2d
        L29:
            java.util.List r2 = yc.m.h()
        L2d:
            yc.m.v(r1, r2)
            goto Lb
        L31:
            java.util.Map r0 = yc.e0.o(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1301kk.d():java.util.Map");
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1070bd
    public final List<Consumer<Location>> e() {
        Consumer<Location> consumer;
        CopyOnWriteArrayList<ModuleServiceEntryPoint> copyOnWriteArrayList = this.f19988b;
        ArrayList arrayList = new ArrayList();
        for (ModuleServiceEntryPoint moduleServiceEntryPoint : copyOnWriteArrayList) {
            LocationServiceExtension locationServiceExtension = moduleServiceEntryPoint.getLocationServiceExtension();
            if (locationServiceExtension != null) {
                consumer = locationServiceExtension.getLocationConsumer();
            } else {
                consumer = null;
            }
            if (consumer != null) {
                arrayList.add(consumer);
            }
        }
        return arrayList;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1070bd
    public final ModuleLocationSourcesServiceController f() {
        ModuleLocationSourcesServiceController moduleLocationSourcesServiceController;
        Iterator it = this.f19988b.iterator();
        do {
            moduleLocationSourcesServiceController = null;
            if (!it.hasNext()) {
                break;
            }
            LocationServiceExtension locationServiceExtension = ((ModuleServiceEntryPoint) it.next()).getLocationServiceExtension();
            if (locationServiceExtension != null) {
                moduleLocationSourcesServiceController = locationServiceExtension.getLocationSourcesController();
                continue;
            }
        } while (moduleLocationSourcesServiceController == null);
        return moduleLocationSourcesServiceController;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1070bd
    public final Toggle g() {
        Toggle toggle;
        Iterator it = this.f19988b.iterator();
        do {
            toggle = null;
            if (!it.hasNext()) {
                break;
            }
            LocationServiceExtension locationServiceExtension = ((ModuleServiceEntryPoint) it.next()).getLocationServiceExtension();
            if (locationServiceExtension != null) {
                toggle = locationServiceExtension.getLocationControllerAppStateToggle();
                continue;
            }
        } while (toggle == null);
        return toggle;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.AskForPermissionStrategyModuleProvider
    public final PermissionStrategy getAskForPermissionStrategy() {
        return this.f19989c.getAskForPermissionStrategy();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1070bd
    public final List<String> h() {
        List<String> h10;
        CopyOnWriteArrayList<ModuleServiceEntryPoint> copyOnWriteArrayList = this.f19988b;
        ArrayList arrayList = new ArrayList();
        for (ModuleServiceEntryPoint moduleServiceEntryPoint : copyOnWriteArrayList) {
            RemoteConfigExtensionConfiguration remoteConfigExtensionConfiguration = moduleServiceEntryPoint.getRemoteConfigExtensionConfiguration();
            if (remoteConfigExtensionConfiguration == null || (h10 = remoteConfigExtensionConfiguration.getFeatures()) == null) {
                h10 = yc.o.h();
            }
            yc.t.v(arrayList, h10);
        }
        return arrayList;
    }

    public final Bundle i() {
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        for (ModuleServiceEntryPoint moduleServiceEntryPoint : this.f19988b) {
            ClientConfigProvider clientConfigProvider = moduleServiceEntryPoint.getClientConfigProvider();
            if (clientConfigProvider != null) {
                bundle = clientConfigProvider.getConfigBundleForClient();
            } else {
                bundle = null;
            }
            if (bundle != null) {
                bundle2.putBundle(moduleServiceEntryPoint.getIdentifier(), bundle);
            }
        }
        return bundle2;
    }

    public final void a(ModuleServiceEntryPoint<Object> moduleServiceEntryPoint) {
        this.f19988b.add(moduleServiceEntryPoint);
        if (kotlin.jvm.internal.m.a(this.f19987a, moduleServiceEntryPoint.getIdentifier()) && (moduleServiceEntryPoint instanceof AskForPermissionStrategyModuleProvider)) {
            this.f19989c = (AskForPermissionStrategyModuleProvider) moduleServiceEntryPoint;
        }
    }

    public final void a(ServiceContext serviceContext, Ql ql) {
        String b10;
        Map c10;
        Map c11;
        HashSet hashSet = new HashSet();
        Iterator it = this.f19988b.iterator();
        while (it.hasNext()) {
            ModuleServiceEntryPoint moduleServiceEntryPoint = (ModuleServiceEntryPoint) it.next();
            try {
                moduleServiceEntryPoint.initServiceSide(serviceContext, new C1276jk(new SdkIdentifiers(ql.f18831d, ql.f18828a, ql.f18829b), new Ig(ql.f18849v, ql.f18848u), ql.B.get(moduleServiceEntryPoint.getIdentifier())));
                ModuleEventServiceHandlerFactory moduleEventServiceHandlerFactory = moduleServiceEntryPoint.getModuleEventServiceHandlerFactory();
                if (moduleEventServiceHandlerFactory != null) {
                    C1195gd c1195gd = C1665za.E.f21056t;
                    String identifier = moduleServiceEntryPoint.getIdentifier();
                    synchronized (c1195gd) {
                        c1195gd.f19674a.put(identifier, moduleEventServiceHandlerFactory);
                    }
                }
            } catch (Throwable th) {
                String identifier2 = moduleServiceEntryPoint.getIdentifier();
                Oj oj = AbstractC1375nj.f20222a;
                b10 = xc.b.b(th);
                c10 = yc.g0.c(xc.q.a("init", b10));
                c11 = yc.g0.c(xc.q.a(identifier2, c10));
                oj.getClass();
                oj.a(new Nj("service_module_errors", c11));
                hashSet.add(moduleServiceEntryPoint);
            }
        }
        this.f19988b.removeAll(hashSet);
    }
}
