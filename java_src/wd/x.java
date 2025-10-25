package wd;

import java.util.concurrent.atomic.AtomicReference;
import xc.l;
import yd.f0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class x extends xd.d {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicReference f32129a = new AtomicReference(null);

    @Override // xd.d
    /* renamed from: d */
    public boolean a(v vVar) {
        f0 f0Var;
        if (yd.c.a(this.f32129a) != null) {
            return false;
        }
        AtomicReference atomicReference = this.f32129a;
        f0Var = w.f32127a;
        yd.c.b(atomicReference, f0Var);
        return true;
    }

    public final Object e(ad.e eVar) {
        ad.e c10;
        f0 f0Var;
        Object e10;
        Object e11;
        c10 = bd.c.c(eVar);
        td.n nVar = new td.n(c10, 1);
        nVar.E();
        AtomicReference atomicReference = this.f32129a;
        f0Var = w.f32127a;
        if (!o1.c.a(atomicReference, f0Var, nVar)) {
            l.a aVar = xc.l.f32718b;
            nVar.resumeWith(xc.l.b(xc.t.f32733a));
        }
        Object x10 = nVar.x();
        e10 = bd.d.e();
        if (x10 == e10) {
            kotlin.coroutines.jvm.internal.h.c(eVar);
        }
        e11 = bd.d.e();
        if (x10 == e11) {
            return x10;
        }
        return xc.t.f32733a;
    }

    @Override // xd.d
    /* renamed from: f */
    public ad.e[] b(v vVar) {
        yd.c.b(this.f32129a, null);
        return xd.c.f32740a;
    }

    public final void g() {
        f0 f0Var;
        f0 f0Var2;
        f0 f0Var3;
        f0 f0Var4;
        AtomicReference atomicReference = this.f32129a;
        while (true) {
            Object a10 = yd.c.a(atomicReference);
            if (a10 != null) {
                f0Var = w.f32128b;
                if (a10 != f0Var) {
                    f0Var2 = w.f32127a;
                    if (a10 == f0Var2) {
                        AtomicReference atomicReference2 = this.f32129a;
                        f0Var3 = w.f32128b;
                        if (o1.c.a(atomicReference2, a10, f0Var3)) {
                            return;
                        }
                    } else {
                        AtomicReference atomicReference3 = this.f32129a;
                        f0Var4 = w.f32127a;
                        if (o1.c.a(atomicReference3, a10, f0Var4)) {
                            l.a aVar = xc.l.f32718b;
                            ((td.n) a10).resumeWith(xc.l.b(xc.t.f32733a));
                            return;
                        }
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final boolean h() {
        f0 f0Var;
        f0 f0Var2;
        AtomicReference atomicReference = this.f32129a;
        f0Var = w.f32127a;
        Object andSet = atomicReference.getAndSet(f0Var);
        kotlin.jvm.internal.m.b(andSet);
        f0Var2 = w.f32128b;
        if (andSet == f0Var2) {
            return true;
        }
        return false;
    }
}
