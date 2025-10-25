package q3;

import b3.x1;
import java.util.Collections;
import q3.i0;
import y4.q0;
import y4.w;
/* loaded from: classes.dex */
public final class q implements m {

    /* renamed from: a  reason: collision with root package name */
    private final d0 f28278a;

    /* renamed from: b  reason: collision with root package name */
    private String f28279b;

    /* renamed from: c  reason: collision with root package name */
    private g3.b0 f28280c;

    /* renamed from: d  reason: collision with root package name */
    private a f28281d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f28282e;

    /* renamed from: l  reason: collision with root package name */
    private long f28289l;

    /* renamed from: f  reason: collision with root package name */
    private final boolean[] f28283f = new boolean[3];

    /* renamed from: g  reason: collision with root package name */
    private final u f28284g = new u(32, 128);

    /* renamed from: h  reason: collision with root package name */
    private final u f28285h = new u(33, 128);

    /* renamed from: i  reason: collision with root package name */
    private final u f28286i = new u(34, 128);

    /* renamed from: j  reason: collision with root package name */
    private final u f28287j = new u(39, 128);

    /* renamed from: k  reason: collision with root package name */
    private final u f28288k = new u(40, 128);

    /* renamed from: m  reason: collision with root package name */
    private long f28290m = -9223372036854775807L;

    /* renamed from: n  reason: collision with root package name */
    private final y4.e0 f28291n = new y4.e0();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final g3.b0 f28292a;

        /* renamed from: b  reason: collision with root package name */
        private long f28293b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f28294c;

        /* renamed from: d  reason: collision with root package name */
        private int f28295d;

        /* renamed from: e  reason: collision with root package name */
        private long f28296e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f28297f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f28298g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f28299h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f28300i;

        /* renamed from: j  reason: collision with root package name */
        private boolean f28301j;

        /* renamed from: k  reason: collision with root package name */
        private long f28302k;

        /* renamed from: l  reason: collision with root package name */
        private long f28303l;

        /* renamed from: m  reason: collision with root package name */
        private boolean f28304m;

        public a(g3.b0 b0Var) {
            this.f28292a = b0Var;
        }

        private static boolean b(int i10) {
            return (32 <= i10 && i10 <= 35) || i10 == 39;
        }

        private static boolean c(int i10) {
            return i10 < 32 || i10 == 40;
        }

        private void d(int i10) {
            long j10 = this.f28303l;
            if (j10 == -9223372036854775807L) {
                return;
            }
            boolean z10 = this.f28304m;
            this.f28292a.f(j10, z10 ? 1 : 0, (int) (this.f28293b - this.f28302k), i10, null);
        }

        public void a(long j10, int i10, boolean z10) {
            if (this.f28301j && this.f28298g) {
                this.f28304m = this.f28294c;
                this.f28301j = false;
            } else if (this.f28299h || this.f28298g) {
                if (z10 && this.f28300i) {
                    d(i10 + ((int) (j10 - this.f28293b)));
                }
                this.f28302k = this.f28293b;
                this.f28303l = this.f28296e;
                this.f28304m = this.f28294c;
                this.f28300i = true;
            }
        }

        public void e(byte[] bArr, int i10, int i11) {
            boolean z10;
            if (this.f28297f) {
                int i12 = this.f28295d;
                int i13 = (i10 + 2) - i12;
                if (i13 < i11) {
                    if ((bArr[i13] & 128) != 0) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f28298g = z10;
                    this.f28297f = false;
                    return;
                }
                this.f28295d = i12 + (i11 - i10);
            }
        }

        public void f() {
            this.f28297f = false;
            this.f28298g = false;
            this.f28299h = false;
            this.f28300i = false;
            this.f28301j = false;
        }

