package io.appmetrica.analytics.coreutils.internal.system;

import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import java.io.File;
/* loaded from: classes2.dex */
public final class RootChecker {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f17772a = {"/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"};

    /* loaded from: classes2.dex */
    public static final class RootStatus {
        public static final int NOT_ROOT = 0;
        public static final int ROOT = 1;
    }

    public static int isRootedPhone() {
        if (!isSuperuserApkExists() && !isSuperuserNativeLibExists()) {
            return 0;
        }
        return 1;
    }

    public static boolean isSuperuserApkExists() {
        try {
            if (new File("/system/app/Superuser/Superuser.apk").exists()) {
                return true;
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean isSuperuserNativeLibExists() {
        String[] strArr = f17772a;
        for (int i10 = 0; i10 < 8; i10++) {
            String str = strArr[i10];
            try {
                if (AndroidUtils.isApiAchieved(31)) {
                    continue;
                } else {
                    if (new File(str + "su").exists()) {
                        return true;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
