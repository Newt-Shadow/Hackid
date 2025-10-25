package io.sentry.android.core;

import android.app.Application;
import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import io.sentry.ILogger;
import io.sentry.android.fragment.FragmentLifecycleIntegration;
import io.sentry.android.timber.SentryTimberIntegration;
import io.sentry.e3;
import io.sentry.f6;
import io.sentry.j5;
import io.sentry.n2;
import io.sentry.q3;
import io.sentry.s5;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public abstract class y1 {

    /* renamed from: a  reason: collision with root package name */
    private static final long f22510a = SystemClock.uptimeMillis();

    private static void c(s5 s5Var, boolean z10, boolean z11) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (io.sentry.e1 e1Var : s5Var.getIntegrations()) {
            if (z10 && (e1Var instanceof FragmentLifecycleIntegration)) {
                arrayList2.add(e1Var);
            }
            if (z11 && (e1Var instanceof SentryTimberIntegration)) {
                arrayList.add(e1Var);
            }
        }
        if (arrayList2.size() > 1) {
            for (int i10 = 0; i10 < arrayList2.size() - 1; i10++) {
                s5Var.getIntegrations().remove((io.sentry.e1) arrayList2.get(i10));
            }
        }
        if (arrayList.size() > 1) {
            for (int i11 = 0; i11 < arrayList.size() - 1; i11++) {
                s5Var.getIntegrations().remove((io.sentry.e1) arrayList.get(i11));
            }
        }
    }

    public static synchronized void d(final Context context, final ILogger iLogger, final q3.a aVar) {
        synchronized (y1.class) {
            try {
                try {
                    q3.q(n2.a(SentryAndroidOptions.class), new q3.a() { // from class: io.sentry.android.core.w1
                        @Override // io.sentry.q3.a
                        public final void a(s5 s5Var) {
                            y1.f(ILogger.this, context, aVar, (SentryAndroidOptions) s5Var);
                        }
                    }, true);
                    io.sentry.o0 o10 = q3.o();
                    if (x0.u()) {
                        if (o10.B().isEnableAutoSessionTracking()) {
                            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                            o10.y(new e3() { // from class: io.sentry.android.core.x1
                                @Override // io.sentry.e3
                                public final void a(io.sentry.u0 u0Var) {
                                    y1.g(atomicBoolean, u0Var);
                                }
                            });
                            if (!atomicBoolean.get()) {
                                o10.f();
                            }
                        }
                        o10.B().getReplayController().start();
                    }
                } catch (InstantiationException e10) {
                    iLogger.b(j5.FATAL, "Fatal error during SentryAndroid.init(...)", e10);
                    throw new RuntimeException("Failed to initialize Sentry's SDK", e10);
                } catch (NoSuchMethodException e11) {
                    iLogger.b(j5.FATAL, "Fatal error during SentryAndroid.init(...)", e11);
                    throw new RuntimeException("Failed to initialize Sentry's SDK", e11);
                }
            } catch (IllegalAccessException e12) {
                iLogger.b(j5.FATAL, "Fatal error during SentryAndroid.init(...)", e12);
                throw new RuntimeException("Failed to initialize Sentry's SDK", e12);
            } catch (InvocationTargetException e13) {
                iLogger.b(j5.FATAL, "Fatal error during SentryAndroid.init(...)", e13);
                throw new RuntimeException("Failed to initialize Sentry's SDK", e13);
            }
        }
    }

    public static void e(Context context, q3.a aVar) {
        d(context, new u(), aVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(ILogger iLogger, Context context, q3.a aVar, SentryAndroidOptions sentryAndroidOptions) {
        boolean z10;
        boolean z11;
        n1 n1Var = new n1();
        boolean b10 = n1Var.b("timber.log.Timber", sentryAndroidOptions);
        if (n1Var.b("androidx.fragment.app.FragmentManager$FragmentLifecycleCallbacks", sentryAndroidOptions) && n1Var.b("io.sentry.android.fragment.FragmentLifecycleIntegration", sentryAndroidOptions)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (b10 && n1Var.b("io.sentry.android.timber.SentryTimberIntegration", sentryAndroidOptions)) {
            z11 = true;
        } else {
            z11 = false;
        }
        boolean b11 = n1Var.b("io.sentry.android.replay.ReplayIntegration", sentryAndroidOptions);
        p0 p0Var = new p0(iLogger);
        n1 n1Var2 = new n1();
        h hVar = new h(n1Var2, sentryAndroidOptions);
        z.k(sentryAndroidOptions, context, iLogger, p0Var);
        z.g(context, sentryAndroidOptions, p0Var, n1Var2, hVar, z10, z11, b11);
        try {
            aVar.a(sentryAndroidOptions);
        } catch (Throwable th) {
            sentryAndroidOptions.getLogger().b(j5.ERROR, "Error in the 'OptionsConfiguration.configure' callback.", th);
        }
        io.sentry.android.core.performance.g p10 = io.sentry.android.core.performance.g.p();
        if (sentryAndroidOptions.isEnablePerformanceV2() && p0Var.d() >= 24) {
            io.sentry.android.core.performance.h j10 = p10.j();
            if (j10.q()) {
                j10.x(Process.getStartUptimeMillis());
            }
        }
        if (context.getApplicationContext() instanceof Application) {
            p10.y((Application) context.getApplicationContext());
        }
        io.sentry.android.core.performance.h q10 = p10.q();
        if (q10.q()) {
            q10.x(f22510a);
        }
        z.f(sentryAndroidOptions, context, p0Var, n1Var2, hVar);
        c(sentryAndroidOptions, z10, z11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g(AtomicBoolean atomicBoolean, io.sentry.u0 u0Var) {
        f6 k10 = u0Var.k();
        if (k10 != null && k10.k() != null) {
            atomicBoolean.set(true);
        }
    }
}
