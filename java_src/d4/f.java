package d4;

import android.os.Handler;
import b3.g4;
import d4.a0;
import d4.t;
import f3.u;
import java.io.IOException;
import java.util.HashMap;
/* loaded from: classes.dex */
public abstract class f extends d4.a {

    /* renamed from: h  reason: collision with root package name */
    private final HashMap f14746h = new HashMap();

    /* renamed from: i  reason: collision with root package name */
    private Handler f14747i;

    /* renamed from: j  reason: collision with root package name */
    private x4.m0 f14748j;

    /* loaded from: classes.dex */
    private final class a implements a0, f3.u {

        /* renamed from: a  reason: collision with root package name */
        private final Object f14749a;

        /* renamed from: b  reason: collision with root package name */
        private a0.a f14750b;

        /* renamed from: c  reason: collision with root package name */
        private u.a f14751c;

        public a(Object obj) {
            this.f14750b = f.this.w(null);
            this.f14751c = f.this.u(null);
            this.f14749a = obj;
        }

        private q K(q qVar) {
            long H = f.this.H(this.f14749a, qVar.f14937f);
            long H2 = f.this.H(this.f14749a, qVar.f14938g);
            if (H == qVar.f14937f && H2 == qVar.f14938g) {
                return qVar;
            }
            return new q(qVar.f14932a, qVar.f14933b, qVar.f14934c, qVar.f14935d, qVar.f14936e, H, H2);
        }

        private boolean u(int i10, t.b bVar) {
            t.b bVar2;
            if (bVar != null) {
                bVar2 = f.this.G(this.f14749a, bVar);
                if (bVar2 == null) {
                    return false;
                }
            } else {
                bVar2 = null;
            }
            int I = f.this.I(this.f14749a, i10);
            a0.a aVar = this.f14750b;
            if (aVar.f14723a != I || !y4.q0.c(aVar.f14724b, bVar2)) {
                this.f14750b = f.this.v(I, bVar2, 0L);
            }
            u.a aVar2 = this.f14751c;
            if (aVar2.f15743a != I || !y4.q0.c(aVar2.f15744b, bVar2)) {
                this.f14751c = f.this.t(I, bVar2);
                return true;
            }
            return true;
        }

        @Override // f3.u
        public void A(int i10, t.b bVar) {
            if (u(i10, bVar)) {
                this.f14751c.j();
            }
        }

        @Override // f3.u
        public void B(int i10, t.b bVar, Exception exc) {
            if (u(i10, bVar)) {
                this.f14751c.l(exc);
            }
        }

        @Override // d4.a0
        public void C(int i10, t.b bVar, n nVar, q qVar) {
            if (u(i10, bVar)) {
                this.f14750b.B(nVar, K(qVar));
            }
        }

        @Override // f3.u
        public void D(int i10, t.b bVar) {
            if (u(i10, bVar)) {
                this.f14751c.m();
            }
        }

        @Override // d4.a0
        public void E(int i10, t.b bVar, q qVar) {
            if (u(i10, bVar)) {
                this.f14750b.j(K(qVar));
            }
        }

        @Override // f3.u
        public void F(int i10, t.b bVar) {
            if (u(i10, bVar)) {
                this.f14751c.i();
            }
        }

        @Override // d4.a0
        public void J(int i10, t.b bVar, n nVar, q qVar) {
            if (u(i10, bVar)) {
                this.f14750b.s(nVar, K(qVar));
            }
        }

        @Override // d4.a0
        public void s(int i10, t.b bVar, n nVar, q qVar, IOException iOException, boolean z10) {
            if (u(i10, bVar)) {
                this.f14750b.y(nVar, K(qVar), iOException, z10);
            }
        }

        @Override // d4.a0
        public void t(int i10, t.b bVar, q qVar) {
            if (u(i10, bVar)) {
                this.f14750b.E(K(qVar));
            }
        }

        @Override // f3.u
        public void x(int i10, t.b bVar) {
            if (u(i10, bVar)) {
                this.f14751c.h();
            }
        }

        @Override // d4.a0
        public void y(int i10, t.b bVar, n nVar, q qVar) {
            if (u(i10, bVar)) {
                this.f14750b.v(nVar, K(qVar));
            }
        }

        @Override // f3.u
        public void z(int i10, t.b bVar, int i11) {
            if (u(i10, bVar)) {
                this.f14751c.k(i11);
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final t f14753a;

        /* renamed from: b  reason: collision with root package name */
        public final t.c f14754b;

        /* renamed from: c  reason: collision with root package name */
        public final a f14755c;

        public b(t tVar, t.c cVar, a aVar) {
            this.f14753a = tVar;
            this.f14754b = cVar;
            this.f14755c = aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // d4.a
    public void C(x4.m0 m0Var) {
        this.f14748j = m0Var;
        this.f14747i = y4.q0.w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // d4.a
    public void E() {
        for (b bVar : this.f14746h.values()) {
            bVar.f14753a.c(bVar.f14754b);
            bVar.f14753a.e(bVar.f14755c);
            bVar.f14753a.b(bVar.f14755c);
        }
        this.f14746h.clear();
    }

    protected abstract t.b G(Object obj, t.b bVar);

    protected abstract long H(Object obj, long j10);

    protected abstract int I(Object obj, int i10);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: K */
    public abstract void J(Object obj, t tVar, g4 g4Var);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void L(final Object obj, t tVar) {
        y4.a.a(!this.f14746h.containsKey(obj));
        t.c cVar = new t.c() { // from class: d4.e
            @Override // d4.t.c
            public final void a(t tVar2, g4 g4Var) {
                f.this.J(obj, tVar2, g4Var);
            }
        };
        a aVar = new a(obj);
        this.f14746h.put(obj, new b(tVar, cVar, aVar));
        tVar.i((Handler) y4.a.e(this.f14747i), aVar);
        tVar.a((Handler) y4.a.e(this.f14747i), aVar);
        tVar.r(cVar, this.f14748j, A());
        if (!B()) {
            tVar.p(cVar);
        }
    }

    @Override // d4.a
    protected void y() {
        for (b bVar : this.f14746h.values()) {
            bVar.f14753a.p(bVar.f14754b);
        }
    }

    @Override // d4.a
    protected void z() {
        for (b bVar : this.f14746h.values()) {
            bVar.f14753a.q(bVar.f14754b);
        }
    }
}
