package io.appmetrica.analytics.impl;

import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.text.TextUtils;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import java.util.Locale;
/* loaded from: classes2.dex */
public abstract class Ee {

    /* renamed from: a  reason: collision with root package name */
    public static final SafePackageManager f18177a = new SafePackageManager();

    /* renamed from: b  reason: collision with root package name */
    public static final C1669ze f18178b = new C1669ze();

    /* renamed from: c  reason: collision with root package name */
    public static final Ae f18179c = new Ae();

    /* renamed from: d  reason: collision with root package name */
    public static final Be f18180d = new Be(2);

    public static String a(Locale locale) {
        String language = locale.getLanguage();
        String country = locale.getCountry();
        StringBuilder sb2 = new StringBuilder(language);
        String script = locale.getScript();
        if (!TextUtils.isEmpty(script)) {
            sb2.append('-');
            sb2.append(script);
        }
        if (!TextUtils.isEmpty(country)) {
            sb2.append('_');
            sb2.append(country);
        }
        return sb2.toString();
    }

    public static De a(ConnectivityManager connectivityManager) {
        NetworkInfo networkInfo;
        De de2 = De.UNDEFINED;
        Network activeNetwork = connectivityManager.getActiveNetwork();
        if (!AndroidUtils.isApiAchieved(29) ? !(activeNetwork != null && ((networkInfo = connectivityManager.getNetworkInfo(activeNetwork)) == null || networkInfo.isConnected())) : activeNetwork == null) {
            return De.OFFLINE;
        }
        NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
        if (networkCapabilities != null) {
            for (Integer num : f18179c.f18776a.keySet()) {
                if (networkCapabilities.hasTransport(num.intValue())) {
                    return (De) f18179c.a(num);
                }
            }
            return de2;
        }
        return de2;
    }
}
