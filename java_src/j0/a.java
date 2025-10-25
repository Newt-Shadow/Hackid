package j0;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
/* loaded from: classes.dex */
final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f23966a = new a();

    private a() {
    }

    public final boolean a(File srcFile, File dstFile) {
        kotlin.jvm.internal.m.e(srcFile, "srcFile");
        kotlin.jvm.internal.m.e(dstFile, "dstFile");
        try {
            Files.move(srcFile.toPath(), dstFile.toPath(), StandardCopyOption.REPLACE_EXISTING);
            return true;
        } catch (IOException unused) {
            return false;
        }
    }
}
