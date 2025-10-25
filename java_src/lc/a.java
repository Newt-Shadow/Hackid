package lc;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final ConnectivityManager f25521a;

    public a(ConnectivityManager connectivityManager) {
        this.f25521a = connectivityManager;
    }

    private String c() {
        NetworkInfo activeNetworkInfo = this.f25521a.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "none";
        }
        int type = activeNetworkInfo.getType();
        if (type != 0) {
            if (type != 1) {
                if (type != 4 && type != 5) {
                    if (type != 6) {
                        if (type != 7) {
                            if (type != 9) {
                                if (type != 17) {
                                    return "none";
                                }
                                return "vpn";
                            }
                            return "ethernet";
                        }
                        return "bluetooth";
                    }
                    return "wifi";
                }
                return "mobile";
            }
            return "wifi";
        }
        return "mobile";
    }

    public ConnectivityManager a() {
        return this.f25521a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        NetworkCapabilities networkCapabilities = this.f25521a.getNetworkCapabilities(this.f25521a.getActiveNetwork());
        if (networkCapabilities == null) {
            return "none";
        }
        if (networkCapabilities.hasTransport(1)) {
            return "wifi";
        }
        if (networkCapabilities.hasTransport(3)) {
            return "ethernet";
        }
        if (networkCapabilities.hasTransport(4)) {
            return "vpn";
        }
        if (networkCapabilities.hasTransport(0)) {
            return "mobile";
        }
        if (networkCapabilities.hasTransport(2)) {
            return "bluetooth";
        }
        return c();
    }
}