        public void g(long j10, int i10, int i11, long j11, boolean z10) {
            boolean z11;
            boolean z12 = false;
            this.f28298g = false;
            this.f28299h = false;
            this.f28296e = j11;
            this.f28295d = 0;
            this.f28293b = j10;
            if (!c(i11)) {
                if (this.f28300i && !this.f28301j) {
                    if (z10) {
                        d(i10);
                    }
                    this.f28300i = false;
                }
                if (b(i11)) {
                    this.f28299h = !this.f28301j;
                    this.f28301j = true;
                }
            }
            if (i11 >= 16 && i11 <= 21) {
                z11 = true;
            } else {
                z11 = false;
            }
            this.f28294c = z11;
            if (z11 || i11 <= 9) {
                z12 = true;
            }
            this.f28297f = z12;
        }
    }

    public q(d0 d0Var) {
        this.f28278a = d0Var;
    }

    private void a() {
        y4.a.h(this.f28280c);
        q0.j(this.f28281d);
    }

    private void g(long j10, int i10, int i11, long j11) {
        this.f28281d.a(j10, i10, this.f28282e);
        if (!this.f28282e) {
            this.f28284g.b(i11);
            this.f28285h.b(i11);
            this.f28286i.b(i11);
            if (this.f28284g.c() && this.f28285h.c() && this.f28286i.c()) {
                this.f28280c.c(i(this.f28279b, this.f28284g, this.f28285h, this.f28286i));
                this.f28282e = true;
            }
        }
        if (this.f28287j.b(i11)) {
            u uVar = this.f28287j;
            this.f28291n.R(this.f28287j.f28347d, y4.w.q(uVar.f28347d, uVar.f28348e));
            this.f28291n.U(5);
            this.f28278a.a(j11, this.f28291n);
        }
        if (this.f28288k.b(i11)) {
            u uVar2 = this.f28288k;
            this.f28291n.R(this.f28288k.f28347d, y4.w.q(uVar2.f28347d, uVar2.f28348e));
            this.f28291n.U(5);
            this.f28278a.a(j11, this.f28291n);
        }
    }

    private void h(byte[] bArr, int i10, int i11) {
        this.f28281d.e(bArr, i10, i11);
        if (!this.f28282e) {
            this.f28284g.a(bArr, i10, i11);
            this.f28285h.a(bArr, i10, i11);
            this.f28286i.a(bArr, i10, i11);
        }
        this.f28287j.a(bArr, i10, i11);
        this.f28288k.a(bArr, i10, i11);
    }

    private static x1 i(String str, u uVar, u uVar2, u uVar3) {
        int i10 = uVar.f28348e;
        byte[] bArr = new byte[uVar2.f28348e + i10 + uVar3.f28348e];
        System.arraycopy(uVar.f28347d, 0, bArr, 0, i10);
        System.arraycopy(uVar2.f28347d, 0, bArr, uVar.f28348e, uVar2.f28348e);
        System.arraycopy(uVar3.f28347d, 0, bArr, uVar.f28348e + uVar2.f28348e, uVar3.f28348e);
        w.a h10 = y4.w.h(uVar2.f28347d, 3, uVar2.f28348e);
        return new x1.b().U(str).g0("video/hevc").K(y4.e.c(h10.f32976a, h10.f32977b, h10.f32978c, h10.f32979d, h10.f32980e, h10.f32981f)).n0(h10.f32983h).S(h10.f32984i).c0(h10.f32985j).V(Collections.singletonList(bArr)).G();
    }

    private void j(long j10, int i10, int i11, long j11) {
        this.f28281d.g(j10, i10, i11, j11, this.f28282e);
        if (!this.f28282e) {
            this.f28284g.e(i11);
            this.f28285h.e(i11);
            this.f28286i.e(i11);
        }
        this.f28287j.e(i11);
        this.f28288k.e(i11);
    }

    @Override // q3.m
    public void b(y4.e0 e0Var) {
        int i10;
        a();
        while (e0Var.a() > 0) {
            int f10 = e0Var.f();
            int g10 = e0Var.g();
            byte[] e10 = e0Var.e();
            this.f28289l += e0Var.a();
            this.f28280c.b(e0Var, e0Var.a());
            while (f10 < g10) {
                int c10 = y4.w.c(e10, f10, g10, this.f28283f);
                if (c10 == g10) {
                    h(e10, f10, g10);
                    return;
                }
                int e11 = y4.w.e(e10, c10);
                int i11 = c10 - f10;
                if (i11 > 0) {
                    h(e10, f10, c10);
                }
                int i12 = g10 - c10;
                long j10 = this.f28289l - i12;
                if (i11 < 0) {
                    i10 = -i11;
                } else {
                    i10 = 0;
                }
                g(j10, i12, i10, this.f28290m);
                j(j10, i12, e11, this.f28290m);
                f10 = c10 + 3;
            }
        }
    }

    @Override // q3.m
    public void c() {
        this.f28289l = 0L;
        this.f28290m = -9223372036854775807L;
        y4.w.a(this.f28283f);
        this.f28284g.d();
        this.f28285h.d();
        this.f28286i.d();
        this.f28287j.d();
        this.f28288k.d();
        a aVar = this.f28281d;
        if (aVar != null) {
            aVar.f();
        }
    }

    @Override // q3.m
    public void d() {
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f28290m = j10;
        }
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        dVar.a();
        this.f28279b = dVar.b();
        g3.b0 a10 = mVar.a(dVar.c(), 2);
        this.f28280c = a10;
        this.f28281d = new a(a10);
        this.f28278a.b(mVar, dVar);
    }
}
