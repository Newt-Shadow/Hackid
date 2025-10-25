package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
/* loaded from: classes2.dex */
public class Xl implements InterfaceC0442bm {

    /* renamed from: a  reason: collision with root package name */
    private volatile String f11818a;

    public String b() {
        if (this.f11818a != null) {
            return this.f11818a;
        }
        synchronized (this) {
            if (this.f11818a == null) {
                this.f11818a = a();
            }
        }
        return this.f11818a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"PrivateApi"})
    public String a() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            return (String) cls.getMethod("getProcessName", new Class[0]).invoke(cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]), new Object[0]);
        } catch (Throwable th) {
            throw new RuntimeException(th);
        }
    }
}
