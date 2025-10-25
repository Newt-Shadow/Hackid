package af;

import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes2.dex */
public interface e extends y0, WritableByteChannel {
    e C0(byte[] bArr);

    e F(int i10);

    e K(int i10);

    e O(int i10);

    OutputStream P0();

    e Y();

    d d();

    @Override // af.y0, java.io.Flushable
    void flush();

    e g0(String str);

    e l0(byte[] bArr, int i10, int i11);

    e n0(long j10);

    e s0(g gVar);
}
