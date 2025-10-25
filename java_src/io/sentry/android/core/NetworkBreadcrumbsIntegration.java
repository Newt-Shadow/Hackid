package io.sentry.android.core;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import io.sentry.ILogger;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.z3;
import java.io.Closeable;
/* loaded from: classes2.dex */
public final class NetworkBreadcrumbsIntegration implements io.sentry.e1, Closeable {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22071a;

    /* renamed from: b  reason: collision with root package name */
    private final p0 f22072b;

    /* renamed from: c  reason: collision with root package name */
    private final ILogger f22073c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f22074d = new Object();

    /* renamed from: e  reason: collision with root package name */
    private volatile boolean f22075e;

    /* renamed from: f  reason: collision with root package name */
    private s5 f22076f;

    /* renamed from: g  reason: collision with root package name */
    volatile c f22077g;

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ io.sentry.o0 f22078a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ s5 f22079b;

        a(io.sentry.o0 o0Var, s5 s5Var) {
            this.f22078a = o0Var;
            this.f22079b = s5Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!NetworkBreadcrumbsIntegration.this.f22075e) {
                synchronized (NetworkBreadcrumbsIntegration.this.f22074d) {
                    NetworkBreadcrumbsIntegration.this.f22077g = new c(this.f22078a, NetworkBreadcrumbsIntegration.this.f22072b, this.f22079b.getDateProvider());
                    if (io.sentry.android.core.internal.util.a.i(NetworkBreadcrumbsIntegration.this.f22071a, NetworkBreadcrumbsIntegration.this.f22073c, NetworkBreadcrumbsIntegration.this.f22072b, NetworkBreadcrumbsIntegration.this.f22077g)) {
                        NetworkBreadcrumbsIntegration.this.f22073c.c(j5.DEBUG, "NetworkBreadcrumbsIntegration installed.", new Object[0]);
                        io.sentry.util.k.a("NetworkBreadcrumbs");
                    } else {
                        NetworkBreadcrumbsIntegration.this.f22073c.c(j5.DEBUG, "NetworkBreadcrumbsIntegration not installed.", new Object[0]);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        final int f22081a;

        /* renamed from: b  reason: collision with root package name */
        final int f22082b;

        /* renamed from: c  reason: collision with root package name */
        final int f22083c;

        /* renamed from: d  reason: collision with root package name */
        private long f22084d;

        /* renamed from: e  reason: collision with root package name */
        final boolean f22085e;

        /* renamed from: f  reason: collision with root package name */
        final String f22086f;

        b(NetworkCapabilities networkCapabilities, p0 p0Var, long j10) {
            int i10;
            io.sentry.util.q.c(networkCapabilities, "NetworkCapabilities is required");
            io.sentry.util.q.c(p0Var, "BuildInfoProvider is required");
            this.f22081a = networkCapabilities.getLinkDownstreamBandwidthKbps();
            this.f22082b = networkCapabilities.getLinkUpstreamBandwidthKbps();
            if (p0Var.d() >= 29) {
                i10 = networkCapabilities.getSignalStrength();
            } else {
                i10 = 0;
            }
            this.f22083c = i10 > -100 ? i10 : 0;
            this.f22085e = networkCapabilities.hasTransport(4);
            String g10 = io.sentry.android.core.internal.util.a.g(networkCapabilities, p0Var);
            this.f22086f = g10 == null ? "" : g10;
            this.f22084d = j10;
        }

        boolean a(b bVar) {
            boolean z10;
            boolean z11;
            boolean z12;
            boolean z13;
            int abs = Math.abs(this.f22083c - bVar.f22083c);
            int abs2 = Math.abs(this.f22081a - bVar.f22081a);
            int abs3 = Math.abs(this.f22082b - bVar.f22082b);
            if (io.sentry.j.k(Math.abs(this.f22084d - bVar.f22084d)) < 5000.0d) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (!z10 && abs > 5) {
                z11 = false;
            } else {
                z11 = true;
            }
            if (!z10 && abs2 > Math.max(1000.0d, Math.abs(this.f22081a) * 0.1d)) {
                z12 = false;
            } else {
                z12 = true;
            }
            if (!z10 && abs3 > Math.max(1000.0d, Math.abs(this.f22082b) * 0.1d)) {
                z13 = false;
            } else {
                z13 = true;
            }
            if (this.f22085e == bVar.f22085e && this.f22086f.equals(bVar.f22086f) && z11 && z12 && z13) {
                return true;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class c extends ConnectivityManager.NetworkCallback {

        /* renamed from: a  reason: collision with root package name */
        final io.sentry.o0 f22087a;

        /* renamed from: b  reason: collision with root package name */
        final p0 f22088b;

        /* renamed from: c  reason: collision with root package name */
        Network f22089c = null;

        /* renamed from: d  reason: collision with root package name */
        NetworkCapabilities f22090d = null;

        /* renamed from: e  reason: collision with root package name */
        long f22091e = 0;

        /* renamed from: f  reason: collision with root package name */
        final z3 f22092f;

        c(io.sentry.o0 o0Var, p0 p0Var, z3 z3Var) {
            this.f22087a = (io.sentry.o0) io.sentry.util.q.c(o0Var, "Hub is required");
            this.f22088b = (p0) io.sentry.util.q.c(p0Var, "BuildInfoProvider is required");
            this.f22092f = (z3) io.sentry.util.q.c(z3Var, "SentryDateProvider is required");
        }

        private io.sentry.e a(String str) {
            io.sentry.e eVar = new io.sentry.e();
            eVar.r("system");
            eVar.n("network.event");
            eVar.o("action", str);
            eVar.p(j5.INFO);
            return eVar;
        }

        private b b(NetworkCapabilities networkCapabilities, NetworkCapabilities networkCapabilities2, long j10, long j11) {
            if (networkCapabilities == null) {
                return new b(networkCapabilities2, this.f22088b, j11);
            }
            b bVar = new b(networkCapabilities, this.f22088b, j10);
            b bVar2 = new b(networkCapabilities2, this.f22088b, j11);
            if (bVar.a(bVar2)) {
                return null;
            }
            return bVar2;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            if (network.equals(this.f22089c)) {
                return;
            }
            this.f22087a.t(a("NETWORK_AVAILABLE"));
            this.f22089c = network;
            this.f22090d = null;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            if (!network.equals(this.f22089c)) {
                return;
            }
            long l10 = this.f22092f.a().l();
            b b10 = b(this.f22090d, networkCapabilities, this.f22091e, l10);
            if (b10 == null) {
                return;
            }
            this.f22090d = networkCapabilities;
            this.f22091e = l10;
            io.sentry.e a10 = a("NETWORK_CAPABILITIES_CHANGED");
            a10.o("download_bandwidth", Integer.valueOf(b10.f22081a));
            a10.o("upload_bandwidth", Integer.valueOf(b10.f22082b));
            a10.o("vpn_active", Boolean.valueOf(b10.f22085e));
            a10.o("network_type", b10.f22086f);
            int i10 = b10.f22083c;
            if (i10 != 0) {
                a10.o("signal_strength", Integer.valueOf(i10));
            }
            io.sentry.c0 c0Var = new io.sentry.c0();
            c0Var.k("android:networkCapabilities", b10);
            this.f22087a.p(a10, c0Var);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            if (!network.equals(this.f22089c)) {
                return;
            }
            this.f22087a.t(a("NETWORK_LOST"));
            this.f22089c = null;
            this.f22090d = null;
        }
    }

    public NetworkBreadcrumbsIntegration(Context context, p0 p0Var, ILogger iLogger) {
        this.f22071a = (Context) io.sentry.util.q.c(x0.h(context), "Context is required");
        this.f22072b = (p0) io.sentry.util.q.c(p0Var, "BuildInfoProvider is required");
        this.f22073c = (ILogger) io.sentry.util.q.c(iLogger, "ILogger is required");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j() {
        synchronized (this.f22074d) {
            if (this.f22077g != null) {
                io.sentry.android.core.internal.util.a.j(this.f22071a, this.f22073c, this.f22072b, this.f22077g);
                this.f22073c.c(j5.DEBUG, "NetworkBreadcrumbsIntegration removed.", new Object[0]);
            }
            this.f22077g = null;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f22075e = true;
        try {
            ((s5) io.sentry.util.q.c(this.f22076f, "Options is required")).getExecutorService().submit(new Runnable() { // from class: io.sentry.android.core.r1
                @Override // java.lang.Runnable
                public final void run() {
                    NetworkBreadcrumbsIntegration.this.j();
                }
            });
        } catch (Throwable th) {
            this.f22073c.b(j5.ERROR, "Error submitting NetworkBreadcrumbsIntegration task.", th);
        }
    }

    @Override // io.sentry.e1
    public void f(io.sentry.o0 o0Var, s5 s5Var) {
        SentryAndroidOptions sentryAndroidOptions;
        io.sentry.util.q.c(o0Var, "Hub is required");
        if (s5Var instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) s5Var;
        } else {
            sentryAndroidOptions = null;
        }
        SentryAndroidOptions sentryAndroidOptions2 = (SentryAndroidOptions) io.sentry.util.q.c(sentryAndroidOptions, "SentryAndroidOptions is required");
        ILogger iLogger = this.f22073c;
        j5 j5Var = j5.DEBUG;
        iLogger.c(j5Var, "NetworkBreadcrumbsIntegration enabled: %s", Boolean.valueOf(sentryAndroidOptions2.isEnableNetworkEventBreadcrumbs()));
        this.f22076f = s5Var;
        if (sentryAndroidOptions2.isEnableNetworkEventBreadcrumbs()) {
            if (this.f22072b.d() < 24) {
                this.f22073c.c(j5Var, "NetworkCallbacks need Android N+.", new Object[0]);
                return;
            }
            try {
                s5Var.getExecutorService().submit(new a(o0Var, s5Var));
            } catch (Throwable th) {
                this.f22073c.b(j5.ERROR, "Error submitting NetworkBreadcrumbsIntegration task.", th);
            }
        }
    }
}
