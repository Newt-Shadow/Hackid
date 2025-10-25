package q3;

import android.util.SparseArray;
import b3.x1;
import java.util.ArrayList;
import java.util.Arrays;
import q3.i0;
import y4.q0;
import y4.w;
/* loaded from: classes.dex */
public final class p implements m {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f28229a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f28230b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f28231c;

    /* renamed from: g  reason: collision with root package name */
    private long f28235g;

    /* renamed from: i  reason: collision with root package name */
    private String f28237i;

    /* renamed from: j  reason: collision with root package name */
    private g3.b0 f28238j;

    /* renamed from: k  reason: collision with root package name */
    private b f28239k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f28240l;

    /* renamed from: n  reason: collision with root package name */
    private boolean f28242n;

    /* renamed from: h  reason: collision with root package name */
    private final boolean[] f28236h = new boolean[3];

    /* renamed from: d  reason: collision with root package name */
    private final u f28232d = new u(7, 128);

    /* renamed from: e  reason: collision with root package name */
    private final u f28233e = new u(8, 128);

    /* renamed from: f  reason: collision with root package name */
    private final u f28234f = new u(6, 128);

    /* renamed from: m  reason: collision with root package name */
    private long f28241m = -9223372036854775807L;

    /* renamed from: o  reason: collision with root package name */
    private final y4.e0 f28243o = new y4.e0();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final g3.b0 f28244a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f28245b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f28246c;

        /* renamed from: f  reason: collision with root package name */
        private final y4.f0 f28249f;

        /* renamed from: g  reason: collision with root package name */
        private byte[] f28250g;

        /* renamed from: h  reason: collision with root package name */
        private int f28251h;

        /* renamed from: i  reason: collision with root package name */
        private int f28252i;

        /* renamed from: j  reason: collision with root package name */
        private long f28253j;

        /* renamed from: k  reason: collision with root package name */
        private boolean f28254k;

        /* renamed from: l  reason: collision with root package name */
        private long f28255l;

        /* renamed from: o  reason: collision with root package name */
        private boolean f28258o;

        /* renamed from: p  reason: collision with root package name */
        private long f28259p;

        /* renamed from: q  reason: collision with root package name */
        private long f28260q;

        /* renamed from: r  reason: collision with root package name */
        private boolean f28261r;

        /* renamed from: d  reason: collision with root package name */
        private final SparseArray f28247d = new SparseArray();

        /* renamed from: e  reason: collision with root package name */
        private final SparseArray f28248e = new SparseArray();

        /* renamed from: m  reason: collision with root package name */
        private a f28256m = new a();

        /* renamed from: n  reason: collision with root package name */
        private a f28257n = new a();

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private boolean f28262a;

            /* renamed from: b  reason: collision with root package name */
            private boolean f28263b;

            /* renamed from: c  reason: collision with root package name */
            private w.c f28264c;

            /* renamed from: d  reason: collision with root package name */
            private int f28265d;

            /* renamed from: e  reason: collision with root package name */
            private int f28266e;

            /* renamed from: f  reason: collision with root package name */
            private int f28267f;

            /* renamed from: g  reason: collision with root package name */
            private int f28268g;

            /* renamed from: h  reason: collision with root package name */
            private boolean f28269h;

            /* renamed from: i  reason: collision with root package name */
            private boolean f28270i;

            /* renamed from: j  reason: collision with root package name */
            private boolean f28271j;

            /* renamed from: k  reason: collision with root package name */
            private boolean f28272k;

            /* renamed from: l  reason: collision with root package name */
            private int f28273l;

            /* renamed from: m  reason: collision with root package name */
            private int f28274m;

            /* renamed from: n  reason: collision with root package name */
            private int f28275n;

            /* renamed from: o  reason: collision with root package name */
            private int f28276o;

            /* renamed from: p  reason: collision with root package name */
            private int f28277p;

            private a() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean c(a aVar) {
                int i10;
                int i11;
                int i12;
                boolean z10;
                if (!this.f28262a) {
                    return false;
                }
                if (!aVar.f28262a) {
                    return true;
                }
                w.c cVar = (w.c) y4.a.h(this.f28264c);
                w.c cVar2 = (w.c) y4.a.h(aVar.f28264c);
                if (this.f28267f == aVar.f28267f && this.f28268g == aVar.f28268g && this.f28269h == aVar.f28269h && ((!this.f28270i || !aVar.f28270i || this.f28271j == aVar.f28271j) && (((i10 = this.f28265d) == (i11 = aVar.f28265d) || (i10 != 0 && i11 != 0)) && (((i12 = cVar.f33003l) != 0 || cVar2.f33003l != 0 || (this.f28274m == aVar.f28274m && this.f28275n == aVar.f28275n)) && ((i12 != 1 || cVar2.f33003l != 1 || (this.f28276o == aVar.f28276o && this.f28277p == aVar.f28277p)) && (z10 = this.f28272k) == aVar.f28272k && (!z10 || this.f28273l == aVar.f28273l)))))) {
                    return false;
                }
                return true;
            }

