package q7;

import v8.c;
/* loaded from: classes.dex */
public class n implements v8.c {

    /* renamed from: a  reason: collision with root package name */
    private final j0 f28508a;

    /* renamed from: b  reason: collision with root package name */
    private final m f28509b;

    public n(j0 j0Var, w7.g gVar) {
        this.f28508a = j0Var;
        this.f28509b = new m(gVar);
    }

    @Override // v8.c
    public boolean a() {
        return this.f28508a.d();
    }

    @Override // v8.c
    public c.a b() {
        return c.a.f31285a;
    }

    @Override // v8.c
    public void c(c.b bVar) {
        n7.g f10 = n7.g.f();
        f10.b("App Quality Sessions session changed: " + bVar);
        this.f28509b.h(bVar.a());
    }

    public String d(String str) {
        return this.f28509b.c(str);
    }

    public void e(String str) {
        this.f28509b.i(str);
    }
}
