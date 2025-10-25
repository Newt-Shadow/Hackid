package af;

import java.io.EOFException;
import java.io.IOException;
import java.util.Arrays;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
/* loaded from: classes2.dex */
public final class p implements a1 {

    /* renamed from: a  reason: collision with root package name */
    private byte f426a;

    /* renamed from: b  reason: collision with root package name */
    private final u0 f427b;

    /* renamed from: c  reason: collision with root package name */
    private final Inflater f428c;

    /* renamed from: d  reason: collision with root package name */
    private final q f429d;

    /* renamed from: e  reason: collision with root package name */
    private final CRC32 f430e;

    public p(a1 source) {
        kotlin.jvm.internal.m.e(source, "source");
        u0 u0Var = new u0(source);
        this.f427b = u0Var;
        Inflater inflater = new Inflater(true);
        this.f428c = inflater;
        this.f429d = new q((f) u0Var, inflater);
        this.f430e = new CRC32();
    }

    private final void a(String str, int i10, int i11) {
        if (i11 == i10) {
            return;
        }
        String format = String.format("%s: actual 0x%08x != expected 0x%08x", Arrays.copyOf(new Object[]{str, Integer.valueOf(i11), Integer.valueOf(i10)}, 3));
        kotlin.jvm.internal.m.d(format, "format(this, *args)");
        throw new IOException(format);
    }

    private final void b() {
        boolean z10;
        boolean z11;
        boolean z12;
        this.f427b.O0(10L);
        byte k10 = this.f427b.f451b.k(3L);
        boolean z13 = true;
        if (((k10 >> 1) & 1) == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            e(this.f427b.f451b, 0L, 10L);
        }
        a("ID1ID2", 8075, this.f427b.readShort());
        this.f427b.skip(8L);
        if (((k10 >> 2) & 1) == 1) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            this.f427b.O0(2L);
            if (z10) {
                e(this.f427b.f451b, 0L, 2L);
            }
            long F0 = this.f427b.f451b.F0() & 65535;
            this.f427b.O0(F0);
            if (z10) {
                e(this.f427b.f451b, 0L, F0);
            }
            this.f427b.skip(F0);
        }
        if (((k10 >> 3) & 1) == 1) {
            z12 = true;
        } else {
            z12 = false;
        }
        if (z12) {
            long a10 = this.f427b.a((byte) 0);
            if (a10 != -1) {
                if (z10) {
                    e(this.f427b.f451b, 0L, a10 + 1);
                }
                this.f427b.skip(a10 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (((k10 >> 4) & 1) != 1) {
            z13 = false;
        }
        if (z13) {
            long a11 = this.f427b.a((byte) 0);
            if (a11 != -1) {
                if (z10) {
                    e(this.f427b.f451b, 0L, a11 + 1);
                }
                this.f427b.skip(a11 + 1);
            } else {
                throw new EOFException();
            }
        }
        if (z10) {
            a("FHCRC", this.f427b.F0(), (short) this.f430e.getValue());
            this.f430e.reset();
        }
    }

    private final void c() {
        a("CRC", this.f427b.w0(), (int) this.f430e.getValue());
        a("ISIZE", this.f427b.w0(), (int) this.f428c.getBytesWritten());
    }

    private final void e(d dVar, long j10, long j11) {
        int i10;
        v0 v0Var = dVar.f371a;
        kotlin.jvm.internal.m.b(v0Var);
        while (true) {
            int i11 = v0Var.f457c;
            int i12 = v0Var.f456b;
            if (j10 < i11 - i12) {
                break;
            }
            j10 -= i11 - i12;
            v0Var = v0Var.f460f;
            kotlin.jvm.internal.m.b(v0Var);
        }
        while (j11 > 0) {
            int min = (int) Math.min(v0Var.f457c - i10, j11);
            this.f430e.update(v0Var.f455a, (int) (v0Var.f456b + j10), min);
            j11 -= min;
            v0Var = v0Var.f460f;
            kotlin.jvm.internal.m.b(v0Var);
            j10 = 0;
        }
    }

    @Override // af.a1
    public long L0(d sink, long j10) {
        boolean z10;
        kotlin.jvm.internal.m.e(sink, "sink");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i10 == 0) {
                return 0L;
            }
            if (this.f426a == 0) {
                b();
                this.f426a = (byte) 1;
            }
            if (this.f426a == 1) {
                long k02 = sink.k0();
                long L0 = this.f429d.L0(sink, j10);
                if (L0 != -1) {
                    e(sink, k02, L0);
                    return L0;
                }
                this.f426a = (byte) 2;
            }
            if (this.f426a == 2) {
                c();
                this.f426a = (byte) 3;
                if (!this.f427b.N()) {
                    throw new IOException("gzip finished without exhausting source");
                }
            }
            return -1L;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f429d.close();
    }

    @Override // af.a1
    public b1 n() {
        return this.f427b.n();
    }
}
