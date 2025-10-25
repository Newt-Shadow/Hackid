package u6;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import javax.crypto.AEADBadTagException;
import x6.b;
/* loaded from: classes.dex */
abstract class f {

    /* renamed from: c  reason: collision with root package name */
    public static final b.EnumC0366b f30823c = b.EnumC0366b.f32505a;

    /* renamed from: a  reason: collision with root package name */
    private final d f30824a;

    /* renamed from: b  reason: collision with root package name */
    private final d f30825b;

    public f(byte[] bArr) {
        if (f30823c.a()) {
            this.f30824a = e(bArr, 1);
            this.f30825b = e(bArr, 0);
            return;
        }
        throw new GeneralSecurityException("Can not use ChaCha20Poly1305 in FIPS-mode.");
    }

    private byte[] c(byte[] bArr) {
        byte[] bArr2 = new byte[32];
        this.f30825b.a(bArr, 0).get(bArr2);
        return bArr2;
    }

    private static byte[] d(byte[] bArr, ByteBuffer byteBuffer) {
        int length;
        int i10;
        if (bArr.length % 16 == 0) {
            length = bArr.length;
        } else {
            length = (bArr.length + 16) - (bArr.length % 16);
        }
        int remaining = byteBuffer.remaining();
        int i11 = remaining % 16;
        if (i11 == 0) {
            i10 = remaining;
        } else {
            i10 = (remaining + 16) - i11;
        }
        int i12 = i10 + length;
        ByteBuffer order = ByteBuffer.allocate(i12 + 16).order(ByteOrder.LITTLE_ENDIAN);
        order.put(bArr);
        order.position(length);
        order.put(byteBuffer);
        order.position(i12);
        order.putLong(bArr.length);
        order.putLong(remaining);
        return order.array();
    }

    public byte[] a(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2) {
        if (byteBuffer.remaining() >= 16) {
            int position = byteBuffer.position();
            byte[] bArr3 = new byte[16];
            byteBuffer.position(byteBuffer.limit() - 16);
            byteBuffer.get(bArr3);
            byteBuffer.position(position);
            byteBuffer.limit(byteBuffer.limit() - 16);
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            try {
                i.f(c(bArr), d(bArr2, byteBuffer), bArr3);
                byteBuffer.position(position);
                return this.f30824a.c(bArr, byteBuffer);
            } catch (GeneralSecurityException e10) {
                throw new AEADBadTagException(e10.toString());
            }
        }
        throw new GeneralSecurityException("ciphertext too short");
    }

    public void b(ByteBuffer byteBuffer, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        if (byteBuffer.remaining() >= bArr2.length + 16) {
            int position = byteBuffer.position();
            this.f30824a.d(byteBuffer, bArr, bArr2);
            byteBuffer.position(position);
            byteBuffer.limit(byteBuffer.limit() - 16);
            if (bArr3 == null) {
                bArr3 = new byte[0];
            }
            byte[] a10 = i.a(c(bArr), d(bArr3, byteBuffer));
            byteBuffer.limit(byteBuffer.limit() + 16);
            byteBuffer.put(a10);
            return;
        }
        throw new IllegalArgumentException("Given ByteBuffer output is too small");
    }

    abstract d e(byte[] bArr, int i10);
}
