package o2;

import o2.p;
/* loaded from: classes.dex */
final class f extends p {

    /* renamed from: a  reason: collision with root package name */
    private final s f27035a;

    /* renamed from: b  reason: collision with root package name */
    private final p.b f27036b;

    /* loaded from: classes.dex */
    static final class b extends p.a {

        /* renamed from: a  reason: collision with root package name */
        private s f27037a;

        /* renamed from: b  reason: collision with root package name */
        private p.b f27038b;

        @Override // o2.p.a
        public p a() {
            return new f(this.f27037a, this.f27038b);
        }

        @Override // o2.p.a
        public p.a b(s sVar) {
            this.f27037a = sVar;
            return this;
        }

        @Override // o2.p.a
        public p.a c(p.b bVar) {
            this.f27038b = bVar;
            return this;
        }
    }

    @Override // o2.p
    public s b() {
        return this.f27035a;
    }

    @Override // o2.p
    public p.b c() {
        return this.f27036b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        s sVar = this.f27035a;
        if (sVar != null ? sVar.equals(pVar.b()) : pVar.b() == null) {
            p.b bVar = this.f27036b;
            if (bVar == null) {
                if (pVar.c() == null) {
                    return true;
                }
            } else if (bVar.equals(pVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        s sVar = this.f27035a;
        int i10 = 0;
        if (sVar == null) {
            hashCode = 0;
        } else {
            hashCode = sVar.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        p.b bVar = this.f27036b;
        if (bVar != null) {
            i10 = bVar.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "ComplianceData{privacyContext=" + this.f27035a + ", productIdOrigin=" + this.f27036b + "}";
    }

    private f(s sVar, p.b bVar) {
        this.f27035a = sVar;
        this.f27036b = bVar;
    }
}
