package of;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Queue;
/* loaded from: classes2.dex */
public class m implements mf.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f27612a;

    /* renamed from: b  reason: collision with root package name */
    private volatile mf.c f27613b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f27614c;

    /* renamed from: d  reason: collision with root package name */
    private Method f27615d;

    /* renamed from: e  reason: collision with root package name */
    private nf.a f27616e;

    /* renamed from: f  reason: collision with root package name */
    private final Queue f27617f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f27618g;

    public m(String str, Queue queue, boolean z10) {
        this.f27612a = str;
        this.f27617f = queue;
        this.f27618g = z10;
    }

    private mf.c B() {
        if (this.f27616e == null) {
            this.f27616e = new nf.a(this, this.f27617f);
        }
        return this.f27616e;
    }

    public mf.c A() {
        if (this.f27613b != null) {
            return this.f27613b;
        }
        if (this.f27618g) {
            return f.f27595a;
        }
        return B();
    }

    public boolean C() {
        Boolean bool = this.f27614c;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            this.f27615d = this.f27613b.getClass().getMethod("log", nf.c.class);
            this.f27614c = Boolean.TRUE;
        } catch (NoSuchMethodException unused) {
            this.f27614c = Boolean.FALSE;
        }
        return this.f27614c.booleanValue();
    }

    public boolean D() {
        return this.f27613b instanceof f;
    }

    public boolean E() {
        if (this.f27613b == null) {
            return true;
        }
        return false;
    }

    public void F(nf.c cVar) {
        if (C()) {
            try {
                this.f27615d.invoke(this.f27613b, cVar);
            } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException unused) {
            }
        }
    }

    public void G(mf.c cVar) {
        this.f27613b = cVar;
    }

    @Override // mf.c
    public void a(String str, Object obj) {
        A().a(str, obj);
    }

    @Override // mf.c
    public void b(String str, Object obj) {
        A().b(str, obj);
    }

    @Override // mf.c
    public boolean c() {
        return A().c();
    }

    @Override // mf.c
    public void d(String str, Object obj, Object obj2) {
        A().d(str, obj, obj2);
    }

    @Override // mf.c
    public boolean e() {
        return A().e();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass() && this.f27612a.equals(((m) obj).f27612a)) {
            return true;
        }
        return false;
    }

    @Override // mf.c
    public void f(String str, Object obj) {
        A().f(str, obj);
    }

    @Override // mf.c
    public void g(String str, Throwable th) {
        A().g(str, th);
    }

    @Override // mf.c
    public String getName() {
        return this.f27612a;
    }

    @Override // mf.c
    public void h(String str, Object obj, Object obj2) {
        A().h(str, obj, obj2);
    }

    public int hashCode() {
        return this.f27612a.hashCode();
    }

    @Override // mf.c
    public boolean i() {
        return A().i();
    }

    @Override // mf.c
    public void j(String str, Object... objArr) {
        A().j(str, objArr);
    }

    @Override // mf.c
    public boolean k() {
        return A().k();
    }

    @Override // mf.c
    public void l(String str, Object obj, Object obj2) {
        A().l(str, obj, obj2);
    }

    @Override // mf.c
    public void m(String str) {
        A().m(str);
    }

    @Override // mf.c
    public boolean n() {
        return A().n();
    }

    @Override // mf.c
    public void o(String str, Object obj, Object obj2) {
        A().o(str, obj, obj2);
    }

    @Override // mf.c
    public void p(String str, Object... objArr) {
        A().p(str, objArr);
    }

    @Override // mf.c
    public void q(String str, Object obj) {
        A().q(str, obj);
    }

    @Override // mf.c
    public void r(String str, Object obj) {
        A().r(str, obj);
    }

    @Override // mf.c
    public boolean s(nf.b bVar) {
        return A().s(bVar);
    }

    @Override // mf.c
    public void t(String str, Object... objArr) {
        A().t(str, objArr);
    }

    @Override // mf.c
    public void u(String str, Throwable th) {
        A().u(str, th);
    }

    @Override // mf.c
    public void v(String str, Throwable th) {
        A().v(str, th);
    }

    @Override // mf.c
    public void w(String str) {
        A().w(str);
    }

    @Override // mf.c
    public void x(String str) {
        A().x(str);
    }

    @Override // mf.c
    public void y(String str) {
        A().y(str);
    }

    @Override // mf.c
    public void z(String str, Object obj, Object obj2) {
        A().z(str, obj, obj2);
    }
}
