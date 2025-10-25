package androidx.datastore.preferences.protobuf;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes.dex */
final class t0 implements e1 {

    /* renamed from: a  reason: collision with root package name */
    private final p0 f2369a;

    /* renamed from: b  reason: collision with root package name */
    private final l1 f2370b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f2371c;

    /* renamed from: d  reason: collision with root package name */
    private final p f2372d;

    private t0(l1 l1Var, p pVar, p0 p0Var) {
        this.f2370b = l1Var;
        this.f2371c = pVar.e(p0Var);
        this.f2372d = pVar;
        this.f2369a = p0Var;
    }

    private int i(l1 l1Var, Object obj) {
        return l1Var.i(l1Var.g(obj));
    }

    private void j(l1 l1Var, p pVar, Object obj, d1 d1Var, o oVar) {
        Object f10 = l1Var.f(obj);
        s d10 = pVar.d(obj);
        do {
            try {
                if (d1Var.w() == Integer.MAX_VALUE) {
                    return;
                }
            } finally {
                l1Var.o(obj, f10);
            }
        } while (l(d1Var, oVar, pVar, d10, l1Var, f10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static t0 k(l1 l1Var, p pVar, p0 p0Var) {
        return new t0(l1Var, pVar, p0Var);
    }

    private boolean l(d1 d1Var, o oVar, p pVar, s sVar, l1 l1Var, Object obj) {
        int q10 = d1Var.q();
        int i10 = 0;
        if (q10 != q1.f2261a) {
            if (q1.b(q10) == 2) {
                Object b10 = pVar.b(oVar, this.f2369a, q1.a(q10));
                if (b10 != null) {
                    pVar.h(d1Var, b10, oVar, sVar);
                    return true;
                }
                return l1Var.m(obj, d1Var, 0);
            }
            return d1Var.C();
        }
        Object obj2 = null;
        g gVar = null;
        while (d1Var.w() != Integer.MAX_VALUE) {
            int q11 = d1Var.q();
            if (q11 == q1.f2263c) {
                i10 = d1Var.k();
                obj2 = pVar.b(oVar, this.f2369a, i10);
            } else if (q11 == q1.f2264d) {
                if (obj2 != null) {
                    pVar.h(d1Var, obj2, oVar, sVar);
                } else {
                    gVar = d1Var.z();
                }
            } else if (!d1Var.C()) {
                break;
            }
        }
        if (d1Var.q() == q1.f2262b) {
            if (gVar != null) {
                if (obj2 != null) {
                    pVar.i(gVar, obj2, oVar, sVar);
                } else {
                    l1Var.d(obj, i10, gVar);
                }
            }
            return true;
        }
        throw z.b();
    }

    private void m(l1 l1Var, Object obj, r1 r1Var) {
        l1Var.s(l1Var.g(obj), r1Var);
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public void a(Object obj, Object obj2) {
        g1.F(this.f2370b, obj, obj2);
        if (this.f2371c) {
            g1.D(this.f2372d, obj, obj2);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public void b(Object obj) {
        this.f2370b.j(obj);
        this.f2372d.f(obj);
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public final boolean c(Object obj) {
        return this.f2372d.c(obj).k();
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public boolean d(Object obj, Object obj2) {
        if (!this.f2370b.g(obj).equals(this.f2370b.g(obj2))) {
            return false;
        }
        if (this.f2371c) {
            return this.f2372d.c(obj).equals(this.f2372d.c(obj2));
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public int e(Object obj) {
        int i10 = i(this.f2370b, obj) + 0;
        if (this.f2371c) {
            return i10 + this.f2372d.c(obj).f();
        }
        return i10;
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public int f(Object obj) {
        int hashCode = this.f2370b.g(obj).hashCode();
        if (this.f2371c) {
            return (hashCode * 53) + this.f2372d.c(obj).hashCode();
        }
        return hashCode;
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public void g(Object obj, d1 d1Var, o oVar) {
        j(this.f2370b, this.f2372d, obj, d1Var, oVar);
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public void h(Object obj, r1 r1Var) {
        Iterator n10 = this.f2372d.c(obj).n();
        if (!n10.hasNext()) {
            m(this.f2370b, obj, r1Var);
        } else {
            android.support.v4.media.session.b.a(((Map.Entry) n10.next()).getKey());
            throw null;
        }
    }

    @Override // androidx.datastore.preferences.protobuf.e1
    public Object newInstance() {
        p0 p0Var = this.f2369a;
        if (p0Var instanceof w) {
            return ((w) p0Var).I();
        }
        return p0Var.c().s();
    }
}
