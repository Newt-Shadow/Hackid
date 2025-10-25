package io.appmetrica.analytics.impl;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
/* loaded from: classes2.dex */
public final class Ce implements FunctionWithThrowable {
    @Override // io.appmetrica.analytics.coreapi.internal.backport.FunctionWithThrowable
    public final Object apply(Object obj) {
        ConnectivityManager connectivityManager = (ConnectivityManager) obj;
        if (AndroidUtils.isApiAchieved(23)) {
            return Ee.a(connectivityManager);
        }
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
            return (De) Ee.f18178b.a(Integer.valueOf(activeNetworkInfo.getType()));
        }
        return De.OFFLINE;
    }
}
