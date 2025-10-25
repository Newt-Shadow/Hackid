package vd;

import java.util.concurrent.CancellationException;
import td.u1;
import td.z1;
/* loaded from: classes2.dex */
public abstract class h extends td.a implements g {

    /* renamed from: d  reason: collision with root package name */
    private final g f31402d;

    public h(ad.i iVar, g gVar, boolean z10, boolean z11) {
        super(iVar, z10, z11);
        this.f31402d = gVar;
    }

    @Override // td.z1
    public void L(Throwable th) {
        CancellationException H0 = z1.H0(this, th, null, 1, null);
        this.f31402d.b(H0);
        J(H0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final g S0() {
        return this.f31402d;
    }

    @Override // td.z1, td.t1
    public final void b(CancellationException cancellationException) {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new u1(O(), null, this);
        }
        L(cancellationException);
    }

    @Override // vd.w
    public Object f() {
        return this.f31402d.f();
    }

    @Override // vd.x
    public void h(id.l lVar) {
        this.f31402d.h(lVar);
    }

    @Override // vd.w
    public i iterator() {
        return this.f31402d.iterator();
    }

    @Override // vd.x
    public boolean m(Throwable th) {
        return this.f31402d.m(th);
    }

    @Override // vd.w
    public Object p(ad.e eVar) {
        return this.f31402d.p(eVar);
    }

    @Override // vd.x
    public Object t(Object obj) {
        return this.f31402d.t(obj);
    }

    @Override // vd.x
    public Object y(Object obj, ad.e eVar) {
        return this.f31402d.y(obj, eVar);
    }

    @Override // vd.x
    public boolean z() {
        return this.f31402d.z();
    }
}
