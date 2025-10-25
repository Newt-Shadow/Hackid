package io.appmetrica.analytics.coreutils.internal.services;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
/* loaded from: classes2.dex */
public final class PackageManagerUtils {
    public static final PackageManagerUtils INSTANCE = new PackageManagerUtils();

    /* renamed from: a  reason: collision with root package name */
    private static final SafePackageManager f17749a = new SafePackageManager();

    private PackageManagerUtils() {
    }

    public static final int getAppVersionCodeInt(Context context) {
        PackageInfo packageInfo = getPackageInfo(context);
        if (packageInfo != null) {
            return packageInfo.versionCode;
        }
        return 0;
    }

    public static final String getAppVersionCodeString(Context context) {
        return String.valueOf(getAppVersionCodeInt(context));
    }

    public static final String getAppVersionName(Context context) {
        String str;
        PackageInfo packageInfo = getPackageInfo(context);
        if (packageInfo == null || (str = packageInfo.versionName) == null) {
            return "0.0";
        }
        return str;
    }

    public static final PackageInfo getPackageInfo(Context context) {
        return f17749a.getPackageInfo(context, context.getPackageName());
    }

    public static final boolean hasContentProvider(Context context, String str) {
        if (resolveContentProvider(context, str) != null) {
            return true;
        }
        return false;
    }

    public static final ProviderInfo resolveContentProvider(Context context, String str) {
        return f17749a.resolveContentProvider(context, str);
    }
}
