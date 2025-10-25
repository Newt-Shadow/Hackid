package af;

import java.io.InputStream;
import java.nio.channels.ReadableByteChannel;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public interface f extends a1, ReadableByteChannel {
    String A(long j10);

    g D(long j10);

    short F0();

    long G0();

    boolean N();

    void O0(long j10);

    long Q0();

    int R0(p0 p0Var);

    InputStream S0();

    String a0(long j10);

    d d();

    String h0(Charset charset);

    byte readByte();

    int readInt();

    short readShort();

    void skip(long j10);

    String v0();

    int w0();

    byte[] x0(long j10);
}
