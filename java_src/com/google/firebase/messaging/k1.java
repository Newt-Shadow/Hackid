package com.google.firebase.messaging;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.concurrent.TimeUnit;
import m6.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class k1 {

    /* renamed from: a  reason: collision with root package name */
    static final long f8935a = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: b  reason: collision with root package name */
    private static final Object f8936b = new Object();

    /* renamed from: c  reason: collision with root package name */
    private static l6.a f8937c;

    private static void b(Context context) {
        if (f8937c == null) {
            l6.a aVar = new l6.a(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            f8937c = aVar;
            aVar.d(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(Intent intent) {
        synchronized (f8936b) {
            if (f8937c != null && d(intent)) {
                g(intent, false);
                f8937c.c();
            }
        }
    }

    static boolean d(Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(Context context, p1 p1Var, final Intent intent) {
        synchronized (f8936b) {
            b(context);
            boolean d10 = d(intent);
            g(intent, true);
            if (!d10) {
                f8937c.a(f8935a);
            }
            p1Var.d(intent).c(new m6.f() { // from class: com.google.firebase.messaging.j1
                @Override // m6.f
                public final void onComplete(Task task) {
                    k1.c(intent);
                }
            });
        }
    }

    private static void g(Intent intent, boolean z10) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ComponentName h(Context context, Intent intent) {
        synchronized (f8936b) {
            b(context);
            boolean d10 = d(intent);
            g(intent, true);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            if (!d10) {
                f8937c.a(f8935a);
            }
            return startService;
        }
    }
}
