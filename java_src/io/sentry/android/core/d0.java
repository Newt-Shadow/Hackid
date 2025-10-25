package io.sentry.android.core;

import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.sentry.ILogger;
import io.sentry.android.core.b0;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.u2;
import io.sentry.v2;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class d0 implements io.sentry.b1 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22203a;

    /* renamed from: b  reason: collision with root package name */
    private final ILogger f22204b;

    /* renamed from: c  reason: collision with root package name */
    private final String f22205c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f22206d;

    /* renamed from: e  reason: collision with root package name */
    private final int f22207e;

    /* renamed from: f  reason: collision with root package name */
    private final io.sentry.x0 f22208f;

    /* renamed from: g  reason: collision with root package name */
    private final p0 f22209g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f22210h;

    /* renamed from: i  reason: collision with root package name */
    private int f22211i;

    /* renamed from: j  reason: collision with root package name */
    private final io.sentry.android.core.internal.util.t f22212j;

    /* renamed from: k  reason: collision with root package name */
    private v2 f22213k;

    /* renamed from: l  reason: collision with root package name */
    private b0 f22214l;

    /* renamed from: m  reason: collision with root package name */
    private long f22215m;

    /* renamed from: n  reason: collision with root package name */
    private long f22216n;

    /* renamed from: o  reason: collision with root package name */
    private Date f22217o;

    public d0(Context context, SentryAndroidOptions sentryAndroidOptions, p0 p0Var, io.sentry.android.core.internal.util.t tVar) {
        this(context, p0Var, tVar, sentryAndroidOptions.getLogger(), sentryAndroidOptions.getProfilingTracesDirPath(), sentryAndroidOptions.isProfilingEnabled(), sentryAndroidOptions.getProfilingTracesHz(), sentryAndroidOptions.getExecutorService());
    }

    private void d() {
        if (this.f22210h) {
            return;
        }
        this.f22210h = true;
        if (!this.f22206d) {
            this.f22204b.c(j5.INFO, "Profiling is disabled in options.", new Object[0]);
            return;
        }
        String str = this.f22205c;
        if (str == null) {
            this.f22204b.c(j5.WARNING, "Disabling profiling because no profiling traces dir path is defined in options.", new Object[0]);
            return;
        }
        int i10 = this.f22207e;
        if (i10 <= 0) {
            this.f22204b.c(j5.WARNING, "Disabling profiling because trace rate is set to %d", Integer.valueOf(i10));
        } else {
            this.f22214l = new b0(str, ((int) TimeUnit.SECONDS.toMicros(1L)) / this.f22207e, this.f22212j, this.f22208f, this.f22204b, this.f22209g);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List e() {
        return io.sentry.android.core.internal.util.f.a().c();
    }

    private boolean f() {
        b0.c j10;
        b0 b0Var = this.f22214l;
        if (b0Var == null || (j10 = b0Var.j()) == null) {
            return false;
        }
        this.f22215m = j10.f22158a;
        this.f22216n = j10.f22159b;
        this.f22217o = j10.f22160c;
        return true;
    }

    private synchronized u2 g(String str, String str2, String str3, boolean z10, List list, s5 s5Var) {
        String str4;
        String str5;
        String str6;
        Long l10 = null;
        if (this.f22214l == null) {
            return null;
        }
        if (this.f22209g.d() < 22) {
            return null;
        }
        v2 v2Var = this.f22213k;
        if (v2Var != null && v2Var.h().equals(str2)) {
            int i10 = this.f22211i;
            if (i10 > 0) {
                this.f22211i = i10 - 1;
            }
            this.f22204b.c(j5.DEBUG, "Transaction %s (%s) finished.", str, str3);
            if (this.f22211i != 0) {
                v2 v2Var2 = this.f22213k;
                if (v2Var2 != null) {
                    v2Var2.k(Long.valueOf(SystemClock.elapsedRealtimeNanos()), Long.valueOf(this.f22215m), Long.valueOf(Process.getElapsedCpuTime()), Long.valueOf(this.f22216n));
                }
                return null;
            }
            b0.b g10 = this.f22214l.g(false, list);
            if (g10 == null) {
                return null;
            }
            long j10 = g10.f22153a - this.f22215m;
            ArrayList<v2> arrayList = new ArrayList(1);
            v2 v2Var3 = this.f22213k;
            if (v2Var3 != null) {
                arrayList.add(v2Var3);
            }
            this.f22213k = null;
            this.f22211i = 0;
            if (s5Var instanceof SentryAndroidOptions) {
                l10 = b1.i(this.f22203a, (SentryAndroidOptions) s5Var).p();
            }
            if (l10 != null) {
                str4 = Long.toString(l10.longValue());
            } else {
                str4 = CommonUrlParts.Values.FALSE_INTEGER;
            }
            String[] strArr = Build.SUPPORTED_ABIS;
            for (v2 v2Var4 : arrayList) {
                v2Var4.k(Long.valueOf(g10.f22153a), Long.valueOf(this.f22215m), Long.valueOf(g10.f22154b), Long.valueOf(this.f22216n));
            }
            File file = g10.f22155c;
            Date date = this.f22217o;
            String l11 = Long.toString(j10);
            int d10 = this.f22209g.d();
            if (strArr != null && strArr.length > 0) {
                str5 = strArr[0];
            } else {
                str5 = "";
            }
            String str7 = str5;
            Callable callable = new Callable() { // from class: io.sentry.android.core.c0
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    List e10;
                    e10 = d0.e();
                    return e10;
                }
            };
            String b10 = this.f22209g.b();
            String c10 = this.f22209g.c();
            String e10 = this.f22209g.e();
            Boolean f10 = this.f22209g.f();
            String proguardUuid = s5Var.getProguardUuid();
            String release = s5Var.getRelease();
            String environment = s5Var.getEnvironment();
            if (!g10.f22157e && !z10) {
                str6 = "normal";
                return new u2(file, date, arrayList, str, str2, str3, l11, d10, str7, callable, b10, c10, e10, f10, str4, proguardUuid, release, environment, str6, g10.f22156d);
            }
            str6 = "timeout";
            return new u2(file, date, arrayList, str, str2, str3, l11, d10, str7, callable, b10, c10, e10, f10, str4, proguardUuid, release, environment, str6, g10.f22156d);
        }
        this.f22204b.c(j5.INFO, "Transaction %s (%s) finished, but was not currently being profiled. Skipping", str, str3);
        return null;
    }

    @Override // io.sentry.b1
    public synchronized u2 a(io.sentry.a1 a1Var, List list, s5 s5Var) {
        return g(a1Var.getName(), a1Var.m().toString(), a1Var.o().k().toString(), false, list, s5Var);
    }

    @Override // io.sentry.b1
    public synchronized void b(io.sentry.a1 a1Var) {
        if (this.f22211i > 0 && this.f22213k == null) {
            this.f22213k = new v2(a1Var, Long.valueOf(this.f22215m), Long.valueOf(this.f22216n));
        }
    }

    @Override // io.sentry.b1
    public void close() {
        v2 v2Var = this.f22213k;
        if (v2Var != null) {
            g(v2Var.i(), this.f22213k.h(), this.f22213k.j(), true, null, io.sentry.k0.h().B());
        } else {
            int i10 = this.f22211i;
            if (i10 != 0) {
                this.f22211i = i10 - 1;
            }
        }
        b0 b0Var = this.f22214l;
        if (b0Var != null) {
            b0Var.f();
        }
    }

    @Override // io.sentry.b1
    public boolean isRunning() {
        if (this.f22211i != 0) {
            return true;
        }
        return false;
    }

    @Override // io.sentry.b1
    public synchronized void start() {
        if (this.f22209g.d() < 22) {
            return;
        }
        d();
        int i10 = this.f22211i + 1;
        this.f22211i = i10;
        if (i10 == 1 && f()) {
            this.f22204b.c(j5.DEBUG, "Profiler started.", new Object[0]);
        } else {
            this.f22211i--;
            this.f22204b.c(j5.WARNING, "A profile is already running. This profile will be ignored.", new Object[0]);
        }
    }

    public d0(Context context, p0 p0Var, io.sentry.android.core.internal.util.t tVar, ILogger iLogger, String str, boolean z10, int i10, io.sentry.x0 x0Var) {
        this.f22210h = false;
        this.f22211i = 0;
        this.f22214l = null;
        this.f22203a = (Context) io.sentry.util.q.c(x0.h(context), "The application context is required");
        this.f22204b = (ILogger) io.sentry.util.q.c(iLogger, "ILogger is required");
        this.f22212j = (io.sentry.android.core.internal.util.t) io.sentry.util.q.c(tVar, "SentryFrameMetricsCollector is required");
        this.f22209g = (p0) io.sentry.util.q.c(p0Var, "The BuildInfoProvider is required.");
        this.f22205c = str;
        this.f22206d = z10;
        this.f22207e = i10;
        this.f22208f = (io.sentry.x0) io.sentry.util.q.c(x0Var, "The ISentryExecutorService is required.");
        this.f22217o = io.sentry.j.c();
    }
}
