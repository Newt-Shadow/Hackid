package o2;

import o2.s;
/* loaded from: classes.dex */
final class i extends s {

    /* renamed from: a  reason: collision with root package name */
    private final r f27045a;

    /* loaded from: classes.dex */
    static final class b extends s.a {

        /* renamed from: a  reason: collision with root package name */
        private r f27046a;

        @Override // o2.s.a
        public s a() {
            return new i(this.f27046a);
        }

        @Override // o2.s.a
        public s.a b(r rVar) {
            this.f27046a = rVar;
            return this;
        }
    }

    @Override // o2.s
    public r b() {
        return this.f27045a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        r rVar = this.f27045a;
        r b10 = ((s) obj).b();
        if (rVar == null) {
            if (b10 == null) {
                return true;
            }
            return false;
        }
        return rVar.equals(b10);
    }

    public int hashCode() {
        int hashCode;
        r rVar = this.f27045a;
        if (rVar == null) {
            hashCode = 0;
        } else {
            hashCode = rVar.hashCode();
        }
        return hashCode ^ 1000003;
    }

    public String toString() {
        return "ExternalPrivacyContext{prequest=" + this.f27045a + "}";
    }

    private i(r rVar) {
        this.f27045a = rVar;
    }
}
