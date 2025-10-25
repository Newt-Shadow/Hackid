package com.google.firebase.messaging;

import android.content.SharedPreferences;
import android.text.TextUtils;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b1 {

    /* renamed from: a  reason: collision with root package name */
    private final SharedPreferences f8851a;

    /* renamed from: b  reason: collision with root package name */
    private final String f8852b;

    /* renamed from: c  reason: collision with root package name */
    private final String f8853c;

    /* renamed from: e  reason: collision with root package name */
    private final Executor f8855e;

    /* renamed from: d  reason: collision with root package name */
    final ArrayDeque f8854d = new ArrayDeque();

    /* renamed from: f  reason: collision with root package name */
    private boolean f8856f = false;

    private b1(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        this.f8851a = sharedPreferences;
        this.f8852b = str;
        this.f8853c = str2;
        this.f8855e = executor;
    }

    private boolean c(boolean z10) {
        if (z10 && !this.f8856f) {
            j();
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b1 d(SharedPreferences sharedPreferences, String str, String str2, Executor executor) {
        b1 b1Var = new b1(sharedPreferences, str, str2, executor);
        b1Var.e();
        return b1Var;
    }

    private void e() {
        synchronized (this.f8854d) {
            this.f8854d.clear();
            String string = this.f8851a.getString(this.f8852b, "");
            if (!TextUtils.isEmpty(string) && string.contains(this.f8853c)) {
                String[] split = string.split(this.f8853c, -1);
                if (split.length == 0) {
                    Log.e("FirebaseMessaging", "Corrupted queue. Please check the queue contents and item separator provided");
                }
                for (String str : split) {
                    if (!TextUtils.isEmpty(str)) {
                        this.f8854d.add(str);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        synchronized (this.f8854d) {
            this.f8851a.edit().putString(this.f8852b, h()).commit();
        }
    }

    private void j() {
        this.f8855e.execute(new Runnable() { // from class: com.google.firebase.messaging.a1
            @Override // java.lang.Runnable
            public final void run() {
                b1.this.i();
            }
        });
    }

    public boolean b(String str) {
        boolean c10;
        if (!TextUtils.isEmpty(str) && !str.contains(this.f8853c)) {
            synchronized (this.f8854d) {
                c10 = c(this.f8854d.add(str));
            }
            return c10;
        }
        return false;
    }

    public String f() {
        String str;
        synchronized (this.f8854d) {
            str = (String) this.f8854d.peek();
        }
        return str;
    }

    public boolean g(Object obj) {
        boolean c10;
        synchronized (this.f8854d) {
            c10 = c(this.f8854d.remove(obj));
        }
        return c10;
    }

    public String h() {
        StringBuilder sb2 = new StringBuilder();
        Iterator it = this.f8854d.iterator();
        while (it.hasNext()) {
            sb2.append((String) it.next());
            sb2.append(this.f8853c);
        }
        return sb2.toString();
    }
}
