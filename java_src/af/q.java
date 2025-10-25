package af;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
/* loaded from: classes2.dex */
public final class q implements a1 {

    /* renamed from: a  reason: collision with root package name */
    private final f f434a;

    /* renamed from: b  reason: collision with root package name */
    private final Inflater f435b;

    /* renamed from: c  reason: collision with root package name */
    private int f436c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f437d;

    public q(f source, Inflater inflater) {
        kotlin.jvm.internal.m.e(source, "source");
        kotlin.jvm.internal.m.e(inflater, "inflater");
        this.f434a = source;
        this.f435b = inflater;
    }

    private final void c() {
        int i10 = this.f436c;
        if (i10 == 0) {
            return;
        }
        int remaining = i10 - this.f435b.getRemaining();
        this.f436c -= remaining;
        this.f434a.skip(remaining);
    }

    @Override // af.a1
    public long L0(d sink, long j10) {
        kotlin.jvm.internal.m.e(sink, "sink");
        do {
            long a10 = a(sink, j10);
            if (a10 > 0) {
                return a10;
            }
            if (this.f435b.finished() || this.f435b.needsDictionary()) {
                return -1L;
            }
        } while (!this.f434a.N());
        throw new EOFException("source exhausted prematurely");
    }

    public final long a(d sink, long j10) {
        boolean z10;
        kotlin.jvm.internal.m.e(sink, "sink");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (!this.f437d) {
                if (i10 == 0) {
                    return 0L;
                }
                try {
                    v0 J0 = sink.J0(1);
                    b();
                    int inflate = this.f435b.inflate(J0.f455a, J0.f457c, (int) Math.min(j10, 8192 - J0.f457c));
                    c();
                    if (inflate > 0) {
                        J0.f457c += inflate;
                        long j11 = inflate;
                        sink.d0(sink.k0() + j11);
                        return j11;
                    }
                    if (J0.f456b == J0.f457c) {
                        sink.f371a = J0.b();
                        w0.b(J0);
                    }
                    return 0L;
                } catch (DataFormatException e10) {
                    throw new IOException(e10);
                }
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    public final boolean b() {
        if (!this.f435b.needsInput()) {
            return false;
        }
        if (this.f434a.N()) {
            return true;
        }
        v0 v0Var = this.f434a.d().f371a;
        kotlin.jvm.internal.m.b(v0Var);
        int i10 = v0Var.f457c;
        int i11 = v0Var.f456b;
        int i12 = i10 - i11;
        this.f436c = i12;
        this.f435b.setInput(v0Var.f455a, i11, i12);
        return false;
    }

    @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f437d) {
            return;
        }
        this.f435b.end();
        this.f437d = true;
        this.f434a.close();
    }

    @Override // af.a1
    public b1 n() {
        return this.f434a.n();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public q(a1 source, Inflater inflater) {
        this(m0.b(source), inflater);
        kotlin.jvm.internal.m.e(source, "source");
        kotlin.jvm.internal.m.e(inflater, "inflater");
    }
}
