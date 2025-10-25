package f7;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class s implements s6.a {

    /* renamed from: a  reason: collision with root package name */
    private final u6.h f15906a;

    public s(byte[] bArr) {
        this.f15906a = new u6.h(bArr);
    }

    @Override // s6.a
    public byte[] a(byte[] bArr, byte[] bArr2) {
        ByteBuffer allocate = ByteBuffer.allocate(bArr.length + 24 + 16);
        byte[] c10 = p.c(24);
        allocate.put(c10);
        this.f15906a.b(allocate, c10, bArr, bArr2);
        return allocate.array();
    }

    @Override // s6.a
    public byte[] b(byte[] bArr, byte[] bArr2) {
        if (bArr.length >= 40) {
            byte[] copyOf = Arrays.copyOf(bArr, 24);
            return this.f15906a.a(ByteBuffer.wrap(bArr, 24, bArr.length - 24), copyOf, bArr2);
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}
