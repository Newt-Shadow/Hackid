package com.google.android.exoplayer2.source.dash;

import android.os.SystemClock;
import b3.x1;
import b3.x3;
import c3.t3;
import com.google.android.exoplayer2.source.dash.a;
import com.google.android.exoplayer2.source.dash.e;
import f4.g;
import f4.k;
import f4.m;
import f4.n;
import f4.o;
import f4.p;
import g4.f;
import g4.h;
import h4.i;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import w4.y;
import x4.a0;
import x4.d0;
import x4.f0;
import x4.j;
import x4.m0;
import y4.q0;
/* loaded from: classes.dex */
public class c implements com.google.android.exoplayer2.source.dash.a {

    /* renamed from: a  reason: collision with root package name */
    private final f0 f5650a;

    /* renamed from: b  reason: collision with root package name */
    private final g4.b f5651b;

    /* renamed from: c  reason: collision with root package name */
    private final int[] f5652c;

    /* renamed from: d  reason: collision with root package name */
    private final int f5653d;

    /* renamed from: e  reason: collision with root package name */
    private final j f5654e;

    /* renamed from: f  reason: collision with root package name */
    private final long f5655f;

    /* renamed from: g  reason: collision with root package name */
    private final int f5656g;

    /* renamed from: h  reason: collision with root package name */
    private final e.c f5657h;

    /* renamed from: i  reason: collision with root package name */
    protected final b[] f5658i;

    /* renamed from: j  reason: collision with root package name */
    private y f5659j;

    /* renamed from: k  reason: collision with root package name */
    private h4.c f5660k;

    /* renamed from: l  reason: collision with root package name */
    private int f5661l;

    /* renamed from: m  reason: collision with root package name */
    private IOException f5662m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f5663n;

    /* loaded from: classes.dex */
    public static final class a implements a.InterfaceC0094a {

        /* renamed from: a  reason: collision with root package name */
        private final j.a f5664a;

        /* renamed from: b  reason: collision with root package name */
        private final int f5665b;

        /* renamed from: c  reason: collision with root package name */
        private final g.a f5666c;

        public a(j.a aVar) {
            this(aVar, 1);
        }

        @Override // com.google.android.exoplayer2.source.dash.a.InterfaceC0094a
        public com.google.android.exoplayer2.source.dash.a a(f0 f0Var, h4.c cVar, g4.b bVar, int i10, int[] iArr, y yVar, int i11, long j10, boolean z10, List list, e.c cVar2, m0 m0Var, t3 t3Var) {
            j a10 = this.f5664a.a();
            if (m0Var != null) {
                a10.d(m0Var);
            }
            return new c(this.f5666c, f0Var, cVar, bVar, i10, iArr, yVar, i11, a10, j10, this.f5665b, z10, list, cVar2, t3Var);
        }

        public a(j.a aVar, int i10) {
            this(f4.e.f15760j, aVar, i10);
        }

