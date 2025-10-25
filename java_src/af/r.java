package af;

import java.io.IOException;
import java.io.InputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class r implements a1 {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f440a;

    /* renamed from: b  reason: collision with root package name */
    private final b1 f441b;

    public r(InputStream input, b1 timeout) {
        kotlin.jvm.internal.m.e(input, "input");
        kotlin.jvm.internal.m.e(timeout, "timeout");
        this.f440a = input;
        this.f441b = timeout;
    }

    @Override // af.a1
    public long L0(d sink, long j10) {
        boolean z10;
        kotlin.jvm.internal.m.e(sink, "sink");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 == 0) {
            return 0L;
        }
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            try {
                this.f441b.f();
                v0 J0 = sink.J0(1);
                int read = this.f440a.read(J0.f455a, J0.f457c, (int) Math.min(j10, 8192 - J0.f457c));
                if (read == -1) {
                    if (J0.f456b == J0.f457c) {
                        sink.f371a = J0.b();
                        w0.b(J0);
                        return -1L;
                    }
                    return -1L;
                }
                J0.f457c += read;
                long j11 = read;
                sink.d0(sink.k0() + j11);
                return j11;
            } catch (AssertionError e10) {
                if (m0.c(e10)) {
                    throw new IOException(e10);
                }
                throw e10;
            }
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f440a.close();
    }

    @Override // af.a1
    public b1 n() {
        return this.f441b;
    }

    public String toString() {
        return "source(" + this.f440a + ')';
    }
}
