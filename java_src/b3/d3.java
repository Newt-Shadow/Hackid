package b3;

import android.util.Pair;
import b3.d3;
import d4.o0;
import d4.t;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d3 {

    /* renamed from: a  reason: collision with root package name */
    private final c3.t3 f3839a;

    /* renamed from: e  reason: collision with root package name */
    private final d f3843e;

    /* renamed from: h  reason: collision with root package name */
    private final c3.a f3846h;

    /* renamed from: i  reason: collision with root package name */
    private final y4.n f3847i;

    /* renamed from: k  reason: collision with root package name */
    private boolean f3849k;

    /* renamed from: l  reason: collision with root package name */
    private x4.m0 f3850l;

    /* renamed from: j  reason: collision with root package name */
    private d4.o0 f3848j = new o0.a(0);

    /* renamed from: c  reason: collision with root package name */
    private final IdentityHashMap f3841c = new IdentityHashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Map f3842d = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final List f3840b = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final HashMap f3844f = new HashMap();

    /* renamed from: g  reason: collision with root package name */
    private final Set f3845g = new HashSet();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class a implements d4.a0, f3.u {

        /* renamed from: a  reason: collision with root package name */
        private final c f3851a;

        public a(c cVar) {
            this.f3851a = cVar;
        }

        private Pair V(int i10, t.b bVar) {
            t.b bVar2 = null;
            if (bVar != null) {
                t.b n10 = d3.n(this.f3851a, bVar);
                if (n10 == null) {
                    return null;
                }
                bVar2 = n10;
            }
            return Pair.create(Integer.valueOf(d3.r(this.f3851a, i10)), bVar2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void W(Pair pair, d4.q qVar) {
            d3.this.f3846h.E(((Integer) pair.first).intValue(), (t.b) pair.second, qVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void X(Pair pair) {
            d3.this.f3846h.x(((Integer) pair.first).intValue(), (t.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void Y(Pair pair) {
            d3.this.f3846h.F(((Integer) pair.first).intValue(), (t.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void Z(Pair pair) {
            d3.this.f3846h.A(((Integer) pair.first).intValue(), (t.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a0(Pair pair, int i10) {
            d3.this.f3846h.z(((Integer) pair.first).intValue(), (t.b) pair.second, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b0(Pair pair, Exception exc) {
            d3.this.f3846h.B(((Integer) pair.first).intValue(), (t.b) pair.second, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c0(Pair pair) {
            d3.this.f3846h.D(((Integer) pair.first).intValue(), (t.b) pair.second);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void d0(Pair pair, d4.n nVar, d4.q qVar) {
            d3.this.f3846h.J(((Integer) pair.first).intValue(), (t.b) pair.second, nVar, qVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void e0(Pair pair, d4.n nVar, d4.q qVar) {
            d3.this.f3846h.y(((Integer) pair.first).intValue(), (t.b) pair.second, nVar, qVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f0(Pair pair, d4.n nVar, d4.q qVar, IOException iOException, boolean z10) {
            d3.this.f3846h.s(((Integer) pair.first).intValue(), (t.b) pair.second, nVar, qVar, iOException, z10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g0(Pair pair, d4.n nVar, d4.q qVar) {
            d3.this.f3846h.C(((Integer) pair.first).intValue(), (t.b) pair.second, nVar, qVar);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void h0(Pair pair, d4.q qVar) {
            d3.this.f3846h.t(((Integer) pair.first).intValue(), (t.b) y4.a.e((t.b) pair.second), qVar);
        }

        @Override // f3.u
        public void A(int i10, t.b bVar) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.t2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.Z(V);
                    }
                });
            }
        }

        @Override // f3.u
        public void B(int i10, t.b bVar, final Exception exc) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.a3
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.b0(V, exc);
                    }
                });
            }
        }

        @Override // d4.a0
        public void C(int i10, t.b bVar, final d4.n nVar, final d4.q qVar) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.r2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.g0(V, nVar, qVar);
                    }
                });
            }
        }

        @Override // f3.u
        public void D(int i10, t.b bVar) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.z2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.c0(V);
                    }
                });
            }
        }

        @Override // d4.a0
        public void E(int i10, t.b bVar, final d4.q qVar) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.v2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.W(V, qVar);
                    }
                });
            }
        }

        @Override // f3.u
        public void F(int i10, t.b bVar) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.c3
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.Y(V);
                    }
                });
            }
        }

        @Override // d4.a0
        public void J(int i10, t.b bVar, final d4.n nVar, final d4.q qVar) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.w2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.d0(V, nVar, qVar);
                    }
                });
            }
        }

        @Override // d4.a0
        public void s(int i10, t.b bVar, final d4.n nVar, final d4.q qVar, final IOException iOException, final boolean z10) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.u2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.f0(V, nVar, qVar, iOException, z10);
                    }
                });
            }
        }

        @Override // d4.a0
        public void t(int i10, t.b bVar, final d4.q qVar) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.y2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.h0(V, qVar);
                    }
                });
            }
        }

        @Override // f3.u
        public void x(int i10, t.b bVar) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.s2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.X(V);
                    }
                });
            }
        }

        @Override // d4.a0
        public void y(int i10, t.b bVar, final d4.n nVar, final d4.q qVar) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.b3
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.e0(V, nVar, qVar);
                    }
                });
            }
        }

        @Override // f3.u
        public void z(int i10, t.b bVar, final int i11) {
            final Pair V = V(i10, bVar);
            if (V != null) {
                d3.this.f3847i.b(new Runnable() { // from class: b3.x2
                    @Override // java.lang.Runnable
                    public final void run() {
                        d3.a.this.a0(V, i11);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final d4.t f3853a;

        /* renamed from: b  reason: collision with root package name */
        public final t.c f3854b;

        /* renamed from: c  reason: collision with root package name */
        public final a f3855c;

        public b(d4.t tVar, t.c cVar, a aVar) {
            this.f3853a = tVar;
            this.f3854b = cVar;
            this.f3855c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c implements p2 {

        /* renamed from: a  reason: collision with root package name */
        public final d4.p f3856a;

        /* renamed from: d  reason: collision with root package name */
        public int f3859d;

        /* renamed from: e  reason: collision with root package name */
        public boolean f3860e;

        /* renamed from: c  reason: collision with root package name */
        public final List f3858c = new ArrayList();

        /* renamed from: b  reason: collision with root package name */
        public final Object f3857b = new Object();

        public c(d4.t tVar, boolean z10) {
            this.f3856a = new d4.p(tVar, z10);
        }

        @Override // b3.p2
        public Object a() {
            return this.f3857b;
        }

        @Override // b3.p2
        public g4 b() {
            return this.f3856a.Z();
        }

        public void c(int i10) {
            this.f3859d = i10;
            this.f3860e = false;
            this.f3858c.clear();
        }
    }

    /* loaded from: classes.dex */
    public interface d {
        void c();
    }

    public d3(d dVar, c3.a aVar, y4.n nVar, c3.t3 t3Var) {
        this.f3839a = t3Var;
        this.f3843e = dVar;
        this.f3846h = aVar;
        this.f3847i = nVar;
    }

    private void A(int i10, int i11) {
        for (int i12 = i11 - 1; i12 >= i10; i12--) {
            c cVar = (c) this.f3840b.remove(i12);
            this.f3842d.remove(cVar.f3857b);
            g(i12, -cVar.f3856a.Z().t());
            cVar.f3860e = true;
            if (this.f3849k) {
                u(cVar);
            }
        }
    }

    private void g(int i10, int i11) {
        while (i10 < this.f3840b.size()) {
            ((c) this.f3840b.get(i10)).f3859d += i11;
            i10++;
        }
    }

    private void j(c cVar) {
        b bVar = (b) this.f3844f.get(cVar);
        if (bVar != null) {
            bVar.f3853a.p(bVar.f3854b);
        }
    }

    private void k() {
        Iterator it = this.f3845g.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f3858c.isEmpty()) {
                j(cVar);
                it.remove();
            }
        }
    }

    private void l(c cVar) {
        this.f3845g.add(cVar);
        b bVar = (b) this.f3844f.get(cVar);
        if (bVar != null) {
            bVar.f3853a.q(bVar.f3854b);
        }
    }

    private static Object m(Object obj) {
        return b3.a.z(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static t.b n(c cVar, t.b bVar) {
        for (int i10 = 0; i10 < cVar.f3858c.size(); i10++) {
            if (((t.b) cVar.f3858c.get(i10)).f14945d == bVar.f14945d) {
                return bVar.c(p(cVar, bVar.f14942a));
            }
        }
        return null;
    }

    private static Object o(Object obj) {
        return b3.a.A(obj);
    }

    private static Object p(c cVar, Object obj) {
        return b3.a.C(cVar.f3857b, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int r(c cVar, int i10) {
        return i10 + cVar.f3859d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(d4.t tVar, g4 g4Var) {
        this.f3843e.c();
    }

    private void u(c cVar) {
        if (cVar.f3860e && cVar.f3858c.isEmpty()) {
            b bVar = (b) y4.a.e((b) this.f3844f.remove(cVar));
            bVar.f3853a.c(bVar.f3854b);
            bVar.f3853a.e(bVar.f3855c);
            bVar.f3853a.b(bVar.f3855c);
            this.f3845g.remove(cVar);
        }
    }

    private void w(c cVar) {
        d4.p pVar = cVar.f3856a;
        t.c cVar2 = new t.c() { // from class: b3.q2
            @Override // d4.t.c
            public final void a(d4.t tVar, g4 g4Var) {
                d3.this.t(tVar, g4Var);
            }
        };
        a aVar = new a(cVar);
        this.f3844f.put(cVar, new b(pVar, cVar2, aVar));
        pVar.i(y4.q0.y(), aVar);
        pVar.a(y4.q0.y(), aVar);
        pVar.r(cVar2, this.f3850l, this.f3839a);
    }

    public g4 B(List list, d4.o0 o0Var) {
        A(0, this.f3840b.size());
        return f(this.f3840b.size(), list, o0Var);
    }

    public g4 C(d4.o0 o0Var) {
        int q10 = q();
        if (o0Var.b() != q10) {
            o0Var = o0Var.i().g(0, q10);
        }
        this.f3848j = o0Var;
        return i();
    }

    public g4 f(int i10, List list, d4.o0 o0Var) {
        if (!list.isEmpty()) {
            this.f3848j = o0Var;
            for (int i11 = i10; i11 < list.size() + i10; i11++) {
                c cVar = (c) list.get(i11 - i10);
                if (i11 > 0) {
                    c cVar2 = (c) this.f3840b.get(i11 - 1);
                    cVar.c(cVar2.f3859d + cVar2.f3856a.Z().t());
                } else {
                    cVar.c(0);
                }
                g(i11, cVar.f3856a.Z().t());
                this.f3840b.add(i11, cVar);
                this.f3842d.put(cVar.f3857b, cVar);
                if (this.f3849k) {
                    w(cVar);
                    if (this.f3841c.isEmpty()) {
                        this.f3845g.add(cVar);
                    } else {
                        j(cVar);
                    }
                }
            }
        }
        return i();
    }

    public d4.r h(t.b bVar, x4.b bVar2, long j10) {
        Object o10 = o(bVar.f14942a);
        t.b c10 = bVar.c(m(bVar.f14942a));
        c cVar = (c) y4.a.e((c) this.f3842d.get(o10));
        l(cVar);
        cVar.f3858c.add(c10);
        d4.o d10 = cVar.f3856a.d(c10, bVar2, j10);
        this.f3841c.put(d10, cVar);
        k();
        return d10;
    }

    public g4 i() {
        if (this.f3840b.isEmpty()) {
            return g4.f4042a;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.f3840b.size(); i11++) {
            c cVar = (c) this.f3840b.get(i11);
            cVar.f3859d = i10;
            i10 += cVar.f3856a.Z().t();
        }
        return new q3(this.f3840b, this.f3848j);
    }

    public int q() {
        return this.f3840b.size();
    }

    public boolean s() {
        return this.f3849k;
    }

    public void v(x4.m0 m0Var) {
        y4.a.f(!this.f3849k);
        this.f3850l = m0Var;
        for (int i10 = 0; i10 < this.f3840b.size(); i10++) {
            c cVar = (c) this.f3840b.get(i10);
            w(cVar);
            this.f3845g.add(cVar);
        }
        this.f3849k = true;
    }

    public void x() {
        for (b bVar : this.f3844f.values()) {
            try {
                bVar.f3853a.c(bVar.f3854b);
            } catch (RuntimeException e10) {
                y4.r.d("MediaSourceList", "Failed to release child source.", e10);
            }
            bVar.f3853a.e(bVar.f3855c);
            bVar.f3853a.b(bVar.f3855c);
        }
        this.f3844f.clear();
        this.f3845g.clear();
        this.f3849k = false;
    }

    public void y(d4.r rVar) {
        c cVar = (c) y4.a.e((c) this.f3841c.remove(rVar));
        cVar.f3856a.g(rVar);
        cVar.f3858c.remove(((d4.o) rVar).f14895a);
        if (!this.f3841c.isEmpty()) {
            k();
        }
        u(cVar);
    }

    public g4 z(int i10, int i11, d4.o0 o0Var) {
        boolean z10;
        if (i10 >= 0 && i10 <= i11 && i11 <= q()) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        this.f3848j = o0Var;
        A(i10, i11);
        return i();
    }
}
