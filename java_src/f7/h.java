package f7;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
import s6.t;
/* loaded from: classes.dex */
public final class h implements s6.a {

    /* renamed from: a  reason: collision with root package name */
    private final l f15877a;

    /* renamed from: b  reason: collision with root package name */
    private final t f15878b;

    /* renamed from: c  reason: collision with root package name */
    private final int f15879c;

    public h(l lVar, t tVar, int i10) {
        this.f15877a = lVar;
        this.f15878b = tVar;
        this.f15879c = i10;
    }

    @Override // s6.a
    public byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] encrypt = this.f15877a.encrypt(bArr);
        if (bArr2 == null) {
            bArr2 = new byte[0];
        }
        return f.a(encrypt, this.f15878b.b(f.a(bArr2, encrypt, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8))));
    }

    @Override // s6.a
    public byte[] b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i10 = this.f15879c;
        if (length >= i10) {
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, bArr.length - i10);
            byte[] copyOfRange2 = Arrays.copyOfRange(bArr, bArr.length - this.f15879c, bArr.length);
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            this.f15878b.a(copyOfRange2, f.a(bArr2, copyOfRange, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr2.length * 8).array(), 8)));
            return this.f15877a.a(copyOfRange);
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}
