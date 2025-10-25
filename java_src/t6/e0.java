package t6;

import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
/* loaded from: classes.dex */
public final class e0 implements s6.a {

    /* renamed from: c  reason: collision with root package name */
    private static final byte[] f29966c = new byte[0];

    /* renamed from: a  reason: collision with root package name */
    private final e7.a0 f29967a;

    /* renamed from: b  reason: collision with root package name */
    private final s6.a f29968b;

    public e0(e7.a0 a0Var, s6.a aVar) {
        this.f29967a = a0Var;
        this.f29968b = aVar;
    }

    private byte[] c(byte[] bArr, byte[] bArr2) {
        return ByteBuffer.allocate(bArr.length + 4 + bArr2.length).putInt(bArr.length).put(bArr).put(bArr2).array();
    }

    @Override // s6.a
    public byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] f10 = s6.x.j(this.f29967a).f();
        return c(this.f29968b.a(f10, f29966c), ((s6.a) s6.x.g(this.f29967a.a0(), f10, s6.a.class)).a(bArr, bArr2));
    }

    @Override // s6.a
    public byte[] b(byte[] bArr, byte[] bArr2) {
        try {
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            int i10 = wrap.getInt();
            if (i10 > 0 && i10 <= bArr.length - 4) {
                byte[] bArr3 = new byte[i10];
                wrap.get(bArr3, 0, i10);
                byte[] bArr4 = new byte[wrap.remaining()];
                wrap.get(bArr4, 0, wrap.remaining());
                return ((s6.a) s6.x.g(this.f29967a.a0(), this.f29968b.b(bArr3, f29966c), s6.a.class)).b(bArr4, bArr2);
            }
            throw new GeneralSecurityException("invalid ciphertext");
        } catch (IndexOutOfBoundsException | NegativeArraySizeException | BufferUnderflowException e10) {
            throw new GeneralSecurityException("invalid ciphertext", e10);
        }
    }
}
