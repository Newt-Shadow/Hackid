package com.yandex.metrica.impl.ob;

import android.os.Handler;
import android.os.Looper;
import com.yandex.metrica.core.api.executors.IHandlerExecutor;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class Jm implements IHandlerExecutor {

    /* renamed from: a  reason: collision with root package name */
    private final Looper f10571a;

    /* renamed from: b  reason: collision with root package name */
    private final Handler f10572b;

    /* renamed from: c  reason: collision with root package name */
    private final Km f10573c;

    public Jm(String str) {
        this(a(str));
    }

    private static Km a(String str) {
        Km b10 = new Mm(str).b();
        b10.start();
        return b10;
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f10572b.post(runnable);
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor
    public void executeDelayed(Runnable runnable, long j10) {
        this.f10572b.postDelayed(runnable, TimeUnit.MILLISECONDS.toMillis(j10));
    }

    @Override // com.yandex.metrica.core.api.executors.IHandlerExecutor
    public Handler getHandler() {
        return this.f10572b;
    }

    @Override // com.yandex.metrica.core.api.executors.IHandlerExecutor
    public Looper getLooper() {
        return this.f10571a;
    }

    public boolean isRunning() {
        return this.f10573c.isRunning();
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor
    public void remove(Runnable runnable) {
        this.f10572b.removeCallbacks(runnable);
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor
    public void removeAll() {
        this.f10572b.removeCallbacksAndMessages(null);
    }

    public void stopRunning() {
        this.f10573c.stopRunning();
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor
    public <T> Future<T> submit(Callable<T> callable) {
        FutureTask futureTask = new FutureTask(callable);
        this.f10572b.post(futureTask);
        return futureTask;
    }

    Jm(Km km) {
        this(km, km.getLooper(), new Handler(km.getLooper()));
    }

    public Jm(Km km, Looper looper, Handler handler) {
        this.f10573c = km;
        this.f10571a = looper;
        this.f10572b = handler;
    }

    @Override // com.yandex.metrica.core.api.executors.ICommonExecutor
    public void executeDelayed(Runnable runnable, long j10, TimeUnit timeUnit) {
        this.f10572b.postDelayed(runnable, timeUnit.toMillis(j10));
    }
}