        public a(g.a aVar, j.a aVar2, int i10) {
            this.f5666c = aVar;
            this.f5664a = aVar2;
            this.f5665b = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        final g f5667a;

        /* renamed from: b  reason: collision with root package name */
        public final h4.j f5668b;

        /* renamed from: c  reason: collision with root package name */
        public final h4.b f5669c;

        /* renamed from: d  reason: collision with root package name */
        public final f f5670d;

        /* renamed from: e  reason: collision with root package name */
        private final long f5671e;

        /* renamed from: f  reason: collision with root package name */
        private final long f5672f;

        b(long j10, h4.j jVar, h4.b bVar, g gVar, long j11, f fVar) {
            this.f5671e = j10;
            this.f5668b = jVar;
            this.f5669c = bVar;
            this.f5672f = j11;
            this.f5667a = gVar;
            this.f5670d = fVar;
        }

        b b(long j10, h4.j jVar) {
            long f10;
            long f11;
            f l10 = this.f5668b.l();
            f l11 = jVar.l();
            if (l10 == null) {
                return new b(j10, jVar, this.f5669c, this.f5667a, this.f5672f, l10);
            }
            if (!l10.g()) {
                return new b(j10, jVar, this.f5669c, this.f5667a, this.f5672f, l11);
            }
            long i10 = l10.i(j10);
            if (i10 == 0) {
                return new b(j10, jVar, this.f5669c, this.f5667a, this.f5672f, l11);
            }
            long h10 = l10.h();
            long a10 = l10.a(h10);
            long j11 = (i10 + h10) - 1;
            long h11 = l11.h();
            long a11 = l11.a(h11);
            long j12 = this.f5672f;
            int i11 = ((l10.a(j11) + l10.b(j11, j10)) > a11 ? 1 : ((l10.a(j11) + l10.b(j11, j10)) == a11 ? 0 : -1));
            if (i11 == 0) {
                f10 = j11 + 1;
            } else if (i11 >= 0) {
                if (a11 < a10) {
                    f11 = j12 - (l11.f(a10, j10) - h10);
                    return new b(j10, jVar, this.f5669c, this.f5667a, f11, l11);
                }
                f10 = l10.f(a11, j10);
            } else {
                throw new d4.b();
            }
            f11 = j12 + (f10 - h11);
            return new b(j10, jVar, this.f5669c, this.f5667a, f11, l11);
        }

        b c(f fVar) {
            return new b(this.f5671e, this.f5668b, this.f5669c, this.f5667a, this.f5672f, fVar);
        }

        b d(h4.b bVar) {
            return new b(this.f5671e, this.f5668b, bVar, this.f5667a, this.f5672f, this.f5670d);
        }

        public long e(long j10) {
            return this.f5670d.c(this.f5671e, j10) + this.f5672f;
        }

        public long f() {
            return this.f5670d.h() + this.f5672f;
        }

        public long g(long j10) {
            return (e(j10) + this.f5670d.j(this.f5671e, j10)) - 1;
        }

        public long h() {
            return this.f5670d.i(this.f5671e);
        }

        public long i(long j10) {
            return k(j10) + this.f5670d.b(j10 - this.f5672f, this.f5671e);
        }

        public long j(long j10) {
            return this.f5670d.f(j10, this.f5671e) + this.f5672f;
        }

        public long k(long j10) {
            return this.f5670d.a(j10 - this.f5672f);
        }

        public i l(long j10) {
            return this.f5670d.e(j10 - this.f5672f);
        }

        public boolean m(long j10, long j11) {
            if (this.f5670d.g() || j11 == -9223372036854775807L || i(j10) <= j11) {
                return true;
            }
            return false;
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.dash.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    protected static final class C0095c extends f4.b {

        /* renamed from: e  reason: collision with root package name */
        private final b f5673e;

        /* renamed from: f  reason: collision with root package name */
        private final long f5674f;

        public C0095c(b bVar, long j10, long j11, long j12) {
            super(j10, j11);
            this.f5673e = bVar;
            this.f5674f = j12;
        }

        @Override // f4.o
        public long a() {
            c();
            return this.f5673e.k(d());
        }

        @Override // f4.o
        public long b() {
            c();
            return this.f5673e.i(d());
        }
    }

    public c(g.a aVar, f0 f0Var, h4.c cVar, g4.b bVar, int i10, int[] iArr, y yVar, int i11, j jVar, long j10, int i12, boolean z10, List list, e.c cVar2, t3 t3Var) {
        this.f5650a = f0Var;
        this.f5660k = cVar;
        this.f5651b = bVar;
        this.f5652c = iArr;
        this.f5659j = yVar;
        this.f5653d = i11;
        this.f5654e = jVar;
        this.f5661l = i10;
        this.f5655f = j10;
        this.f5656g = i12;
        this.f5657h = cVar2;
        long g10 = cVar.g(i10);
        ArrayList n10 = n();
        this.f5658i = new b[yVar.length()];
        int i13 = 0;
        while (i13 < this.f5658i.length) {
            h4.j jVar2 = (h4.j) n10.get(yVar.j(i13));
            h4.b j11 = bVar.j(jVar2.f16811c);
            b[] bVarArr = this.f5658i;
            if (j11 == null) {
                j11 = (h4.b) jVar2.f16811c.get(0);
            }
            int i14 = i13;
            bVarArr[i14] = new b(g10, jVar2, j11, aVar.a(i11, jVar2.f16810b, z10, list, cVar2, t3Var), 0L, jVar2.l());
            i13 = i14 + 1;
        }
    }

    private d0.a k(y yVar, List list) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int length = yVar.length();
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (yVar.d(i11, elapsedRealtime)) {
                i10++;
            }
        }
        int f10 = g4.b.f(list);
        return new d0.a(f10, f10 - this.f5651b.g(list), length, i10);
    }

