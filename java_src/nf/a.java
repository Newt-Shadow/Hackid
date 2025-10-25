package nf;

import java.util.Queue;
import mf.g;
import of.m;
/* loaded from: classes2.dex */
public class a extends of.d {

    /* renamed from: a  reason: collision with root package name */
    String f26885a;

    /* renamed from: b  reason: collision with root package name */
    m f26886b;

    /* renamed from: c  reason: collision with root package name */
    Queue f26887c;

    public a(m mVar, Queue queue) {
        this.f26886b = mVar;
        this.f26885a = mVar.getName();
        this.f26887c = queue;
    }

    @Override // of.a
    protected void C(b bVar, g gVar, String str, Object[] objArr, Throwable th) {
        d dVar = new d();
        dVar.k(System.currentTimeMillis());
        dVar.e(bVar);
        dVar.f(this.f26886b);
        dVar.g(this.f26885a);
        if (gVar != null) {
            dVar.a(gVar);
        }
        dVar.h(str);
        dVar.i(Thread.currentThread().getName());
        dVar.d(objArr);
        dVar.j(th);
        this.f26887c.add(dVar);
    }

    @Override // mf.c
    public boolean c() {
        return true;
    }

    @Override // mf.c
    public boolean e() {
        return true;
    }

    @Override // mf.c
    public String getName() {
        return this.f26885a;
    }

    @Override // mf.c
    public boolean i() {
        return true;
    }

    @Override // mf.c
    public boolean k() {
        return true;
    }

    @Override // mf.c
    public boolean n() {
        return true;
    }
}
