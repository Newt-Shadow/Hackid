package io.sentry.android.replay.util;

import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.x0;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import rd.y;
import xc.t;
/* loaded from: classes2.dex */
public abstract class g {
    public static final void d(ExecutorService executorService, s5 options) {
        kotlin.jvm.internal.m.e(executorService, "<this>");
        kotlin.jvm.internal.m.e(options, "options");
        synchronized (executorService) {
            if (!executorService.isShutdown()) {
                executorService.shutdown();
            }
            try {
                if (!executorService.awaitTermination(options.getShutdownTimeoutMillis(), TimeUnit.MILLISECONDS)) {
                    executorService.shutdownNow();
                }
            } catch (InterruptedException unused) {
                executorService.shutdownNow();
                Thread.currentThread().interrupt();
            }
            t tVar = t.f32733a;
        }
    }

    public static final ScheduledFuture e(ScheduledExecutorService scheduledExecutorService, final s5 options, final String taskName, long j10, long j11, TimeUnit unit, final Runnable task) {
        kotlin.jvm.internal.m.e(scheduledExecutorService, "<this>");
        kotlin.jvm.internal.m.e(options, "options");
        kotlin.jvm.internal.m.e(taskName, "taskName");
        kotlin.jvm.internal.m.e(unit, "unit");
        kotlin.jvm.internal.m.e(task, "task");
        try {
            return scheduledExecutorService.scheduleAtFixedRate(new Runnable() { // from class: io.sentry.android.replay.util.f
                @Override // java.lang.Runnable
                public final void run() {
                    g.f(task, options, taskName);
                }
            }, j10, j11, unit);
        } catch (Throwable th) {
            ILogger logger = options.getLogger();
            j5 j5Var = j5.ERROR;
            logger.b(j5Var, "Failed to submit task " + taskName + " to executor", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(Runnable task, s5 options, String taskName) {
        kotlin.jvm.internal.m.e(task, "$task");
        kotlin.jvm.internal.m.e(options, "$options");
        kotlin.jvm.internal.m.e(taskName, "$taskName");
        try {
            task.run();
        } catch (Throwable th) {
            ILogger logger = options.getLogger();
            j5 j5Var = j5.ERROR;
            logger.b(j5Var, "Failed to execute task " + taskName, th);
        }
    }

    public static final Future g(x0 x0Var, final s5 options, final String taskName, final Runnable task) {
        kotlin.jvm.internal.m.e(x0Var, "<this>");
        kotlin.jvm.internal.m.e(options, "options");
        kotlin.jvm.internal.m.e(taskName, "taskName");
        kotlin.jvm.internal.m.e(task, "task");
        try {
            return x0Var.submit(new Runnable() { // from class: io.sentry.android.replay.util.e
                @Override // java.lang.Runnable
                public final void run() {
                    g.i(task, options, taskName);
                }
            });
        } catch (Throwable th) {
            ILogger logger = options.getLogger();
            j5 j5Var = j5.ERROR;
            logger.b(j5Var, "Failed to submit task " + taskName + " to executor", th);
            return null;
        }
    }

    public static final Future h(ExecutorService executorService, final s5 options, final String taskName, final Runnable task) {
        boolean H;
        kotlin.jvm.internal.m.e(executorService, "<this>");
        kotlin.jvm.internal.m.e(options, "options");
        kotlin.jvm.internal.m.e(taskName, "taskName");
        kotlin.jvm.internal.m.e(task, "task");
        String name = Thread.currentThread().getName();
        kotlin.jvm.internal.m.d(name, "currentThread().name");
        H = y.H(name, "SentryReplayIntegration", false, 2, null);
        if (H) {
            task.run();
            return null;
        }
        try {
            return executorService.submit(new Runnable() { // from class: io.sentry.android.replay.util.d
                @Override // java.lang.Runnable
                public final void run() {
                    g.j(task, options, taskName);
                }
            });
        } catch (Throwable th) {
            ILogger logger = options.getLogger();
            j5 j5Var = j5.ERROR;
            logger.b(j5Var, "Failed to submit task " + taskName + " to executor", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(Runnable task, s5 options, String taskName) {
        kotlin.jvm.internal.m.e(task, "$task");
        kotlin.jvm.internal.m.e(options, "$options");
        kotlin.jvm.internal.m.e(taskName, "$taskName");
        try {
            task.run();
        } catch (Throwable th) {
            ILogger logger = options.getLogger();
            j5 j5Var = j5.ERROR;
            logger.b(j5Var, "Failed to execute task " + taskName, th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(Runnable task, s5 options, String taskName) {
        kotlin.jvm.internal.m.e(task, "$task");
        kotlin.jvm.internal.m.e(options, "$options");
        kotlin.jvm.internal.m.e(taskName, "$taskName");
        try {
            task.run();
        } catch (Throwable th) {
            ILogger logger = options.getLogger();
            j5 j5Var = j5.ERROR;
            logger.b(j5Var, "Failed to execute task " + taskName, th);
        }
    }
}
