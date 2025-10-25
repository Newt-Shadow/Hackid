package io.appmetrica.analytics.coreutils.internal.services;

import android.annotation.TargetApi;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import io.appmetrica.analytics.coreapi.internal.annotations.DoNotInline;
import io.flutter.Build;
@DoNotInline
@TargetApi(Build.API_LEVELS.API_33)
/* loaded from: classes2.dex */
public final class PackageManagerUtilsTiramisu {
    public static final PackageManagerUtilsTiramisu INSTANCE = new PackageManagerUtilsTiramisu();

    /* renamed from: a  reason: collision with root package name */
    private static final String f17750a = "[PackageManagerUtilsTiramisu]";

    private PackageManagerUtilsTiramisu() {
    }

    public final ProviderInfo resolveContentProvider(PackageManager packageManager, String str) {
        PackageManager.ComponentInfoFlags of2;
        ProviderInfo resolveContentProvider;
        try {
            of2 = PackageManager.ComponentInfoFlags.of(8L);
            resolveContentProvider = packageManager.resolveContentProvider(str, of2);
            return resolveContentProvider;
        } catch (Throwable unused) {
            return null;
        }
    }
}
