package io.appmetrica.analytics.impl;

import android.os.Handler;
import android.os.Looper;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class L9 implements IHandlerExecutor {

    /* renamed from: a  reason: collision with root package name */
    public final Looper f18517a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f18518b;

    /* renamed from: c  reason: collision with root package name */
    public final HandlerThreadC1392ob f18519c;

    public L9(String str) {
        this(a(str));
    }

    public static HandlerThreadC1392ob a(String str) {
        HandlerThreadC1392ob handlerThreadC1392ob = new HandlerThreadC1392ob(str + "-" + Fd.f18227a.incrementAndGet());
        handlerThreadC1392ob.start();
        return handlerThreadC1392ob;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f18518b.post(runnable);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor
    public final void executeDelayed(Runnable runnable, long j10) {
        this.f18518b.postDelayed(runnable, TimeUnit.MILLISECONDS.toMillis(j10));
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor
    public final Handler getHandler() {
        return this.f18518b;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor
    public final Looper getLooper() {
        return this.f18517a;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IInterruptionSafeThread
    public final boolean isRunning() {
        boolean z10;
        HandlerThreadC1392ob handlerThreadC1392ob = this.f18519c;
        synchronized (handlerThreadC1392ob) {
            z10 = handlerThreadC1392ob.f20291a;
        }
        return z10;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor
    public final void remove(Runnable runnable) {
        this.f18518b.removeCallbacks(runnable);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor
    public final void removeAll() {
        this.f18518b.removeCallbacksAndMessages(null);
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.IInterruptionSafeThread
    public final void stopRunning() {
        HandlerThreadC1392ob handlerThreadC1392ob = this.f18519c;
        synchronized (handlerThreadC1392ob) {
            handlerThreadC1392ob.f20291a = false;
            handlerThreadC1392ob.interrupt();
        }
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor
    public final <T> Future<T> submit(Callable<T> callable) {
        FutureTask futureTask = new FutureTask(callable);
        this.f18518b.post(futureTask);
        return futureTask;
    }

    public L9(HandlerThreadC1392ob handlerThreadC1392ob) {
        this(handlerThreadC1392ob, handlerThreadC1392ob.getLooper(), new Handler(handlerThreadC1392ob.getLooper()));
    }

    public L9(HandlerThreadC1392ob handlerThreadC1392ob, Looper looper, Handler handler) {
        this.f18519c = handlerThreadC1392ob;
        this.f18517a = looper;
        this.f18518b = handler;
    }

    @Override // io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor
    public final void executeDelayed(Runnable runnable, long j10, TimeUnit timeUnit) {
        this.f18518b.postDelayed(runnable, timeUnit.toMillis(j10));
    }
}
