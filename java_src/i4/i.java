package i4;

import android.net.Uri;
import b3.x1;
import c3.t3;
import i4.f;
import j4.g;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.math.BigInteger;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import t3.a;
import x4.n;
import y4.e0;
import y4.m0;
import y4.o0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i extends f4.n {
    private static final AtomicInteger M = new AtomicInteger();
    private final boolean A;
    private final boolean B;
    private final t3 C;
    private j D;
    private p E;
    private int F;
    private boolean G;
    private volatile boolean H;
    private boolean I;
    private o6.q J;
    private boolean K;
    private boolean L;

    /* renamed from: k  reason: collision with root package name */
    public final int f17156k;

    /* renamed from: l  reason: collision with root package name */
    public final int f17157l;

    /* renamed from: m  reason: collision with root package name */
    public final Uri f17158m;

    /* renamed from: n  reason: collision with root package name */
    public final boolean f17159n;

    /* renamed from: o  reason: collision with root package name */
    public final int f17160o;

    /* renamed from: p  reason: collision with root package name */
    private final x4.j f17161p;

    /* renamed from: q  reason: collision with root package name */
    private final x4.n f17162q;

    /* renamed from: r  reason: collision with root package name */
    private final j f17163r;

    /* renamed from: s  reason: collision with root package name */
    private final boolean f17164s;

    /* renamed from: t  reason: collision with root package name */
    private final boolean f17165t;

    /* renamed from: u  reason: collision with root package name */
    private final m0 f17166u;

    /* renamed from: v  reason: collision with root package name */
    private final h f17167v;

    /* renamed from: w  reason: collision with root package name */
    private final List f17168w;

    /* renamed from: x  reason: collision with root package name */
    private final f3.m f17169x;

    /* renamed from: y  reason: collision with root package name */
    private final y3.h f17170y;

    /* renamed from: z  reason: collision with root package name */
    private final e0 f17171z;

    private i(h hVar, x4.j jVar, x4.n nVar, x1 x1Var, boolean z10, x4.j jVar2, x4.n nVar2, boolean z11, Uri uri, List list, int i10, Object obj, long j10, long j11, long j12, int i11, boolean z12, int i12, boolean z13, boolean z14, m0 m0Var, f3.m mVar, j jVar3, y3.h hVar2, e0 e0Var, boolean z15, t3 t3Var) {
        super(jVar, nVar, x1Var, i10, obj, j10, j11, j12);
        this.A = z10;
        this.f17160o = i11;
        this.L = z12;
        this.f17157l = i12;
        this.f17162q = nVar2;
        this.f17161p = jVar2;
        this.G = nVar2 != null;
        this.B = z11;
        this.f17158m = uri;
        this.f17164s = z14;
        this.f17166u = m0Var;
        this.f17165t = z13;
        this.f17167v = hVar;
        this.f17168w = list;
        this.f17169x = mVar;
        this.f17163r = jVar3;
        this.f17170y = hVar2;
        this.f17171z = e0Var;
        this.f17159n = z15;
        this.C = t3Var;
        this.J = o6.q.D();
        this.f17156k = M.getAndIncrement();
    }

    private static x4.j i(x4.j jVar, byte[] bArr, byte[] bArr2) {
        if (bArr != null) {
            y4.a.e(bArr2);
            return new a(jVar, bArr, bArr2);
        }
        return jVar;
    }

    public static i j(h hVar, x4.j jVar, x1 x1Var, long j10, j4.g gVar, f.e eVar, Uri uri, List list, int i10, Object obj, boolean z10, s sVar, i iVar, byte[] bArr, byte[] bArr2, boolean z11, t3 t3Var) {
        boolean z12;
        x4.j jVar2;
        x4.n nVar;
        boolean z13;
        y3.h hVar2;
        e0 e0Var;
        j jVar3;
        g.e eVar2 = eVar.f17151a;
        x4.n a10 = new n.b().i(o0.e(gVar.f24419a, eVar2.f24382a)).h(eVar2.f24390i).g(eVar2.f24391j).b(eVar.f17154d ? 8 : 0).a();
        boolean z14 = bArr != null;
        x4.j i11 = i(jVar, bArr, z14 ? l((String) y4.a.e(eVar2.f24389h)) : null);
        g.d dVar = eVar2.f24383b;
        if (dVar != null) {
            boolean z15 = bArr2 != null;
            byte[] l10 = z15 ? l((String) y4.a.e(dVar.f24389h)) : null;
            z12 = z14;
            nVar = new x4.n(o0.e(gVar.f24419a, dVar.f24382a), dVar.f24390i, dVar.f24391j);
            jVar2 = i(jVar, bArr2, l10);
            z13 = z15;
        } else {
            z12 = z14;
            jVar2 = null;
            nVar = null;
            z13 = false;
        }
        long j11 = j10 + eVar2.f24386e;
        long j12 = j11 + eVar2.f24384c;
        int i12 = gVar.f24362j + eVar2.f24385d;
        if (iVar != null) {
            x4.n nVar2 = iVar.f17162q;
            boolean z16 = nVar == nVar2 || (nVar != null && nVar2 != null && nVar.f32371a.equals(nVar2.f32371a) && nVar.f32377g == iVar.f17162q.f32377g);
            boolean z17 = uri.equals(iVar.f17158m) && iVar.I;
            y3.h hVar3 = iVar.f17170y;
            hVar2 = hVar3;
            e0Var = iVar.f17171z;
            jVar3 = (z16 && z17 && !iVar.K && iVar.f17157l == i12) ? iVar.D : null;
        } else {
            hVar2 = new y3.h();
            e0Var = new e0(10);
            jVar3 = null;
        }
        return new i(hVar, i11, a10, x1Var, z12, jVar2, nVar, z13, uri, list, i10, obj, j11, j12, eVar.f17152b, eVar.f17153c, !eVar.f17154d, i12, eVar2.f24392k, z10, sVar.a(i12), eVar2.f24387f, jVar3, hVar2, e0Var, z11, t3Var);
    }

    private void k(x4.j jVar, x4.n nVar, boolean z10, boolean z11) {
        x4.n e10;
        long c10;
        long j10;
        boolean z12 = false;
        if (z10) {
            if (this.F != 0) {
                z12 = true;
            }
            e10 = nVar;
        } else {
            e10 = nVar.e(this.F);
        }
        try {
            g3.e u10 = u(jVar, e10, z11);
            if (z12) {
                u10.m(this.F);
            }
            do {
                try {
                    if (this.H) {
                        break;
                    }
                } catch (EOFException e11) {
                    if ((this.f15781d.f4507e & 16384) != 0) {
                        this.D.a();
                        c10 = u10.c();
                        j10 = nVar.f32377g;
                    } else {
                        throw e11;
                    }
                }
            } while (this.D.b(u10));
            c10 = u10.c();
            j10 = nVar.f32377g;
            this.F = (int) (c10 - j10);
        } finally {
            x4.m.a(jVar);
        }
    }

    private static byte[] l(String str) {
        int i10;
        if (n6.c.e(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        if (byteArray.length > 16) {
            i10 = byteArray.length - 16;
        } else {
            i10 = 0;
        }
        System.arraycopy(byteArray, i10, bArr, (16 - byteArray.length) + i10, byteArray.length - i10);
        return bArr;
    }

    private static boolean p(f.e eVar, j4.g gVar) {
        g.e eVar2 = eVar.f17151a;
        if (eVar2 instanceof g.b) {
            if (!((g.b) eVar2).f24375l && (eVar.f17153c != 0 || !gVar.f24421c)) {
                return false;
            }
            return true;
        }
        return gVar.f24421c;
    }

    private void r() {
        k(this.f15786i, this.f15779b, this.A, true);
    }

    private void s() {
        if (!this.G) {
            return;
        }
        y4.a.e(this.f17161p);
        y4.a.e(this.f17162q);
        k(this.f17161p, this.f17162q, this.B, false);
        this.F = 0;
        this.G = false;
    }

    private long t(g3.l lVar) {
        lVar.l();
        try {
            this.f17171z.P(10);
            lVar.p(this.f17171z.e(), 0, 10);
        } catch (EOFException unused) {
        }
        if (this.f17171z.J() != 4801587) {
            return -9223372036854775807L;
        }
        this.f17171z.U(3);
        int F = this.f17171z.F();
        int i10 = F + 10;
        if (i10 > this.f17171z.b()) {
            byte[] e10 = this.f17171z.e();
            this.f17171z.P(i10);
            System.arraycopy(e10, 0, this.f17171z.e(), 0, 10);
        }
        lVar.p(this.f17171z.e(), 10, F);
        t3.a e11 = this.f17170y.e(this.f17171z.e(), F);
        if (e11 == null) {
            return -9223372036854775807L;
        }
        int e12 = e11.e();
        for (int i11 = 0; i11 < e12; i11++) {
            a.b d10 = e11.d(i11);
            if (d10 instanceof y3.l) {
                y3.l lVar2 = (y3.l) d10;
                if ("com.apple.streaming.transportStreamTimestamp".equals(lVar2.f32853b)) {
                    System.arraycopy(lVar2.f32854c, 0, this.f17171z.e(), 0, 8);
                    this.f17171z.T(0);
                    this.f17171z.S(8);
                    return this.f17171z.z() & 8589934591L;
                }
            }
        }
        return -9223372036854775807L;
    }

    private g3.e u(x4.j jVar, x4.n nVar, boolean z10) {
        j a10;
        long j10;
        long i10 = jVar.i(nVar);
        if (z10) {
            try {
                this.f17166u.h(this.f17164s, this.f15784g);
            } catch (InterruptedException unused) {
                throw new InterruptedIOException();
            }
        }
        g3.e eVar = new g3.e(jVar, nVar.f32377g, i10);
        if (this.D == null) {
            long t10 = t(eVar);
            eVar.l();
            j jVar2 = this.f17163r;
            if (jVar2 != null) {
                a10 = jVar2.f();
            } else {
                a10 = this.f17167v.a(nVar.f32371a, this.f15781d, this.f17168w, this.f17166u, jVar.k(), eVar, this.C);
            }
            this.D = a10;
            if (a10.d()) {
                p pVar = this.E;
                if (t10 != -9223372036854775807L) {
                    j10 = this.f17166u.b(t10);
                } else {
                    j10 = this.f15784g;
                }
                pVar.m0(j10);
            } else {
                this.E.m0(0L);
            }
            this.E.Y();
            this.D.c(this.E);
        }
        this.E.j0(this.f17169x);
        return eVar;
    }

    public static boolean w(i iVar, Uri uri, j4.g gVar, f.e eVar, long j10) {
        if (iVar == null) {
            return false;
        }
        if (uri.equals(iVar.f17158m) && iVar.I) {
            return false;
        }
        long j11 = j10 + eVar.f17151a.f24386e;
        if (p(eVar, gVar) && j11 >= iVar.f15785h) {
            return false;
        }
        return true;
    }

    @Override // x4.e0.e
    public void a() {
        j jVar;
        y4.a.e(this.E);
        if (this.D == null && (jVar = this.f17163r) != null && jVar.e()) {
            this.D = this.f17163r;
            this.G = false;
        }
        s();
        if (!this.H) {
            if (!this.f17165t) {
                r();
            }
            this.I = !this.H;
        }
    }

    @Override // x4.e0.e
    public void c() {
        this.H = true;
    }

    @Override // f4.n
    public boolean h() {
        return this.I;
    }

    public int m(int i10) {
        y4.a.f(!this.f17159n);
        if (i10 >= this.J.size()) {
            return 0;
        }
        return ((Integer) this.J.get(i10)).intValue();
    }

    public void n(p pVar, o6.q qVar) {
        this.E = pVar;
        this.J = qVar;
    }

    public void o() {
        this.K = true;
    }

    public boolean q() {
        return this.L;
    }

    public void v() {
        this.L = true;
    }
}
