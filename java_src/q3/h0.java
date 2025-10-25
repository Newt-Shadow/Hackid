package q3;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import b3.e3;
import g3.z;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import q3.i0;
import y4.m0;
import y4.q0;
/* loaded from: classes.dex */
public final class h0 implements g3.k {

    /* renamed from: t  reason: collision with root package name */
    public static final g3.p f28099t = new g3.p() { // from class: q3.g0
        @Override // g3.p
        public final g3.k[] b() {
            g3.k[] w10;
            w10 = h0.w();
            return w10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f28100a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28101b;

    /* renamed from: c  reason: collision with root package name */
    private final List f28102c;

    /* renamed from: d  reason: collision with root package name */
    private final y4.e0 f28103d;

    /* renamed from: e  reason: collision with root package name */
    private final SparseIntArray f28104e;

    /* renamed from: f  reason: collision with root package name */
    private final i0.c f28105f;

    /* renamed from: g  reason: collision with root package name */
    private final SparseArray f28106g;

    /* renamed from: h  reason: collision with root package name */
    private final SparseBooleanArray f28107h;

    /* renamed from: i  reason: collision with root package name */
    private final SparseBooleanArray f28108i;

    /* renamed from: j  reason: collision with root package name */
    private final f0 f28109j;

    /* renamed from: k  reason: collision with root package name */
    private e0 f28110k;

    /* renamed from: l  reason: collision with root package name */
    private g3.m f28111l;

    /* renamed from: m  reason: collision with root package name */
    private int f28112m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f28113n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f28114o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f28115p;

    /* renamed from: q  reason: collision with root package name */
    private i0 f28116q;

    /* renamed from: r  reason: collision with root package name */
    private int f28117r;

    /* renamed from: s  reason: collision with root package name */
    private int f28118s;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements b0 {

        /* renamed from: a  reason: collision with root package name */
        private final y4.d0 f28119a = new y4.d0(new byte[4]);

        public a() {
        }

        @Override // q3.b0
        public void a(m0 m0Var, g3.m mVar, i0.d dVar) {
        }

        @Override // q3.b0
        public void b(y4.e0 e0Var) {
            if (e0Var.G() != 0 || (e0Var.G() & 128) == 0) {
                return;
            }
            e0Var.U(6);
            int a10 = e0Var.a() / 4;
            for (int i10 = 0; i10 < a10; i10++) {
                e0Var.k(this.f28119a, 4);
                int h10 = this.f28119a.h(16);
                this.f28119a.r(3);
                if (h10 == 0) {
                    this.f28119a.r(13);
                } else {
                    int h11 = this.f28119a.h(13);
                    if (h0.this.f28106g.get(h11) == null) {
                        h0.this.f28106g.put(h11, new c0(new b(h11)));
                        h0.k(h0.this);
                    }
                }
            }
            if (h0.this.f28100a != 2) {
                h0.this.f28106g.remove(0);
            }
        }
    }

    /* loaded from: classes.dex */
    private class b implements b0 {

        /* renamed from: a  reason: collision with root package name */
        private final y4.d0 f28121a = new y4.d0(new byte[5]);

        /* renamed from: b  reason: collision with root package name */
        private final SparseArray f28122b = new SparseArray();

        /* renamed from: c  reason: collision with root package name */
        private final SparseIntArray f28123c = new SparseIntArray();

        /* renamed from: d  reason: collision with root package name */
        private final int f28124d;

        public b(int i10) {
            this.f28124d = i10;
        }

        private i0.b c(y4.e0 e0Var, int i10) {
            int f10 = e0Var.f();
            int i11 = i10 + f10;
            int i12 = -1;
            String str = null;
            ArrayList arrayList = null;
            while (e0Var.f() < i11) {
                int G = e0Var.G();
                int f11 = e0Var.f() + e0Var.G();
                if (f11 > i11) {
                    break;
                }
                if (G == 5) {
                    long I = e0Var.I();
                    if (I != 1094921523) {
                        if (I != 1161904947) {
                            if (I != 1094921524) {
                                if (I == 1212503619) {
                                    i12 = 36;
                                }
                            }
                            i12 = 172;
                        }
                        i12 = 135;
                    }
                    i12 = 129;
                } else {
                    if (G != 106) {
                        if (G != 122) {
                            if (G == 127) {
                                if (e0Var.G() != 21) {
                                }
                                i12 = 172;
                            } else if (G == 123) {
                                i12 = 138;
                            } else if (G == 10) {
                                str = e0Var.D(3).trim();
                            } else if (G == 89) {
                                ArrayList arrayList2 = new ArrayList();
                                while (e0Var.f() < f11) {
                                    String trim = e0Var.D(3).trim();
                                    int G2 = e0Var.G();
                                    byte[] bArr = new byte[4];
                                    e0Var.l(bArr, 0, 4);
                                    arrayList2.add(new i0.a(trim, G2, bArr));
                                }
                                arrayList = arrayList2;
                                i12 = 89;
                            } else if (G == 111) {
                                i12 = 257;
                            }
                        }
                        i12 = 135;
                    }
                    i12 = 129;
                }
                e0Var.U(f11 - e0Var.f());
            }
            e0Var.T(i11);
            return new i0.b(i12, str, arrayList, Arrays.copyOfRange(e0Var.e(), f10, i11));
        }

        @Override // q3.b0
        public void a(m0 m0Var, g3.m mVar, i0.d dVar) {
        }

        @Override // q3.b0
        public void b(y4.e0 e0Var) {
            m0 m0Var;
            int i10;
            i0 a10;
            if (e0Var.G() != 2) {
                return;
            }
            if (h0.this.f28100a != 1 && h0.this.f28100a != 2 && h0.this.f28112m != 1) {
                m0Var = new m0(((m0) h0.this.f28102c.get(0)).c());
                h0.this.f28102c.add(m0Var);
            } else {
                m0Var = (m0) h0.this.f28102c.get(0);
            }
            if ((e0Var.G() & 128) == 0) {
                return;
            }
            e0Var.U(1);
            int M = e0Var.M();
            int i11 = 3;
            e0Var.U(3);
            e0Var.k(this.f28121a, 2);
            this.f28121a.r(3);
            int i12 = 13;
            h0.this.f28118s = this.f28121a.h(13);
            e0Var.k(this.f28121a, 2);
            int i13 = 4;
            this.f28121a.r(4);
            e0Var.U(this.f28121a.h(12));
            if (h0.this.f28100a == 2 && h0.this.f28116q == null) {
                i0.b bVar = new i0.b(21, null, null, q0.f32951f);
                h0 h0Var = h0.this;
                h0Var.f28116q = h0Var.f28105f.a(21, bVar);
                if (h0.this.f28116q != null) {
                    h0.this.f28116q.a(m0Var, h0.this.f28111l, new i0.d(M, 21, 8192));
                }
            }
            this.f28122b.clear();
            this.f28123c.clear();
            int a11 = e0Var.a();
            while (a11 > 0) {
                e0Var.k(this.f28121a, 5);
                int h10 = this.f28121a.h(8);
                this.f28121a.r(i11);
                int h11 = this.f28121a.h(i12);
                this.f28121a.r(i13);
                int h12 = this.f28121a.h(12);
                i0.b c10 = c(e0Var, h12);
                if (h10 == 6 || h10 == 5) {
                    h10 = c10.f28151a;
                }
                a11 -= h12 + 5;
                if (h0.this.f28100a == 2) {
                    i10 = h10;
                } else {
                    i10 = h11;
                }
                if (!h0.this.f28107h.get(i10)) {
                    if (h0.this.f28100a == 2 && h10 == 21) {
                        a10 = h0.this.f28116q;
                    } else {
                        a10 = h0.this.f28105f.a(h10, c10);
                    }
                    if (h0.this.f28100a != 2 || h11 < this.f28123c.get(i10, 8192)) {
                        this.f28123c.put(i10, h11);
                        this.f28122b.put(i10, a10);
                    }
                }
                i11 = 3;
                i13 = 4;
                i12 = 13;
            }
            int size = this.f28123c.size();
            for (int i14 = 0; i14 < size; i14++) {
                int keyAt = this.f28123c.keyAt(i14);
                int valueAt = this.f28123c.valueAt(i14);
                h0.this.f28107h.put(keyAt, true);
                h0.this.f28108i.put(valueAt, true);
                i0 i0Var = (i0) this.f28122b.valueAt(i14);
                if (i0Var != null) {
                    if (i0Var != h0.this.f28116q) {
                        i0Var.a(m0Var, h0.this.f28111l, new i0.d(M, keyAt, 8192));
                    }
                    h0.this.f28106g.put(valueAt, i0Var);
                }
            }
            if (h0.this.f28100a == 2) {
                if (!h0.this.f28113n) {
                    h0.this.f28111l.n();
                    h0.this.f28112m = 0;
                    h0.this.f28113n = true;
                    return;
                }
                return;
            }
            h0.this.f28106g.remove(this.f28124d);
            h0 h0Var2 = h0.this;
            h0Var2.f28112m = h0Var2.f28100a == 1 ? 0 : h0.this.f28112m - 1;
            if (h0.this.f28112m == 0) {
                h0.this.f28111l.n();
                h0.this.f28113n = true;
            }
        }
    }

    public h0() {
        this(0);
    }

    static /* synthetic */ int k(h0 h0Var) {
        int i10 = h0Var.f28112m;
        h0Var.f28112m = i10 + 1;
        return i10;
    }

    private boolean u(g3.l lVar) {
        byte[] e10 = this.f28103d.e();
        if (9400 - this.f28103d.f() < 188) {
            int a10 = this.f28103d.a();
            if (a10 > 0) {
                System.arraycopy(e10, this.f28103d.f(), e10, 0, a10);
            }
            this.f28103d.R(e10, a10);
        }
        while (this.f28103d.a() < 188) {
            int g10 = this.f28103d.g();
            int read = lVar.read(e10, g10, 9400 - g10);
            if (read == -1) {
                return false;
            }
            this.f28103d.S(g10 + read);
        }
        return true;
    }

    private int v() {
        int f10 = this.f28103d.f();
        int g10 = this.f28103d.g();
        int a10 = j0.a(this.f28103d.e(), f10, g10);
        this.f28103d.T(a10);
        int i10 = a10 + 188;
        if (i10 > g10) {
            int i11 = this.f28117r + (a10 - f10);
            this.f28117r = i11;
            if (this.f28100a == 2 && i11 > 376) {
                throw e3.a("Cannot find sync byte. Most likely not a Transport Stream.", null);
            }
        } else {
            this.f28117r = 0;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g3.k[] w() {
        return new g3.k[]{new h0()};
    }

    private void x(long j10) {
        if (!this.f28114o) {
            this.f28114o = true;
            if (this.f28109j.b() != -9223372036854775807L) {
                e0 e0Var = new e0(this.f28109j.c(), this.f28109j.b(), j10, this.f28118s, this.f28101b);
                this.f28110k = e0Var;
                this.f28111l.l(e0Var.b());
                return;
            }
            this.f28111l.l(new z.b(this.f28109j.b()));
        }
    }

    private void y() {
        this.f28107h.clear();
        this.f28106g.clear();
        SparseArray b10 = this.f28105f.b();
        int size = b10.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f28106g.put(b10.keyAt(i10), (i0) b10.valueAt(i10));
        }
        this.f28106g.put(0, new c0(new a()));
        this.f28116q = null;
    }

    private boolean z(int i10) {
        if (this.f28100a != 2 && !this.f28113n && this.f28108i.get(i10, false)) {
            return false;
        }
        return true;
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        boolean z10;
        e0 e0Var;
        boolean z11;
        if (this.f28100a != 2) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        int size = this.f28102c.size();
        for (int i10 = 0; i10 < size; i10++) {
            m0 m0Var = (m0) this.f28102c.get(i10);
            if (m0Var.e() == -9223372036854775807L) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z11) {
                long c10 = m0Var.c();
                if (c10 != -9223372036854775807L && c10 != 0 && c10 != j11) {
                    z11 = true;
                } else {
                    z11 = false;
                }
            }
            if (z11) {
                m0Var.g(j11);
            }
        }
        if (j11 != 0 && (e0Var = this.f28110k) != null) {
            e0Var.h(j11);
        }
        this.f28103d.P(0);
        this.f28104e.clear();
        for (int i11 = 0; i11 < this.f28106g.size(); i11++) {
            ((i0) this.f28106g.valueAt(i11)).c();
        }
        this.f28117r = 0;
    }

    @Override // g3.k
    public void c(g3.m mVar) {
        this.f28111l = mVar;
    }

    @Override // g3.k
    public boolean f(g3.l lVar) {
        boolean z10;
        byte[] e10 = this.f28103d.e();
        lVar.p(e10, 0, 940);
        for (int i10 = 0; i10 < 188; i10++) {
            int i11 = 0;
            while (true) {
                if (i11 < 5) {
                    if (e10[(i11 * 188) + i10] != 71) {
                        z10 = false;
                        break;
                    }
                    i11++;
                } else {
                    z10 = true;
                    break;
                }
            }
            if (z10) {
                lVar.m(i10);
                return true;
            }
        }
        return false;
    }

    @Override // g3.k
    public int g(g3.l lVar, g3.y yVar) {
        int i10;
        boolean z10;
        boolean z11;
        i0 i0Var;
        int i11;
        boolean z12;
        long b10 = lVar.b();
        if (this.f28113n) {
            if (b10 != -1 && this.f28100a != 2) {
                z12 = true;
            } else {
                z12 = false;
            }
            if (z12 && !this.f28109j.d()) {
                return this.f28109j.e(lVar, yVar, this.f28118s);
            }
            x(b10);
            if (this.f28115p) {
                this.f28115p = false;
                b(0L, 0L);
                if (lVar.c() != 0) {
                    yVar.f16251a = 0L;
                    return 1;
                }
            }
            e0 e0Var = this.f28110k;
            if (e0Var != null && e0Var.d()) {
                return this.f28110k.c(lVar, yVar);
            }
        }
        if (!u(lVar)) {
            return -1;
        }
        int v10 = v();
        int g10 = this.f28103d.g();
        if (v10 > g10) {
            return 0;
        }
        int p10 = this.f28103d.p();
        if ((8388608 & p10) != 0) {
            this.f28103d.T(v10);
            return 0;
        }
        if ((4194304 & p10) != 0) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        int i12 = i10 | 0;
        int i13 = (2096896 & p10) >> 8;
        if ((p10 & 32) != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if ((p10 & 16) != 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11) {
            i0Var = (i0) this.f28106g.get(i13);
        } else {
            i0Var = null;
        }
        if (i0Var == null) {
            this.f28103d.T(v10);
            return 0;
        }
        if (this.f28100a != 2) {
            int i14 = p10 & 15;
            int i15 = this.f28104e.get(i13, i14 - 1);
            this.f28104e.put(i13, i14);
            if (i15 == i14) {
                this.f28103d.T(v10);
                return 0;
            } else if (i14 != ((i15 + 1) & 15)) {
                i0Var.c();
            }
        }
        if (z10) {
            int G = this.f28103d.G();
            if ((this.f28103d.G() & 64) != 0) {
                i11 = 2;
            } else {
                i11 = 0;
            }
            i12 |= i11;
            this.f28103d.U(G - 1);
        }
        boolean z13 = this.f28113n;
        if (z(i13)) {
            this.f28103d.S(v10);
            i0Var.b(this.f28103d, i12);
            this.f28103d.S(g10);
        }
        if (this.f28100a != 2 && !z13 && this.f28113n && b10 != -1) {
            this.f28115p = true;
        }
        this.f28103d.T(v10);
        return 0;
    }

    @Override // g3.k
    public void release() {
    }

    public h0(int i10) {
        this(1, i10, 112800);
    }

    public h0(int i10, int i11, int i12) {
        this(i10, new m0(0L), new j(i11), i12);
    }

    public h0(int i10, m0 m0Var, i0.c cVar) {
        this(i10, m0Var, cVar, 112800);
    }

    public h0(int i10, m0 m0Var, i0.c cVar, int i11) {
        this.f28105f = (i0.c) y4.a.e(cVar);
        this.f28101b = i11;
        this.f28100a = i10;
        if (i10 != 1 && i10 != 2) {
            ArrayList arrayList = new ArrayList();
            this.f28102c = arrayList;
            arrayList.add(m0Var);
        } else {
            this.f28102c = Collections.singletonList(m0Var);
        }
        this.f28103d = new y4.e0(new byte[9400], 0);
        this.f28107h = new SparseBooleanArray();
        this.f28108i = new SparseBooleanArray();
        this.f28106g = new SparseArray();
        this.f28104e = new SparseIntArray();
        this.f28109j = new f0(i11);
        this.f28111l = g3.m.f16222r0;
        this.f28118s = -1;
        y();
    }
}
