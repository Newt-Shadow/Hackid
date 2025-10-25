package f7;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import x6.b;
/* loaded from: classes.dex */
public final class a implements l {

    /* renamed from: d  reason: collision with root package name */
    public static final b.EnumC0366b f15839d = b.EnumC0366b.f32506b;

    /* renamed from: e  reason: collision with root package name */
    private static final ThreadLocal f15840e = new C0165a();

    /* renamed from: a  reason: collision with root package name */
    private final SecretKeySpec f15841a;

    /* renamed from: b  reason: collision with root package name */
    private final int f15842b;

    /* renamed from: c  reason: collision with root package name */
    private final int f15843c;

    /* renamed from: f7.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0165a extends ThreadLocal {
        C0165a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: a */
        public Cipher initialValue() {
            try {
                return (Cipher) i.f15880b.a("AES/CTR/NoPadding");
            } catch (GeneralSecurityException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public a(byte[] bArr, int i10) {
        if (f15839d.a()) {
            r.a(bArr.length);
            this.f15841a = new SecretKeySpec(bArr, "AES");
            int blockSize = ((Cipher) f15840e.get()).getBlockSize();
            this.f15843c = blockSize;
            if (i10 >= 12 && i10 <= blockSize) {
                this.f15842b = i10;
                return;
            }
            throw new GeneralSecurityException("invalid IV size");
        }
        throw new GeneralSecurityException("Can not use AES-CTR in FIPS-mode, as BoringCrypto module is not available.");
    }

    private void b(byte[] bArr, int i10, int i11, byte[] bArr2, int i12, byte[] bArr3, boolean z10) {
        Cipher cipher = (Cipher) f15840e.get();
        byte[] bArr4 = new byte[this.f15843c];
        System.arraycopy(bArr3, 0, bArr4, 0, this.f15842b);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr4);
        if (z10) {
            cipher.init(1, this.f15841a, ivParameterSpec);
        } else {
            cipher.init(2, this.f15841a, ivParameterSpec);
        }
        if (cipher.doFinal(bArr, i10, i11, bArr2, i12) == i11) {
            return;
        }
        throw new GeneralSecurityException("stored output's length does not match input's length");
    }

    @Override // f7.l
    public byte[] a(byte[] bArr) {
        int length = bArr.length;
        int i10 = this.f15842b;
        if (length >= i10) {
            byte[] bArr2 = new byte[i10];
            System.arraycopy(bArr, 0, bArr2, 0, i10);
            int length2 = bArr.length;
            int i11 = this.f15842b;
            byte[] bArr3 = new byte[length2 - i11];
            b(bArr, i11, bArr.length - i11, bArr3, 0, bArr2, false);
            return bArr3;
        }
        throw new GeneralSecurityException("ciphertext too short");
    }

    @Override // f7.l
    public byte[] encrypt(byte[] bArr) {
        int length = bArr.length;
        int i10 = this.f15842b;
        if (length <= Integer.MAX_VALUE - i10) {
            byte[] bArr2 = new byte[bArr.length + i10];
            byte[] c10 = p.c(i10);
            System.arraycopy(c10, 0, bArr2, 0, this.f15842b);
            b(bArr, 0, bArr.length, bArr2, this.f15842b, c10, true);
            return bArr2;
        }
        throw new GeneralSecurityException("plaintext length can not exceed " + (Integer.MAX_VALUE - this.f15842b));
    }
}
