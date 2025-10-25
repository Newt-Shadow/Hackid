package x4;

import java.util.ArrayList;
import y4.q0;
/* loaded from: classes.dex */
public abstract class f implements j {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f32321a;

    /* renamed from: b  reason: collision with root package name */
    private final ArrayList f32322b = new ArrayList(1);

    /* renamed from: c  reason: collision with root package name */
    private int f32323c;

    /* renamed from: d  reason: collision with root package name */
    private n f32324d;

    /* JADX INFO: Access modifiers changed from: protected */
    public f(boolean z10) {
        this.f32321a = z10;
    }

    @Override // x4.j
    public final void d(m0 m0Var) {
        y4.a.e(m0Var);
        if (!this.f32322b.contains(m0Var)) {
            this.f32322b.add(m0Var);
            this.f32323c++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void q(int i10) {
        n nVar = (n) q0.j(this.f32324d);
        for (int i11 = 0; i11 < this.f32323c; i11++) {
            ((m0) this.f32322b.get(i11)).f(this, nVar, this.f32321a, i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void r() {
        n nVar = (n) q0.j(this.f32324d);
        for (int i10 = 0; i10 < this.f32323c; i10++) {
            ((m0) this.f32322b.get(i10)).a(this, nVar, this.f32321a);
        }
        this.f32324d = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void s(n nVar) {
        for (int i10 = 0; i10 < this.f32323c; i10++) {
            ((m0) this.f32322b.get(i10)).e(this, nVar, this.f32321a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void t(n nVar) {
        this.f32324d = nVar;
        for (int i10 = 0; i10 < this.f32323c; i10++) {
            ((m0) this.f32322b.get(i10)).h(this, nVar, this.f32321a);
        }
    }
}
