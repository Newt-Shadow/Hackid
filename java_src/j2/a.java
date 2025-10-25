package j2;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import j2.c;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* loaded from: classes.dex */
public class a implements c.a {

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j2.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0224a {

        /* renamed from: a  reason: collision with root package name */
        public ZipFile f24292a;

        /* renamed from: b  reason: collision with root package name */
        public ZipEntry f24293b;

        public C0224a(ZipFile zipFile, ZipEntry zipEntry) {
            this.f24292a = zipFile;
            this.f24293b = zipEntry;
        }
    }

    private void b(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    private long c(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[Base64Utils.IO_BUFFER_SIZE];
        long j10 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                outputStream.flush();
                return j10;
            }
            outputStream.write(bArr, 0, read);
            j10 += read;
        }
    }

    private C0224a d(Context context, String[] strArr, String str, d dVar) {
        String[] f10 = f(context);
        int length = f10.length;
        int i10 = 0;
        while (true) {
            ZipFile zipFile = null;
            if (i10 >= length) {
                return null;
            }
            String str2 = f10[i10];
            int i11 = 0;
            while (true) {
                int i12 = i11 + 1;
                if (i11 >= 5) {
                    break;
                }
                try {
                    zipFile = new ZipFile(new File(str2), 1);
                    break;
                } catch (IOException unused) {
                    i11 = i12;
                }
            }
            if (zipFile != null) {
                int i13 = 0;
                while (true) {
                    int i14 = i13 + 1;
                    if (i13 < 5) {
                        for (String str3 : strArr) {
                            String str4 = "lib" + File.separatorChar + str3 + File.separatorChar + str;
                            dVar.i("Looking for %s in APK %s...", str4, str2);
                            ZipEntry entry = zipFile.getEntry(str4);
                            if (entry != null) {
                                return new C0224a(zipFile, entry);
                            }
                        }
                        i13 = i14;
                    } else {
                        try {
                            zipFile.close();
                            break;
                        } catch (IOException unused2) {
                        }
                    }
                }
            }
            i10++;
        }
    }

    private String[] e(Context context, String str) {
        Pattern compile = Pattern.compile("lib" + File.separatorChar + "([^\\" + File.separatorChar + "]*)" + File.separatorChar + str);
        HashSet hashSet = new HashSet();
        for (String str2 : f(context)) {
            try {
                Enumeration<? extends ZipEntry> entries = new ZipFile(new File(str2), 1).entries();
                while (entries.hasMoreElements()) {
                    Matcher matcher = compile.matcher(entries.nextElement().getName());
                    if (matcher.matches()) {
                        hashSet.add(matcher.group(1));
                    }
                }
            } catch (IOException unused) {
            }
        }
        return (String[]) hashSet.toArray(new String[hashSet.size()]);
    }

    private String[] f(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String[] strArr = applicationInfo.splitSourceDirs;
        if (strArr != null && strArr.length != 0) {
            String[] strArr2 = new String[strArr.length + 1];
            strArr2[0] = applicationInfo.sourceDir;
            System.arraycopy(strArr, 0, strArr2, 1, strArr.length);
            return strArr2;
        }
        return new String[]{applicationInfo.sourceDir};
    }

    @Override // j2.c.a
    public void a(Context context, String[] strArr, String str, File file, d dVar) {
        C0224a d10;
        String[] strArr2;
        Closeable closeable;
        InputStream inputStream;
        long c10;
        C0224a c0224a = null;
        Closeable closeable2 = null;
        try {
            d10 = d(context, strArr, str, dVar);
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (d10 != null) {
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    if (i10 < 5) {
                        dVar.i("Found %s! Extracting...", str);
                        try {
                            if (file.exists() || file.createNewFile()) {
                                try {
                                    inputStream = d10.f24292a.getInputStream(d10.f24293b);
                                    try {
                                        closeable = new FileOutputStream(file);
                                        try {
                                            c10 = c(inputStream, closeable);
                                            closeable.getFD().sync();
                                        } catch (FileNotFoundException unused) {
                                            b(inputStream);
                                            b(closeable);
                                            i10 = i11;
                                        } catch (IOException unused2) {
                                            b(inputStream);
                                            b(closeable);
                                            i10 = i11;
                                        } catch (Throwable th2) {
                                            th = th2;
                                            closeable2 = inputStream;
                                            b(closeable2);
                                            b(closeable);
                                            throw th;
                                        }
                                    } catch (FileNotFoundException unused3) {
                                        closeable = null;
                                    } catch (IOException unused4) {
                                        closeable = null;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        closeable = null;
                                    }
                                } catch (FileNotFoundException unused5) {
                                    inputStream = null;
                                    closeable = null;
                                } catch (IOException unused6) {
                                    inputStream = null;
                                    closeable = null;
                                } catch (Throwable th4) {
                                    th = th4;
                                    closeable = null;
                                }
                                if (c10 != file.length()) {
                                    b(inputStream);
                                    b(closeable);
                                } else {
                                    b(inputStream);
                                    b(closeable);
                                    file.setReadable(true, false);
                                    file.setExecutable(true, false);
                                    file.setWritable(true);
                                    try {
                                        ZipFile zipFile = d10.f24292a;
                                        if (zipFile != null) {
                                            zipFile.close();
                                            return;
                                        }
                                        return;
                                    } catch (IOException unused7) {
                                        return;
                                    }
                                }
                            }
                        } catch (IOException unused8) {
                        }
                        i10 = i11;
                    } else {
                        dVar.h("FATAL! Couldn't extract the library from the APK!");
                        try {
                            ZipFile zipFile2 = d10.f24292a;
                            if (zipFile2 != null) {
                                zipFile2.close();
                                return;
                            }
                            return;
                        } catch (IOException unused9) {
                            return;
                        }
                    }
                }
            } else {
                try {
                    strArr2 = e(context, str);
                } catch (Exception e10) {
                    strArr2 = new String[]{e10.toString()};
                }
                throw new b(str, strArr, strArr2);
            }
        } catch (Throwable th5) {
            th = th5;
            c0224a = d10;
            if (c0224a != null) {
                try {
                    ZipFile zipFile3 = c0224a.f24292a;
                    if (zipFile3 != null) {
                        zipFile3.close();
                    }
                } catch (IOException unused10) {
                }
            }
            throw th;
        }
    }
}
