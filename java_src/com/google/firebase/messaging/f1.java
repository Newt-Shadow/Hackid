package com.google.firebase.messaging;

import android.content.Context;
import android.content.SharedPreferences;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class f1 {

    /* renamed from: d  reason: collision with root package name */
    private static WeakReference f8884d;

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f8885a;

    /* renamed from: b  reason: collision with root package name */
    private b1 f8886b;

    /* renamed from: c  reason: collision with root package name */
    private final Executor f8887c;

    private f1(SharedPreferences sharedPreferences, Executor executor) {
        this.f8887c = executor;
        this.f8885a = sharedPreferences;
    }

    public static synchronized f1 b(Context context, Executor executor) {
        f1 f1Var;
        synchronized (f1.class) {
            WeakReference weakReference = f8884d;
            if (weakReference != null) {
                f1Var = (f1) weakReference.get();
            } else {
                f1Var = null;
            }
            if (f1Var == null) {
                f1Var = new f1(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                f1Var.d();
                f8884d = new WeakReference(f1Var);
            }
        }
        return f1Var;
    }

    private synchronized void d() {
        this.f8886b = b1.d(this.f8885a, "topic_operation_queue", StringUtils.COMMA, this.f8887c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean a(e1 e1Var) {
        return this.f8886b.b(e1Var.e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized e1 c() {
        return e1.a(this.f8886b.f());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean e(e1 e1Var) {
        return this.f8886b.g(e1Var.e());
    }
}
