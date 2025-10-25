package androidx.profileinstaller;

import android.content.Context;
import android.os.Build;
import androidx.profileinstaller.ProfileInstallReceiver;
import java.io.File;
/* loaded from: classes.dex */
abstract class a {

    /* renamed from: androidx.profileinstaller.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0051a {
        static File a(Context context) {
            return context.getCodeCacheDir();
        }
    }

    /* loaded from: classes.dex */
    private static class b {
        static Context a(Context context) {
            return context.createDeviceProtectedStorageContext();
        }
    }

    static boolean a(File file) {
        if (file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles == null) {
                return false;
            }
            boolean z10 = true;
            for (File file2 : listFiles) {
                if (a(file2) && z10) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            return z10;
        }
        file.delete();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(Context context, ProfileInstallReceiver.a aVar) {
        File a10;
        if (Build.VERSION.SDK_INT >= 34) {
            a10 = b.a(context).getCacheDir();
        } else {
            a10 = C0051a.a(b.a(context));
        }
        if (a(a10)) {
            aVar.b(14, null);
        } else {
            aVar.b(15, null);
        }
    }
}
