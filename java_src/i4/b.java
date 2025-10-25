package i4;

import b3.x1;
import g3.y;
import q3.h0;
import y4.m0;
/* loaded from: classes.dex */
public final class b implements j {

    /* renamed from: d  reason: collision with root package name */
    private static final y f17114d = new y();

    /* renamed from: a  reason: collision with root package name */
    final g3.k f17115a;

    /* renamed from: b  reason: collision with root package name */
    private final x1 f17116b;

    /* renamed from: c  reason: collision with root package name */
    private final m0 f17117c;

    public b(g3.k kVar, x1 x1Var, m0 m0Var) {
        this.f17115a = kVar;
        this.f17116b = x1Var;
        this.f17117c = m0Var;
    }

    @Override // i4.j
    public void a() {
        this.f17115a.b(0L, 0L);
    }

    @Override // i4.j
    public boolean b(g3.l lVar) {
        if (this.f17115a.g(lVar, f17114d) == 0) {
            return true;
        }
        return false;
    }

    @Override // i4.j
    public void c(g3.m mVar) {
        this.f17115a.c(mVar);
    }

    @Override // i4.j
    public boolean d() {
        g3.k kVar = this.f17115a;
        if (!(kVar instanceof q3.h) && !(kVar instanceof q3.b) && !(kVar instanceof q3.e) && !(kVar instanceof n3.f)) {
            return false;
        }
        return true;
    }

    @Override // i4.j
    public boolean e() {
        g3.k kVar = this.f17115a;
        if (!(kVar instanceof h0) && !(kVar instanceof o3.g)) {
            return false;
        }
        return true;
    }

    @Override // i4.j
    public j f() {
        g3.k fVar;
        y4.a.f(!e());
        g3.k kVar = this.f17115a;
        if (kVar instanceof t) {
            fVar = new t(this.f17116b.f4505c, this.f17117c);
        } else if (kVar instanceof q3.h) {
            fVar = new q3.h();
        } else if (kVar instanceof q3.b) {
            fVar = new q3.b();
        } else if (kVar instanceof q3.e) {
            fVar = new q3.e();
        } else if (kVar instanceof n3.f) {
            fVar = new n3.f();
        } else {
            throw new IllegalStateException("Unexpected extractor type for recreation: " + this.f17115a.getClass().getSimpleName());
        }
        return new b(fVar, this.f17116b, this.f17117c);
    }
}
