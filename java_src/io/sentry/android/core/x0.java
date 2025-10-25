package io.sentry.android.core;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.Settings;
import android.util.DisplayMetrics;
import io.sentry.ILogger;
import io.sentry.android.core.util.a;
import io.sentry.j5;
import io.sentry.s5;
import io.sentry.util.m;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes2.dex */
public abstract class x0 {

    /* renamed from: a  reason: collision with root package name */
    private static final io.sentry.android.core.util.a f22497a = new io.sentry.android.core.util.a(new a.InterfaceC0192a() { // from class: io.sentry.android.core.q0
        @Override // io.sentry.android.core.util.a.InterfaceC0192a
        public final Object a(Context context) {
            String v10;
            v10 = x0.v(context);
            return v10;
        }
    });

    /* renamed from: b  reason: collision with root package name */
    private static final io.sentry.util.m f22498b = new io.sentry.util.m(new m.a() { // from class: io.sentry.android.core.r0
        @Override // io.sentry.util.m.a
        public final Object a() {
            Boolean w10;
            w10 = x0.w();
            return w10;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    private static final io.sentry.android.core.util.a f22499c = new io.sentry.android.core.util.a(new a.InterfaceC0192a() { // from class: io.sentry.android.core.s0
        @Override // io.sentry.android.core.util.a.InterfaceC0192a
        public final Object a(Context context) {
            PackageInfo x10;
            x10 = x0.x(context);
            return x10;
        }
    });

    /* renamed from: d  reason: collision with root package name */
    private static final io.sentry.android.core.util.a f22500d = new io.sentry.android.core.util.a(new a.InterfaceC0192a() { // from class: io.sentry.android.core.t0
        @Override // io.sentry.android.core.util.a.InterfaceC0192a
        public final Object a(Context context) {
            PackageInfo y10;
            y10 = x0.y(context);
            return y10;
        }
    });

    /* renamed from: e  reason: collision with root package name */
    private static final io.sentry.android.core.util.a f22501e = new io.sentry.android.core.util.a(new a.InterfaceC0192a() { // from class: io.sentry.android.core.u0
        @Override // io.sentry.android.core.util.a.InterfaceC0192a
        public final Object a(Context context) {
            String z10;
            z10 = x0.z(context);
            return z10;
        }
    });

    /* renamed from: f  reason: collision with root package name */
    private static final io.sentry.android.core.util.a f22502f = new io.sentry.android.core.util.a(new a.InterfaceC0192a() { // from class: io.sentry.android.core.v0
        @Override // io.sentry.android.core.util.a.InterfaceC0192a
        public final Object a(Context context) {
            ApplicationInfo A;
            A = x0.A(context);
            return A;
        }
    });

    /* renamed from: g  reason: collision with root package name */
    private static final io.sentry.android.core.util.a f22503g = new io.sentry.android.core.util.a(new a.InterfaceC0192a() { // from class: io.sentry.android.core.w0
        @Override // io.sentry.android.core.util.a.InterfaceC0192a
        public final Object a(Context context) {
            ApplicationInfo B;
            B = x0.B(context);
            return B;
        }
    });

    /* loaded from: classes2.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f22504a;

        /* renamed from: b  reason: collision with root package name */
        private final String f22505b;

        public a(boolean z10, String str) {
            this.f22504a = z10;
            this.f22505b = str;
        }

        public Map a() {
            HashMap hashMap = new HashMap();
            hashMap.put("isSideLoaded", String.valueOf(this.f22504a));
            String str = this.f22505b;
            if (str != null) {
                hashMap.put("installerStore", str);
            }
            return hashMap;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ApplicationInfo A(Context context) {
        PackageManager.ApplicationInfoFlags of2;
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            of2 = PackageManager.ApplicationInfoFlags.of(128L);
            applicationInfo = packageManager.getApplicationInfo(packageName, of2);
            return applicationInfo;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ ApplicationInfo B(Context context) {
        try {
            return context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent C(Context context, s5 s5Var, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return D(context, new p0(s5Var.getLogger()), broadcastReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Intent D(Context context, p0 p0Var, BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        Intent registerReceiver;
        if (p0Var.d() >= 33) {
            registerReceiver = context.registerReceiver(broadcastReceiver, intentFilter, 4);
            return registerReceiver;
        }
        return context.registerReceiver(broadcastReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a E(Context context, ILogger iLogger, p0 p0Var) {
        String str;
        boolean z10;
        try {
            PackageInfo r10 = r(context, p0Var);
            PackageManager packageManager = context.getPackageManager();
            if (r10 != null && packageManager != null) {
                str = r10.packageName;
                try {
                    String installerPackageName = packageManager.getInstallerPackageName(str);
                    if (installerPackageName == null) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    return new a(z10, installerPackageName);
                } catch (IllegalArgumentException unused) {
                    iLogger.c(j5.DEBUG, "%s package isn't installed.", str);
                    return null;
                }
            }
        } catch (IllegalArgumentException unused2) {
            str = null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void F(PackageInfo packageInfo, p0 p0Var, io.sentry.protocol.a aVar) {
        String str;
        aVar.m(packageInfo.packageName);
        aVar.p(packageInfo.versionName);
        aVar.l(s(packageInfo, p0Var));
        HashMap hashMap = new HashMap();
        String[] strArr = packageInfo.requestedPermissions;
        int[] iArr = packageInfo.requestedPermissionsFlags;
        if (strArr != null && strArr.length > 0 && iArr != null && iArr.length > 0) {
            for (int i10 = 0; i10 < strArr.length; i10++) {
                String str2 = strArr[i10];
                boolean z10 = true;
                String substring = str2.substring(str2.lastIndexOf(46) + 1);
                if ((iArr[i10] & 2) != 2) {
                    z10 = false;
                }
                if (z10) {
                    str = "granted";
                } else {
                    str = "not_granted";
                }
                hashMap.put(substring, str);
            }
        }
        aVar.r(hashMap);
    }

    public static Context h(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            return applicationContext;
        }
        return context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ApplicationInfo i(Context context, p0 p0Var) {
        if (p0Var.d() >= 33) {
            return (ApplicationInfo) f22502f.a(context);
        }
        return (ApplicationInfo) f22503g.a(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String j(Context context) {
        return (String) f22501e.a(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String[] k(p0 p0Var) {
        if (p0Var.d() >= 21) {
            return Build.SUPPORTED_ABIS;
        }
        return new String[]{Build.CPU_ABI, Build.CPU_ABI2};
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String l(Context context) {
        return (String) f22497a.a(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DisplayMetrics m(Context context, ILogger iLogger) {
        try {
            return context.getResources().getDisplayMetrics();
        } catch (Throwable th) {
            iLogger.b(j5.ERROR, "Error getting DisplayMetrics.", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String n(ILogger iLogger) {
        try {
            return Build.MODEL.split(StringUtils.SPACE, -1)[0];
        } catch (Throwable th) {
            iLogger.b(j5.ERROR, "Error getting device family.", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String o(ILogger iLogger) {
        String property = System.getProperty("os.version");
        File file = new File("/proc/version");
        if (!file.canRead()) {
            return property;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            String readLine = bufferedReader.readLine();
            bufferedReader.close();
            return readLine;
        } catch (IOException e10) {
            iLogger.b(j5.ERROR, "Exception while attempting to read kernel information", e10);
            return property;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ActivityManager.MemoryInfo p(Context context, ILogger iLogger) {
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
            if (activityManager != null) {
                activityManager.getMemoryInfo(memoryInfo);
                return memoryInfo;
            }
            iLogger.c(j5.INFO, "Error getting MemoryInfo.", new Object[0]);
            return null;
        } catch (Throwable th) {
            iLogger.b(j5.ERROR, "Error getting MemoryInfo.", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PackageInfo q(Context context, int i10, ILogger iLogger, p0 p0Var) {
        PackageManager.PackageInfoFlags of2;
        PackageInfo packageInfo;
        try {
            if (p0Var.d() >= 33) {
                PackageManager packageManager = context.getPackageManager();
                String packageName = context.getPackageName();
                of2 = PackageManager.PackageInfoFlags.of(i10);
                packageInfo = packageManager.getPackageInfo(packageName, of2);
                return packageInfo;
            }
            return context.getPackageManager().getPackageInfo(context.getPackageName(), i10);
        } catch (Throwable th) {
            iLogger.b(j5.ERROR, "Error getting package info.", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PackageInfo r(Context context, p0 p0Var) {
        if (p0Var.d() >= 33) {
            return (PackageInfo) f22499c.a(context);
        }
        return (PackageInfo) f22500d.a(context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String s(PackageInfo packageInfo, p0 p0Var) {
        long longVersionCode;
        if (p0Var.d() >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
            return Long.toString(longVersionCode);
        }
        return t(packageInfo);
    }

    private static String t(PackageInfo packageInfo) {
        return Integer.toString(packageInfo.versionCode);
    }

    public static boolean u() {
        return ((Boolean) f22498b.a()).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String v(Context context) {
        return Settings.Global.getString(context.getContentResolver(), "device_name");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean w() {
        boolean z10;
        try {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                z10 = true;
            } else {
                z10 = false;
            }
            return Boolean.valueOf(z10);
        } catch (Throwable unused) {
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ PackageInfo x(Context context) {
        PackageManager.PackageInfoFlags of2;
        PackageInfo packageInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            of2 = PackageManager.PackageInfoFlags.of(0L);
            packageInfo = packageManager.getPackageInfo(packageName, of2);
            return packageInfo;
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ PackageInfo y(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ String z(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i10 = applicationInfo.labelRes;
            if (i10 == 0) {
                CharSequence charSequence = applicationInfo.nonLocalizedLabel;
                if (charSequence != null) {
                    return charSequence.toString();
                }
                return context.getPackageManager().getApplicationLabel(applicationInfo).toString();
            }
            return context.getString(i10);
        } catch (Throwable unused) {
            return null;
        }
    }
}
