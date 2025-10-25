package io.sentry;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class q3 {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal f23535a = new ThreadLocal();

    /* renamed from: b  reason: collision with root package name */
    private static volatile o0 f23536b = y1.g();

    /* renamed from: c  reason: collision with root package name */
    private static volatile boolean f23537c = false;

    /* renamed from: d  reason: collision with root package name */
    private static final Charset f23538d = Charset.forName("UTF-8");

    /* renamed from: e  reason: collision with root package name */
    private static final long f23539e = System.currentTimeMillis();

    /* loaded from: classes2.dex */
    public interface a {
        void a(s5 s5Var);
    }

    public static void A(String str) {
        o().a(str);
    }

    public static void B(String str) {
        o().c(str);
    }

    private static x6 C(s5 s5Var) {
        y6 y6Var = new y6("app.launch", "profile");
        y6Var.w(true);
        return new w6(s5Var).b(new c3(y6Var, null));
    }

    public static void D(String str, String str2) {
        o().b(str, str2);
    }

    public static void E(String str, String str2) {
        o().d(str, str2);
    }

    public static void F(io.sentry.protocol.b0 b0Var) {
        o().n(b0Var);
    }

    public static void G() {
        o().f();
    }

    public static a1 H(y6 y6Var, a7 a7Var) {
        return o().w(y6Var, a7Var);
    }

    public static void e(e eVar) {
        o().t(eVar);
    }

    public static void f(e eVar, c0 c0Var) {
        o().p(eVar, c0Var);
    }

    private static void g(a aVar, s5 s5Var) {
        try {
            aVar.a(s5Var);
        } catch (Throwable th) {
            s5Var.getLogger().b(j5.ERROR, "Error in the 'OptionsConfiguration.configure' callback.", th);
        }
    }

    public static io.sentry.protocol.r h(z4 z4Var, c0 c0Var) {
        return o().D(z4Var, c0Var);
    }

    public static void i() {
        o().q();
    }

    public static synchronized void j() {
        synchronized (q3.class) {
            o0 o10 = o();
            f23536b = y1.g();
            f23535a.remove();
            o10.i(false);
        }
    }

    public static void k(e3 e3Var) {
        o().y(e3Var);
    }

    public static void l() {
        o().e();
    }

    private static void m(s5 s5Var, o0 o0Var) {
        try {
            s5Var.getExecutorService().submit(new s2(s5Var, o0Var));
        } catch (Throwable th) {
            s5Var.getLogger().b(j5.DEBUG, "Failed to finalize previous session.", th);
        }
    }

    public static void n(long j10) {
        o().o(j10);
    }

    public static o0 o() {
        if (f23537c) {
            return f23536b;
        }
        ThreadLocal threadLocal = f23535a;
        o0 o0Var = (o0) threadLocal.get();
        if (o0Var == null || (o0Var instanceof y1)) {
            o0 r10 = f23536b.r();
            threadLocal.set(r10);
            return r10;
        }
        return o0Var;
    }

    private static void p(final s5 s5Var, x0 x0Var) {
        try {
            x0Var.submit(new Runnable() { // from class: io.sentry.n3
                @Override // java.lang.Runnable
                public final void run() {
                    q3.v(s5.this);
                }
            });
        } catch (Throwable th) {
            s5Var.getLogger().b(j5.ERROR, "Failed to call the executor. App start profiling config will not be changed. Did you call Sentry.close()?", th);
        }
    }

    public static void q(n2 n2Var, a aVar, boolean z10) {
        s5 s5Var = (s5) n2Var.b();
        g(aVar, s5Var);
        r(s5Var, z10);
    }

    private static synchronized void r(final s5 s5Var, boolean z10) {
        synchronized (q3.class) {
            if (t()) {
                s5Var.getLogger().c(j5.WARNING, "Sentry has been already initialized. Previous configuration will be overwritten.", new Object[0]);
            }
            if (!s(s5Var)) {
                return;
            }
            try {
                s5Var.getExecutorService().submit(new Runnable() { // from class: io.sentry.m3
                    @Override // java.lang.Runnable
                    public final void run() {
                        s5.this.loadLazyFields();
                    }
                });
            } catch (RejectedExecutionException e10) {
                s5Var.getLogger().b(j5.DEBUG, "Failed to call the executor. Lazy fields will not be loaded. Did you call Sentry.close()?", e10);
            }
            s5Var.getLogger().c(j5.INFO, "GlobalHubMode: '%s'", String.valueOf(z10));
            f23537c = z10;
            o0 o10 = o();
            f23536b = new j0(s5Var);
            f23535a.set(f23536b);
            o10.i(true);
            if (s5Var.getExecutorService().b()) {
                s5Var.setExecutorService(new b5());
            }
            for (e1 e1Var : s5Var.getIntegrations()) {
                e1Var.f(k0.h(), s5Var);
            }
            z(s5Var);
            m(s5Var, k0.h());
            p(s5Var, s5Var.getExecutorService());
        }
    }

    private static boolean s(s5 s5Var) {
        if (s5Var.isEnableExternalConfiguration()) {
            s5Var.merge(a0.g(io.sentry.config.g.a(), s5Var.getLogger()));
        }
        String dsn = s5Var.getDsn();
        if (s5Var.isEnabled() && (dsn == null || !dsn.isEmpty())) {
            if (dsn != null) {
                s5Var.retrieveParsedDsn();
                ILogger logger = s5Var.getLogger();
                if (s5Var.isDebug() && (logger instanceof z1)) {
                    s5Var.setLogger(new u6());
                    logger = s5Var.getLogger();
                }
                j5 j5Var = j5.INFO;
                logger.c(j5Var, "Initializing SDK with DSN: '%s'", s5Var.getDsn());
                String outboxPath = s5Var.getOutboxPath();
                if (outboxPath != null) {
                    new File(outboxPath).mkdirs();
                } else {
                    logger.c(j5Var, "No outbox dir path is defined in options.", new Object[0]);
                }
                String cacheDirPath = s5Var.getCacheDirPath();
                if (cacheDirPath != null) {
                    new File(cacheDirPath).mkdirs();
                    if (s5Var.getEnvelopeDiskCache() instanceof io.sentry.transport.s) {
                        s5Var.setEnvelopeDiskCache(io.sentry.cache.f.I(s5Var));
                    }
                }
                String profilingTracesDirPath = s5Var.getProfilingTracesDirPath();
                if (s5Var.isProfilingEnabled() && profilingTracesDirPath != null) {
                    final File file = new File(profilingTracesDirPath);
                    file.mkdirs();
                    try {
                        s5Var.getExecutorService().submit(new Runnable() { // from class: io.sentry.o3
                            @Override // java.lang.Runnable
                            public final void run() {
                                q3.x(file);
                            }
                        });
                    } catch (RejectedExecutionException e10) {
                        s5Var.getLogger().b(j5.ERROR, "Failed to call the executor. Old profiles will not be deleted. Did you call Sentry.close()?", e10);
                    }
                }
                io.sentry.internal.modules.b modulesLoader = s5Var.getModulesLoader();
                if (!s5Var.isSendModules()) {
                    s5Var.setModulesLoader(io.sentry.internal.modules.e.b());
                } else if (modulesLoader instanceof io.sentry.internal.modules.e) {
                    s5Var.setModulesLoader(new io.sentry.internal.modules.a(Arrays.asList(new io.sentry.internal.modules.c(s5Var.getLogger()), new io.sentry.internal.modules.f(s5Var.getLogger())), s5Var.getLogger()));
                }
                if (s5Var.getDebugMetaLoader() instanceof io.sentry.internal.debugmeta.b) {
                    s5Var.setDebugMetaLoader(new io.sentry.internal.debugmeta.c(s5Var.getLogger()));
                }
                io.sentry.util.c.c(s5Var, s5Var.getDebugMetaLoader().a());
                if (s5Var.getMainThreadChecker() instanceof io.sentry.util.thread.c) {
                    s5Var.setMainThreadChecker(io.sentry.util.thread.b.b());
                }
                if (s5Var.getPerformanceCollectors().isEmpty()) {
                    s5Var.addPerformanceCollector(new f1());
                }
                if (s5Var.isEnableBackpressureHandling() && io.sentry.util.s.c()) {
                    s5Var.setBackpressureMonitor(new io.sentry.backpressure.a(s5Var, k0.h()));
                    s5Var.getBackpressureMonitor().start();
                }
                return true;
            }
            throw new IllegalArgumentException("DSN is required. Use empty string or set enabled to false in SentryOptions to disable SDK.");
        }
        j();
        return false;
    }

    public static boolean t() {
        return o().isEnabled();
    }

    public static boolean u() {
        return o().m();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void v(s5 s5Var) {
        String cacheDirPathWithoutDsn = s5Var.getCacheDirPathWithoutDsn();
        if (cacheDirPathWithoutDsn != null) {
            File file = new File(cacheDirPathWithoutDsn, "app_start_profiling_config");
            try {
                io.sentry.util.e.a(file);
                if (!s5Var.isEnableAppStartProfiling()) {
                    return;
                }
                if (!s5Var.isTracingEnabled()) {
                    s5Var.getLogger().c(j5.INFO, "Tracing is disabled and app start profiling will not start.", new Object[0]);
                } else if (file.createNewFile()) {
                    r3 r3Var = new r3(s5Var, C(s5Var));
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(fileOutputStream, f23538d));
                    s5Var.getSerializer().a(r3Var, bufferedWriter);
                    bufferedWriter.close();
                    fileOutputStream.close();
                }
            } catch (Throwable th) {
                s5Var.getLogger().b(j5.ERROR, "Unable to create app start profiling config file. ", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void x(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2.lastModified() < f23539e - TimeUnit.MINUTES.toMillis(5L)) {
                io.sentry.util.e.a(file2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void y(s5 s5Var) {
        for (q0 q0Var : s5Var.getOptionsObservers()) {
            q0Var.k(s5Var.getRelease());
            q0Var.j(s5Var.getProguardUuid());
            q0Var.f(s5Var.getSdkVersion());
            q0Var.g(s5Var.getDist());
            q0Var.i(s5Var.getEnvironment());
            q0Var.e(s5Var.getTags());
            q0Var.h(s5Var.getSessionReplay().g());
        }
        io.sentry.cache.t findPersistingScopeObserver = s5Var.findPersistingScopeObserver();
        if (findPersistingScopeObserver != null) {
            findPersistingScopeObserver.M();
        }
    }

    private static void z(final s5 s5Var) {
        try {
            s5Var.getExecutorService().submit(new Runnable() { // from class: io.sentry.p3
                @Override // java.lang.Runnable
                public final void run() {
                    q3.y(s5.this);
                }
            });
        } catch (Throwable th) {
            s5Var.getLogger().b(j5.DEBUG, "Failed to notify options observers.", th);
        }
    }
}
