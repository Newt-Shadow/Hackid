package u6;

import f7.q;
import f7.r;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import x6.b;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: c  reason: collision with root package name */
    public static final b.EnumC0366b f30817c = b.EnumC0366b.f32506b;

    /* renamed from: d  reason: collision with root package name */
    private static final ThreadLocal f30818d = new a();

    /* renamed from: a  reason: collision with root package name */
    private final SecretKey f30819a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f30820b;

    /* loaded from: classes.dex */
    class a extends ThreadLocal {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Cipher initialValue() {
            try {
                return (Cipher) f7.i.f15880b.a("AES/GCM/NoPadding");
            } catch (GeneralSecurityException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public b(byte[] bArr, boolean z10) {
        if (f30817c.a()) {
            r.a(bArr.length);
            this.f30819a = new SecretKeySpec(bArr, "AES");
            this.f30820b = z10;
            return;
        }
        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
    }

    private static AlgorithmParameterSpec c(byte[] bArr) {
        return d(bArr, 0, bArr.length);
    }

    private static AlgorithmParameterSpec d(byte[] bArr, int i10, int i11) {
        if (q.b() && q.a() <= 19) {
            return new IvParameterSpec(bArr, i10, i11);
        }
        return new GCMParameterSpec(128, bArr, i10, i11);
    }

    public byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int i10;
        int length;
        if (bArr.length == 12) {
            boolean z10 = this.f30820b;
            if (z10) {
                i10 = 28;
            } else {
                i10 = 16;
            }
            if (bArr2.length >= i10) {
                int i11 = 0;
                if (z10 && !ByteBuffer.wrap(bArr).equals(ByteBuffer.wrap(bArr2, 0, 12))) {
                    throw new GeneralSecurityException("iv does not match prepended iv");
                }
                AlgorithmParameterSpec c10 = c(bArr);
                ThreadLocal threadLocal = f30818d;
                ((Cipher) threadLocal.get()).init(2, this.f30819a, c10);
                if (bArr3 != null && bArr3.length != 0) {
                    ((Cipher) threadLocal.get()).updateAAD(bArr3);
                }
                boolean z11 = this.f30820b;
                if (z11) {
                    i11 = 12;
                }
                if (z11) {
                    length = bArr2.length - 12;
                } else {
                    length = bArr2.length;
                }
                return ((Cipher) threadLocal.get()).doFinal(bArr2, i11, length);
            }
            throw new GeneralSecurityException("ciphertext too short");
        }
        throw new GeneralSecurityException("iv is wrong size");
    }

    public byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int length;
        int i10;
        if (bArr.length == 12) {
            if (bArr2.length <= 2147483619) {
                boolean z10 = this.f30820b;
                if (z10) {
                    length = bArr2.length + 12;
                } else {
                    length = bArr2.length;
                }
                byte[] bArr4 = new byte[length + 16];
                if (z10) {
                    System.arraycopy(bArr, 0, bArr4, 0, 12);
                }
                AlgorithmParameterSpec c10 = c(bArr);
                ThreadLocal threadLocal = f30818d;
                ((Cipher) threadLocal.get()).init(1, this.f30819a, c10);
                if (bArr3 != null && bArr3.length != 0) {
                    ((Cipher) threadLocal.get()).updateAAD(bArr3);
                }
                if (this.f30820b) {
                    i10 = 12;
                } else {
                    i10 = 0;
                }
                int doFinal = ((Cipher) threadLocal.get()).doFinal(bArr2, 0, bArr2.length, bArr4, i10);
                if (doFinal == bArr2.length + 16) {
                    return bArr4;
                }
                throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - bArr2.length)));
            }
            throw new GeneralSecurityException("plaintext too long");
        }
        throw new GeneralSecurityException("iv is wrong size");
    }
}
