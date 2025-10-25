package q7;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
import t7.f0;
/* loaded from: classes.dex */
class m0 implements r0 {

    /* renamed from: a  reason: collision with root package name */
    private final File f28505a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28506b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28507c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(String str, String str2, File file) {
        this.f28506b = str;
        this.f28507c = str2;
        this.f28505a = file;
    }

    private byte[] c() {
        byte[] bArr = new byte[8192];
        try {
            InputStream f10 = f();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            if (f10 == null) {
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                if (f10 != null) {
                    f10.close();
                }
                return null;
            }
            while (true) {
                try {
                    int read = f10.read(bArr);
                    if (read > 0) {
                        gZIPOutputStream.write(bArr, 0, read);
                    } else {
                        gZIPOutputStream.finish();
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        gZIPOutputStream.close();
                        byteArrayOutputStream.close();
                        f10.close();
                        return byteArray;
                    }
                } catch (Throwable th) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // q7.r0
    public String a() {
        return this.f28507c;
    }

    @Override // q7.r0
    public f0.d.b b() {
        byte[] c10 = c();
        if (c10 != null) {
            return f0.d.b.a().b(c10).c(this.f28506b).a();
        }
        return null;
    }

    @Override // q7.r0
    public InputStream f() {
        if (this.f28505a.exists() && this.f28505a.isFile()) {
            try {
                return new FileInputStream(this.f28505a);
            } catch (FileNotFoundException unused) {
            }
        }
        return null;
    }
}
