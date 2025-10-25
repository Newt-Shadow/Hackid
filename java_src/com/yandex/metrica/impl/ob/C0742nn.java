package com.yandex.metrica.impl.ob;

import android.annotation.TargetApi;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageManager;
import com.yandex.metrica.DoNotInline;
import io.flutter.Build;
@TargetApi(Build.API_LEVELS.API_30)
@DoNotInline
/* renamed from: com.yandex.metrica.impl.ob.nn  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0742nn {

    /* renamed from: a  reason: collision with root package name */
    public static final C0742nn f13026a = new C0742nn();

    private C0742nn() {
    }

    public static final String a(PackageManager packageManager, String str) {
        InstallSourceInfo installSourceInfo;
        String installingPackageName;
        installSourceInfo = packageManager.getInstallSourceInfo(str);
        kotlin.jvm.internal.m.d(installSourceInfo, "packageManager.getInstallSourceInfo(packageName)");
        installingPackageName = installSourceInfo.getInstallingPackageName();
        return installingPackageName;
    }
}
