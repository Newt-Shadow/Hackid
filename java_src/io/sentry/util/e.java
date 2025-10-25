package io.sentry.util;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
/* loaded from: classes2.dex */
public abstract class e {
    public static boolean a(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isFile()) {
            return file.delete();
        }
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            return true;
        }
        for (File file2 : listFiles) {
            if (!a(file2)) {
                return false;
            }
        }
        return file.delete();
    }

    public static byte[] b(String str, long j10) {
        File file = new File(str);
        if (file.exists()) {
            if (file.isFile()) {
                if (file.canRead()) {
                    if (file.length() <= j10) {
                        FileInputStream fileInputStream = new FileInputStream(str);
                        try {
                            BufferedInputStream bufferedInputStream = new BufferedInputStream(fileInputStream);
                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                            try {
                                byte[] bArr = new byte[1024];
                                while (true) {
                                    int read = bufferedInputStream.read(bArr);
                                    if (read != -1) {
                                        byteArrayOutputStream.write(bArr, 0, read);
                                    } else {
                                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                                        byteArrayOutputStream.close();
                                        bufferedInputStream.close();
                                        fileInputStream.close();
                                        return byteArray;
                                    }
                                }
                            } catch (Throwable th) {
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                            }
                        } catch (Throwable th3) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable th4) {
                                th3.addSuppressed(th4);
                            }
                            throw th3;
                        }
                    } else {
                        throw new IOException(String.format("Reading file failed, because size located at '%s' with %d bytes is bigger than the maximum allowed size of %d bytes.", str, Long.valueOf(file.length()), Long.valueOf(j10)));
                    }
                } else {
                    throw new IOException(String.format("Reading the item %s failed, because can't read the file.", str));
                }
            } else {
                throw new IOException(String.format("Reading path %s failed, because it's not a file.", str));
            }
        } else {
            throw new IOException(String.format("File '%s' doesn't exists", file.getName()));
        }
    }

    public static String c(File file) {
        if (file != null && file.exists() && file.isFile() && file.canRead()) {
            StringBuilder sb2 = new StringBuilder();
            BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb2.append(readLine);
                }
                while (true) {
                    String readLine2 = bufferedReader.readLine();
                    if (readLine2 != null) {
                        sb2.append("\n");
                        sb2.append(readLine2);
                    } else {
                        bufferedReader.close();
                        return sb2.toString();
                    }
                }
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } else {
            return null;
        }
    }
}
