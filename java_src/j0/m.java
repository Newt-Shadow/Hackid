package j0;

import android.os.Build;
import java.io.File;
/* loaded from: classes.dex */
public abstract class m {
    public static final boolean a(File file, File toFile) {
        kotlin.jvm.internal.m.e(file, "<this>");
        kotlin.jvm.internal.m.e(toFile, "toFile");
        if (Build.VERSION.SDK_INT >= 26) {
            return a.f23966a.a(file, toFile);
        }
        return file.renameTo(toFile);
    }
}
