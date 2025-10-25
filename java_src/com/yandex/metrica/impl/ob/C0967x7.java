package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
/* renamed from: com.yandex.metrica.impl.ob.x7  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
class C0967x7 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13922a;

    /* renamed from: b  reason: collision with root package name */
    private final File f13923b;

    /* renamed from: c  reason: collision with root package name */
    private final B0 f13924c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0967x7(Context context, File file) {
        this(context, file, new B0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"SetWorldReadable"})
    public String a(String str, String str2) {
        ZipFile zipFile;
        String str3 = this.f13922a.getApplicationInfo().sourceDir;
        File b10 = this.f13924c.b(this.f13923b, str2);
        if (b10 == null) {
            return null;
        }
        if (b10.exists()) {
            return b10.getAbsolutePath();
        }
        Rm a10 = Rm.a(this.f13922a, "crpad_ext");
        try {
            a10.a();
            if (b10.exists()) {
                String absolutePath = b10.getAbsolutePath();
                a10.b();
                return absolutePath;
            }
            zipFile = new ZipFile(str3);
            try {
                ZipEntry entry = zipFile.getEntry(str);
                if (entry != null) {
                    InputStream inputStream = zipFile.getInputStream(entry);
                    FileOutputStream fileOutputStream = new FileOutputStream(b10);
                    byte[] bArr = new byte[Base64Utils.IO_BUFFER_SIZE];
                    while (true) {
                        int read = inputStream.read(bArr, 0, Base64Utils.IO_BUFFER_SIZE);
                        if (-1 == read) {
                            break;
                        }
                        fileOutputStream.write(bArr, 0, read);
                    }
                    if (!b10.setReadable(true, false)) {
                        a10.b();
                        try {
                            zipFile.close();
                        } catch (IOException unused) {
                        }
                        return null;
                    } else if (!b10.setExecutable(true, false)) {
                        a10.b();
                        try {
                            zipFile.close();
                        } catch (IOException unused2) {
                        }
                        return null;
                    } else {
                        String absolutePath2 = b10.getAbsolutePath();
                        a10.b();
                        try {
                            zipFile.close();
                        } catch (IOException unused3) {
                        }
                        return absolutePath2;
                    }
                }
                throw new RuntimeException("Cannot find ZipEntry" + str);
            } catch (Throwable unused4) {
                a10.b();
                if (zipFile != null) {
                    try {
                        zipFile.close();
                    } catch (IOException unused5) {
                    }
                }
                return null;
            }
        } catch (Throwable unused6) {
            zipFile = null;
        }
    }

    C0967x7(Context context, File file, B0 b02) {
        this.f13922a = context;
        this.f13923b = file;
        this.f13924c = b02;
    }
}
