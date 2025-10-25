package d4;

import b3.f2;
import b3.g4;
import d4.t;
/* loaded from: classes.dex */
public abstract class w0 extends f {

    /* renamed from: l  reason: collision with root package name */
    private static final Void f14975l = null;

    /* renamed from: k  reason: collision with root package name */
    protected final t f14976k;

    /* JADX INFO: Access modifiers changed from: protected */
    public w0(t tVar) {
        this.f14976k = tVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // d4.f, d4.a
    public final void C(x4.m0 m0Var) {
        super.C(m0Var);
        V();
    }

    protected abstract t.b M(t.b bVar);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // d4.f
    /* renamed from: N */
    public final t.b G(Void r12, t.b bVar) {
        return M(bVar);
    }

    protected long O(long j10) {
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // d4.f
    /* renamed from: P */
    public final long H(Void r12, long j10) {
        return O(j10);
    }

    protected int Q(int i10) {
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // d4.f
    /* renamed from: R */
    public final int I(Void r12, int i10) {
        return Q(i10);
    }

    protected abstract void S(g4 g4Var);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // d4.f
    /* renamed from: T */
    public final void K(Void r12, t tVar, g4 g4Var) {
        S(g4Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void U() {
        L(f14975l, this.f14976k);
    }

    protected abstract void V();

    @Override // d4.t
    public f2 j() {
        return this.f14976k.j();
    }

    @Override // d4.t
    public boolean l() {
        return this.f14976k.l();
    }

    @Override // d4.t
    public g4 n() {
        return this.f14976k.n();
    }
}
