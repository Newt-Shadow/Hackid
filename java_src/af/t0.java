package af;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public final class t0 implements e {

    /* renamed from: a  reason: collision with root package name */
    public final y0 f446a;

    /* renamed from: b  reason: collision with root package name */
    public final d f447b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f448c;

    public t0(y0 sink) {
        kotlin.jvm.internal.m.e(sink, "sink");
        this.f446a = sink;
        this.f447b = new d();
    }

    @Override // af.e
    public e C0(byte[] source) {
        kotlin.jvm.internal.m.e(source, "source");
        if (!this.f448c) {
            this.f447b.C0(source);
            return Y();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // af.e
    public e F(int i10) {
        if (!this.f448c) {
            this.f447b.F(i10);
            return Y();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // af.e
    public e K(int i10) {
        if (!this.f448c) {
            this.f447b.K(i10);
            return Y();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // af.e
    public e O(int i10) {
        if (!this.f448c) {
            this.f447b.O(i10);
            return Y();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // af.e
    public OutputStream P0() {
        return new a();
    }

    @Override // af.e
    public e Y() {
        if (!this.f448c) {
            long c10 = this.f447b.c();
            if (c10 > 0) {
                this.f446a.c0(this.f447b, c10);
            }
            return this;
        }
        throw new IllegalStateException("closed".toString());
    }

    public e a(int i10) {
        if (!this.f448c) {
            this.f447b.a1(i10);
            return Y();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // af.y0
    public void c0(d source, long j10) {
        kotlin.jvm.internal.m.e(source, "source");
        if (!this.f448c) {
            this.f447b.c0(source, j10);
            Y();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // af.y0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f448c) {
            try {
                if (this.f447b.k0() > 0) {
                    y0 y0Var = this.f446a;
                    d dVar = this.f447b;
                    y0Var.c0(dVar, dVar.k0());
                }
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                this.f446a.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                }
            }
            this.f448c = true;
            if (th != null) {
                throw th;
            }
        }
    }

    @Override // af.e
    public d d() {
        return this.f447b;
    }

    @Override // af.e, af.y0, java.io.Flushable
    public void flush() {
        if (!this.f448c) {
            if (this.f447b.k0() > 0) {
                y0 y0Var = this.f446a;
                d dVar = this.f447b;
                y0Var.c0(dVar, dVar.k0());
            }
            this.f446a.flush();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // af.e
    public e g0(String string) {
        kotlin.jvm.internal.m.e(string, "string");
        if (!this.f448c) {
            this.f447b.g0(string);
            return Y();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f448c;
    }

    @Override // af.e
    public e l0(byte[] source, int i10, int i11) {
        kotlin.jvm.internal.m.e(source, "source");
        if (!this.f448c) {
            this.f447b.l0(source, i10, i11);
            return Y();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // af.y0
    public b1 n() {
        return this.f446a.n();
    }

    @Override // af.e
    public e n0(long j10) {
        if (!this.f448c) {
            this.f447b.n0(j10);
            return Y();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // af.e
    public e s0(g byteString) {
        kotlin.jvm.internal.m.e(byteString, "byteString");
        if (!this.f448c) {
            this.f447b.s0(byteString);
            return Y();
        }
        throw new IllegalStateException("closed".toString());
    }

    public String toString() {
        return "buffer(" + this.f446a + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer source) {
        kotlin.jvm.internal.m.e(source, "source");
        if (!this.f448c) {
            int write = this.f447b.write(source);
            Y();
            return write;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* loaded from: classes2.dex */
    public static final class a extends OutputStream {
        a() {
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            t0.this.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() {
            t0 t0Var = t0.this;
            if (!t0Var.f448c) {
                t0Var.flush();
            }
        }

        public String toString() {
            return t0.this + ".outputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i10) {
            t0 t0Var = t0.this;
            if (!t0Var.f448c) {
                t0Var.f447b.O((byte) i10);
                t0.this.Y();
                return;
            }
            throw new IOException("closed");
        }

        @Override // java.io.OutputStream
        public void write(byte[] data, int i10, int i11) {
            kotlin.jvm.internal.m.e(data, "data");
            t0 t0Var = t0.this;
            if (!t0Var.f448c) {
                t0Var.f447b.l0(data, i10, i11);
                t0.this.Y();
                return;
            }
            throw new IOException("closed");
        }
    }
}
