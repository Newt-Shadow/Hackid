package io.sentry.android.core;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import io.sentry.ILogger;
import io.sentry.android.fragment.FragmentLifecycleIntegration;
import io.sentry.android.replay.ReplayIntegration;
import io.sentry.android.timber.SentryTimberIntegration;
import io.sentry.compose.gestures.ComposeGestureTargetLocator;
import io.sentry.compose.viewhierarchy.ComposeViewHierarchyExporter;
import io.sentry.h3;
import io.sentry.j5;
import io.sentry.k3;
import io.sentry.l3;
import io.sentry.util.m;
import java.io.File;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class z {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static File d(Context context) {
        return new File(context.getCacheDir(), "sentry");
    }

    private static String e(PackageInfo packageInfo, String str) {
        return packageInfo.packageName + "@" + packageInfo.versionName + "+" + str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(SentryAndroidOptions sentryAndroidOptions, Context context, p0 p0Var, n1 n1Var, h hVar) {
        boolean z10;
        if (sentryAndroidOptions.getCacheDirPath() != null && (sentryAndroidOptions.getEnvelopeDiskCache() instanceof io.sentry.transport.s)) {
            sentryAndroidOptions.setEnvelopeDiskCache(new io.sentry.android.core.cache.b(sentryAndroidOptions));
        }
        if (sentryAndroidOptions.getConnectionStatusProvider() instanceof io.sentry.w1) {
            sentryAndroidOptions.setConnectionStatusProvider(new io.sentry.android.core.internal.util.a(context, sentryAndroidOptions.getLogger(), p0Var));
        }
        if (sentryAndroidOptions.getCacheDirPath() != null) {
            sentryAndroidOptions.addScopeObserver(new io.sentry.cache.t(sentryAndroidOptions));
            sentryAndroidOptions.addOptionsObserver(new io.sentry.cache.h(sentryAndroidOptions));
        }
        sentryAndroidOptions.addEventProcessor(new io.sentry.k(sentryAndroidOptions));
        sentryAndroidOptions.addEventProcessor(new a1(context, p0Var, sentryAndroidOptions));
        sentryAndroidOptions.addEventProcessor(new u1(sentryAndroidOptions, hVar));
        sentryAndroidOptions.addEventProcessor(new ScreenshotEventProcessor(sentryAndroidOptions, p0Var));
        sentryAndroidOptions.addEventProcessor(new ViewHierarchyEventProcessor(sentryAndroidOptions));
        sentryAndroidOptions.addEventProcessor(new i0(context, sentryAndroidOptions, p0Var));
        sentryAndroidOptions.setTransportGate(new e0(sentryAndroidOptions));
        synchronized (io.sentry.android.core.performance.g.p()) {
            io.sentry.b1 h10 = io.sentry.android.core.performance.g.p().h();
            if (h10 != null) {
                sentryAndroidOptions.setTransactionProfiler(h10);
                io.sentry.android.core.performance.g.p().z(null);
            } else {
                sentryAndroidOptions.setTransactionProfiler(new d0(context, sentryAndroidOptions, p0Var, (io.sentry.android.core.internal.util.t) io.sentry.util.q.c(sentryAndroidOptions.getFrameMetricsCollector(), "options.getFrameMetricsCollector is required")));
            }
        }
        sentryAndroidOptions.setModulesLoader(new io.sentry.android.core.internal.modules.a(context, sentryAndroidOptions.getLogger()));
        sentryAndroidOptions.setDebugMetaLoader(new io.sentry.android.core.internal.debugmeta.a(context, sentryAndroidOptions.getLogger()));
        boolean b10 = n1Var.b("androidx.core.view.ScrollingView", sentryAndroidOptions);
        boolean b11 = n1Var.b("androidx.compose.ui.node.Owner", sentryAndroidOptions);
        if (sentryAndroidOptions.getGestureTargetLocators().isEmpty()) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(new io.sentry.android.core.internal.gestures.a(b10));
            if (b11 && n1Var.b("io.sentry.compose.gestures.ComposeGestureTargetLocator", sentryAndroidOptions)) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                arrayList.add(new ComposeGestureTargetLocator(sentryAndroidOptions.getLogger()));
            }
            sentryAndroidOptions.setGestureTargetLocators(arrayList);
        }
        if (sentryAndroidOptions.getViewHierarchyExporters().isEmpty() && b11 && n1Var.b("io.sentry.compose.viewhierarchy.ComposeViewHierarchyExporter", sentryAndroidOptions)) {
            ArrayList arrayList2 = new ArrayList(1);
            arrayList2.add(new ComposeViewHierarchyExporter(sentryAndroidOptions.getLogger()));
            sentryAndroidOptions.setViewHierarchyExporters(arrayList2);
        }
        sentryAndroidOptions.setMainThreadChecker(io.sentry.android.core.internal.util.c.b());
        if (sentryAndroidOptions.getPerformanceCollectors().isEmpty()) {
            sentryAndroidOptions.addPerformanceCollector(new v());
            sentryAndroidOptions.addPerformanceCollector(new s(sentryAndroidOptions.getLogger(), p0Var));
            if (sentryAndroidOptions.isEnablePerformanceV2()) {
                sentryAndroidOptions.addPerformanceCollector(new c2(sentryAndroidOptions, (io.sentry.android.core.internal.util.t) io.sentry.util.q.c(sentryAndroidOptions.getFrameMetricsCollector(), "options.getFrameMetricsCollector is required")));
            }
        }
        sentryAndroidOptions.setTransactionPerformanceCollector(new io.sentry.m(sentryAndroidOptions));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void g(Context context, final SentryAndroidOptions sentryAndroidOptions, p0 p0Var, n1 n1Var, h hVar, boolean z10, boolean z11, boolean z12) {
        io.sentry.util.m mVar = new io.sentry.util.m(new m.a() { // from class: io.sentry.android.core.w
            @Override // io.sentry.util.m.a
            public final Object a() {
                Boolean h10;
                h10 = z.h(SentryAndroidOptions.this);
                return h10;
            }
        });
        sentryAndroidOptions.addIntegration(new SendCachedEnvelopeIntegration(new k3(new h3() { // from class: io.sentry.android.core.x
            @Override // io.sentry.h3
            public final String a() {
                String cacheDirPath;
                cacheDirPath = SentryAndroidOptions.this.getCacheDirPath();
                return cacheDirPath;
            }
        }), mVar));
        sentryAndroidOptions.addIntegration(new NdkIntegration(n1Var.c("io.sentry.android.ndk.SentryNdk", sentryAndroidOptions.getLogger())));
        sentryAndroidOptions.addIntegration(EnvelopeFileObserverIntegration.b());
        sentryAndroidOptions.addIntegration(new SendCachedEnvelopeIntegration(new l3(new h3() { // from class: io.sentry.android.core.y
            @Override // io.sentry.h3
            public final String a() {
                String outboxPath;
                outboxPath = SentryAndroidOptions.this.getOutboxPath();
                return outboxPath;
            }
        }), mVar));
        sentryAndroidOptions.addIntegration(new AppLifecycleIntegration());
        sentryAndroidOptions.addIntegration(h0.a(context, p0Var));
        if (context instanceof Application) {
            Application application = (Application) context;
            sentryAndroidOptions.addIntegration(new ActivityLifecycleIntegration(application, p0Var, hVar));
            sentryAndroidOptions.addIntegration(new ActivityBreadcrumbsIntegration(application));
            sentryAndroidOptions.addIntegration(new CurrentActivityIntegration(application));
            sentryAndroidOptions.addIntegration(new UserInteractionIntegration(application, n1Var));
            if (z10) {
                sentryAndroidOptions.addIntegration(new FragmentLifecycleIntegration(application, true, true));
            }
        } else {
            sentryAndroidOptions.getLogger().c(j5.WARNING, "ActivityLifecycle, FragmentLifecycle and UserInteraction Integrations need an Application class to be installed.", new Object[0]);
        }
        if (z11) {
            sentryAndroidOptions.addIntegration(new SentryTimberIntegration());
        }
        sentryAndroidOptions.addIntegration(new AppComponentsBreadcrumbsIntegration(context));
        sentryAndroidOptions.addIntegration(new SystemEventsBreadcrumbsIntegration(context));
        sentryAndroidOptions.addIntegration(new NetworkBreadcrumbsIntegration(context, p0Var, sentryAndroidOptions.getLogger()));
        if (z12) {
            ReplayIntegration replayIntegration = new ReplayIntegration(context, io.sentry.transport.n.b());
            replayIntegration.D0(new io.sentry.android.replay.a());
            sentryAndroidOptions.addIntegration(replayIntegration);
            sentryAndroidOptions.setReplayController(replayIntegration);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean h(SentryAndroidOptions sentryAndroidOptions) {
        return Boolean.valueOf(io.sentry.android.core.cache.b.Y(sentryAndroidOptions));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void k(SentryAndroidOptions sentryAndroidOptions, Context context, ILogger iLogger, p0 p0Var) {
        io.sentry.util.q.c(context, "The context is required.");
        Context h10 = x0.h(context);
        io.sentry.util.q.c(sentryAndroidOptions, "The options object is required.");
        io.sentry.util.q.c(iLogger, "The ILogger object is required.");
        sentryAndroidOptions.setLogger(iLogger);
        sentryAndroidOptions.setDateProvider(new z1());
        sentryAndroidOptions.setFlushTimeoutMillis(4000L);
        sentryAndroidOptions.setFrameMetricsCollector(new io.sentry.android.core.internal.util.t(h10, iLogger, p0Var));
        p1.a(h10, sentryAndroidOptions, p0Var);
        sentryAndroidOptions.setCacheDirPath(d(h10).getAbsolutePath());
        l(sentryAndroidOptions, h10, p0Var);
    }

    private static void l(SentryAndroidOptions sentryAndroidOptions, Context context, p0 p0Var) {
        PackageInfo r10 = x0.r(context, p0Var);
        if (r10 != null) {
            if (sentryAndroidOptions.getRelease() == null) {
                sentryAndroidOptions.setRelease(e(r10, x0.s(r10, p0Var)));
            }
            String str = r10.packageName;
            if (str != null && !str.startsWith("android.")) {
                sentryAndroidOptions.addInAppInclude(str);
            }
        }
        if (sentryAndroidOptions.getDistinctId() == null) {
            try {
                sentryAndroidOptions.setDistinctId(g1.a(context));
            } catch (RuntimeException e10) {
                sentryAndroidOptions.getLogger().b(j5.ERROR, "Could not generate distinct Id.", e10);
            }
        }
    }
}
