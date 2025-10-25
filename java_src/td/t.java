package td;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class t extends y1 implements s {

    /* renamed from: e  reason: collision with root package name */
    public final u f30694e;

    public t(u uVar) {
        this.f30694e = uVar;
    }

    @Override // td.s
    public boolean a(Throwable th) {
        return t().Q(th);
    }

    @Override // td.s
    public t1 getParent() {
        return t();
    }

    @Override // td.y1
    public boolean u() {
        return true;
    }

    @Override // td.y1
    public void v(Throwable th) {
        this.f30694e.P(t());
    }
}
