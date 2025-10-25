package i4;

import android.net.Uri;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import x4.m0;
/* loaded from: classes.dex */
class a implements x4.j {

    /* renamed from: a  reason: collision with root package name */
    private final x4.j f17110a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f17111b;

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f17112c;

    /* renamed from: d  reason: collision with root package name */
    private CipherInputStream f17113d;

    public a(x4.j jVar, byte[] bArr, byte[] bArr2) {
        this.f17110a = jVar;
        this.f17111b = bArr;
        this.f17112c = bArr2;
    }

    @Override // x4.j
    public void close() {
        if (this.f17113d != null) {
            this.f17113d = null;
            this.f17110a.close();
        }
    }

    @Override // x4.j
    public final void d(m0 m0Var) {
        y4.a.e(m0Var);
        this.f17110a.d(m0Var);
    }

    @Override // x4.j
    public final long i(x4.n nVar) {
        try {
            Cipher q10 = q();
            try {
                q10.init(2, new SecretKeySpec(this.f17111b, "AES"), new IvParameterSpec(this.f17112c));
                x4.l lVar = new x4.l(this.f17110a, nVar);
                this.f17113d = new CipherInputStream(lVar, q10);
                lVar.b();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override // x4.j
    public final Map k() {
        return this.f17110a.k();
    }

    @Override // x4.j
    public final Uri o() {
        return this.f17110a.o();
    }

    protected Cipher q() {
        return Cipher.getInstance("AES/CBC/PKCS7Padding");
    }

    @Override // x4.h
    public final int read(byte[] bArr, int i10, int i11) {
        y4.a.e(this.f17113d);
        int read = this.f17113d.read(bArr, i10, i11);
        if (read < 0) {
            return -1;
        }
        return read;
    }
}
