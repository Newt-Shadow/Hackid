package f7;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class g implements s6.a {

    /* renamed from: a  reason: collision with root package name */
    private final u6.e f15876a;

    public g(byte[] bArr) {
        this.f15876a = new u6.e(bArr);
    }

    @Override // s6.a
    public byte[] a(byte[] bArr, byte[] bArr2) {
        ByteBuffer allocate = ByteBuffer.allocate(bArr.length + 12 + 16);
        byte[] c10 = p.c(12);
        allocate.put(c10);
        this.f15876a.b(allocate, c10, bArr, bArr2);
        return allocate.array();
    }

    @Override // s6.a
    public byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr.length >= 28) {
            byte[] copyOf = Arrays.copyOf(bArr, 12);
            return this.f15876a.a(ByteBuffer.wrap(bArr, 12, bArr.length - 12), copyOf, bArr2);
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}
