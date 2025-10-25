package o2;

import o2.w;
/* loaded from: classes.dex */
final class m extends w {

    /* renamed from: a  reason: collision with root package name */
    private final w.c f27080a;

    /* renamed from: b  reason: collision with root package name */
    private final w.b f27081b;

    /* loaded from: classes.dex */
    static final class b extends w.a {

        /* renamed from: a  reason: collision with root package name */
        private w.c f27082a;

        /* renamed from: b  reason: collision with root package name */
        private w.b f27083b;

        @Override // o2.w.a
        public w a() {
            return new m(this.f27082a, this.f27083b);
        }

        @Override // o2.w.a
        public w.a b(w.b bVar) {
            this.f27083b = bVar;
            return this;
        }

        @Override // o2.w.a
        public w.a c(w.c cVar) {
            this.f27082a = cVar;
            return this;
        }
    }

    @Override // o2.w
    public w.b b() {
        return this.f27081b;
    }

    @Override // o2.w
    public w.c c() {
        return this.f27080a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof w)) {
            return false;
        }
        w wVar = (w) obj;
        w.c cVar = this.f27080a;
        if (cVar != null ? cVar.equals(wVar.c()) : wVar.c() == null) {
            w.b bVar = this.f27081b;
            if (bVar == null) {
                if (wVar.b() == null) {
                    return true;
                }
            } else if (bVar.equals(wVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        w.c cVar = this.f27080a;
        int i10 = 0;
        if (cVar == null) {
            hashCode = 0;
        } else {
            hashCode = cVar.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        w.b bVar = this.f27081b;
        if (bVar != null) {
            i10 = bVar.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f27080a + ", mobileSubtype=" + this.f27081b + "}";
    }

    private m(w.c cVar, w.b bVar) {
        this.f27080a = cVar;
        this.f27081b = bVar;
    }
}
