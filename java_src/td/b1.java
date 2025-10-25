package td;
/* loaded from: classes2.dex */
final class b1 implements k {

    /* renamed from: a  reason: collision with root package name */
    private final a1 f30629a;

    public b1(a1 a1Var) {
        this.f30629a = a1Var;
    }

    @Override // td.k
    public void a(Throwable th) {
        this.f30629a.dispose();
    }

    public String toString() {
        return "DisposeOnCancel[" + this.f30629a + ']';
    }
}
