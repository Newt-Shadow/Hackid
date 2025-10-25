package io.appmetrica.analytics.impl;

import android.content.Context;
import android.net.ConnectivityManager;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
/* loaded from: classes2.dex */
public final class E5 {
    public final De a(Context context) {
        SafePackageManager safePackageManager = Ee.f18177a;
        return (De) SystemServiceUtils.accessSystemServiceSafelyOrDefault((ConnectivityManager) context.getSystemService("connectivity"), "getting connection type", "ConnectivityManager", De.UNDEFINED, new Ce());
    }
}
