package o2;

import o2.o;
/* loaded from: classes.dex */
final class e extends o {

    /* renamed from: a  reason: collision with root package name */
    private final o.b f27031a;

    /* renamed from: b  reason: collision with root package name */
    private final o2.a f27032b;

    /* loaded from: classes.dex */
    static final class b extends o.a {

        /* renamed from: a  reason: collision with root package name */
        private o.b f27033a;

        /* renamed from: b  reason: collision with root package name */
        private o2.a f27034b;

        @Override // o2.o.a
        public o a() {
            return new e(this.f27033a, this.f27034b);
        }

        @Override // o2.o.a
        public o.a b(o2.a aVar) {
            this.f27034b = aVar;
            return this;
        }

        @Override // o2.o.a
        public o.a c(o.b bVar) {
            this.f27033a = bVar;
            return this;
        }
    }

    @Override // o2.o
    public o2.a b() {
        return this.f27032b;
    }

    @Override // o2.o
    public o.b c() {
        return this.f27031a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        o.b bVar = this.f27031a;
        if (bVar != null ? bVar.equals(oVar.c()) : oVar.c() == null) {
            o2.a aVar = this.f27032b;
            if (aVar == null) {
                if (oVar.b() == null) {
                    return true;
                }
            } else if (aVar.equals(oVar.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        o.b bVar = this.f27031a;
        int i10 = 0;
        if (bVar == null) {
            hashCode = 0;
        } else {
            hashCode = bVar.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        o2.a aVar = this.f27032b;
        if (aVar != null) {
            i10 = aVar.hashCode();
        }
        return i11 ^ i10;
    }

    public String toString() {
        return "ClientInfo{clientType=" + this.f27031a + ", androidClientInfo=" + this.f27032b + "}";
    }

    private e(o.b bVar, o2.a aVar) {
        this.f27031a = bVar;
        this.f27032b = aVar;
    }
}
