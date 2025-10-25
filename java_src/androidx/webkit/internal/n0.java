package androidx.webkit.internal;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
/* loaded from: classes.dex */
public abstract class n0 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static ServiceInfo a(PackageManager packageManager, ComponentName componentName, PackageManager.ComponentInfoFlags componentInfoFlags) {
        ServiceInfo serviceInfo;
        serviceInfo = packageManager.getServiceInfo(componentName, componentInfoFlags);
        return serviceInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static PackageManager.ComponentInfoFlags b(long j10) {
        PackageManager.ComponentInfoFlags of2;
        of2 = PackageManager.ComponentInfoFlags.of(j10);
        return of2;
    }
}