    private long l(long j10, long j11) {
        if (this.f5660k.f16763d && this.f5658i[0].h() != 0) {
            return Math.max(0L, Math.min(m(j10), this.f5658i[0].i(this.f5658i[0].g(j10))) - j11);
        }
        return -9223372036854775807L;
    }

    private long m(long j10) {
        h4.c cVar = this.f5660k;
        long j11 = cVar.f16760a;
        if (j11 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j10 - q0.A0(j11 + cVar.d(this.f5661l).f16796b);
    }

    private ArrayList n() {
        List list = this.f5660k.d(this.f5661l).f16797c;
        ArrayList arrayList = new ArrayList();
        for (int i10 : this.f5652c) {
            arrayList.addAll(((h4.a) list.get(i10)).f16752c);
        }
        return arrayList;
    }

    private long o(b bVar, n nVar, long j10, long j11, long j12) {
        if (nVar != null) {
            return nVar.g();
        }
        return q0.r(bVar.j(j10), j11, j12);
    }

    private b r(int i10) {
        b bVar = this.f5658i[i10];
        h4.b j10 = this.f5651b.j(bVar.f5668b.f16811c);
        if (j10 != null && !j10.equals(bVar.f5669c)) {
            b d10 = bVar.d(j10);
            this.f5658i[i10] = d10;
            return d10;
        }
        return bVar;
    }

    @Override // f4.j
    public void a() {
        IOException iOException = this.f5662m;
        if (iOException == null) {
            this.f5650a.a();
            return;
        }
        throw iOException;
    }

    @Override // com.google.android.exoplayer2.source.dash.a
    public void b(y yVar) {
        this.f5659j = yVar;
    }

    @Override // com.google.android.exoplayer2.source.dash.a
    public void c(h4.c cVar, int i10) {
        try {
            this.f5660k = cVar;
            this.f5661l = i10;
            long g10 = cVar.g(i10);
            ArrayList n10 = n();
            for (int i11 = 0; i11 < this.f5658i.length; i11++) {
                b[] bVarArr = this.f5658i;
                bVarArr[i11] = bVarArr[i11].b(g10, (h4.j) n10.get(this.f5659j.j(i11)));
            }
        } catch (d4.b e10) {
            this.f5662m = e10;
        }
    }

    @Override // f4.j
    public boolean d(long j10, f4.f fVar, List list) {
        if (this.f5662m != null) {
            return false;
        }
        return this.f5659j.s(j10, fVar, list);
    }

    @Override // f4.j
    public long e(long j10, x3 x3Var) {
        b[] bVarArr;
        long j11;
        for (b bVar : this.f5658i) {
            if (bVar.f5670d != null) {
                long h10 = bVar.h();
                if (h10 != 0) {
                    long j12 = bVar.j(j10);
                    long k10 = bVar.k(j12);
                    if (k10 < j10 && (h10 == -1 || j12 < (bVar.f() + h10) - 1)) {
                        j11 = bVar.k(j12 + 1);
                    } else {
                        j11 = k10;
                    }
                    return x3Var.a(j10, k10, j11);
                }
            }
        }
        return j10;
    }

    @Override // f4.j
    public void f(f4.f fVar) {
        g3.c e10;
        if (fVar instanceof m) {
            int m10 = this.f5659j.m(((m) fVar).f15781d);
            b bVar = this.f5658i[m10];
            if (bVar.f5670d == null && (e10 = bVar.f5667a.e()) != null) {
                this.f5658i[m10] = bVar.c(new h(e10, bVar.f5668b.f16812d));
            }
        }
        e.c cVar = this.f5657h;
        if (cVar != null) {
            cVar.i(fVar);
        }
    }

    @Override // f4.j
    public boolean h(f4.f fVar, boolean z10, d0.c cVar, d0 d0Var) {
        d0.b b10;
        if (!z10) {
            return false;
        }
        e.c cVar2 = this.f5657h;
        if (cVar2 != null && cVar2.j(fVar)) {
            return true;
        }
        if (!this.f5660k.f16763d && (fVar instanceof n)) {
            IOException iOException = cVar.f32295c;
            if ((iOException instanceof a0) && ((a0) iOException).f32270d == 404) {
                b bVar = this.f5658i[this.f5659j.m(fVar.f15781d)];
                long h10 = bVar.h();
                if (h10 != -1 && h10 != 0) {
                    if (((n) fVar).g() > (bVar.f() + h10) - 1) {
                        this.f5663n = true;
                        return true;
                    }
                }
            }
        }
        b bVar2 = this.f5658i[this.f5659j.m(fVar.f15781d)];
        h4.b j10 = this.f5651b.j(bVar2.f5668b.f16811c);
        if (j10 != null && !bVar2.f5669c.equals(j10)) {
            return true;
        }
        d0.a k10 = k(this.f5659j, bVar2.f5668b.f16811c);
        if ((!k10.a(2) && !k10.a(1)) || (b10 = d0Var.b(k10, cVar)) == null || !k10.a(b10.f32291a)) {
            return false;
        }
        int i10 = b10.f32291a;
        if (i10 == 2) {
            y yVar = this.f5659j;
            return yVar.c(yVar.m(fVar.f15781d), b10.f32292b);
        } else if (i10 != 1) {
            return false;
        } else {
            this.f5651b.e(bVar2.f5669c, b10.f32292b);
            return true;
        }
    }

    @Override // f4.j
    public int i(long j10, List list) {
        if (this.f5662m == null && this.f5659j.length() >= 2) {
            return this.f5659j.k(j10, list);
        }
        return list.size();
    }

    @Override // f4.j
    public void j(long j10, long j11, List list, f4.h hVar) {
        n nVar;
        boolean z10;
        i iVar;
        i iVar2;
        int i10;
        int i11;
        o[] oVarArr;
        long j12;
        long j13;
        if (this.f5662m != null) {
            return;
        }
        long j14 = j11 - j10;
        long A0 = q0.A0(this.f5660k.f16760a) + q0.A0(this.f5660k.d(this.f5661l).f16796b) + j11;
        e.c cVar = this.f5657h;
        if (cVar != null && cVar.h(A0)) {
            return;
        }
        long A02 = q0.A0(q0.a0(this.f5655f));
        long m10 = m(A02);
        if (list.isEmpty()) {
            nVar = null;
        } else {
            nVar = (n) list.get(list.size() - 1);
        }
        int length = this.f5659j.length();
        o[] oVarArr2 = new o[length];
        int i12 = 0;
        while (i12 < length) {
            b bVar = this.f5658i[i12];
            if (bVar.f5670d == null) {
                oVarArr2[i12] = o.f15830a;
                i10 = i12;
                i11 = length;
                oVarArr = oVarArr2;
                j12 = j14;
                j13 = A02;
            } else {
                long e10 = bVar.e(A02);
                long g10 = bVar.g(A02);
                i10 = i12;
                i11 = length;
                oVarArr = oVarArr2;
                j12 = j14;
                j13 = A02;
                long o10 = o(bVar, nVar, j11, e10, g10);
                if (o10 < e10) {
                    oVarArr[i10] = o.f15830a;
                } else {
                    oVarArr[i10] = new C0095c(r(i10), o10, g10, m10);
                }
            }
            i12 = i10 + 1;
            A02 = j13;
            oVarArr2 = oVarArr;
            length = i11;
            j14 = j12;
        }
        long j15 = j14;
        long j16 = A02;
        this.f5659j.g(j10, j15, l(j16, j10), list, oVarArr2);
        b r10 = r(this.f5659j.b());
        g gVar = r10.f5667a;
        if (gVar != null) {
            h4.j jVar = r10.f5668b;
            if (gVar.c() == null) {
                iVar = jVar.n();
            } else {
                iVar = null;
            }
            if (r10.f5670d == null) {
                iVar2 = jVar.m();
            } else {
                iVar2 = null;
            }
            if (iVar != null || iVar2 != null) {
                hVar.f15787a = p(r10, this.f5654e, this.f5659j.n(), this.f5659j.o(), this.f5659j.q(), iVar, iVar2);
                return;
            }
        }
        long j17 = r10.f5671e;
        long j18 = -9223372036854775807L;
        int i13 = (j17 > (-9223372036854775807L) ? 1 : (j17 == (-9223372036854775807L) ? 0 : -1));
        if (i13 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (r10.h() == 0) {
            hVar.f15788b = z10;
            return;
        }
        long e11 = r10.e(j16);
        long g11 = r10.g(j16);
        long o11 = o(r10, nVar, j11, e11, g11);
        if (o11 < e11) {
            this.f5662m = new d4.b();
            return;
        }
        int i14 = (o11 > g11 ? 1 : (o11 == g11 ? 0 : -1));
        if (i14 <= 0 && (!this.f5663n || i14 < 0)) {
            if (z10 && r10.k(o11) >= j17) {
                hVar.f15788b = true;
                return;
            }
            int min = (int) Math.min(this.f5656g, (g11 - o11) + 1);
            if (i13 != 0) {
                while (min > 1 && r10.k((min + o11) - 1) >= j17) {
                    min--;
                }
            }
            int i15 = min;
            if (list.isEmpty()) {
                j18 = j11;
            }
            hVar.f15787a = q(r10, this.f5654e, this.f5653d, this.f5659j.n(), this.f5659j.o(), this.f5659j.q(), o11, i15, j18, m10);
            return;
        }
        hVar.f15788b = z10;
    }

    protected f4.f p(b bVar, j jVar, x1 x1Var, int i10, Object obj, i iVar, i iVar2) {
        i iVar3 = iVar;
        h4.j jVar2 = bVar.f5668b;
        if (iVar3 != null) {
            i a10 = iVar3.a(iVar2, bVar.f5669c.f16756a);
            if (a10 != null) {
                iVar3 = a10;
            }
        } else {
            iVar3 = iVar2;
        }
        return new m(jVar, g4.g.a(jVar2, bVar.f5669c.f16756a, iVar3, 0), x1Var, i10, obj, bVar.f5667a);
    }

    protected f4.f q(b bVar, j jVar, int i10, x1 x1Var, int i11, Object obj, long j10, int i12, long j11, long j12) {
        long j13;
        h4.j jVar2 = bVar.f5668b;
        long k10 = bVar.k(j10);
        i l10 = bVar.l(j10);
        int i13 = 0;
        if (bVar.f5667a == null) {
            long i14 = bVar.i(j10);
            if (!bVar.m(j10, j12)) {
                i13 = 8;
            }
            return new p(jVar, g4.g.a(jVar2, bVar.f5669c.f16756a, l10, i13), x1Var, i11, obj, k10, i14, j10, i10, x1Var);
        }
        int i15 = 1;
        int i16 = 1;
        while (i15 < i12) {
            i a10 = l10.a(bVar.l(i15 + j10), bVar.f5669c.f16756a);
            if (a10 == null) {
                break;
            }
            i16++;
            i15++;
            l10 = a10;
        }
        long j14 = (i16 + j10) - 1;
        long i17 = bVar.i(j14);
        long j15 = bVar.f5671e;
        if (j15 != -9223372036854775807L && j15 <= i17) {
            j13 = j15;
        } else {
            j13 = -9223372036854775807L;
        }
        if (!bVar.m(j14, j12)) {
            i13 = 8;
        }
        return new k(jVar, g4.g.a(jVar2, bVar.f5669c.f16756a, l10, i13), x1Var, i11, obj, k10, i17, j11, j13, j10, i16, -jVar2.f16812d, bVar.f5667a);
    }

    @Override // f4.j
    public void release() {
        for (b bVar : this.f5658i) {
            g gVar = bVar.f5667a;
            if (gVar != null) {
                gVar.release();
            }
        }
    }
}
