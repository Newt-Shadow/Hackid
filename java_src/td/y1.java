package td;
/* loaded from: classes2.dex */
public abstract class y1 extends yd.q implements a1, p1 {

    /* renamed from: d  reason: collision with root package name */
    public z1 f30702d;

    @Override // td.p1
    public e2 b() {
        return null;
    }

    @Override // td.a1
    public void dispose() {
        t().C0(this);
    }

    @Override // td.p1
    public boolean isActive() {
        return true;
    }

    public final z1 t() {
        z1 z1Var = this.f30702d;
        if (z1Var != null) {
            return z1Var;
        }
        kotlin.jvm.internal.m.s("job");
        return null;
    }

    @Override // yd.q
    public String toString() {
        return p0.a(this) + '@' + p0.b(this) + "[job@" + p0.b(t()) + ']';
    }

    public abstract boolean u();

    public abstract void v(Throwable th);

    public final void w(z1 z1Var) {
        this.f30702d = z1Var;
    }
}
