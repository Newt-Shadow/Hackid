package io.appmetrica.analytics.impl;

import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.identifiers.SdkIdentifiers;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientEntryPoint;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigExtensionConfiguration;
import io.appmetrica.analytics.modulesapi.internal.client.ServiceConfigUpdateListener;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueProcessor;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: io.appmetrica.analytics.impl.q4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1435q4 {

    /* renamed from: a  reason: collision with root package name */
    public final C1410p4 f20407a = new C1410p4();

    /* renamed from: b  reason: collision with root package name */
    public final CopyOnWriteArrayList f20408b = new CopyOnWriteArrayList();

    /* renamed from: c  reason: collision with root package name */
    public W5 f20409c;

    public static void a(String str, String str2, Throwable th) {
        String b10;
        Map c10;
        Map c11;
        Oj oj = AbstractC1375nj.f20222a;
        b10 = xc.b.b(th);
        c10 = yc.g0.c(xc.q.a(str2, b10));
        c11 = yc.g0.c(xc.q.a(str, c10));
        oj.getClass();
        oj.a(new Nj("client_module_errors", c11));
    }

    public final void b() {
        Iterator it = this.f20408b.iterator();
        while (it.hasNext()) {
            ModuleClientEntryPoint moduleClientEntryPoint = (ModuleClientEntryPoint) it.next();
            try {
                moduleClientEntryPoint.onActivated();
            } catch (Throwable th) {
                a(moduleClientEntryPoint.getIdentifier(), "onActivated", th);
            }
        }
    }

    public final void a(ModuleClientEntryPoint<Object> moduleClientEntryPoint) {
        this.f20408b.add(moduleClientEntryPoint);
    }

    public final void a(W5 w52) {
        this.f20409c = w52;
        HashSet hashSet = new HashSet();
        Iterator it = this.f20408b.iterator();
        while (it.hasNext()) {
            ModuleClientEntryPoint moduleClientEntryPoint = (ModuleClientEntryPoint) it.next();
            try {
                moduleClientEntryPoint.initClientSide(w52);
            } catch (Throwable th) {
                a(moduleClientEntryPoint.getIdentifier(), "initClientSide", th);
                hashSet.add(moduleClientEntryPoint);
            }
        }
        this.f20408b.removeAll(hashSet);
    }

    public final ModuleAdRevenueProcessor a() {
        Z5 z52;
        W5 w52 = this.f20409c;
        if (w52 == null || (z52 = ((C1086c4) w52).f19461b) == null) {
            return null;
        }
        return z52.f19345a;
    }

    public final void a(Bundle bundle, SdkIdentifiers sdkIdentifiers) {
        if (bundle == null) {
            return;
        }
        Iterator it = this.f20408b.iterator();
        while (it.hasNext()) {
            ModuleClientEntryPoint moduleClientEntryPoint = (ModuleClientEntryPoint) it.next();
            try {
                ServiceConfigExtensionConfiguration serviceConfigExtensionConfiguration = moduleClientEntryPoint.getServiceConfigExtensionConfiguration();
                if (serviceConfigExtensionConfiguration != null) {
                    ServiceConfigUpdateListener serviceConfigUpdateListener = serviceConfigExtensionConfiguration.getServiceConfigUpdateListener();
                    C1410p4 c1410p4 = this.f20407a;
                    String identifier = moduleClientEntryPoint.getIdentifier();
                    c1410p4.getClass();
                    Bundle bundle2 = bundle.getBundle(identifier);
                    C1385o4 c1385o4 = bundle2 != null ? new C1385o4(sdkIdentifiers, serviceConfigExtensionConfiguration.getBundleConverter().fromBundle(bundle2)) : null;
                    if (c1385o4 != null) {
                        serviceConfigUpdateListener.onServiceConfigUpdated(c1385o4);
                    }
                }
            } catch (Throwable th) {
                a(moduleClientEntryPoint.getIdentifier(), "notifyModulesWithConfig", th);
            }
        }
    }
}
