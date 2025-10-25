package ce;

import ce.f;
import id.p;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import td.i0;
import td.l;
import td.n;
import td.p0;
import td.s2;
import xc.t;
import yd.c0;
import yd.f0;
/* loaded from: classes2.dex */
public class f extends i implements ce.a {

    /* renamed from: i  reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f5174i = AtomicReferenceFieldUpdater.newUpdater(f.class, Object.class, "owner$volatile");

    /* renamed from: h  reason: collision with root package name */
    private final p f5175h;
    private volatile /* synthetic */ Object owner$volatile;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class a implements l, s2 {

        /* renamed from: a  reason: collision with root package name */
        public final n f5176a;

        /* renamed from: b  reason: collision with root package name */
        public final Object f5177b;

        public a(n nVar, Object obj) {
            this.f5176a = nVar;
            this.f5177b = obj;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final t f(f fVar, a aVar, Throwable th) {
            fVar.d(aVar.f5177b);
            return t.f32733a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final t j(f fVar, a aVar, Throwable th, t tVar, ad.i iVar) {
            f.w().set(fVar, aVar.f5177b);
            fVar.d(aVar.f5177b);
            return t.f32733a;
        }

        @Override // td.l
        public void A(Object obj) {
            this.f5176a.A(obj);
        }

        @Override // td.s2
        public void b(c0 c0Var, int i10) {
            this.f5176a.b(c0Var, i10);
        }

        @Override // td.l
        /* renamed from: e */
        public void r(t tVar, p pVar) {
            f.w().set(f.this, this.f5177b);
            n nVar = this.f5176a;
            final f fVar = f.this;
            nVar.P(tVar, new id.l() { // from class: ce.d
                @Override // id.l
                public final Object invoke(Object obj) {
                    t f10;
                    f10 = f.a.f(f.this, this, (Throwable) obj);
                    return f10;
                }
            });
        }

        @Override // td.l
        /* renamed from: g */
        public void i(i0 i0Var, t tVar) {
            this.f5176a.i(i0Var, tVar);
        }

        @Override // ad.e
        public ad.i getContext() {
            return this.f5176a.getContext();
        }

        @Override // td.l
        /* renamed from: h */
        public Object d(t tVar, Object obj, p pVar) {
            final f fVar = f.this;
            Object d10 = this.f5176a.d(tVar, obj, new p() { // from class: ce.e
                @Override // id.p
                public final Object e(Object obj2, Object obj3, Object obj4) {
                    t j10;
                    j10 = f.a.j(f.this, this, (Throwable) obj2, (t) obj3, (ad.i) obj4);
                    return j10;
                }
            });
            if (d10 != null) {
                f.w().set(f.this, this.f5177b);
            }
            return d10;
        }

        @Override // td.l
        public void l(id.l lVar) {
            this.f5176a.l(lVar);
        }

        @Override // td.l
        public boolean o(Throwable th) {
            return this.f5176a.o(th);
        }

        @Override // ad.e
        public void resumeWith(Object obj) {
            this.f5176a.resumeWith(obj);
        }
    }

    public f(boolean z10) {
        super(1, z10 ? 1 : 0);
        f0 f0Var;
        if (!z10) {
            f0Var = g.f5179a;
        } else {
            f0Var = null;
        }
        this.owner$volatile = f0Var;
        this.f5175h = new p() { // from class: ce.b
            @Override // id.p
            public final Object e(Object obj, Object obj2, Object obj3) {
                p B;
                f fVar = f.this;
                android.support.v4.media.session.b.a(obj);
                B = f.B(fVar, null, obj2, obj3);
                return B;
            }
        };
    }

    private final Object A(Object obj, ad.e eVar) {
        ad.e c10;
        Object e10;
        Object e11;
        c10 = bd.c.c(eVar);
        n b10 = td.p.b(c10);
        try {
            f(new a(b10, obj));
            Object x10 = b10.x();
            e10 = bd.d.e();
            if (x10 == e10) {
                kotlin.coroutines.jvm.internal.h.c(eVar);
            }
            e11 = bd.d.e();
            if (x10 == e11) {
                return x10;
            }
            return t.f32733a;
        } catch (Throwable th) {
            b10.N();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final p B(final f fVar, be.a aVar, final Object obj, Object obj2) {
        return new p() { // from class: ce.c
            @Override // id.p
            public final Object e(Object obj3, Object obj4, Object obj5) {
                t C;
                C = f.C(f.this, obj, (Throwable) obj3, obj4, (ad.i) obj5);
                return C;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final t C(f fVar, Object obj, Throwable th, Object obj2, ad.i iVar) {
        fVar.d(obj);
        return t.f32733a;
    }

    private final int D(Object obj) {
        while (!r()) {
            if (obj == null) {
                return 1;
            }
            int y10 = y(obj);
            if (y10 == 1) {
                return 2;
            }
            if (y10 == 2) {
                return 1;
            }
        }
        f5174i.set(this, obj);
        return 0;
    }

    public static final /* synthetic */ AtomicReferenceFieldUpdater w() {
        return f5174i;
    }

    private final int y(Object obj) {
        f0 f0Var;
        while (c()) {
            Object obj2 = f5174i.get(this);
            f0Var = g.f5179a;
            if (obj2 != f0Var) {
                if (obj2 == obj) {
                    return 1;
                }
                return 2;
            }
        }
        return 0;
    }

    static /* synthetic */ Object z(f fVar, Object obj, ad.e eVar) {
        Object e10;
        if (fVar.a(obj)) {
            return t.f32733a;
        }
        Object A = fVar.A(obj, eVar);
        e10 = bd.d.e();
        if (A == e10) {
            return A;
        }
        return t.f32733a;
    }

    @Override // ce.a
    public boolean a(Object obj) {
        int D = D(obj);
        if (D == 0) {
            return true;
        }
        if (D != 1) {
            if (D != 2) {
                throw new IllegalStateException("unexpected".toString());
            }
            throw new IllegalStateException(("This mutex is already locked by the specified owner: " + obj).toString());
        }
        return false;
    }

    @Override // ce.a
    public Object b(Object obj, ad.e eVar) {
        return z(this, obj, eVar);
    }

    @Override // ce.a
    public boolean c() {
        if (j() == 0) {
            return true;
        }
        return false;
    }

    @Override // ce.a
    public void d(Object obj) {
        f0 f0Var;
        boolean z10;
        f0 f0Var2;
        while (c()) {
            Object obj2 = f5174i.get(this);
            f0Var = g.f5179a;
            if (obj2 != f0Var) {
                if (obj2 != obj && obj != null) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (z10) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f5174i;
                    f0Var2 = g.f5179a;
                    if (androidx.concurrent.futures.b.a(atomicReferenceFieldUpdater, this, obj2, f0Var2)) {
                        q();
                        return;
                    }
                } else {
                    throw new IllegalStateException(("This mutex is locked by " + obj2 + ", but " + obj + " is expected").toString());
                }
            }
        }
        throw new IllegalStateException("This mutex is not locked".toString());
    }

    public String toString() {
        return "Mutex@" + p0.b(this) + "[isLocked=" + c() + ",owner=" + f5174i.get(this) + ']';
    }
}
