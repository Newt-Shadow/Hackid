package se;

import java.io.IOException;
import kotlin.jvm.internal.m;
import ne.c0;
import ne.q;
import ne.t;
import ne.w;
import se.j;
import ve.n;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private final g f29621a;

    /* renamed from: b  reason: collision with root package name */
    private final ne.a f29622b;

    /* renamed from: c  reason: collision with root package name */
    private final e f29623c;

    /* renamed from: d  reason: collision with root package name */
    private final q f29624d;

    /* renamed from: e  reason: collision with root package name */
    private j.b f29625e;

    /* renamed from: f  reason: collision with root package name */
    private j f29626f;

    /* renamed from: g  reason: collision with root package name */
    private int f29627g;

    /* renamed from: h  reason: collision with root package name */
    private int f29628h;

    /* renamed from: i  reason: collision with root package name */
    private int f29629i;

    /* renamed from: j  reason: collision with root package name */
    private c0 f29630j;

    public d(g connectionPool, ne.a address, e call, q eventListener) {
        m.e(connectionPool, "connectionPool");
        m.e(address, "address");
        m.e(call, "call");
        m.e(eventListener, "eventListener");
        this.f29621a = connectionPool;
        this.f29622b = address;
        this.f29623c = call;
        this.f29624d = eventListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0151  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final se.f b(int r15, int r16, int r17, int r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: se.d.b(int, int, int, int, boolean):se.f");
    }

    private final f c(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
        boolean b10;
        while (true) {
            f b11 = b(i10, i11, i12, i13, z10);
            if (b11.u(z11)) {
                return b11;
            }
            b11.y();
            if (this.f29630j == null) {
                j.b bVar = this.f29625e;
                boolean z12 = true;
                if (bVar == null) {
                    b10 = true;
                } else {
                    b10 = bVar.b();
                }
                if (b10) {
                    continue;
                } else {
                    j jVar = this.f29626f;
                    if (jVar != null) {
                        z12 = jVar.a();
                    }
                    if (!z12) {
                        throw new IOException("exhausted all routes");
                    }
                }
            }
        }
    }

    private final c0 f() {
        f l10;
        if (this.f29627g > 1 || this.f29628h > 1 || this.f29629i > 0 || (l10 = this.f29623c.l()) == null) {
            return null;
        }
        synchronized (l10) {
            if (l10.q() != 0) {
                return null;
            }
            if (!oe.d.j(l10.z().a().l(), d().l())) {
                return null;
            }
            return l10.z();
        }
    }

    public final te.d a(w client, te.g chain) {
        boolean z10;
        m.e(client, "client");
        m.e(chain, "chain");
        try {
            int f10 = chain.f();
            int h10 = chain.h();
            int j10 = chain.j();
            int x10 = client.x();
            boolean D = client.D();
            if (!m.a(chain.i().g(), "GET")) {
                z10 = true;
            } else {
                z10 = false;
            }
            return c(f10, h10, j10, x10, D, z10).w(client, chain);
        } catch (IOException e10) {
            h(e10);
            throw new i(e10);
        } catch (i e11) {
            h(e11.c());
            throw e11;
        }
    }

    public final ne.a d() {
        return this.f29622b;
    }

    public final boolean e() {
        j jVar;
        boolean z10 = false;
        if (this.f29627g == 0 && this.f29628h == 0 && this.f29629i == 0) {
            return false;
        }
        if (this.f29630j != null) {
            return true;
        }
        c0 f10 = f();
        if (f10 != null) {
            this.f29630j = f10;
            return true;
        }
        j.b bVar = this.f29625e;
        if (bVar != null && bVar.b()) {
            z10 = true;
        }
        if (z10 || (jVar = this.f29626f) == null) {
            return true;
        }
        return jVar.a();
    }

    public final boolean g(t url) {
        m.e(url, "url");
        t l10 = this.f29622b.l();
        if (url.l() == l10.l() && m.a(url.h(), l10.h())) {
            return true;
        }
        return false;
    }

    public final void h(IOException e10) {
        m.e(e10, "e");
        this.f29630j = null;
        if ((e10 instanceof n) && ((n) e10).f31640a == ve.b.REFUSED_STREAM) {
            this.f29627g++;
        } else if (e10 instanceof ve.a) {
            this.f29628h++;
        } else {
            this.f29629i++;
        }
    }
}
