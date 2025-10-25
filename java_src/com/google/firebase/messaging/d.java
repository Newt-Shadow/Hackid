package com.google.firebase.messaging;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Color;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.k;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f8863a = new AtomicInteger((int) SystemClock.elapsedRealtime());

    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public final k.e f8864a;

        /* renamed from: b  reason: collision with root package name */
        public final String f8865b;

        /* renamed from: c  reason: collision with root package name */
        public final int f8866c;

        a(k.e eVar, String str, int i10) {
            this.f8864a = eVar;
            this.f8865b = str;
            this.f8866c = i10;
        }
    }

    private static PendingIntent a(Context context, m0 m0Var, String str, PackageManager packageManager) {
        Intent f10 = f(str, m0Var, packageManager);
        if (f10 == null) {
            return null;
        }
        f10.addFlags(67108864);
        f10.putExtras(m0Var.y());
        if (q(m0Var)) {
            f10.putExtra("gcm.n.analytics_data", m0Var.x());
        }
        return PendingIntent.getActivity(context, g(), f10, l(1073741824));
    }

    private static PendingIntent b(Context context, Context context2, m0 m0Var) {
        if (!q(m0Var)) {
            return null;
        }
        return c(context, context2, new Intent("com.google.firebase.messaging.NOTIFICATION_DISMISS").putExtras(m0Var.x()));
    }

    private static PendingIntent c(Context context, Context context2, Intent intent) {
        return PendingIntent.getBroadcast(context, g(), new Intent("com.google.android.c2dm.intent.RECEIVE").setPackage(context2.getPackageName()).putExtra("wrapped_intent", intent), l(1073741824));
    }

    public static a d(Context context, Context context2, m0 m0Var, String str, Bundle bundle) {
        String packageName = context2.getPackageName();
        Resources resources = context2.getResources();
        PackageManager packageManager = context2.getPackageManager();
        k.e eVar = new k.e(context2, str);
        String n10 = m0Var.n(resources, packageName, "gcm.n.title");
        if (!TextUtils.isEmpty(n10)) {
            eVar.o(n10);
        }
        String n11 = m0Var.n(resources, packageName, "gcm.n.body");
        if (!TextUtils.isEmpty(n11)) {
            eVar.n(n11);
            eVar.J(new k.c().n(n11));
        }
        eVar.H(m(packageManager, resources, packageName, m0Var.p("gcm.n.icon"), bundle));
        Uri n12 = n(packageName, m0Var, resources);
        if (n12 != null) {
            eVar.I(n12);
        }
        eVar.m(a(context, m0Var, packageName, packageManager));
        PendingIntent b10 = b(context, context2, m0Var);
        if (b10 != null) {
            eVar.q(b10);
        }
        Integer h10 = h(context2, m0Var.p("gcm.n.color"), bundle);
        if (h10 != null) {
            eVar.k(h10.intValue());
        }
        eVar.g(!m0Var.a("gcm.n.sticky"));
        eVar.y(m0Var.a("gcm.n.local_only"));
        String p10 = m0Var.p("gcm.n.ticker");
        if (p10 != null) {
            eVar.L(p10);
        }
        Integer m10 = m0Var.m();
        if (m10 != null) {
            eVar.C(m10.intValue());
        }
        Integer r10 = m0Var.r();
        if (r10 != null) {
            eVar.P(r10.intValue());
        }
        Integer l10 = m0Var.l();
        if (l10 != null) {
            eVar.z(l10.intValue());
        }
        Long j10 = m0Var.j("gcm.n.event_time");
        if (j10 != null) {
            eVar.F(true);
            eVar.Q(j10.longValue());
        }
        long[] q10 = m0Var.q();
        if (q10 != null) {
            eVar.O(q10);
        }
        int[] e10 = m0Var.e();
        if (e10 != null) {
            eVar.x(e10[0], e10[1], e10[2]);
        }
        eVar.p(i(m0Var));
        return new a(eVar, o(m0Var), 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a e(Context context, m0 m0Var) {
        Bundle j10 = j(context.getPackageManager(), context.getPackageName());
        return d(context, context, m0Var, k(context, m0Var.k(), j10), j10);
    }

    private static Intent f(String str, m0 m0Var, PackageManager packageManager) {
        String p10 = m0Var.p("gcm.n.click_action");
        if (!TextUtils.isEmpty(p10)) {
            Intent intent = new Intent(p10);
            intent.setPackage(str);
            intent.setFlags(268435456);
            return intent;
        }
        Uri f10 = m0Var.f();
        if (f10 != null) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setPackage(str);
            intent2.setData(f10);
            return intent2;
        }
        Intent launchIntentForPackage = packageManager.getLaunchIntentForPackage(str);
        if (launchIntentForPackage == null) {
            Log.w("FirebaseMessaging", "No activity found to launch app");
        }
        return launchIntentForPackage;
    }

    private static int g() {
        return f8863a.incrementAndGet();
    }

    private static Integer h(Context context, String str, Bundle bundle) {
        if (!TextUtils.isEmpty(str)) {
            try {
                return Integer.valueOf(Color.parseColor(str));
            } catch (IllegalArgumentException unused) {
                Log.w("FirebaseMessaging", "Color is invalid: " + str + ". Notification will use default color.");
            }
        }
        int i10 = bundle.getInt("com.google.firebase.messaging.default_notification_color", 0);
        if (i10 != 0) {
            try {
                return Integer.valueOf(androidx.core.content.a.c(context, i10));
            } catch (Resources.NotFoundException unused2) {
                Log.w("FirebaseMessaging", "Cannot find the color resource referenced in AndroidManifest.");
                return null;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    private static int i(m0 m0Var) {
        boolean a10 = m0Var.a("gcm.n.default_sound");
        ?? r02 = a10;
        if (m0Var.a("gcm.n.default_vibrate_timings")) {
            r02 = (a10 ? 1 : 0) | true;
        }
        if (m0Var.a("gcm.n.default_light_settings")) {
            return r02 | 4;
        }
        return r02;
    }

    private static Bundle j(PackageManager packageManager, String str) {
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                Bundle bundle = applicationInfo.metaData;
                if (bundle != null) {
                    return bundle;
                }
            }
        } catch (PackageManager.NameNotFoundException e10) {
            Log.w("FirebaseMessaging", "Couldn't get own application info: " + e10);
        }
        return Bundle.EMPTY;
    }

    public static String k(Context context, String str, Bundle bundle) {
        NotificationChannel notificationChannel;
        String string;
        NotificationChannel notificationChannel2;
        NotificationChannel notificationChannel3;
        if (Build.VERSION.SDK_INT < 26) {
            return null;
        }
        try {
            if (context.getPackageManager().getApplicationInfo(context.getPackageName(), 0).targetSdkVersion < 26) {
                return null;
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (!TextUtils.isEmpty(str)) {
                notificationChannel3 = notificationManager.getNotificationChannel(str);
                if (notificationChannel3 != null) {
                    return str;
                }
                Log.w("FirebaseMessaging", "Notification Channel requested (" + str + ") has not been created by the app. Manifest configuration, or default, value will be used.");
            }
            String string2 = bundle.getString("com.google.firebase.messaging.default_notification_channel_id");
            if (!TextUtils.isEmpty(string2)) {
                notificationChannel2 = notificationManager.getNotificationChannel(string2);
                if (notificationChannel2 != null) {
                    return string2;
                }
                Log.w("FirebaseMessaging", "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used.");
            } else {
                Log.w("FirebaseMessaging", "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used.");
            }
            notificationChannel = notificationManager.getNotificationChannel("fcm_fallback_notification_channel");
            if (notificationChannel == null) {
                int identifier = context.getResources().getIdentifier("fcm_fallback_notification_channel_label", "string", context.getPackageName());
                if (identifier == 0) {
                    Log.e("FirebaseMessaging", "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name.");
                    string = "Misc";
                } else {
                    string = context.getString(identifier);
                }
                notificationManager.createNotificationChannel(com.dexterous.flutterlocalnotifications.v0.a("fcm_fallback_notification_channel", string, 3));
            }
            return "fcm_fallback_notification_channel";
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private static int l(int i10) {
        return i10 | 67108864;
    }

    private static int m(PackageManager packageManager, Resources resources, String str, String str2, Bundle bundle) {
        if (!TextUtils.isEmpty(str2)) {
            int identifier = resources.getIdentifier(str2, "drawable", str);
            if (identifier != 0 && p(resources, identifier)) {
                return identifier;
            }
            int identifier2 = resources.getIdentifier(str2, "mipmap", str);
            if (identifier2 != 0 && p(resources, identifier2)) {
                return identifier2;
            }
            Log.w("FirebaseMessaging", "Icon resource " + str2 + " not found. Notification will use default icon.");
        }
        int i10 = bundle.getInt("com.google.firebase.messaging.default_notification_icon", 0);
        if (i10 == 0 || !p(resources, i10)) {
            try {
                i10 = packageManager.getApplicationInfo(str, 0).icon;
            } catch (PackageManager.NameNotFoundException e10) {
                Log.w("FirebaseMessaging", "Couldn't get own application info: " + e10);
            }
        }
        if (i10 == 0 || !p(resources, i10)) {
            return 17301651;
        }
        return i10;
    }

    private static Uri n(String str, m0 m0Var, Resources resources) {
        String o10 = m0Var.o();
        if (TextUtils.isEmpty(o10)) {
            return null;
        }
        if (!"default".equals(o10) && resources.getIdentifier(o10, "raw", str) != 0) {
            return Uri.parse("android.resource://" + str + "/raw/" + o10);
        }
        return RingtoneManager.getDefaultUri(2);
    }

    private static String o(m0 m0Var) {
        String p10 = m0Var.p("gcm.n.tag");
        if (!TextUtils.isEmpty(p10)) {
            return p10;
        }
        return "FCM-Notification:" + SystemClock.uptimeMillis();
    }

    private static boolean p(Resources resources, int i10) {
        if (Build.VERSION.SDK_INT != 26) {
            return true;
        }
        try {
            if (!c.a(resources.getDrawable(i10, null))) {
                return true;
            }
            Log.e("FirebaseMessaging", "Adaptive icons cannot be used in notifications. Ignoring icon id: " + i10);
            return false;
        } catch (Resources.NotFoundException unused) {
            Log.e("FirebaseMessaging", "Couldn't find resource " + i10 + ", treating it as an invalid icon");
            return false;
        }
    }

    static boolean q(m0 m0Var) {
        return m0Var.a("google.c.a.e");
    }
}
