package i3;

import b3.e3;
import b3.x1;
import g3.b0;
import g3.i;
import g3.k;
import g3.l;
import g3.m;
import g3.y;
import g3.z;
import java.util.ArrayList;
import o6.r0;
import y4.e0;
import y4.r;
import y4.v;
/* loaded from: classes.dex */
public final class b implements k {

    /* renamed from: c  reason: collision with root package name */
    private int f17067c;

    /* renamed from: e  reason: collision with root package name */
    private i3.c f17069e;

    /* renamed from: h  reason: collision with root package name */
    private long f17072h;

    /* renamed from: i  reason: collision with root package name */
    private e f17073i;

    /* renamed from: m  reason: collision with root package name */
    private int f17077m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f17078n;

    /* renamed from: a  reason: collision with root package name */
    private final e0 f17065a = new e0(12);

    /* renamed from: b  reason: collision with root package name */
    private final c f17066b = new c();

    /* renamed from: d  reason: collision with root package name */
    private m f17068d = new i();

    /* renamed from: g  reason: collision with root package name */
    private e[] f17071g = new e[0];

    /* renamed from: k  reason: collision with root package name */
    private long f17075k = -1;

    /* renamed from: l  reason: collision with root package name */
    private long f17076l = -1;

    /* renamed from: j  reason: collision with root package name */
    private int f17074j = -1;

    /* renamed from: f  reason: collision with root package name */
    private long f17070f = -9223372036854775807L;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i3.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0187b implements z {

        /* renamed from: a  reason: collision with root package name */
        private final long f17079a;

        public C0187b(long j10) {
            this.f17079a = j10;
        }

        @Override // g3.z
        public boolean e() {
            return true;
        }

        @Override // g3.z
        public z.a h(long j10) {
            z.a i10 = b.this.f17071g[0].i(j10);
            for (int i11 = 1; i11 < b.this.f17071g.length; i11++) {
                z.a i12 = b.this.f17071g[i11].i(j10);
                if (i12.f16252a.f16144b < i10.f16252a.f16144b) {
                    i10 = i12;
                }
            }
            return i10;
        }

        @Override // g3.z
        public long i() {
            return this.f17079a;
        }
    }

    /* loaded from: classes.dex */
    private static class c {

        /* renamed from: a  reason: collision with root package name */
        public int f17081a;

        /* renamed from: b  reason: collision with root package name */
        public int f17082b;

        /* renamed from: c  reason: collision with root package name */
        public int f17083c;

        private c() {
        }

        public void a(e0 e0Var) {
            this.f17081a = e0Var.t();
            this.f17082b = e0Var.t();
            this.f17083c = 0;
        }

        public void b(e0 e0Var) {
            a(e0Var);
            if (this.f17081a == 1414744396) {
                this.f17083c = e0Var.t();
                return;
            }
            throw e3.a("LIST expected, found: " + this.f17081a, null);
        }
    }

    private static void d(l lVar) {
        if ((lVar.c() & 1) == 1) {
            lVar.m(1);
        }
    }

    private e e(int i10) {
        e[] eVarArr;
        for (e eVar : this.f17071g) {
            if (eVar.j(i10)) {
                return eVar;
            }
        }
        return null;
    }

    private void h(e0 e0Var) {
        f c10 = f.c(1819436136, e0Var);
        if (c10.getType() == 1819436136) {
            i3.c cVar = (i3.c) c10.b(i3.c.class);
            if (cVar != null) {
                this.f17069e = cVar;
                this.f17070f = cVar.f17086c * cVar.f17084a;
                ArrayList arrayList = new ArrayList();
                r0 it = c10.f17106a.iterator();
                int i10 = 0;
                while (it.hasNext()) {
                    i3.a aVar = (i3.a) it.next();
                    if (aVar.getType() == 1819440243) {
                        int i11 = i10 + 1;
                        e k10 = k((f) aVar, i10);
                        if (k10 != null) {
                            arrayList.add(k10);
                        }
                        i10 = i11;
                    }
                }
                this.f17071g = (e[]) arrayList.toArray(new e[0]);
                this.f17068d.n();
                return;
            }
            throw e3.a("AviHeader not found", null);
        }
        throw e3.a("Unexpected header list type " + c10.getType(), null);
    }

