package f7;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.Collection;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import x6.b;
/* loaded from: classes.dex */
public final class d implements s6.e {

    /* renamed from: c  reason: collision with root package name */
    public static final b.EnumC0366b f15853c = b.EnumC0366b.f32505a;

    /* renamed from: d  reason: collision with root package name */
    private static final Collection f15854d = Arrays.asList(64);

    /* renamed from: e  reason: collision with root package name */
    private static final byte[] f15855e = new byte[16];

    /* renamed from: f  reason: collision with root package name */
    private static final byte[] f15856f = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1};

    /* renamed from: a  reason: collision with root package name */
    private final m f15857a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f15858b;

    public d(byte[] bArr) {
        if (f15853c.a()) {
            if (f15854d.contains(Integer.valueOf(bArr.length))) {
                byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, bArr.length / 2);
                this.f15858b = Arrays.copyOfRange(bArr, bArr.length / 2, bArr.length);
                this.f15857a = new m(copyOfRange);
                return;
            }
            throw new InvalidKeyException("invalid key size: " + bArr.length + " bytes; key must have 64 bytes");
        }
        throw new GeneralSecurityException("Can not use AES-SIV in FIPS-mode.");
    }

    private byte[] c(byte[]... bArr) {
        byte[] e10;
        if (bArr.length == 0) {
            return this.f15857a.a(f15856f, 16);
        }
        byte[] a10 = this.f15857a.a(f15855e, 16);
        for (int i10 = 0; i10 < bArr.length - 1; i10++) {
            byte[] bArr2 = bArr[i10];
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            a10 = f.e(b7.a.b(a10), this.f15857a.a(bArr2, 16));
        }
        byte[] bArr3 = bArr[bArr.length - 1];
        if (bArr3.length >= 16) {
            e10 = f.f(bArr3, a10);
        } else {
            e10 = f.e(b7.a.a(bArr3), b7.a.b(a10));
        }
        return this.f15857a.a(e10, 16);
    }

    @Override // s6.e
    public byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr.length <= 2147483631) {
            Cipher cipher = (Cipher) i.f15880b.a("AES/CTR/NoPadding");
            byte[] c10 = c(bArr2, bArr);
            byte[] bArr3 = (byte[]) c10.clone();
            bArr3[8] = (byte) (bArr3[8] & Byte.MAX_VALUE);
            bArr3[12] = (byte) (bArr3[12] & Byte.MAX_VALUE);
            cipher.init(1, new SecretKeySpec(this.f15858b, "AES"), new IvParameterSpec(bArr3));
            return f.a(c10, cipher.doFinal(bArr));
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    @Override // s6.e
    public byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr.length >= 16) {
            Cipher cipher = (Cipher) i.f15880b.a("AES/CTR/NoPadding");
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, 16);
            byte[] bArr3 = (byte[]) copyOfRange.clone();
            bArr3[8] = (byte) (bArr3[8] & Byte.MAX_VALUE);
            bArr3[12] = (byte) (bArr3[12] & Byte.MAX_VALUE);
            cipher.init(2, new SecretKeySpec(this.f15858b, "AES"), new IvParameterSpec(bArr3));
            byte[] copyOfRange2 = Arrays.copyOfRange(bArr, 16, bArr.length);
            byte[] doFinal = cipher.doFinal(copyOfRange2);
            if (copyOfRange2.length == 0 && doFinal == null && q.b()) {
                doFinal = new byte[0];
            }
            if (f.b(copyOfRange, c(bArr2, doFinal))) {
                return doFinal;
            }
            throw new AEADBadTagException("Integrity check failed.");
        }
        throw new GeneralSecurityException("Ciphertext too short.");
    }
}
