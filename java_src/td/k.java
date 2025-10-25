package td;
/* loaded from: classes2.dex */
public interface k extends g2 {

    /* loaded from: classes2.dex */
    public static final class a implements k {

        /* renamed from: a  reason: collision with root package name */
        private final id.l f30660a;

        public a(id.l lVar) {
            this.f30660a = lVar;
        }

        @Override // td.k
        public void a(Throwable th) {
            this.f30660a.invoke(th);
        }

        public String toString() {
            return "CancelHandler.UserSupplied[" + p0.a(this.f30660a) + '@' + p0.b(this) + ']';
        }
    }

    void a(Throwable th);
}
