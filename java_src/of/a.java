package of;

import java.io.Serializable;
/* loaded from: classes2.dex */
public abstract class a implements mf.c, Serializable {
    private void A(nf.b bVar, mf.g gVar, String str, Object obj, Object obj2) {
        if (obj2 instanceof Throwable) {
            C(bVar, gVar, str, new Object[]{obj}, (Throwable) obj2);
        } else {
            C(bVar, gVar, str, new Object[]{obj, obj2}, null);
        }
    }

    private void B(nf.b bVar, mf.g gVar, String str, Object[] objArr) {
        Throwable a10 = e.a(objArr);
        if (a10 != null) {
            C(bVar, gVar, str, e.b(objArr), a10);
        } else {
            C(bVar, gVar, str, objArr, null);
        }
    }

    private void D(nf.b bVar, mf.g gVar, String str, Throwable th) {
        C(bVar, gVar, str, null, th);
    }

    private void E(nf.b bVar, mf.g gVar, String str, Object obj) {
        C(bVar, gVar, str, new Object[]{obj}, null);
    }

    protected abstract void C(nf.b bVar, mf.g gVar, String str, Object[] objArr, Throwable th);

    @Override // mf.c
    public void a(String str, Object obj) {
        if (k()) {
            E(nf.b.INFO, null, str, obj);
        }
    }

    @Override // mf.c
    public void b(String str, Object obj) {
        if (c()) {
            E(nf.b.WARN, null, str, obj);
        }
    }

    @Override // mf.c
    public void d(String str, Object obj, Object obj2) {
        if (e()) {
            A(nf.b.DEBUG, null, str, obj, obj2);
        }
    }

    @Override // mf.c
    public void f(String str, Object obj) {
        if (n()) {
            E(nf.b.TRACE, null, str, obj);
        }
    }

    @Override // mf.c
    public void g(String str, Throwable th) {
        if (i()) {
            D(nf.b.ERROR, null, str, th);
        }
    }

    @Override // mf.c
    public void h(String str, Object obj, Object obj2) {
        if (n()) {
            A(nf.b.TRACE, null, str, obj, obj2);
        }
    }

    @Override // mf.c
    public void j(String str, Object... objArr) {
        if (c()) {
            B(nf.b.WARN, null, str, objArr);
        }
    }

    @Override // mf.c
    public void l(String str, Object obj, Object obj2) {
        if (c()) {
            A(nf.b.WARN, null, str, obj, obj2);
        }
    }

    @Override // mf.c
    public void m(String str) {
        if (e()) {
            D(nf.b.DEBUG, null, str, null);
        }
    }

    @Override // mf.c
    public void o(String str, Object obj, Object obj2) {
        if (i()) {
            A(nf.b.ERROR, null, str, obj, obj2);
        }
    }

    @Override // mf.c
    public void p(String str, Object... objArr) {
        if (i()) {
            B(nf.b.ERROR, null, str, objArr);
        }
    }

    @Override // mf.c
    public void q(String str, Object obj) {
        if (e()) {
            E(nf.b.DEBUG, null, str, obj);
        }
    }

    @Override // mf.c
    public void r(String str, Object obj) {
        if (i()) {
            E(nf.b.ERROR, null, str, obj);
        }
    }

    @Override // mf.c
    public void t(String str, Object... objArr) {
        if (e()) {
            B(nf.b.DEBUG, null, str, objArr);
        }
    }

    @Override // mf.c
    public void u(String str, Throwable th) {
        if (c()) {
            D(nf.b.WARN, null, str, th);
        }
    }

    @Override // mf.c
    public void v(String str, Throwable th) {
        if (e()) {
            D(nf.b.DEBUG, null, str, th);
        }
    }

    @Override // mf.c
    public void w(String str) {
        if (k()) {
            D(nf.b.INFO, null, str, null);
        }
    }

    @Override // mf.c
    public void x(String str) {
        if (c()) {
            D(nf.b.WARN, null, str, null);
        }
    }

    @Override // mf.c
    public void y(String str) {
        if (n()) {
            D(nf.b.TRACE, null, str, null);
        }
    }

    @Override // mf.c
    public void z(String str, Object obj, Object obj2) {
        if (k()) {
            A(nf.b.INFO, null, str, obj, obj2);
        }
    }
}
