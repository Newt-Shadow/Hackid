package io.appmetrica.analytics.impl;

import android.content.Intent;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceLifecycleController;
import io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceLifecycleObserver;
/* renamed from: io.appmetrica.analytics.impl.md  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1344md implements ModuleServiceLifecycleController {

    /* renamed from: a  reason: collision with root package name */
    public final N1 f20115a;

    public C1344md(N1 n12) {
        this.f20115a = n12;
    }

    public static final void a(ModuleServiceLifecycleObserver moduleServiceLifecycleObserver, Intent intent) {
        moduleServiceLifecycleObserver.onFirstClientConnected();
    }

    public static final void b(ModuleServiceLifecycleObserver moduleServiceLifecycleObserver, Intent intent) {
        moduleServiceLifecycleObserver.onAllClientsDisconnected();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.service.ModuleServiceLifecycleController
    public final void registerObserver(final ModuleServiceLifecycleObserver moduleServiceLifecycleObserver) {
        this.f20115a.b(new M1() { // from class: io.appmetrica.analytics.impl.wp
            @Override // io.appmetrica.analytics.impl.M1
            public final void a(Intent intent) {
                C1344md.a(ModuleServiceLifecycleObserver.this, intent);
            }
        });
        this.f20115a.a(new M1() { // from class: io.appmetrica.analytics.impl.xp
            @Override // io.appmetrica.analytics.impl.M1
            public final void a(Intent intent) {
                C1344md.b(ModuleServiceLifecycleObserver.this, intent);
            }
        });
    }
}
