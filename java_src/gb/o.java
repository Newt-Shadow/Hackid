package gb;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.view.WindowMetrics;
import java.io.ByteArrayOutputStream;
import rd.b0;
/* loaded from: classes.dex */
public abstract class o {

    /* loaded from: classes.dex */
    public /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f16360a;

        static {
            int[] iArr = new int[Bitmap.CompressFormat.values().length];
            try {
                iArr[Bitmap.CompressFormat.JPEG.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Bitmap.CompressFormat.PNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Bitmap.CompressFormat.WEBP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f16360a = iArr;
        }
    }

    public static final String a(Activity activity, fb.b config) {
        boolean z10;
        String I0;
        kotlin.jvm.internal.m.e(activity, "<this>");
        kotlin.jvm.internal.m.e(config, "config");
        try {
            ActivityInfo activityInfo = activity.getPackageManager().getActivityInfo(activity.getComponentName(), 128);
            kotlin.jvm.internal.m.d(activityInfo, "packageManager.getActivi…onentName, GET_META_DATA)");
            String obj = activityInfo.loadLabel(activity.getPackageManager()).toString();
            String obj2 = activity.getApplicationInfo().loadLabel(activity.getPackageManager()).toString();
            if (obj.length() > 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10 && !kotlin.jvm.internal.m.a(obj, obj2)) {
                if (kotlin.jvm.internal.m.a(obj, activityInfo.name)) {
                    I0 = b0.I0(obj, '.', null, 2, null);
                } else {
                    return obj;
                }
            } else {
                String str = activityInfo.name;
                kotlin.jvm.internal.m.d(str, "activityInfo.name");
                I0 = b0.I0(str, '.', null, 2, null);
            }
            return I0;
        } catch (Throwable th) {
            lb.i o10 = config.o();
            o10.a("Error getting the Activity's label or name: " + th + '.');
            return null;
        }
    }

    public static final Context b(Context context) {
        kotlin.jvm.internal.m.e(context, "<this>");
        Context applicationContext = context.getApplicationContext();
        if (applicationContext != null) {
            return applicationContext;
        }
        return context;
    }

    public static final String c(Bitmap bitmap, Bitmap.CompressFormat format, int i10) {
        Bitmap.CompressFormat compressFormat;
        Bitmap.CompressFormat compressFormat2;
        kotlin.jvm.internal.m.e(bitmap, "<this>");
        kotlin.jvm.internal.m.e(format, "format");
        if (!n(bitmap)) {
            return null;
        }
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 30) {
            compressFormat = Bitmap.CompressFormat.WEBP_LOSSY;
        } else {
            compressFormat = Bitmap.CompressFormat.WEBP;
        }
        if (i11 >= 30) {
            compressFormat2 = Bitmap.CompressFormat.WEBP_LOSSLESS;
        } else {
            compressFormat2 = Bitmap.CompressFormat.WEBP;
        }
        int i12 = a.f16360a[format.ordinal()];
        String str = "jpeg";
        if (i12 != 1) {
            if (i12 == 2) {
                str = "png";
            } else if (i12 == 3 || format == compressFormat || format == compressFormat2) {
                str = "webp";
            }
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getAllocationByteCount());
        try {
            bitmap.compress(format, i10, byteArrayOutputStream);
            String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 0);
            if (encodeToString == null) {
                gd.b.a(byteArrayOutputStream, null);
                return null;
            }
            kotlin.jvm.internal.m.d(encodeToString, "Base64.encodeToString(by…4.DEFAULT) ?: return null");
            String str2 = "data:image/" + str + ";base64," + encodeToString;
            gd.b.a(byteArrayOutputStream, null);
            return str2;
        } finally {
        }
    }

    public static /* synthetic */ String d(Bitmap bitmap, Bitmap.CompressFormat compressFormat, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            compressFormat = Bitmap.CompressFormat.JPEG;
        }
        if ((i11 & 2) != 0) {
            i10 = 30;
        }
        return c(bitmap, compressFormat, i10);
    }

    public static final ConnectivityManager e(Context context) {
        kotlin.jvm.internal.m.e(context, "<this>");
        Object systemService = context.getSystemService("connectivity");
        if (systemService instanceof ConnectivityManager) {
            return (ConnectivityManager) systemService;
        }
        return null;
    }

    public static final int f(int i10, float f10) {
        return (int) (i10 / f10);
    }

    public static final DisplayMetrics g(Context context) {
        kotlin.jvm.internal.m.e(context, "<this>");
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        kotlin.jvm.internal.m.d(displayMetrics, "resources.displayMetrics");
        return displayMetrics;
    }

    public static final ApplicationInfo h(Context context) {
        PackageManager.ApplicationInfoFlags of2;
        ApplicationInfo applicationInfo;
        kotlin.jvm.internal.m.e(context, "context");
        if (Build.VERSION.SDK_INT >= 33) {
            PackageManager packageManager = context.getPackageManager();
            String packageName = context.getPackageName();
            of2 = PackageManager.ApplicationInfoFlags.of(128L);
            applicationInfo = packageManager.getApplicationInfo(packageName, of2);
            kotlin.jvm.internal.m.d(applicationInfo, "{\n        context\n      …g()),\n            )\n    }");
            return applicationInfo;
        }
        ApplicationInfo applicationInfo2 = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
        kotlin.jvm.internal.m.d(applicationInfo2, "{\n        context\n      …ame, GET_META_DATA)\n    }");
        return applicationInfo2;
    }

    public static final PackageInfo i(Context context, fb.b config) {
        PackageInfo packageInfo;
        PackageManager.PackageInfoFlags of2;
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(config, "config");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                PackageManager packageManager = context.getPackageManager();
                String packageName = context.getPackageName();
                of2 = PackageManager.PackageInfoFlags.of(0L);
                packageInfo = packageManager.getPackageInfo(packageName, of2);
            } else {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            }
            return packageInfo;
        } catch (Throwable th) {
            lb.i o10 = config.o();
            o10.a("Error getting package info: " + th + '.');
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0041, code lost:
        if (r1 == null) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.util.Map j(android.content.Intent r7, fb.b r8) {
        /*
            java.lang.String r0 = "<this>"
            kotlin.jvm.internal.m.e(r7, r0)
            java.lang.String r0 = "config"
            kotlin.jvm.internal.m.e(r8, r0)
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
            java.lang.String r1 = "android.intent.extra.REFERRER"
            android.os.Parcelable r1 = r7.getParcelableExtra(r1)
            android.net.Uri r1 = (android.net.Uri) r1
            java.lang.String r2 = "android.intent.extra.REFERRER_NAME"
            java.lang.String r7 = r7.getStringExtra(r2)
            java.lang.String r2 = "it"
            java.lang.String r3 = "$referring_domain"
            java.lang.String r4 = "$referrer"
            if (r1 == 0) goto L43
            java.lang.String r5 = r1.toString()
            java.lang.String r6 = "referrer.toString()"
            kotlin.jvm.internal.m.d(r5, r6)
            r0.put(r4, r5)
            java.lang.String r1 = r1.getHost()
            if (r1 == 0) goto L40
            kotlin.jvm.internal.m.d(r1, r2)
            r0.put(r3, r1)
            xc.t r1 = xc.t.f32733a
            goto L41
        L40:
            r1 = 0
        L41:
            if (r1 != 0) goto L5c
        L43:
            if (r7 == 0) goto L5c
            r0.put(r4, r7)
            android.net.Uri r7 = q(r7, r8)
            if (r7 == 0) goto L5c
            java.lang.String r7 = r7.getHost()
            if (r7 == 0) goto L5c
            kotlin.jvm.internal.m.d(r7, r2)
            r0.put(r3, r7)
            xc.t r7 = xc.t.f32733a
        L5c:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: gb.o.j(android.content.Intent, fb.b):java.util.Map");
    }

    public static final boolean k(Context context, String permission) {
        kotlin.jvm.internal.m.e(context, "<this>");
        kotlin.jvm.internal.m.e(permission, "permission");
        if (context.checkPermission(permission, Process.myPid(), Process.myUid()) == 0) {
            return true;
        }
        return false;
    }

    public static final boolean l(Context context) {
        kotlin.jvm.internal.m.e(context, "<this>");
        ConnectivityManager e10 = e(context);
        if (e10 == null || !k(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return true;
        }
        NetworkInfo activeNetworkInfo = e10.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        return activeNetworkInfo.isConnected();
    }

    public static final boolean m(b mainHandler) {
        kotlin.jvm.internal.m.e(mainHandler, "mainHandler");
        if (Thread.currentThread().getId() == mainHandler.b().getThread().getId()) {
            return true;
        }
        return false;
    }

    public static final boolean n(Bitmap bitmap) {
        kotlin.jvm.internal.m.e(bitmap, "<this>");
        if (!bitmap.isRecycled() && bitmap.getWidth() > 0 && bitmap.getHeight() > 0) {
            return true;
        }
        return false;
    }

    public static final t o(Context context) {
        float f10;
        int i10;
        int i11;
        WindowMetrics currentWindowMetrics;
        Rect bounds;
        kotlin.jvm.internal.m.e(context, "<this>");
        WindowManager u10 = u(context);
        if (u10 == null) {
            return null;
        }
        DisplayMetrics g10 = g(context);
        if (Build.VERSION.SDK_INT >= 30) {
            currentWindowMetrics = u10.getCurrentWindowMetrics();
            kotlin.jvm.internal.m.d(currentWindowMetrics, "windowManager.currentWindowMetrics");
            bounds = currentWindowMetrics.getBounds();
            kotlin.jvm.internal.m.d(bounds, "currentWindowMetrics.bounds");
            f10 = g10.density;
            i10 = f(bounds.bottom - bounds.top, f10);
            i11 = f(bounds.right - bounds.left, f10);
        } else {
            Point point = new Point();
            u10.getDefaultDisplay().getSize(point);
            int f11 = f(point.y, g10.density);
            int f12 = f(point.x, g10.density);
            f10 = g10.density;
            i10 = f11;
            i11 = f12;
        }
        return new t(i11, i10, f10);
    }

    public static final TelephonyManager p(Context context) {
        kotlin.jvm.internal.m.e(context, "<this>");
        Object systemService = context.getSystemService("phone");
        if (systemService instanceof TelephonyManager) {
            return (TelephonyManager) systemService;
        }
        return null;
    }

    public static final Uri q(String str, fb.b config) {
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(config, "config");
        try {
            return Uri.parse(str);
        } catch (Throwable th) {
            lb.i o10 = config.o();
            o10.a("Error parsing string: " + str + ". Exception: " + th + '.');
            return null;
        }
    }

    public static final long r(PackageInfo packageInfo) {
        long longVersionCode;
        kotlin.jvm.internal.m.e(packageInfo, "<this>");
        if (Build.VERSION.SDK_INT >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
            return longVersionCode;
        }
        return packageInfo.versionCode;
    }

    public static final String s(Bitmap bitmap, int i10) {
        Bitmap.CompressFormat compressFormat;
        kotlin.jvm.internal.m.e(bitmap, "<this>");
        if (!n(bitmap)) {
            return null;
        }
        if (Build.VERSION.SDK_INT >= 30) {
            compressFormat = Bitmap.CompressFormat.WEBP_LOSSY;
        } else {
            compressFormat = Bitmap.CompressFormat.WEBP;
        }
        return c(bitmap, compressFormat, i10);
    }

    public static /* synthetic */ String t(Bitmap bitmap, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 30;
        }
        return s(bitmap, i10);
    }

    public static final WindowManager u(Context context) {
        kotlin.jvm.internal.m.e(context, "<this>");
        Object systemService = context.getSystemService("window");
        if (systemService instanceof WindowManager) {
            return (WindowManager) systemService;
        }
        return null;
    }
}
