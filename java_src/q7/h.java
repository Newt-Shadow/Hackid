package q7;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;
import t7.f0;
/* loaded from: classes.dex */
class h implements r0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f28445a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28446b;

    /* renamed from: c  reason: collision with root package name */
    private final String f28447c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(String str, String str2, byte[] bArr) {
        this.f28446b = str;
        this.f28447c = str2;
        this.f28445a = bArr;
    }

    private byte[] c() {
        if (d()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
            try {
                gZIPOutputStream.write(this.f28445a);
                gZIPOutputStream.finish();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                gZIPOutputStream.close();
                byteArrayOutputStream.close();
                return byteArray;
            } catch (Throwable th) {
                try {
                    gZIPOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    private boolean d() {
        byte[] bArr = this.f28445a;
        if (bArr != null && bArr.length != 0) {
            return false;
        }
        return true;
    }

    @Override // q7.r0
    public String a() {
        return this.f28447c;
    }

    @Override // q7.r0
    public f0.d.b b() {
        byte[] c10 = c();
        if (c10 == null) {
            return null;
        }
        return f0.d.b.a().b(c10).c(this.f28446b).a();
    }

    @Override // q7.r0
    public InputStream f() {
        if (d()) {
            return null;
        }
        return new ByteArrayInputStream(this.f28445a);
    }
}
