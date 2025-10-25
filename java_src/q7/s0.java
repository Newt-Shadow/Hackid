package q7;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes.dex */
abstract class s0 {
    private static void a(InputStream inputStream, File file) {
        if (inputStream == null) {
            return;
        }
        byte[] bArr = new byte[8192];
        GZIPOutputStream gZIPOutputStream = null;
        try {
            GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(new FileOutputStream(file));
            while (true) {
                try {
                    int read = inputStream.read(bArr);
                    if (read > 0) {
                        gZIPOutputStream2.write(bArr, 0, read);
                    } else {
                        gZIPOutputStream2.finish();
                        j.g(gZIPOutputStream2);
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    gZIPOutputStream = gZIPOutputStream2;
                    j.g(gZIPOutputStream);
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(File file, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            r0 r0Var = (r0) it.next();
            InputStream inputStream = null;
            try {
                inputStream = r0Var.f();
                if (inputStream != null) {
                    a(inputStream, new File(file, r0Var.a()));
                }
            } catch (IOException unused) {
            } catch (Throwable th) {
                j.g(null);
                throw th;
            }
            j.g(inputStream);
        }
    }
}
