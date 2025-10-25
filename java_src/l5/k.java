package l5;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesMissingManifestValueException;
import java.util.concurrent.atomic.AtomicBoolean;
import n5.z0;
/* loaded from: classes.dex */
public abstract class k {

    /* renamed from: a  reason: collision with root package name */
    public static final int f25303a = 12451000;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f25305c = false;

    /* renamed from: d  reason: collision with root package name */
    static boolean f25306d = false;

    /* renamed from: b  reason: collision with root package name */
    static final AtomicBoolean f25304b = new AtomicBoolean();

    /* renamed from: e  reason: collision with root package name */
    private static final AtomicBoolean f25307e = new AtomicBoolean();

    public static void a(Context context, int i10) {
        int h10 = g.f().h(context, i10);
        if (h10 != 0) {
            Intent b10 = g.f().b(context, h10, "e");
            Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + h10);
            if (b10 == null) {
                throw new h(h10);
            }
            throw new i(h10, "Google Play Services not available", b10);
        }
    }

    public static int b(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    public static String c(int i10) {
        return b.o(i10);
    }

    public static Resources d(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static boolean e(Context context) {
        try {
            if (!f25306d) {
                PackageInfo e10 = t5.e.a(context).e("com.google.android.gms", 64);
                l.a(context);
                if (e10 != null && !l.e(e10, false) && l.e(e10, true)) {
                    f25305c = true;
                } else {
                    f25305c = false;
                }
            }
        } catch (PackageManager.NameNotFoundException e11) {
            Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e11);
        } finally {
            f25306d = true;
        }
        if (!f25305c && com.google.android.gms.common.util.h.b()) {
            return false;
        }
        return true;
    }

    public static int f(Context context, int i10) {
        boolean z10;
        boolean z11;
        PackageInfo packageInfo;
        try {
            context.getResources().getString(m.f25316a);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !f25307e.get()) {
            int a10 = z0.a(context);
            if (a10 != 0) {
                if (a10 != f25303a) {
                    throw new GooglePlayServicesIncorrectManifestValueException(a10);
                }
            } else {
                throw new GooglePlayServicesMissingManifestValueException();
            }
        }
        if (!com.google.android.gms.common.util.h.d(context) && !com.google.android.gms.common.util.h.f(context)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (i10 >= 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        n5.q.a(z11);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z10) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            l.a(context);
            if (!l.e(packageInfo2, true)) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
            } else {
                if (z10) {
                    n5.q.k(packageInfo);
                    if (!l.e(packageInfo, true)) {
                        Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                    }
                }
                if (z10 && packageInfo != null && !packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                    Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
                } else if (com.google.android.gms.common.util.r.a(packageInfo2.versionCode) < com.google.android.gms.common.util.r.a(i10)) {
                    Log.w("GooglePlayServicesUtil", "Google Play services out of date for " + packageName + ".  Requires " + i10 + " but found " + packageInfo2.versionCode);
                    return 2;
                } else {
                    ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                    if (applicationInfo == null) {
                        try {
                            applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                        } catch (PackageManager.NameNotFoundException e10) {
                            Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e10);
                            return 1;
                        }
                    }
                    if (applicationInfo.enabled) {
                        return 0;
                    }
                    return 3;
                }
            }
            return 9;
        } catch (PackageManager.NameNotFoundException unused3) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
            return 1;
        }
    }

    public static boolean g(Context context, int i10) {
        if (i10 == 18) {
            return true;
        }
        if (i10 == 1) {
            return k(context, "com.google.android.gms");
        }
        return false;
    }

    public static boolean h(Context context) {
        Object systemService = context.getSystemService("user");
        n5.q.k(systemService);
        Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
        if (applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"))) {
            return true;
        }
        return false;
    }

    public static boolean i(int i10) {
        return i10 == 1 || i10 == 2 || i10 == 3 || i10 == 9;
    }

    public static boolean j(Context context, int i10, String str) {
        return com.google.android.gms.common.util.p.b(context, i10, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean k(Context context, String str) {
        ApplicationInfo applicationInfo;
        boolean equals = str.equals("com.google.android.gms");
        try {
            for (PackageInstaller.SessionInfo sessionInfo : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                if (str.equals(sessionInfo.getAppPackageName())) {
                    return true;
                }
            }
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
        } catch (PackageManager.NameNotFoundException | Exception unused) {
        }
        if (equals) {
            return applicationInfo.enabled;
        }
        if (!applicationInfo.enabled || h(context)) {
            return false;
        }
        return true;
    }
}