            public void b() {
                this.f28263b = false;
                this.f28262a = false;
            }

            public boolean d() {
                int i10;
                if (this.f28263b && ((i10 = this.f28266e) == 7 || i10 == 2)) {
                    return true;
                }
                return false;
            }

            public void e(w.c cVar, int i10, int i11, int i12, int i13, boolean z10, boolean z11, boolean z12, boolean z13, int i14, int i15, int i16, int i17, int i18) {
                this.f28264c = cVar;
                this.f28265d = i10;
                this.f28266e = i11;
                this.f28267f = i12;
                this.f28268g = i13;
                this.f28269h = z10;
                this.f28270i = z11;
                this.f28271j = z12;
                this.f28272k = z13;
                this.f28273l = i14;
                this.f28274m = i15;
                this.f28275n = i16;
                this.f28276o = i17;
                this.f28277p = i18;
                this.f28262a = true;
                this.f28263b = true;
            }

            public void f(int i10) {
                this.f28266e = i10;
                this.f28263b = true;
            }
        }

        public b(g3.b0 b0Var, boolean z10, boolean z11) {
            this.f28244a = b0Var;
            this.f28245b = z10;
            this.f28246c = z11;
            byte[] bArr = new byte[128];
            this.f28250g = bArr;
            this.f28249f = new y4.f0(bArr, 0, 0);
            g();
        }

        private void d(int i10) {
            long j10 = this.f28260q;
            if (j10 == -9223372036854775807L) {
                return;
            }
            boolean z10 = this.f28261r;
            this.f28244a.f(j10, z10 ? 1 : 0, (int) (this.f28253j - this.f28259p), i10, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0102  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x0152  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a(byte[] r24, int r25, int r26) {
            /*
                Method dump skipped, instructions count: 414
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: q3.p.b.a(byte[], int, int):void");
        }

        public boolean b(long j10, int i10, boolean z10, boolean z11) {
            boolean z12 = false;
            if (this.f28252i == 9 || (this.f28246c && this.f28257n.c(this.f28256m))) {
                if (z10 && this.f28258o) {
                    d(i10 + ((int) (j10 - this.f28253j)));
                }
                this.f28259p = this.f28253j;
                this.f28260q = this.f28255l;
                this.f28261r = false;
                this.f28258o = true;
            }
            if (this.f28245b) {
                z11 = this.f28257n.d();
            }
            boolean z13 = this.f28261r;
            int i11 = this.f28252i;
            if (i11 == 5 || (z11 && i11 == 1)) {
                z12 = true;
            }
            boolean z14 = z13 | z12;
            this.f28261r = z14;
            return z14;
        }

        public boolean c() {
            return this.f28246c;
        }

        public void e(w.b bVar) {
            this.f28248e.append(bVar.f32989a, bVar);
        }

        public void f(w.c cVar) {
            this.f28247d.append(cVar.f32995d, cVar);
        }

        public void g() {
            this.f28254k = false;
            this.f28258o = false;
            this.f28257n.b();
        }

        public void h(long j10, int i10, long j11) {
            this.f28252i = i10;
            this.f28255l = j11;
            this.f28253j = j10;
            if (!this.f28245b || i10 != 1) {
                if (this.f28246c) {
                    if (i10 != 5 && i10 != 1 && i10 != 2) {
                        return;
                    }
                } else {
                    return;
                }
            }
            a aVar = this.f28256m;
            this.f28256m = this.f28257n;
            this.f28257n = aVar;
            aVar.b();
            this.f28251h = 0;
            this.f28254k = true;
        }
    }

    public p(d0 d0Var, boolean z10, boolean z11) {
        this.f28229a = d0Var;
        this.f28230b = z10;
        this.f28231c = z11;
    }

    private void a() {
        y4.a.h(this.f28238j);
        q0.j(this.f28239k);
    }

    private void g(long j10, int i10, int i11, long j11) {
        if (!this.f28240l || this.f28239k.c()) {
            this.f28232d.b(i11);
            this.f28233e.b(i11);
            if (!this.f28240l) {
                if (this.f28232d.c() && this.f28233e.c()) {
                    ArrayList arrayList = new ArrayList();
                    u uVar = this.f28232d;
                    arrayList.add(Arrays.copyOf(uVar.f28347d, uVar.f28348e));
                    u uVar2 = this.f28233e;
                    arrayList.add(Arrays.copyOf(uVar2.f28347d, uVar2.f28348e));
                    u uVar3 = this.f28232d;
                    w.c l10 = y4.w.l(uVar3.f28347d, 3, uVar3.f28348e);
                    u uVar4 = this.f28233e;
                    w.b j12 = y4.w.j(uVar4.f28347d, 3, uVar4.f28348e);
                    this.f28238j.c(new x1.b().U(this.f28237i).g0("video/avc").K(y4.e.a(l10.f32992a, l10.f32993b, l10.f32994c)).n0(l10.f32997f).S(l10.f32998g).c0(l10.f32999h).V(arrayList).G());
                    this.f28240l = true;
                    this.f28239k.f(l10);
                    this.f28239k.e(j12);
                    this.f28232d.d();
                    this.f28233e.d();
                }
            } else if (this.f28232d.c()) {
                u uVar5 = this.f28232d;
                this.f28239k.f(y4.w.l(uVar5.f28347d, 3, uVar5.f28348e));
                this.f28232d.d();
            } else if (this.f28233e.c()) {
                u uVar6 = this.f28233e;
                this.f28239k.e(y4.w.j(uVar6.f28347d, 3, uVar6.f28348e));
                this.f28233e.d();
            }
        }
        if (this.f28234f.b(i11)) {
            u uVar7 = this.f28234f;
            this.f28243o.R(this.f28234f.f28347d, y4.w.q(uVar7.f28347d, uVar7.f28348e));
            this.f28243o.T(4);
            this.f28229a.a(j11, this.f28243o);
        }
        if (this.f28239k.b(j10, i10, this.f28240l, this.f28242n)) {
            this.f28242n = false;
        }
    }

    private void h(byte[] bArr, int i10, int i11) {
        if (!this.f28240l || this.f28239k.c()) {
            this.f28232d.a(bArr, i10, i11);
            this.f28233e.a(bArr, i10, i11);
        }
        this.f28234f.a(bArr, i10, i11);
        this.f28239k.a(bArr, i10, i11);
    }

    private void i(long j10, int i10, long j11) {
        if (!this.f28240l || this.f28239k.c()) {
            this.f28232d.e(i10);
            this.f28233e.e(i10);
        }
        this.f28234f.e(i10);
        this.f28239k.h(j10, i10, j11);
    }

    @Override // q3.m
    public void b(y4.e0 e0Var) {
        int i10;
        a();
        int f10 = e0Var.f();
        int g10 = e0Var.g();
        byte[] e10 = e0Var.e();
        this.f28235g += e0Var.a();
        this.f28238j.b(e0Var, e0Var.a());
        while (true) {
            int c10 = y4.w.c(e10, f10, g10, this.f28236h);
            if (c10 == g10) {
                h(e10, f10, g10);
                return;
            }
            int f11 = y4.w.f(e10, c10);
            int i11 = c10 - f10;
            if (i11 > 0) {
                h(e10, f10, c10);
            }
            int i12 = g10 - c10;
            long j10 = this.f28235g - i12;
            if (i11 < 0) {
                i10 = -i11;
            } else {
                i10 = 0;
            }
            g(j10, i12, i10, this.f28241m);
            i(j10, f11, this.f28241m);
            f10 = c10 + 3;
        }
    }

    @Override // q3.m
    public void c() {
        this.f28235g = 0L;
        this.f28242n = false;
        this.f28241m = -9223372036854775807L;
        y4.w.a(this.f28236h);
        this.f28232d.d();
        this.f28233e.d();
        this.f28234f.d();
        b bVar = this.f28239k;
        if (bVar != null) {
            bVar.g();
        }
    }

    @Override // q3.m
    public void d() {
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        boolean z10;
        if (j10 != -9223372036854775807L) {
            this.f28241m = j10;
        }
        boolean z11 = this.f28242n;
        if ((i10 & 2) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f28242n = z11 | z10;
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        dVar.a();
        this.f28237i = dVar.b();
        g3.b0 a10 = mVar.a(dVar.c(), 2);
        this.f28238j = a10;
        this.f28239k = new b(a10, this.f28230b, this.f28231c);
        this.f28229a.b(mVar, dVar);
    }
}
