package com.yandex.metrica.core.api.executors;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public interface ICommonExecutor extends IInterruptionSafeThread, Executor {
    @Override // java.util.concurrent.Executor
    void execute(Runnable runnable);

    void executeDelayed(Runnable runnable, long j10);

    void executeDelayed(Runnable runnable, long j10, TimeUnit timeUnit);

    void remove(Runnable runnable);

    void removeAll();

    Future submit(Callable callable);
}
