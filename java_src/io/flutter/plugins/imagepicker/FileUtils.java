package io.flutter.plugins.imagepicker;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.flutter.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;
/* loaded from: classes2.dex */
class FileUtils {
    private static void copy(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[Base64Utils.IO_BUFFER_SIZE];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                outputStream.flush();
                return;
            }
        }
    }

    private static String getBaseName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return str;
        }
        return str.substring(0, lastIndexOf);
    }

    private static String getImageExtension(Context context, Uri uri) {
        String fileExtensionFromUrl;
        try {
            if (uri.getScheme().equals("content")) {
                fileExtensionFromUrl = MimeTypeMap.getSingleton().getExtensionFromMimeType(context.getContentResolver().getType(uri));
            } else {
                fileExtensionFromUrl = MimeTypeMap.getFileExtensionFromUrl(Uri.fromFile(new File(uri.getPath())).toString());
            }
            if (fileExtensionFromUrl != null && !fileExtensionFromUrl.isEmpty()) {
                return "." + sanitizeFilename(fileExtensionFromUrl);
            }
        } catch (Exception unused) {
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x002d, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0030, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String getImageName(android.content.Context r1, android.net.Uri r2) {
        /*
            android.database.Cursor r1 = queryImageName(r1, r2)
            if (r1 == 0) goto L2b
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L21
            if (r2 == 0) goto L2b
            int r2 = r1.getColumnCount()     // Catch: java.lang.Throwable -> L21
            r0 = 1
            if (r2 >= r0) goto L14
            goto L2b
        L14:
            r2 = 0
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L21
            java.lang.String r2 = sanitizeFilename(r2)     // Catch: java.lang.Throwable -> L21
            r1.close()
            return r2
        L21:
            r2 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> L26
            goto L2a
        L26:
            r1 = move-exception
            r2.addSuppressed(r1)
        L2a:
            throw r2
        L2b:
            if (r1 == 0) goto L30
            r1.close()
        L30:
            r1 = 0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.imagepicker.FileUtils.getImageName(android.content.Context, android.net.Uri):java.lang.String");
    }

    private static Cursor queryImageName(Context context, Uri uri) {
        return context.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
    }

    protected static File saferOpenFile(String str, String str2) {
        File file = new File(str);
        if (file.getCanonicalPath().startsWith(str2)) {
            return file;
        }
        throw new IllegalArgumentException("Trying to open path outside of the expected directory. File: " + file.getCanonicalPath() + " was expected to be within directory: " + str2 + ".");
    }

    protected static String sanitizeFilename(String str) {
        if (str == null) {
            return null;
        }
        String[] strArr = {"..", "/"};
        String[] split = str.split("/");
        String str2 = split[split.length - 1];
        for (int i10 = 0; i10 < 2; i10++) {
            str2 = str2.replace(strArr[i10], "_");
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getPathFromUri(Context context, Uri uri) {
        try {
            InputStream openInputStream = context.getContentResolver().openInputStream(uri);
            File file = new File(context.getCacheDir(), UUID.randomUUID().toString());
            file.mkdir();
            file.deleteOnExit();
            String imageName = getImageName(context, uri);
            String imageExtension = getImageExtension(context, uri);
            if (imageName == null) {
                Log.w("FileUtils", "Cannot get file name for " + uri);
                if (imageExtension == null) {
                    imageExtension = ".jpg";
                }
                imageName = "image_picker" + imageExtension;
            } else if (imageExtension != null) {
                imageName = getBaseName(imageName) + imageExtension;
            }
            File saferOpenFile = saferOpenFile(new File(file, imageName).getPath(), file.getCanonicalPath());
            FileOutputStream fileOutputStream = new FileOutputStream(saferOpenFile);
            try {
                copy(openInputStream, fileOutputStream);
                String path = saferOpenFile.getPath();
                fileOutputStream.close();
                if (openInputStream != null) {
                    openInputStream.close();
                }
                return path;
            } catch (Throwable th) {
                try {
                    fileOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | IllegalArgumentException | SecurityException unused) {
            return null;
        }
    }
}
