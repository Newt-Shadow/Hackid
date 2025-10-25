package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    private static Boolean f5915a;

    /* renamed from: b  reason: collision with root package name */
    private static Boolean f5916b;

    /* renamed from: c  reason: collision with root package name */
    private static Boolean f5917c;

    /* renamed from: d  reason: collision with root package name */
    private static Boolean f5918d;

    public static boolean a(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f5918d == null) {
            boolean z10 = false;
            if (k.e() && packageManager.hasSystemFeature("android.hardware.type.automotive")) {
                z10 = true;
            }
            f5918d = Boolean.valueOf(z10);
        }
        return f5918d.booleanValue();
    }

    public static boolean b() {
        int i10 = l5.k.f25303a;
        return "user".equals(Build.TYPE);
    }

    public static boolean c(Context context) {
        return g(context.getPackageManager());
    }

    public static boolean d(Context context) {
        if (!c(context) || k.d()) {
            if (e(context)) {
                if (!k.e() || k.h()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public static boolean e(Context context) {
        if (f5916b == null) {
            f5916b = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f5916b.booleanValue();
    }

    public static boolean f(Context context) {
        if (f5917c == null) {
            boolean z10 = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot") && !context.getPackageManager().hasSystemFeature("android.hardware.type.embedded")) {
                z10 = false;
            }
            f5917c = Boolean.valueOf(z10);
        }
        return f5917c.booleanValue();
    }

    public static boolean g(PackageManager packageManager) {
        if (f5915a == null) {
            f5915a = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        return f5915a.booleanValue();
    }
}
