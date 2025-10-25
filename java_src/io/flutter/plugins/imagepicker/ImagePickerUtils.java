package io.flutter.plugins.imagepicker;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.provider.MediaStore;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.flutter.plugins.imagepicker.Messages;
import java.util.Arrays;
/* loaded from: classes2.dex */
final class ImagePickerUtils {
    ImagePickerUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int getLimitFromOption(Messages.GeneralOptions generalOptions) {
        Long limit = generalOptions.getLimit();
        int maxItems = getMaxItems();
        if (limit != null && limit.longValue() < maxItems) {
            return Math.toIntExact(limit.longValue());
        }
        return maxItems;
    }

    @SuppressLint({"NewApi", "ClassVerificationFailure"})
    static int getMaxItems() {
        int pickImagesMaxLimit;
        if (g.f.f()) {
            pickImagesMaxLimit = MediaStore.getPickImagesMaxLimit();
            return pickImagesMaxLimit;
        }
        return Integer.MAX_VALUE;
    }

    private static PackageInfo getPermissionsPackageInfoPreApi33(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, Base64Utils.IO_BUFFER_SIZE);
    }

    private static boolean isPermissionPresentInManifest(Context context, String str) {
        PackageInfo permissionsPackageInfoPreApi33;
        PackageManager.PackageInfoFlags of2;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (Build.VERSION.SDK_INT >= 33) {
                String packageName = context.getPackageName();
                of2 = PackageManager.PackageInfoFlags.of(4096L);
                permissionsPackageInfoPreApi33 = packageManager.getPackageInfo(packageName, of2);
            } else {
                permissionsPackageInfoPreApi33 = getPermissionsPackageInfoPreApi33(packageManager, context.getPackageName());
            }
            return Arrays.asList(permissionsPackageInfoPreApi33.requestedPermissions).contains(str);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean needRequestCameraPermission(Context context) {
        if (isPermissionPresentInManifest(context, "android.permission.CAMERA")) {
            return true;
        }
        return false;
    }
}
