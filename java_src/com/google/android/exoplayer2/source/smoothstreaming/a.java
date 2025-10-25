package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import b3.x1;
import b3.x3;
import com.google.android.exoplayer2.source.smoothstreaming.b;
import f4.e;
import f4.f;
import f4.g;
import f4.h;
import f4.k;
import f4.n;
import java.io.IOException;
import java.util.List;
import l4.a;
import o3.o;
import o3.p;
import w4.g0;
import w4.y;
import x4.d0;
import x4.f0;
import x4.j;
import x4.m0;
/* loaded from: classes.dex */
public class a implements com.google.android.exoplayer2.source.smoothstreaming.b {

    /* renamed from: a  reason: collision with root package name */
    private final f0 f5754a;

    /* renamed from: b  reason: collision with root package name */
    private final int f5755b;

    /* renamed from: c  reason: collision with root package name */
    private final g[] f5756c;

    /* renamed from: d  reason: collision with root package name */
    private final j f5757d;

    /* renamed from: e  reason: collision with root package name */
    private y f5758e;

    /* renamed from: f  reason: collision with root package name */
    private l4.a f5759f;

    /* renamed from: g  reason: collision with root package name */
    private int f5760g;

    /* renamed from: h  reason: collision with root package name */
    private IOException f5761h;

    /* renamed from: com.google.android.exoplayer2.source.smoothstreaming.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0096a implements b.a {

        /* renamed from: a  reason: collision with root package name */
        private final j.a f5762a;

        public C0096a(j.a aVar) {
            this.f5762a = aVar;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.b.a
        public com.google.android.exoplayer2.source.smoothstreaming.b a(f0 f0Var, l4.a aVar, int i10, y yVar, m0 m0Var) {
            j a10 = this.f5762a.a();
            if (m0Var != null) {
                a10.d(m0Var);
            }
            return new a(f0Var, aVar, i10, yVar, a10);
        }
    }

    /* loaded from: classes.dex */
    private static final class b extends f4.b {

        /* renamed from: e  reason: collision with root package name */
        private final a.b f5763e;

        /* renamed from: f  reason: collision with root package name */
        private final int f5764f;

        public b(a.b bVar, int i10, int i11) {
            super(i11, bVar.f25218k - 1);
            this.f5763e = bVar;
            this.f5764f = i10;
        }

        @Override // f4.o
        public long a() {
            c();
            return this.f5763e.e((int) d());
        }

        @Override // f4.o
        public long b() {
            return a() + this.f5763e.c((int) d());
        }
    }

    public a(f0 f0Var, l4.a aVar, int i10, y yVar, j jVar) {
        p[] pVarArr;
        int i11;
        this.f5754a = f0Var;
        this.f5759f = aVar;
        this.f5755b = i10;
        this.f5758e = yVar;
        this.f5757d = jVar;
        a.b bVar = aVar.f25202f[i10];
        this.f5756c = new g[yVar.length()];
        int i12 = 0;
        while (i12 < this.f5756c.length) {
            int j10 = yVar.j(i12);
            x1 x1Var = bVar.f25217j[j10];
            if (x1Var.f4517o != null) {
                pVarArr = ((a.C0240a) y4.a.e(aVar.f25201e)).f25207c;
            } else {
                pVarArr = null;
            }
            int i13 = bVar.f25208a;
            if (i13 == 2) {
                i11 = 4;
            } else {
                i11 = 0;
            }
            int i14 = i12;
            this.f5756c[i14] = new e(new o3.g(3, null, new o(j10, i13, bVar.f25210c, -9223372036854775807L, aVar.f25203g, x1Var, 0, pVarArr, i11, null, null)), bVar.f25208a, x1Var);
            i12 = i14 + 1;
        }
    }

    private static n k(x1 x1Var, j jVar, Uri uri, int i10, long j10, long j11, long j12, int i11, Object obj, g gVar) {
        return new k(jVar, new x4.n(uri), x1Var, i11, obj, j10, j11, j12, -9223372036854775807L, i10, 1, j10, gVar);
    }

    private long l(long j10) {
        l4.a aVar = this.f5759f;
        if (!aVar.f25200d) {
            return -9223372036854775807L;
        }
        a.b bVar = aVar.f25202f[this.f5755b];
        int i10 = bVar.f25218k - 1;
        return (bVar.e(i10) + bVar.c(i10)) - j10;
    }

