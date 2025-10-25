package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityLifecycleRegistry;
import io.appmetrica.analytics.modulesapi.internal.client.ClientStorageProvider;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientActivator;
import io.appmetrica.analytics.modulesapi.internal.client.ModuleClientExecutorProvider;
import io.appmetrica.analytics.modulesapi.internal.client.ProcessDetector;
import io.appmetrica.analytics.modulesapi.internal.client.adrevenue.ModuleAdRevenueContext;
import io.appmetrica.analytics.modulesapi.internal.common.InternalClientModuleFacade;
/* renamed from: io.appmetrica.analytics.impl.c4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1086c4 implements W5 {

    /* renamed from: a  reason: collision with root package name */
    public final Context f19460a;

    /* renamed from: b  reason: collision with root package name */
    public final Z5 f19461b = new Z5(new C1610x5());

    /* renamed from: c  reason: collision with root package name */
    public final C1534u4 f19462c = new C1534u4(C1509t4.j().b(getContext()));

    /* renamed from: d  reason: collision with root package name */
    public final C1342mb f19463d = new C1342mb();

    /* renamed from: e  reason: collision with root package name */
    public final C1355n f19464e = C1509t4.j().a();

    /* renamed from: f  reason: collision with root package name */
    public final C1036a4 f19465f = new C1036a4();

    /* renamed from: g  reason: collision with root package name */
    public final C1095cd f19466g = new C1095cd();

    /* renamed from: h  reason: collision with root package name */
    public final C1061b4 f19467h = new C1061b4();

    public C1086c4(Context context) {
        this.f19460a = context;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ClientContext
    public final ActivityLifecycleRegistry getActivityLifecycleRegistry() {
        return this.f19464e;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ClientContext
    public final ModuleClientActivator getClientActivator() {
        return this.f19465f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ClientContext
    public final ModuleClientExecutorProvider getClientExecutorProvider() {
        return this.f19466g;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ClientContext
    public final ClientStorageProvider getClientStorageProvider() {
        return this.f19462c;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ClientContext
    public final Context getContext() {
        return this.f19460a;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ClientContext
    public final InternalClientModuleFacade getInternalClientModuleFacade() {
        return this.f19463d;
    }

    @Override // io.appmetrica.analytics.impl.W5, io.appmetrica.analytics.modulesapi.internal.client.ClientContext
    public final Y5 getModuleAdRevenueContext() {
        return this.f19461b;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ClientContext
    public final ProcessDetector getProcessDetector() {
        return this.f19467h;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.client.ClientContext
    public final ModuleAdRevenueContext getModuleAdRevenueContext() {
        return this.f19461b;
    }
}
