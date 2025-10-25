package af;

import java.util.zip.CRC32;
import java.util.zip.Deflater;
/* loaded from: classes2.dex */
public final class o implements y0 {

    /* renamed from: a  reason: collision with root package name */
    private final t0 f421a;

    /* renamed from: b  reason: collision with root package name */
    private final Deflater f422b;

    /* renamed from: c  reason: collision with root package name */
    private final h f423c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f424d;

    /* renamed from: e  reason: collision with root package name */
    private final CRC32 f425e;

    public o(y0 sink) {
        kotlin.jvm.internal.m.e(sink, "sink");
        t0 t0Var = new t0(sink);
        this.f421a = t0Var;
        Deflater deflater = new Deflater(-1, true);
        this.f422b = deflater;
        this.f423c = new h(t0Var, deflater);
        this.f425e = new CRC32();
        d dVar = t0Var.f447b;
        dVar.F(8075);
        dVar.O(8);
        dVar.O(0);
        dVar.K(0);
        dVar.O(0);
        dVar.O(0);
    }

    private final void a(d dVar, long j10) {
        v0 v0Var = dVar.f371a;
        kotlin.jvm.internal.m.b(v0Var);
        while (j10 > 0) {
            int min = (int) Math.min(j10, v0Var.f457c - v0Var.f456b);
            this.f425e.update(v0Var.f455a, v0Var.f456b, min);
            j10 -= min;
            v0Var = v0Var.f460f;
            kotlin.jvm.internal.m.b(v0Var);
        }
    }

    private final void b() {
        this.f421a.a((int) this.f425e.getValue());
        this.f421a.a((int) this.f422b.getBytesRead());
    }

    @Override // af.y0
    public void c0(d source, long j10) {
        boolean z10;
        kotlin.jvm.internal.m.e(source, "source");
        int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i10 == 0) {
                return;
            }
            a(source, j10);
            this.f423c.c0(source, j10);
            return;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
    }

    @Override // af.y0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f424d) {
            return;
        }
        try {
            this.f423c.b();
            b();
            th = null;
        } catch (Throwable th) {
            th = th;
        }
        try {
            this.f422b.end();
        } catch (Throwable th2) {
            if (th == null) {
                th = th2;
            }
        }
        try {
            this.f421a.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f424d = true;
        if (th == null) {
            return;
        }
        throw th;
    }

    @Override // af.y0, java.io.Flushable
    public void flush() {
        this.f423c.flush();
    }

    @Override // af.y0
    public b1 n() {
        return this.f421a.n();
    }
}
