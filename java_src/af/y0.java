package af;

import java.io.Closeable;
import java.io.Flushable;
/* loaded from: classes2.dex */
public interface y0 extends Closeable, Flushable {
    void c0(d dVar, long j10);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    void flush();

    b1 n();
}
