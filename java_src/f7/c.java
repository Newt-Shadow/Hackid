package f7;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import x6.b;
/* loaded from: classes.dex */
public final class c implements s6.a {

    /* renamed from: b  reason: collision with root package name */
    public static final b.EnumC0366b f15851b = b.EnumC0366b.f32506b;

    /* renamed from: a  reason: collision with root package name */
    private final u6.b f15852a;

    public c(byte[] bArr) {
        if (f15851b.a()) {
            this.f15852a = new u6.b(bArr, true);
            return;
        }
        throw new GeneralSecurityException("Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // s6.a
    public byte[] a(byte[] bArr, byte[] bArr2) {
        return this.f15852a.b(p.c(12), bArr, bArr2);
    }

    @Override // s6.a
    public byte[] b(byte[] bArr, byte[] bArr2) {
        return this.f15852a.a(Arrays.copyOf(bArr, 12), bArr, bArr2);
    }
}
