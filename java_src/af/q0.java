package af;

import java.io.OutputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class q0 implements y0 {

    /* renamed from: a  reason: collision with root package name */
    private final OutputStream f438a;

    /* renamed from: b  reason: collision with root package name */
    private final b1 f439b;

    public q0(OutputStream out, b1 timeout) {
        kotlin.jvm.internal.m.e(out, "out");
        kotlin.jvm.internal.m.e(timeout, "timeout");
        this.f438a = out;
        this.f439b = timeout;
    }

    @Override // af.y0
    public void c0(d source, long j10) {
        kotlin.jvm.internal.m.e(source, "source");
        b.b(source.k0(), 0L, j10);
        while (j10 > 0) {
            this.f439b.f();
            v0 v0Var = source.f371a;
            kotlin.jvm.internal.m.b(v0Var);
            int min = (int) Math.min(j10, v0Var.f457c - v0Var.f456b);
            this.f438a.write(v0Var.f455a, v0Var.f456b, min);
            v0Var.f456b += min;
            long j11 = min;
            j10 -= j11;
            source.d0(source.k0() - j11);
            if (v0Var.f456b == v0Var.f457c) {
                source.f371a = v0Var.b();
                w0.b(v0Var);
            }
        }
    }

    @Override // af.y0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f438a.close();
    }

    @Override // af.y0, java.io.Flushable
    public void flush() {
        this.f438a.flush();
    }

    @Override // af.y0
    public b1 n() {
        return this.f439b;
    }

    public String toString() {
        return "sink(" + this.f438a + ')';
    }
}
