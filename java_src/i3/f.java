package i3;

import o6.q;
import o6.r0;
import y4.e0;
/* loaded from: classes.dex */
final class f implements a {

    /* renamed from: a  reason: collision with root package name */
    public final q f17106a;

    /* renamed from: b  reason: collision with root package name */
    private final int f17107b;

    private f(int i10, q qVar) {
        this.f17107b = i10;
        this.f17106a = qVar;
    }

    private static a a(int i10, int i11, e0 e0Var) {
        switch (i10) {
            case 1718776947:
                return g.d(i11, e0Var);
            case 1751742049:
                return c.b(e0Var);
            case 1752331379:
                return d.c(e0Var);
            case 1852994675:
                return h.a(e0Var);
            default:
                return null;
        }
    }

    public static f c(int i10, e0 e0Var) {
        a a10;
        q.a aVar = new q.a();
        int g10 = e0Var.g();
        int i11 = -2;
        while (e0Var.a() > 8) {
            int t10 = e0Var.t();
            int f10 = e0Var.f() + e0Var.t();
            e0Var.S(f10);
            if (t10 == 1414744396) {
                a10 = c(e0Var.t(), e0Var);
            } else {
                a10 = a(t10, i11, e0Var);
            }
            if (a10 != null) {
                if (a10.getType() == 1752331379) {
                    i11 = ((d) a10).b();
                }
                aVar.a(a10);
            }
            e0Var.T(f10);
            e0Var.S(g10);
        }
        return new f(i10, aVar.k());
    }

    public a b(Class cls) {
        r0 it = this.f17106a.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar.getClass() == cls) {
                return aVar;
            }
        }
        return null;
    }

    @Override // i3.a
    public int getType() {
        return this.f17107b;
    }
}
