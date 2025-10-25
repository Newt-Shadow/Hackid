package com.yandex.metrica.impl.ob;

import java.io.File;
/* loaded from: classes2.dex */
public final class X1 {

    /* renamed from: a  reason: collision with root package name */
    private static final B0 f11715a = new B0();

    /* renamed from: b  reason: collision with root package name */
    private static final String[] f11716b = {"/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"};

    public static int a() {
        if (!b() && !c()) {
            return 0;
        }
        return 1;
    }

    public static boolean b() {
        File file;
        try {
            if (A2.a(21)) {
                file = new File("/system/app/Superuser/Superuser.apk");
            } else {
                file = new File("/system/app/Superuser.apk");
            }
            if (file.exists()) {
                return true;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean c() {
        String[] strArr;
        boolean z10;
        for (String str : f11716b) {
            try {
                if (!A2.a(31)) {
                    z10 = new File(str + "su").exists();
                } else {
                    z10 = false;
                }
            } catch (Throwable unused) {
            }
            if (z10) {
                return true;
            }
        }
        return false;
    }
}
