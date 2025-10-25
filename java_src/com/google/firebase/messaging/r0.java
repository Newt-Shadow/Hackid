package com.google.firebase.messaging;

import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Bundle;
import android.util.Log;
import java.util.concurrent.Executor;
import m6.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class r0 {
    private static boolean b(Context context) {
        if (Binder.getCallingUid() == context.getApplicationInfo().uid) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Context context) {
        if (t0.c(context)) {
            return;
        }
        f(new androidx.privacysandbox.ads.adservices.measurement.j(), context, g(context));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(Context context) {
        String notificationDelegate;
        if (!com.google.android.gms.common.util.k.g()) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Platform doesn't support proxying.");
            }
            return false;
        } else if (b(context)) {
            notificationDelegate = ((NotificationManager) context.getSystemService(NotificationManager.class)).getNotificationDelegate();
            if (!"com.google.android.gms".equals(notificationDelegate)) {
                return false;
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "GMS core is set for proxying");
                return true;
            }
            return true;
        } else {
            Log.e("FirebaseMessaging", "error retrieving notification delegate for package " + context.getPackageName());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void e(Context context, boolean z10, m6.l lVar) {
        String notificationDelegate;
        try {
            if (!b(context)) {
                Log.e("FirebaseMessaging", "error configuring notification delegate for package " + context.getPackageName());
                return;
            }
            t0.f(context, true);
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(NotificationManager.class);
            if (z10) {
                notificationManager.setNotificationDelegate("com.google.android.gms");
            } else {
                notificationDelegate = notificationManager.getNotificationDelegate();
                if ("com.google.android.gms".equals(notificationDelegate)) {
                    notificationManager.setNotificationDelegate(null);
                }
            }
        } finally {
            lVar.e(null);
        }
    }

    static Task f(Executor executor, final Context context, final boolean z10) {
        if (!com.google.android.gms.common.util.k.g()) {
            return m6.n.e(null);
        }
        final m6.l lVar = new m6.l();
        executor.execute(new Runnable() { // from class: com.google.firebase.messaging.q0
            @Override // java.lang.Runnable
            public final void run() {
                r0.e(context, z10, lVar);
            }
        });
        return lVar.a();
    }

    private static boolean g(Context context) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            Context applicationContext = context.getApplicationContext();
            PackageManager packageManager = applicationContext.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) != null && (bundle = applicationInfo.metaData) != null && bundle.containsKey("firebase_messaging_notification_delegation_enabled")) {
                return applicationInfo.metaData.getBoolean("firebase_messaging_notification_delegation_enabled");
            }
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }
}
