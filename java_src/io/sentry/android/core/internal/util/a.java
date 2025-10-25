package io.sentry.android.core.internal.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import io.sentry.ILogger;
import io.sentry.android.core.p0;
import io.sentry.android.core.x0;
import io.sentry.j5;
import io.sentry.l0;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class a implements l0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22334a;

    /* renamed from: b  reason: collision with root package name */
    private final ILogger f22335b;

    /* renamed from: c  reason: collision with root package name */
    private final p0 f22336c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f22337d = new HashMap();

    /* renamed from: io.sentry.android.core.internal.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0191a extends ConnectivityManager.NetworkCallback {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l0.b f22338a;

        C0191a(l0.b bVar) {
            this.f22338a = bVar;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            this.f22338a.c(a.this.b());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLosing(Network network, int i10) {
            this.f22338a.c(a.this.b());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            this.f22338a.c(a.this.b());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            this.f22338a.c(a.this.b());
        }
    }

    public a(Context context, ILogger iLogger, p0 p0Var) {
        this.f22334a = x0.h(context);
        this.f22335b = iLogger;
        this.f22336c = p0Var;
    }

    private static l0.a e(Context context, ConnectivityManager connectivityManager, ILogger iLogger) {
        if (!l.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            iLogger.c(j5.INFO, "No permission (ACCESS_NETWORK_STATE) to check network status.", new Object[0]);
            return l0.a.NO_PERMISSION;
        }
        try {
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                iLogger.c(j5.INFO, "NetworkInfo is null, there's no active network.", new Object[0]);
                return l0.a.DISCONNECTED;
            } else if (activeNetworkInfo.isConnected()) {
                return l0.a.CONNECTED;
            } else {
                return l0.a.DISCONNECTED;
            }
        } catch (Throwable th) {
            iLogger.b(j5.WARNING, "Could not retrieve Connection Status", th);
            return l0.a.UNKNOWN;
        }
    }

    public static String f(Context context, ILogger iLogger, p0 p0Var) {
        boolean z10;
        boolean z11;
        ConnectivityManager h10 = h(context, iLogger);
        if (h10 == null) {
            return null;
        }
        boolean z12 = false;
        if (!l.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            iLogger.c(j5.INFO, "No permission (ACCESS_NETWORK_STATE) to check network status.", new Object[0]);
            return null;
        }
        try {
            z10 = true;
            if (p0Var.d() >= 23) {
                Network activeNetwork = h10.getActiveNetwork();
                if (activeNetwork == null) {
                    iLogger.c(j5.INFO, "Network is null and cannot check network status", new Object[0]);
                    return null;
                }
                NetworkCapabilities networkCapabilities = h10.getNetworkCapabilities(activeNetwork);
                if (networkCapabilities == null) {
                    iLogger.c(j5.INFO, "NetworkCapabilities is null and cannot check network type", new Object[0]);
                    return null;
                }
                boolean hasTransport = networkCapabilities.hasTransport(3);
                z11 = networkCapabilities.hasTransport(1);
                z10 = networkCapabilities.hasTransport(0);
                z12 = hasTransport;
            } else {
                NetworkInfo activeNetworkInfo = h10.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    iLogger.c(j5.INFO, "NetworkInfo is null, there's no active network.", new Object[0]);
                    return null;
                }
                int type = activeNetworkInfo.getType();
                if (type != 0) {
                    if (type != 1) {
                        if (type != 9) {
                            z11 = false;
                        } else {
                            z11 = false;
                            z12 = true;
                        }
                        z10 = z11;
                    } else {
                        z11 = true;
                        z10 = false;
                    }
                } else {
                    z11 = false;
                }
            }
        } catch (Throwable th) {
            iLogger.b(j5.ERROR, "Failed to retrieve network info", th);
        }
        if (z12) {
            return "ethernet";
        }
        if (z11) {
            return "wifi";
        }
        if (!z10) {
            return null;
        }
        return "cellular";
    }

    public static String g(NetworkCapabilities networkCapabilities, p0 p0Var) {
        if (p0Var.d() < 21) {
            return null;
        }
        if (networkCapabilities.hasTransport(3)) {
            return "ethernet";
        }
        if (networkCapabilities.hasTransport(1)) {
            return "wifi";
        }
        if (!networkCapabilities.hasTransport(0)) {
            return null;
        }
        return "cellular";
    }

    private static ConnectivityManager h(Context context, ILogger iLogger) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            iLogger.c(j5.INFO, "ConnectivityManager is null and cannot check network status", new Object[0]);
        }
        return connectivityManager;
    }

    public static boolean i(Context context, ILogger iLogger, p0 p0Var, ConnectivityManager.NetworkCallback networkCallback) {
        if (p0Var.d() < 24) {
            iLogger.c(j5.DEBUG, "NetworkCallbacks need Android N+.", new Object[0]);
            return false;
        }
        ConnectivityManager h10 = h(context, iLogger);
        if (h10 == null) {
            return false;
        }
        if (!l.a(context, "android.permission.ACCESS_NETWORK_STATE")) {
            iLogger.c(j5.INFO, "No permission (ACCESS_NETWORK_STATE) to check network status.", new Object[0]);
            return false;
        }
        try {
            h10.registerDefaultNetworkCallback(networkCallback);
            return true;
        } catch (Throwable th) {
            iLogger.b(j5.WARNING, "registerDefaultNetworkCallback failed", th);
            return false;
        }
    }

    public static void j(Context context, ILogger iLogger, p0 p0Var, ConnectivityManager.NetworkCallback networkCallback) {
        ConnectivityManager h10;
        if (p0Var.d() < 21 || (h10 = h(context, iLogger)) == null) {
            return;
        }
        try {
            h10.unregisterNetworkCallback(networkCallback);
        } catch (Throwable th) {
            iLogger.b(j5.WARNING, "unregisterNetworkCallback failed", th);
        }
    }

    @Override // io.sentry.l0
    public String a() {
        return f(this.f22334a, this.f22335b, this.f22336c);
    }

    @Override // io.sentry.l0
    public l0.a b() {
        ConnectivityManager h10 = h(this.f22334a, this.f22335b);
        if (h10 == null) {
            return l0.a.UNKNOWN;
        }
        return e(this.f22334a, h10, this.f22335b);
    }

    @Override // io.sentry.l0
    public boolean c(l0.b bVar) {
        if (this.f22336c.d() < 21) {
            this.f22335b.c(j5.DEBUG, "addConnectionStatusObserver requires Android 5+.", new Object[0]);
            return false;
        }
        C0191a c0191a = new C0191a(bVar);
        this.f22337d.put(bVar, c0191a);
        return i(this.f22334a, this.f22335b, this.f22336c, c0191a);
    }

    @Override // io.sentry.l0
    public void d(l0.b bVar) {
        ConnectivityManager.NetworkCallback networkCallback = (ConnectivityManager.NetworkCallback) this.f22337d.remove(bVar);
        if (networkCallback != null) {
            j(this.f22334a, this.f22335b, this.f22336c, networkCallback);
        }
    }
}
