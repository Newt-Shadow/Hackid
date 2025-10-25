package f7;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;
import x6.b;
/* loaded from: classes.dex */
public final class m implements d7.a {

    /* renamed from: d  reason: collision with root package name */
    public static final b.EnumC0366b f15891d = b.EnumC0366b.f32505a;

    /* renamed from: a  reason: collision with root package name */
    private final SecretKey f15892a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f15893b;

    /* renamed from: c  reason: collision with root package name */
    private byte[] f15894c;

    public m(byte[] bArr) {
        r.a(bArr.length);
        this.f15892a = new SecretKeySpec(bArr, "AES");
        b();
    }

    private void b() {
        Cipher c10 = c();
        c10.init(1, this.f15892a);
        byte[] b10 = b7.a.b(c10.doFinal(new byte[16]));
        this.f15893b = b10;
        this.f15894c = b7.a.b(b10);
    }

    private static Cipher c() {
        if (f15891d.a()) {
            return (Cipher) i.f15880b.a("AES/ECB/NoPadding");
        }
        throw new GeneralSecurityException("Can not use AES-CMAC in FIPS-mode.");
    }

    @Override // d7.a
    public byte[] a(byte[] bArr, int i10) {
        boolean z10;
        byte[] e10;
        if (i10 <= 16) {
            Cipher c10 = c();
            c10.init(1, this.f15892a);
            int max = Math.max(1, (int) Math.ceil(bArr.length / 16.0d));
            if (max * 16 == bArr.length) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (z10) {
                e10 = f.d(bArr, (max - 1) * 16, this.f15893b, 0, 16);
            } else {
                e10 = f.e(b7.a.a(Arrays.copyOfRange(bArr, (max - 1) * 16, bArr.length)), this.f15894c);
            }
            byte[] bArr2 = new byte[16];
            for (int i11 = 0; i11 < max - 1; i11++) {
                bArr2 = c10.doFinal(f.d(bArr2, 0, bArr, i11 * 16, 16));
            }
            return Arrays.copyOf(c10.doFinal(f.e(e10, bArr2)), i10);
        }
        throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
    }
}
