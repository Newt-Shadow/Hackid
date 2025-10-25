package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.os.Build;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes2.dex */
public class U {

    /* renamed from: f  reason: collision with root package name */
    private static final Object f11456f = new Object();
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: g  reason: collision with root package name */
    private static volatile U f11457g;

    /* renamed from: a  reason: collision with root package name */
    public final String f11458a = Build.MANUFACTURER;

    /* renamed from: b  reason: collision with root package name */
    public final String f11459b = Build.MODEL;

    /* renamed from: c  reason: collision with root package name */
    public final String f11460c = Build.VERSION.RELEASE;

    /* renamed from: d  reason: collision with root package name */
    public final int f11461d = Build.VERSION.SDK_INT;

    /* renamed from: e  reason: collision with root package name */
    public final String f11462e = String.valueOf(X1.a());

    /* loaded from: classes2.dex */
    class a extends ArrayList<String> {
        a(U u10) {
            if (X1.b()) {
                add("Superuser.apk");
            }
            if (X1.c()) {
                add("su.so");
            }
        }
    }

    public U() {
        Collections.unmodifiableList(new a(this));
    }

    public static U a() {
        if (f11457g == null) {
            synchronized (f11456f) {
                if (f11457g == null) {
                    f11457g = new U();
                }
            }
        }
        return f11457g;
    }
}
