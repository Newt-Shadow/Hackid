package af;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.apache.tika.fork.ForkServer;
/* loaded from: classes2.dex */
public final class u0 implements f {

    /* renamed from: a  reason: collision with root package name */
    public final a1 f450a;

    /* renamed from: b  reason: collision with root package name */
    public final d f451b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f452c;

    public u0(a1 source) {
        kotlin.jvm.internal.m.e(source, "source");
        this.f450a = source;
        this.f451b = new d();
    }

    @Override // af.f
    public String A(long j10) {
        O0(j10);
        return this.f451b.A(j10);
    }

    @Override // af.f
    public g D(long j10) {
        O0(j10);
        return this.f451b.D(j10);
    }

    @Override // af.f
    public short F0() {
        O0(2L);
        return this.f451b.F0();
    }

    @Override // af.f
    public long G0() {
        O0(8L);
        return this.f451b.G0();
    }

    @Override // af.a1
    public long L0(d sink, long j10) {
        boolean z10;
        kotlin.jvm.internal.m.e(sink, "sink");
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (!this.f452c) {
                if (this.f451b.k0() == 0 && this.f450a.L0(this.f451b, 8192L) == -1) {
                    return -1L;
                }
                return this.f451b.L0(sink, Math.min(j10, this.f451b.k0()));
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // af.f
    public boolean N() {
        if (!this.f452c) {
            if (this.f451b.N() && this.f450a.L0(this.f451b, 8192L) == -1) {
                return true;
            }
            return false;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // af.f
    public void O0(long j10) {
        if (c(j10)) {
            return;
        }
        throw new EOFException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0031, code lost:
        if (r0 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
        r1 = new java.lang.StringBuilder();
        r1.append("Expected leading [0-9a-fA-F] character but was 0x");
        r3 = rd.b.a(16);
        r3 = rd.b.a(r3);
        r2 = java.lang.Integer.toString(r2, r3);
        kotlin.jvm.internal.m.d(r2, "toString(this, checkRadix(radix))");
        r1.append(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005d, code lost:
        throw new java.lang.NumberFormatException(r1.toString());
     */
    @Override // af.f
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long Q0() {
        /*
            r5 = this;
            r0 = 1
            r5.O0(r0)
            r0 = 0
        L6:
            int r1 = r0 + 1
            long r2 = (long) r1
            boolean r2 = r5.c(r2)
            if (r2 == 0) goto L5e
            af.d r2 = r5.f451b
            long r3 = (long) r0
            byte r2 = r2.k(r3)
            r3 = 48
            if (r2 < r3) goto L1e
            r3 = 57
            if (r2 <= r3) goto L2f
        L1e:
            r3 = 97
            if (r2 < r3) goto L26
            r3 = 102(0x66, float:1.43E-43)
            if (r2 <= r3) goto L2f
        L26:
            r3 = 65
            if (r2 < r3) goto L31
            r3 = 70
            if (r2 <= r3) goto L2f
            goto L31
        L2f:
            r0 = r1
            goto L6
        L31:
            if (r0 == 0) goto L34
            goto L5e
        L34:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r3 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r3)
            r3 = 16
            int r3 = rd.a.a(r3)
            int r3 = rd.a.a(r3)
            java.lang.String r2 = java.lang.Integer.toString(r2, r3)
            java.lang.String r3 = "toString(this, checkRadix(radix))"
            kotlin.jvm.internal.m.d(r2, r3)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L5e:
            af.d r0 = r5.f451b
            long r0 = r0.Q0()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: af.u0.Q0():long");
    }

    @Override // af.f
    public int R0(p0 options) {
        kotlin.jvm.internal.m.e(options, "options");
        if (!this.f452c) {
            while (true) {
                int c10 = bf.a.c(this.f451b, options, true);
                if (c10 != -2) {
                    if (c10 != -1) {
                        this.f451b.skip(options.o()[c10].size());
                        return c10;
                    }
                } else if (this.f450a.L0(this.f451b, 8192L) == -1) {
                    break;
                }
            }
            return -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // af.f
    public InputStream S0() {
        return new a();
    }

    public long a(byte b10) {
        return b(b10, 0L, Long.MAX_VALUE);
    }

    @Override // af.f
    public String a0(long j10) {
        boolean z10;
        long j11;
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (j10 == Long.MAX_VALUE) {
                j11 = Long.MAX_VALUE;
            } else {
                j11 = j10 + 1;
            }
            long b10 = b((byte) 10, 0L, j11);
            if (b10 != -1) {
                return bf.a.b(this.f451b, b10);
            }
            if (j11 < Long.MAX_VALUE && c(j11) && this.f451b.k(j11 - 1) == 13 && c(1 + j11) && this.f451b.k(j11) == 10) {
                return bf.a.b(this.f451b, j11);
            }
            d dVar = new d();
            d dVar2 = this.f451b;
            dVar2.f(dVar, 0L, Math.min(32, dVar2.k0()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f451b.k0(), j10) + " content=" + dVar.E().p() + (char) 8230);
        }
        throw new IllegalArgumentException(("limit < 0: " + j10).toString());
    }

    public long b(byte b10, long j10, long j11) {
        boolean z10 = true;
        if (!this.f452c) {
            if (0 > j10 || j10 > j11) {
                z10 = false;
            }
            if (z10) {
                while (j10 < j11) {
                    long q10 = this.f451b.q(b10, j10, j11);
                    if (q10 != -1) {
                        return q10;
                    }
                    long k02 = this.f451b.k0();
                    if (k02 >= j11 || this.f450a.L0(this.f451b, 8192L) == -1) {
                        return -1L;
                    }
                    j10 = Math.max(j10, k02);
                }
                return -1L;
            }
            throw new IllegalArgumentException(("fromIndex=" + j10 + " toIndex=" + j11).toString());
        }
        throw new IllegalStateException("closed".toString());
    }

    public boolean c(long j10) {
        boolean z10;
        if (j10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (!this.f452c) {
                while (this.f451b.k0() < j10) {
                    if (this.f450a.L0(this.f451b, 8192L) == -1) {
                        return false;
                    }
                }
                return true;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!this.f452c) {
            this.f452c = true;
            this.f450a.close();
            this.f451b.a();
        }
    }

    @Override // af.f, af.e
    public d d() {
        return this.f451b;
    }

    @Override // af.f
    public String h0(Charset charset) {
        kotlin.jvm.internal.m.e(charset, "charset");
        this.f451b.W0(this.f450a);
        return this.f451b.h0(charset);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f452c;
    }

    @Override // af.a1
    public b1 n() {
        return this.f450a.n();
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer sink) {
        kotlin.jvm.internal.m.e(sink, "sink");
        if (this.f451b.k0() == 0 && this.f450a.L0(this.f451b, 8192L) == -1) {
            return -1;
        }
        return this.f451b.read(sink);
    }

    @Override // af.f
    public byte readByte() {
        O0(1L);
        return this.f451b.readByte();
    }

    @Override // af.f
    public int readInt() {
        O0(4L);
        return this.f451b.readInt();
    }

    @Override // af.f
    public short readShort() {
        O0(2L);
        return this.f451b.readShort();
    }

    @Override // af.f
    public void skip(long j10) {
        if (!this.f452c) {
            while (j10 > 0) {
                if (this.f451b.k0() == 0 && this.f450a.L0(this.f451b, 8192L) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j10, this.f451b.k0());
                this.f451b.skip(min);
                j10 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    public String toString() {
        return "buffer(" + this.f450a + ')';
    }

    @Override // af.f
    public String v0() {
        return a0(Long.MAX_VALUE);
    }

    @Override // af.f
    public int w0() {
        O0(4L);
        return this.f451b.w0();
    }

    @Override // af.f
    public byte[] x0(long j10) {
        O0(j10);
        return this.f451b.x0(j10);
    }

    /* loaded from: classes2.dex */
    public static final class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public int available() {
            u0 u0Var = u0.this;
            if (!u0Var.f452c) {
                return (int) Math.min(u0Var.f451b.k0(), Integer.MAX_VALUE);
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            u0.this.close();
        }

        @Override // java.io.InputStream
        public int read() {
            u0 u0Var = u0.this;
            if (!u0Var.f452c) {
                if (u0Var.f451b.k0() == 0) {
                    u0 u0Var2 = u0.this;
                    if (u0Var2.f450a.L0(u0Var2.f451b, 8192L) == -1) {
                        return -1;
                    }
                }
                return u0.this.f451b.readByte() & ForkServer.ERROR;
            }
            throw new IOException("closed");
        }

        public String toString() {
            return u0.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] data, int i10, int i11) {
            kotlin.jvm.internal.m.e(data, "data");
            if (!u0.this.f452c) {
                b.b(data.length, i10, i11);
                if (u0.this.f451b.k0() == 0) {
                    u0 u0Var = u0.this;
                    if (u0Var.f450a.L0(u0Var.f451b, 8192L) == -1) {
                        return -1;
                    }
                }
                return u0.this.f451b.read(data, i10, i11);
            }
            throw new IOException("closed");
        }
    }
}
