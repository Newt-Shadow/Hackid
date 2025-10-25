package com.google.firebase.messaging;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i1 implements Runnable {

    /* renamed from: f  reason: collision with root package name */
    private static final Object f8919f = new Object();

    /* renamed from: g  reason: collision with root package name */
    private static Boolean f8920g;

    /* renamed from: h  reason: collision with root package name */
    private static Boolean f8921h;

    /* renamed from: a  reason: collision with root package name */
    private final Context f8922a;

    /* renamed from: b  reason: collision with root package name */
    private final l0 f8923b;

    /* renamed from: c  reason: collision with root package name */
    private final PowerManager.WakeLock f8924c;

    /* renamed from: d  reason: collision with root package name */
    private final h1 f8925d;

    /* renamed from: e  reason: collision with root package name */
    private final long f8926e;

    /* loaded from: classes.dex */
    class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private i1 f8927a;

        public a(i1 i1Var) {
            this.f8927a = i1Var;
        }

        public void a() {
            if (i1.b()) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            i1.this.f8922a.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            i1 i1Var = this.f8927a;
            if (i1Var == null) {
                return;
            }
            if (!i1Var.i()) {
                return;
            }
            if (i1.b()) {
                Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
            }
            this.f8927a.f8925d.m(this.f8927a, 0L);
            context.unregisterReceiver(this);
            this.f8927a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i1(h1 h1Var, Context context, l0 l0Var, long j10) {
        this.f8925d = h1Var;
        this.f8922a = context;
        this.f8926e = j10;
        this.f8923b = l0Var;
        this.f8924c = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    static /* synthetic */ boolean b() {
        return j();
    }

    private static String e(String str) {
        return "Missing Permission: " + str + ". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest";
    }

    private static boolean f(Context context) {
        boolean booleanValue;
        boolean booleanValue2;
        synchronized (f8919f) {
            Boolean bool = f8921h;
            if (bool == null) {
                booleanValue = g(context, "android.permission.ACCESS_NETWORK_STATE", bool);
            } else {
                booleanValue = bool.booleanValue();
            }
            Boolean valueOf = Boolean.valueOf(booleanValue);
            f8921h = valueOf;
            booleanValue2 = valueOf.booleanValue();
        }
        return booleanValue2;
    }

    private static boolean g(Context context, String str, Boolean bool) {
        boolean z10;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (context.checkCallingOrSelfPermission(str) == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10 && Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", e(str));
        }
        return z10;
    }

    private static boolean h(Context context) {
        boolean booleanValue;
        boolean booleanValue2;
        synchronized (f8919f) {
            Boolean bool = f8920g;
            if (bool == null) {
                booleanValue = g(context, "android.permission.WAKE_LOCK", bool);
            } else {
                booleanValue = bool.booleanValue();
            }
            Boolean valueOf = Boolean.valueOf(booleanValue);
            f8920g = valueOf;
            booleanValue2 = valueOf.booleanValue();
        }
        return booleanValue2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean i() {
        NetworkInfo networkInfo;
        boolean z10;
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f8922a.getSystemService("connectivity");
        if (connectivityManager != null) {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        } else {
            networkInfo = null;
        }
        if (networkInfo != null) {
            if (networkInfo.isConnected()) {
                z10 = true;
            }
        }
        z10 = false;
        return z10;
    }

    private static boolean j() {
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        PowerManager.WakeLock wakeLock;
        if (h(this.f8922a)) {
            this.f8924c.acquire(e.f8874a);
        }
        try {
            try {
                try {
                    this.f8925d.o(true);
                } catch (Throwable th) {
                    if (h(this.f8922a)) {
                        try {
                            this.f8924c.release();
                        } catch (RuntimeException unused) {
                            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                        }
                    }
                    throw th;
                }
            } catch (IOException e10) {
                Log.e("FirebaseMessaging", "Failed to sync topics. Won't retry sync. " + e10.getMessage());
                this.f8925d.o(false);
                if (h(this.f8922a)) {
                    wakeLock = this.f8924c;
                } else {
                    return;
                }
            }
            if (!this.f8923b.g()) {
                this.f8925d.o(false);
                if (h(this.f8922a)) {
                    try {
                        this.f8924c.release();
                    } catch (RuntimeException unused2) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            } else if (f(this.f8922a) && !i()) {
                new a(this).a();
                if (h(this.f8922a)) {
                    try {
                        this.f8924c.release();
                    } catch (RuntimeException unused3) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            } else {
                if (this.f8925d.s()) {
                    this.f8925d.o(false);
                } else {
                    this.f8925d.t(this.f8926e);
                }
                if (h(this.f8922a)) {
                    wakeLock = this.f8924c;
                    wakeLock.release();
                }
            }
        } catch (RuntimeException unused4) {
            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
        }
    }
}