    @Override // f4.j
    public void a() {
        IOException iOException = this.f5761h;
        if (iOException == null) {
            this.f5754a.a();
            return;
        }
        throw iOException;
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.b
    public void b(y yVar) {
        this.f5758e = yVar;
    }

    @Override // f4.j
    public boolean d(long j10, f fVar, List list) {
        if (this.f5761h != null) {
            return false;
        }
        return this.f5758e.s(j10, fVar, list);
    }

    @Override // f4.j
    public long e(long j10, x3 x3Var) {
        long j11;
        a.b bVar = this.f5759f.f25202f[this.f5755b];
        int d10 = bVar.d(j10);
        long e10 = bVar.e(d10);
        if (e10 < j10 && d10 < bVar.f25218k - 1) {
            j11 = bVar.e(d10 + 1);
        } else {
            j11 = e10;
        }
        return x3Var.a(j10, e10, j11);
    }

    @Override // f4.j
    public void f(f fVar) {
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.b
    public void g(l4.a aVar) {
        a.b[] bVarArr = this.f5759f.f25202f;
        int i10 = this.f5755b;
        a.b bVar = bVarArr[i10];
        int i11 = bVar.f25218k;
        a.b bVar2 = aVar.f25202f[i10];
        if (i11 != 0 && bVar2.f25218k != 0) {
            int i12 = i11 - 1;
            long e10 = bVar.e(i12) + bVar.c(i12);
            long e11 = bVar2.e(0);
            if (e10 <= e11) {
                this.f5760g += i11;
            } else {
                this.f5760g += bVar.d(e11);
            }
        } else {
            this.f5760g += i11;
        }
        this.f5759f = aVar;
    }

    @Override // f4.j
    public boolean h(f fVar, boolean z10, d0.c cVar, d0 d0Var) {
        d0.b b10 = d0Var.b(g0.c(this.f5758e), cVar);
        if (z10 && b10 != null && b10.f32291a == 2) {
            y yVar = this.f5758e;
            if (yVar.c(yVar.m(fVar.f15781d), b10.f32292b)) {
                return true;
            }
        }
        return false;
    }

    @Override // f4.j
    public int i(long j10, List list) {
        if (this.f5761h == null && this.f5758e.length() >= 2) {
            return this.f5758e.k(j10, list);
        }
        return list.size();
    }

    @Override // f4.j
    public final void j(long j10, long j11, List list, h hVar) {
        int g10;
        long j12 = j11;
        if (this.f5761h != null) {
            return;
        }
        l4.a aVar = this.f5759f;
        a.b bVar = aVar.f25202f[this.f5755b];
        if (bVar.f25218k == 0) {
            hVar.f15788b = !aVar.f25200d;
            return;
        }
        if (list.isEmpty()) {
            g10 = bVar.d(j12);
        } else {
            g10 = (int) (((n) list.get(list.size() - 1)).g() - this.f5760g);
            if (g10 < 0) {
                this.f5761h = new d4.b();
                return;
            }
        }
        if (g10 >= bVar.f25218k) {
            hVar.f15788b = !this.f5759f.f25200d;
            return;
        }
        long j13 = j12 - j10;
        long l10 = l(j10);
        int length = this.f5758e.length();
        f4.o[] oVarArr = new f4.o[length];
        for (int i10 = 0; i10 < length; i10++) {
            oVarArr[i10] = new b(bVar, this.f5758e.j(i10), g10);
        }
        this.f5758e.g(j10, j13, l10, list, oVarArr);
        long e10 = bVar.e(g10);
        long c10 = e10 + bVar.c(g10);
        if (!list.isEmpty()) {
            j12 = -9223372036854775807L;
        }
        long j14 = j12;
        int i11 = g10 + this.f5760g;
        int b10 = this.f5758e.b();
        g gVar = this.f5756c[b10];
        hVar.f15787a = k(this.f5758e.n(), this.f5757d, bVar.a(this.f5758e.j(b10), g10), i11, e10, c10, j14, this.f5758e.o(), this.f5758e.q(), gVar);
    }

    @Override // f4.j
    public void release() {
        for (g gVar : this.f5756c) {
            gVar.release();
        }
    }
}
