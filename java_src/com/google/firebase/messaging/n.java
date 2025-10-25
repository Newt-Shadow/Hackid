package com.google.firebase.messaging;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import m6.Task;
/* loaded from: classes.dex */
public class n {

    /* renamed from: c  reason: collision with root package name */
    private static final Object f8946c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static p1 f8947d;

    /* renamed from: a  reason: collision with root package name */
    private final Context f8948a;

    /* renamed from: b  reason: collision with root package name */
    private final Executor f8949b = new androidx.privacysandbox.ads.adservices.measurement.j();

    public n(Context context) {
        this.f8948a = context;
    }

    private static Task e(Context context, Intent intent, boolean z10) {
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Binding to service");
        }
        p1 f10 = f(context, "com.google.firebase.MESSAGING_EVENT");
        if (z10) {
            if (z0.b().e(context)) {
                k1.f(context, f10, intent);
            } else {
                f10.d(intent);
            }
            return m6.n.e(-1);
        }
        return f10.d(intent).g(new androidx.privacysandbox.ads.adservices.measurement.j(), new m6.c() { // from class: com.google.firebase.messaging.m
            @Override // m6.c
            public final Object a(Task task) {
                Integer g10;
                g10 = n.g(task);
                return g10;
            }
        });
    }

    private static p1 f(Context context, String str) {
        p1 p1Var;
        synchronized (f8946c) {
            if (f8947d == null) {
                f8947d = new p1(context, str);
            }
            p1Var = f8947d;
        }
        return p1Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer g(Task task) {
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer h(Context context, Intent intent) {
        return Integer.valueOf(z0.b().g(context, intent));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Integer i(Task task) {
        return 403;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Task j(Context context, Intent intent, boolean z10, Task task) {
        if (com.google.android.gms.common.util.k.e() && ((Integer) task.l()).intValue() == 402) {
            return e(context, intent, z10).g(new androidx.privacysandbox.ads.adservices.measurement.j(), new m6.c() { // from class: com.google.firebase.messaging.l
                @Override // m6.c
                public final Object a(Task task2) {
                    Integer i10;
                    i10 = n.i(task2);
                    return i10;
                }
            });
        }
        return task;
    }

    public Task k(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return l(this.f8948a, intent);
    }

    public Task l(final Context context, final Intent intent) {
        boolean z10;
        final boolean z11 = true;
        if (com.google.android.gms.common.util.k.e() && context.getApplicationInfo().targetSdkVersion >= 26) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((intent.getFlags() & 268435456) == 0) {
            z11 = false;
        }
        if (z10 && !z11) {
            return e(context, intent, z11);
        }
        return m6.n.c(this.f8949b, new Callable() { // from class: com.google.firebase.messaging.j
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer h10;
                h10 = n.h(context, intent);
                return h10;
            }
        }).i(this.f8949b, new m6.c() { // from class: com.google.firebase.messaging.k
            @Override // m6.c
            public final Object a(Task task) {
                Task j10;
                j10 = n.j(context, intent, z11, task);
                return j10;
            }
        });
    }
}
