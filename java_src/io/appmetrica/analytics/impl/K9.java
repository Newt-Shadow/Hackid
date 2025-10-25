package io.appmetrica.analytics.impl;

import android.os.Handler;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import io.appmetrica.analytics.modulesapi.internal.common.ExecutorProvider;
import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
public final class K9 implements ExecutorProvider {

    /* renamed from: a  reason: collision with root package name */
    public final C1127dk f18482a;

    /* renamed from: b  reason: collision with root package name */
    public final IHandlerExecutor f18483b;

    public K9() {
        C1127dk w10 = C1665za.j().w();
        this.f18482a = w10;
        this.f18483b = w10.c();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ExecutorProvider
    public final IHandlerExecutor getDefaultExecutor() {
        return this.f18482a.a();
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ExecutorProvider
    public final InterruptionSafeThread getInterruptionThread(String str, String str2, Runnable runnable) {
        return new InterruptionSafeThread(runnable, (str + '-' + str2) + "-" + Fd.f18227a.incrementAndGet());
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ExecutorProvider
    public final IHandlerExecutor getModuleExecutor() {
        return this.f18483b;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ExecutorProvider
    public final IHandlerExecutor getSupportIOExecutor() {
        C1127dk c1127dk = this.f18482a;
        if (c1127dk.f19534f == null) {
            synchronized (c1127dk) {
                if (c1127dk.f19534f == null) {
                    c1127dk.f19529a.getClass();
                    HandlerThreadC1392ob a10 = L9.a("IAA-SIO");
                    c1127dk.f19534f = new L9(a10, a10.getLooper(), new Handler(a10.getLooper()));
                }
            }
        }
        return c1127dk.f19534f;
    }

    @Override // io.appmetrica.analytics.modulesapi.internal.common.ExecutorProvider
    public final Executor getUiExecutor() {
        return this.f18482a.f();
    }
}
