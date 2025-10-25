package io.sentry.android.core;

import android.app.Application;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Process;
import android.os.SystemClock;
import io.sentry.ILogger;
import io.sentry.b5;
import io.sentry.j5;
import io.sentry.r3;
import io.sentry.s5;
import io.sentry.x6;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
/* loaded from: classes2.dex */
public final class SentryPerformanceProvider extends c1 {

    /* renamed from: e  reason: collision with root package name */
    private static final long f22105e = SystemClock.uptimeMillis();

    /* renamed from: b  reason: collision with root package name */
    private Application f22106b;

    /* renamed from: c  reason: collision with root package name */
    private final ILogger f22107c;

    /* renamed from: d  reason: collision with root package name */
    private final p0 f22108d;

    public SentryPerformanceProvider() {
        u uVar = new u();
        this.f22107c = uVar;
        this.f22108d = new p0(uVar);
    }

    private void a(io.sentry.android.core.performance.g gVar) {
        Context context = getContext();
        if (context == null) {
            this.f22107c.c(j5.FATAL, "App. Context from ContentProvider is null", new Object[0]);
        } else if (this.f22108d.d() < 21) {
        } else {
            File file = new File(z.d(context), "app_start_profiling_config");
            if (file.exists() && file.canRead()) {
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
                    try {
                        r3 r3Var = (r3) new io.sentry.r1(s5.empty()).c(bufferedReader, r3.class);
                        if (r3Var == null) {
                            this.f22107c.c(j5.WARNING, "Unable to deserialize the SentryAppStartProfilingOptions. App start profiling will not start.", new Object[0]);
                            bufferedReader.close();
                        } else if (!r3Var.f()) {
                            this.f22107c.c(j5.INFO, "Profiling is not enabled. App start profiling will not start.", new Object[0]);
                            bufferedReader.close();
                        } else {
                            x6 x6Var = new x6(Boolean.valueOf(r3Var.g()), r3Var.d(), Boolean.valueOf(r3Var.e()), r3Var.a());
                            gVar.A(x6Var);
                            if (x6Var.b().booleanValue() && x6Var.d().booleanValue()) {
                                this.f22107c.c(j5.DEBUG, "App start profiling started.", new Object[0]);
                                d0 d0Var = new d0(context, this.f22108d, new io.sentry.android.core.internal.util.t(context, this.f22107c, this.f22108d), this.f22107c, r3Var.b(), r3Var.f(), r3Var.c(), new b5());
                                gVar.z(d0Var);
                                d0Var.start();
                                bufferedReader.close();
                                return;
                            }
                            this.f22107c.c(j5.DEBUG, "App start profiling was not sampled. It will not start.", new Object[0]);
                            bufferedReader.close();
                        }
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (FileNotFoundException e10) {
                    this.f22107c.b(j5.ERROR, "App start profiling config file not found. ", e10);
                } catch (Throwable th3) {
                    this.f22107c.b(j5.ERROR, "Error reading app start profiling config file. ", th3);
                }
            }
        }
    }

    private void b(Context context, io.sentry.android.core.performance.g gVar) {
        gVar.q().x(f22105e);
        if (this.f22108d.d() >= 24) {
            gVar.j().x(Process.getStartUptimeMillis());
        }
        if (context instanceof Application) {
            this.f22106b = (Application) context;
        }
        Application application = this.f22106b;
        if (application == null) {
            return;
        }
        gVar.y(application);
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        if (!SentryPerformanceProvider.class.getName().equals(providerInfo.authority)) {
            super.attachInfo(context, providerInfo);
            return;
        }
        throw new IllegalStateException("An applicationId is required to fulfill the manifest placeholder.");
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        io.sentry.android.core.performance.g p10 = io.sentry.android.core.performance.g.p();
        b(getContext(), p10);
        a(p10);
        return true;
    }

    @Override // android.content.ContentProvider
    public void shutdown() {
        synchronized (io.sentry.android.core.performance.g.p()) {
            io.sentry.b1 h10 = io.sentry.android.core.performance.g.p().h();
            if (h10 != null) {
                h10.close();
            }
        }
    }
}
