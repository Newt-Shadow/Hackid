package com.google.firebase.messaging;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import androidx.core.app.k;
import com.google.firebase.messaging.d;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes.dex */
class f {

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f8880a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f8881b;

    /* renamed from: c  reason: collision with root package name */
    private final m0 f8882c;

    public f(Context context, m0 m0Var, ExecutorService executorService) {
        this.f8880a = executorService;
        this.f8881b = context;
        this.f8882c = m0Var;
    }

    private boolean b() {
        if (((KeyguardManager) this.f8881b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            return false;
        }
        if (!com.google.android.gms.common.util.k.c()) {
            SystemClock.sleep(10L);
        }
        int myPid = Process.myPid();
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f8881b.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses == null) {
            return false;
        }
        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            if (runningAppProcessInfo.pid == myPid) {
                if (runningAppProcessInfo.importance != 100) {
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    private void c(d.a aVar) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Showing notification");
        }
        ((NotificationManager) this.f8881b.getSystemService("notification")).notify(aVar.f8865b, aVar.f8866c, aVar.f8864a.d());
    }

    private i0 d() {
        i0 e10 = i0.e(this.f8882c.p("gcm.n.image"));
        if (e10 != null) {
            e10.h(this.f8880a);
        }
        return e10;
    }

    private void e(k.e eVar, i0 i0Var) {
        if (i0Var == null) {
            return;
        }
        try {
            Bitmap bitmap = (Bitmap) m6.n.b(i0Var.f(), 5L, TimeUnit.SECONDS);
            eVar.w(bitmap);
            eVar.J(new k.b().p(bitmap).o(null));
        } catch (InterruptedException unused) {
            Log.w("FirebaseMessaging", "Interrupted while downloading image, showing notification without it");
            i0Var.close();
            Thread.currentThread().interrupt();
        } catch (ExecutionException e10) {
            Log.w("FirebaseMessaging", "Failed to download image: " + e10.getCause());
        } catch (TimeoutException unused2) {
            Log.w("FirebaseMessaging", "Failed to download image in time, showing notification without it");
            i0Var.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        if (this.f8882c.a("gcm.n.noui")) {
            return true;
        }
        if (b()) {
            return false;
        }
        i0 d10 = d();
        d.a e10 = d.e(this.f8881b, this.f8882c);
        e(e10.f8864a, d10);
        c(e10);
        return true;
    }
}
