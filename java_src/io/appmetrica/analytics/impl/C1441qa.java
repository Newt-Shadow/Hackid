package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.servicecomponents.ServiceComponentsInitializer;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceEntryPoint;
/* renamed from: io.appmetrica.analytics.impl.qa  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1441qa {

    /* renamed from: d  reason: collision with root package name */
    public static final C1441qa f20434d = new C1441qa();

    /* renamed from: a  reason: collision with root package name */
    public final C1668zd f20435a = new C1668zd();

    /* renamed from: b  reason: collision with root package name */
    public final ServiceComponentsInitializer f20436b = Vj.a();

    /* renamed from: c  reason: collision with root package name */
    public boolean f20437c = false;

    public final void a(Context context) {
        C1665za.a(context);
        this.f20436b.onCreate(context);
        this.f20435a.getClass();
        for (String str : C1665za.E.f21055s.a()) {
            Object loadAndInstantiateClassWithDefaultConstructor = ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor(str, ModuleServiceEntryPoint.class);
            if (loadAndInstantiateClassWithDefaultConstructor != null) {
                C1665za.E.o().a((ModuleServiceEntryPoint) loadAndInstantiateClassWithDefaultConstructor);
            }
        }
        new C1202gk(C1665za.j().B().b()).a(context);
        C1665za.E.p().a();
    }

    public final void b(Context context) {
        if (!this.f20437c) {
            synchronized (this) {
                if (!this.f20437c) {
                    a(context);
                    this.f20437c = true;
                }
            }
        }
    }
}
