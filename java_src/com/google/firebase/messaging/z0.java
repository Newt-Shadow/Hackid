package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Queue;
/* loaded from: classes.dex */
public class z0 {

    /* renamed from: e  reason: collision with root package name */
    private static z0 f9018e;

    /* renamed from: a  reason: collision with root package name */
    private String f9019a = null;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f9020b = null;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f9021c = null;

    /* renamed from: d  reason: collision with root package name */
    private final Queue f9022d = new ArrayDeque();

    private z0() {
    }

    private int a(Context context, Intent intent) {
        ComponentName startService;
        String f10 = f(context, intent);
        if (f10 != null) {
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Restricting intent to a specific service: " + f10);
            }
            intent.setClassName(context.getPackageName(), f10);
        }
        try {
            if (e(context)) {
                startService = k1.h(context, intent);
            } else {
                startService = context.startService(intent);
                Log.d("FirebaseMessaging", "Missing wake lock permission, service start may be delayed");
            }
            if (startService == null) {
                Log.e("FirebaseMessaging", "Error while delivering the message: ServiceIntent not found.");
                return 404;
            }
            return -1;
        } catch (IllegalStateException e10) {
            Log.e("FirebaseMessaging", "Failed to start service while in background: " + e10);
            return 402;
        } catch (SecurityException e11) {
            Log.e("FirebaseMessaging", "Error while delivering the message to the serviceIntent", e11);
            return 401;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized z0 b() {
        z0 z0Var;
        synchronized (z0.class) {
            if (f9018e == null) {
                f9018e = new z0();
            }
            z0Var = f9018e;
        }
        return z0Var;
    }

    private synchronized String f(Context context, Intent intent) {
        ServiceInfo serviceInfo;
        String str;
        String str2 = this.f9019a;
        if (str2 != null) {
            return str2;
        }
        ResolveInfo resolveService = context.getPackageManager().resolveService(intent, 0);
        if (resolveService != null && (serviceInfo = resolveService.serviceInfo) != null) {
            if (context.getPackageName().equals(serviceInfo.packageName) && (str = serviceInfo.name) != null) {
                if (str.startsWith(".")) {
                    this.f9019a = context.getPackageName() + serviceInfo.name;
                } else {
                    this.f9019a = serviceInfo.name;
                }
                return this.f9019a;
            }
            Log.e("FirebaseMessaging", "Error resolving target intent service, skipping classname enforcement. Resolved service was: " + serviceInfo.packageName + "/" + serviceInfo.name);
            return null;
        }
        Log.e("FirebaseMessaging", "Failed to resolve target intent service, skipping classname enforcement");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Intent c() {
        return (Intent) this.f9022d.poll();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d(Context context) {
        boolean z10;
        if (this.f9021c == null) {
            if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f9021c = Boolean.valueOf(z10);
        }
        if (!this.f9020b.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.ACCESS_NETWORK_STATE this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f9021c.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean e(Context context) {
        boolean z10;
        if (this.f9020b == null) {
            if (context.checkCallingOrSelfPermission("android.permission.WAKE_LOCK") == 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f9020b = Boolean.valueOf(z10);
        }
        if (!this.f9020b.booleanValue() && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Missing Permission: android.permission.WAKE_LOCK this should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        }
        return this.f9020b.booleanValue();
    }

    public int g(Context context, Intent intent) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Starting service");
        }
        this.f9022d.offer(intent);
        Intent intent2 = new Intent("com.google.firebase.MESSAGING_EVENT");
        intent2.setPackage(context.getPackageName());
        return a(context, intent2);
    }
}
