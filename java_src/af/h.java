package af;

import java.util.zip.Deflater;
/* loaded from: classes2.dex */
public final class h implements y0 {

    /* renamed from: a  reason: collision with root package name */
    private final e f392a;

    /* renamed from: b  reason: collision with root package name */
    private final Deflater f393b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f394c;

    public h(e sink, Deflater deflater) {
        kotlin.jvm.internal.m.e(sink, "sink");
        kotlin.jvm.internal.m.e(deflater, "deflater");
        this.f392a = sink;
        this.f393b = deflater;
    }

    private final void a(boolean z10) {
        v0 J0;
        int deflate;
        d d10 = this.f392a.d();
        while (true) {
            J0 = d10.J0(1);
            if (z10) {
                Deflater deflater = this.f393b;
                byte[] bArr = J0.f455a;
                int i10 = J0.f457c;
                deflate = deflater.deflate(bArr, i10, 8192 - i10, 2);
            } else {
                Deflater deflater2 = this.f393b;
                byte[] bArr2 = J0.f455a;
                int i11 = J0.f457c;
                deflate = deflater2.deflate(bArr2, i11, 8192 - i11);
            }
            if (deflate > 0) {
                J0.f457c += deflate;
                d10.d0(d10.k0() + deflate);
                this.f392a.Y();
            } else if (this.f393b.needsInput()) {
                break;
            }
        }
        if (J0.f456b == J0.f457c) {
            d10.f371a = J0.b();
            w0.b(J0);
        }
    }

    public final void b() {
        this.f393b.finish();
        a(false);
    }

    @Override // af.y0
    public void c0(d source, long j10) {
        kotlin.jvm.internal.m.e(source, "source");
        b.b(source.k0(), 0L, j10);
        while (j10 > 0) {
            v0 v0Var = source.f371a;
            kotlin.jvm.internal.m.b(v0Var);
            int min = (int) Math.min(j10, v0Var.f457c - v0Var.f456b);
            this.f393b.setInput(v0Var.f455a, v0Var.f456b, min);
            a(false);
            long j11 = min;
            source.d0(source.k0() - j11);
            int i10 = v0Var.f456b + min;
            v0Var.f456b = i10;
            if (i10 == v0Var.f457c) {
                source.f371a = v0Var.b();
                w0.b(v0Var);
            }
            j10 -= j11;
        }
    }

    @Override // af.y0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f394c) {
            return;
        }
        try {
            b();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f393b.end();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        try {
            this.f392a.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f394c = true;
        if (th == null) {
            return;
        }
        throw th;
    }

    @Override // af.y0, java.io.Flushable
    public void flush() {
        a(true);
        this.f392a.flush();
    }

    @Override // af.y0
    public b1 n() {
        return this.f392a.n();
    }

    public String toString() {
        return "DeflaterSink(" + this.f392a + ')';
    }
}