    private void i(e0 e0Var) {
        long j10 = j(e0Var);
        while (e0Var.a() >= 16) {
            int t10 = e0Var.t();
            int t11 = e0Var.t();
            long t12 = e0Var.t() + j10;
            e0Var.t();
            e e10 = e(t10);
            if (e10 != null) {
                if ((t11 & 16) == 16) {
                    e10.b(t12);
                }
                e10.k();
            }
        }
        for (e eVar : this.f17071g) {
            eVar.c();
        }
        this.f17078n = true;
        this.f17068d.l(new C0187b(this.f17070f));
    }

    private long j(e0 e0Var) {
        long j10 = 0;
        if (e0Var.a() < 16) {
            return 0L;
        }
        int f10 = e0Var.f();
        e0Var.U(8);
        long j11 = this.f17075k;
        if (e0Var.t() <= j11) {
            j10 = j11 + 8;
        }
        e0Var.T(f10);
        return j10;
    }

    private e k(f fVar, int i10) {
        d dVar = (d) fVar.b(d.class);
        g gVar = (g) fVar.b(g.class);
        if (dVar == null) {
            r.i("AviExtractor", "Missing Stream Header");
            return null;
        } else if (gVar == null) {
            r.i("AviExtractor", "Missing Stream Format");
            return null;
        } else {
            long a10 = dVar.a();
            x1 x1Var = gVar.f17108a;
            x1.b b10 = x1Var.b();
            b10.T(i10);
            int i11 = dVar.f17093f;
            if (i11 != 0) {
                b10.Y(i11);
            }
            h hVar = (h) fVar.b(h.class);
            if (hVar != null) {
                b10.W(hVar.f17109a);
            }
            int k10 = v.k(x1Var.f4514l);
            if (k10 != 1 && k10 != 2) {
                return null;
            }
            b0 a11 = this.f17068d.a(i10, k10);
            a11.c(b10.G());
            e eVar = new e(i10, k10, a10, dVar.f17092e, a11);
            this.f17070f = a10;
            return eVar;
        }
    }

    private int l(l lVar) {
        if (lVar.c() >= this.f17076l) {
            return -1;
        }
        e eVar = this.f17073i;
        if (eVar != null) {
            if (eVar.m(lVar)) {
                this.f17073i = null;
            }
        } else {
            d(lVar);
            int i10 = 12;
            lVar.p(this.f17065a.e(), 0, 12);
            this.f17065a.T(0);
            int t10 = this.f17065a.t();
            if (t10 == 1414744396) {
                this.f17065a.T(8);
                if (this.f17065a.t() != 1769369453) {
                    i10 = 8;
                }
                lVar.m(i10);
                lVar.l();
                return 0;
            }
            int t11 = this.f17065a.t();
            if (t10 == 1263424842) {
                this.f17072h = lVar.c() + t11 + 8;
                return 0;
            }
            lVar.m(8);
            lVar.l();
            e e10 = e(t10);
            if (e10 == null) {
                this.f17072h = lVar.c() + t11;
                return 0;
            }
            e10.n(t11);
            this.f17073i = e10;
        }
        return 0;
    }

    private boolean m(l lVar, y yVar) {
        boolean z10;
        if (this.f17072h != -1) {
            long c10 = lVar.c();
            long j10 = this.f17072h;
            if (j10 >= c10 && j10 <= 262144 + c10) {
                lVar.m((int) (j10 - c10));
            } else {
                yVar.f16251a = j10;
                z10 = true;
                this.f17072h = -1L;
                return z10;
            }
        }
        z10 = false;
        this.f17072h = -1L;
        return z10;
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        this.f17072h = -1L;
        this.f17073i = null;
        for (e eVar : this.f17071g) {
            eVar.o(j10);
        }
        if (j10 == 0) {
            if (this.f17071g.length == 0) {
                this.f17067c = 0;
                return;
            } else {
                this.f17067c = 3;
                return;
            }
        }
        this.f17067c = 6;
    }

