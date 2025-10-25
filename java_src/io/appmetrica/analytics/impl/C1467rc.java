package io.appmetrica.analytics.impl;

import android.text.TextUtils;
/* renamed from: io.appmetrica.analytics.impl.rc  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1467rc {

    /* renamed from: a  reason: collision with root package name */
    public volatile String f20523a;

    public static String a() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            return (String) cls.getMethod("getProcessName", new Class[0]).invoke(cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]), new Object[0]);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }

    public final String b() {
        if (this.f20523a != null) {
            return this.f20523a;
        }
        synchronized (this) {
            if (this.f20523a == null) {
                this.f20523a = a();
            }
        }
        return this.f20523a;
    }

    public final boolean c() {
        try {
            if (TextUtils.isEmpty(b())) {
                return false;
            }
            if (b().contains(":")) {
                return false;
            }
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final boolean a(String str) {
        try {
            if (TextUtils.isEmpty(b())) {
                return false;
            }
            String b10 = b();
            StringBuilder sb2 = new StringBuilder(":");
            sb2.append(str);
            return b10.endsWith(sb2.toString());
        } catch (Throwable unused) {
            return false;
        }
    }
}
