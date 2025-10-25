package io.sentry.android.core;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.RandomAccessFile;
import java.nio.charset.Charset;
import java.util.UUID;
/* loaded from: classes2.dex */
abstract class g1 {

    /* renamed from: a  reason: collision with root package name */
    static String f22258a;

    /* renamed from: b  reason: collision with root package name */
    private static final Charset f22259b = Charset.forName("UTF-8");

    public static synchronized String a(Context context) {
        synchronized (g1.class) {
            if (f22258a == null) {
                File file = new File(context.getFilesDir(), "INSTALLATION");
                if (!file.exists()) {
                    String c10 = c(file);
                    f22258a = c10;
                    return c10;
                }
                f22258a = b(file);
            }
            return f22258a;
        }
    }

    static String b(File file) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            byte[] bArr = new byte[(int) randomAccessFile.length()];
            randomAccessFile.readFully(bArr);
            String str = new String(bArr, f22259b);
            randomAccessFile.close();
            return str;
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static String c(File file) {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            String uuid = UUID.randomUUID().toString();
            fileOutputStream.write(uuid.getBytes(f22259b));
            fileOutputStream.flush();
            fileOutputStream.close();
            return uuid;
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }
}