    @Override // g3.k
    public void c(m mVar) {
        this.f17067c = 0;
        this.f17068d = mVar;
        this.f17072h = -1L;
    }

    @Override // g3.k
    public boolean f(l lVar) {
        lVar.p(this.f17065a.e(), 0, 12);
        this.f17065a.T(0);
        if (this.f17065a.t() != 1179011410) {
            return false;
        }
        this.f17065a.U(4);
        if (this.f17065a.t() != 541677121) {
            return false;
        }
        return true;
    }

    @Override // g3.k
    public int g(l lVar, y yVar) {
        if (m(lVar, yVar)) {
            return 1;
        }
        switch (this.f17067c) {
            case 0:
                if (f(lVar)) {
                    lVar.m(12);
                    this.f17067c = 1;
                    return 0;
                }
                throw e3.a("AVI Header List not found", null);
            case 1:
                lVar.readFully(this.f17065a.e(), 0, 12);
                this.f17065a.T(0);
                this.f17066b.b(this.f17065a);
                c cVar = this.f17066b;
                if (cVar.f17083c == 1819436136) {
                    this.f17074j = cVar.f17082b;
                    this.f17067c = 2;
                    return 0;
                }
                throw e3.a("hdrl expected, found: " + this.f17066b.f17083c, null);
            case 2:
                int i10 = this.f17074j - 4;
                e0 e0Var = new e0(i10);
                lVar.readFully(e0Var.e(), 0, i10);
                h(e0Var);
                this.f17067c = 3;
                return 0;
            case 3:
                if (this.f17075k != -1) {
                    long c10 = lVar.c();
                    long j10 = this.f17075k;
                    if (c10 != j10) {
                        this.f17072h = j10;
                        return 0;
                    }
                }
                lVar.p(this.f17065a.e(), 0, 12);
                lVar.l();
                this.f17065a.T(0);
                this.f17066b.a(this.f17065a);
                int t10 = this.f17065a.t();
                int i11 = this.f17066b.f17081a;
                if (i11 == 1179011410) {
                    lVar.m(12);
                    return 0;
                } else if (i11 == 1414744396 && t10 == 1769369453) {
                    long c11 = lVar.c();
                    this.f17075k = c11;
                    this.f17076l = c11 + this.f17066b.f17082b + 8;
                    if (!this.f17078n) {
                        if (((i3.c) y4.a.e(this.f17069e)).a()) {
                            this.f17067c = 4;
                            this.f17072h = this.f17076l;
                            return 0;
                        }
                        this.f17068d.l(new z.b(this.f17070f));
                        this.f17078n = true;
                    }
                    this.f17072h = lVar.c() + 12;
                    this.f17067c = 6;
                    return 0;
                } else {
                    this.f17072h = lVar.c() + this.f17066b.f17082b + 8;
                    return 0;
                }
            case 4:
                lVar.readFully(this.f17065a.e(), 0, 8);
                this.f17065a.T(0);
                int t11 = this.f17065a.t();
                int t12 = this.f17065a.t();
                if (t11 == 829973609) {
                    this.f17067c = 5;
                    this.f17077m = t12;
                } else {
                    this.f17072h = lVar.c() + t12;
                }
                return 0;
            case 5:
                e0 e0Var2 = new e0(this.f17077m);
                lVar.readFully(e0Var2.e(), 0, this.f17077m);
                i(e0Var2);
                this.f17067c = 6;
                this.f17072h = this.f17075k;
                return 0;
            case 6:
                return l(lVar);
            default:
                throw new AssertionError();
        }
    }

    @Override // g3.k
    public void release() {
    }
}
