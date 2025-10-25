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
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d1 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final long f8868a;

    /* renamed from: b  reason: collision with root package name */
    private final PowerManager.WakeLock f8869b;

    /* renamed from: c  reason: collision with root package name */
    private final FirebaseMessaging f8870c;

    /* renamed from: d  reason: collision with root package name */
    ExecutorService f8871d = new ThreadPoolExecutor(0, 1, 30, TimeUnit.SECONDS, new LinkedBlockingQueue(), new s5.b("firebase-iid-executor"));

    /* loaded from: classes.dex */
    static class a extends BroadcastReceiver {

        /* renamed from: a  reason: collision with root package name */
        private d1 f8872a;

        /* renamed from: b  reason: collision with root package name */
        private Context f8873b;

        public a(d1 d1Var) {
            this.f8872a = d1Var;
        }

        public void a() {
            if (d1.c()) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
            d1 d1Var = this.f8872a;
            if (d1Var != null) {
                Context b10 = d1Var.b();
                this.f8873b = b10;
                b10.registerReceiver(this, intentFilter);
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            d1 d1Var = this.f8872a;
            if (d1Var == null || !d1Var.d()) {
                return;
            }
            if (d1.c()) {
                Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
            }
            this.f8872a.f8870c.p(this.f8872a, 0L);
            Context context2 = this.f8873b;
            if (context2 != null) {
                context2.unregisterReceiver(this);
            }
            this.f8872a = null;
        }
    }

    public d1(FirebaseMessaging firebaseMessaging, long j10) {
        this.f8870c = firebaseMessaging;
        this.f8868a = j10;
        PowerManager.WakeLock newWakeLock = ((PowerManager) b().getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f8869b = newWakeLock;
        newWakeLock.setReferenceCounted(false);
    }

    static boolean c() {
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            return false;
        }
        return true;
    }

    Context b() {
        return this.f8870c.q();
    }

    boolean d() {
        NetworkInfo networkInfo;
        ConnectivityManager connectivityManager = (ConnectivityManager) b().getSystemService("connectivity");
        if (connectivityManager != null) {
            networkInfo = connectivityManager.getActiveNetworkInfo();
        } else {
            networkInfo = null;
        }
        if (networkInfo != null && networkInfo.isConnected()) {
            return true;
        }
        return false;
    }

    boolean e() {
        try {
            if (this.f8870c.n() == null) {
                Log.e("FirebaseMessaging", "Token retrieval failed: null");
                return false;
            } else if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Token successfully retrieved");
                return true;
            } else {
                return true;
            }
        } catch (IOException e10) {
            if (g0.i(e10.getMessage())) {
                Log.w("FirebaseMessaging", "Token retrieval failed: " + e10.getMessage() + ". Will retry token retrieval");
                return false;
            } else if (e10.getMessage() == null) {
                Log.w("FirebaseMessaging", "Token retrieval failed without exception message. Will retry token retrieval");
                return false;
            } else {
                throw e10;
            }
        } catch (SecurityException unused) {
            Log.w("FirebaseMessaging", "Token retrieval failed with SecurityException. Will retry token retrieval");
            return false;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (z0.b().e(b())) {
            this.f8869b.acquire();
        }
        try {
            try {
                this.f8870c.Q(true);
            } catch (IOException e10) {
                Log.e("FirebaseMessaging", "Topic sync or token retrieval failed on hard failure exceptions: " + e10.getMessage() + ". Won't retry the operation.");
                this.f8870c.Q(false);
                if (!z0.b().e(b())) {
                    return;
                }
            }
            if (!this.f8870c.B()) {
                this.f8870c.Q(false);
                if (z0.b().e(b())) {
                    this.f8869b.release();
                }
            } else if (z0.b().d(b()) && !d()) {
                new a(this).a();
                if (z0.b().e(b())) {
                    this.f8869b.release();
                }
            } else {
                if (e()) {
                    this.f8870c.Q(false);
                } else {
                    this.f8870c.V(this.f8868a);
                }
                if (!z0.b().e(b())) {
                    return;
                }
                this.f8869b.release();
            }
        } catch (Throwable th) {
            if (z0.b().e(b())) {
                this.f8869b.release();
            }
            throw th;
        }
    }
}
