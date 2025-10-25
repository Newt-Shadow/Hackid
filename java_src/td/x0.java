package td;

import java.util.concurrent.CancellationException;
import xc.l;
/* loaded from: classes2.dex */
public abstract class x0 extends ae.h {

    /* renamed from: c  reason: collision with root package name */
    public int f30701c;

    public x0(int i10) {
        this.f30701c = i10;
    }

    public void a(Object obj, Throwable th) {
    }

    public abstract ad.e c();

    public Throwable e(Object obj) {
        a0 a0Var;
        if (obj instanceof a0) {
            a0Var = (a0) obj;
        } else {
            a0Var = null;
        }
        if (a0Var == null) {
            return null;
        }
        return a0Var.f30621a;
    }

    public Object f(Object obj) {
        return obj;
    }

    public final void g(Throwable th) {
        k0.a(c().getContext(), new o0("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    public abstract Object h();

    @Override // java.lang.Runnable
    public final void run() {
        q2 q2Var;
        try {
            ad.e c10 = c();
            kotlin.jvm.internal.m.c(c10, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            yd.h hVar = (yd.h) c10;
            ad.e eVar = hVar.f33260e;
            Object obj = hVar.f33262g;
            ad.i context = eVar.getContext();
            Object i10 = yd.m0.i(context, obj);
            t1 t1Var = null;
            if (i10 != yd.m0.f33277a) {
                q2Var = g0.m(eVar, context, i10);
            } else {
                q2Var = null;
            }
            ad.i context2 = eVar.getContext();
            Object h10 = h();
            Throwable e10 = e(h10);
            if (e10 == null && y0.b(this.f30701c)) {
                t1Var = (t1) context2.a(t1.f30695t0);
            }
            if (t1Var != null && !t1Var.isActive()) {
                CancellationException u10 = t1Var.u();
                a(h10, u10);
                l.a aVar = xc.l.f32718b;
                eVar.resumeWith(xc.l.b(xc.m.a(u10)));
            } else if (e10 != null) {
                l.a aVar2 = xc.l.f32718b;
                eVar.resumeWith(xc.l.b(xc.m.a(e10)));
            } else {
                l.a aVar3 = xc.l.f32718b;
                eVar.resumeWith(xc.l.b(f(h10)));
            }
            xc.t tVar = xc.t.f32733a;
            if (q2Var == null || q2Var.S0()) {
                yd.m0.f(context, i10);
            }
        } catch (Throwable th) {
            g(th);
        }
    }
}
