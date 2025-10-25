package p2;

import p2.o;
/* loaded from: classes.dex */
final class c extends o {

    /* renamed from: a  reason: collision with root package name */
    private final p f27738a;

    /* renamed from: b  reason: collision with root package name */
    private final String f27739b;

    /* renamed from: c  reason: collision with root package name */
    private final n2.d f27740c;

    /* renamed from: d  reason: collision with root package name */
    private final n2.h f27741d;

    /* renamed from: e  reason: collision with root package name */
    private final n2.c f27742e;

    /* loaded from: classes.dex */
    static final class b extends o.a {

        /* renamed from: a  reason: collision with root package name */
        private p f27743a;

        /* renamed from: b  reason: collision with root package name */
        private String f27744b;

        /* renamed from: c  reason: collision with root package name */
        private n2.d f27745c;

        /* renamed from: d  reason: collision with root package name */
        private n2.h f27746d;

        /* renamed from: e  reason: collision with root package name */
        private n2.c f27747e;

        @Override // p2.o.a
        public o a() {
            String str = "";
            if (this.f27743a == null) {
                str = " transportContext";
            }
            if (this.f27744b == null) {
                str = str + " transportName";
            }
            if (this.f27745c == null) {
                str = str + " event";
            }
            if (this.f27746d == null) {
                str = str + " transformer";
            }
            if (this.f27747e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new c(this.f27743a, this.f27744b, this.f27745c, this.f27746d, this.f27747e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p2.o.a
        o.a b(n2.c cVar) {
            if (cVar != null) {
                this.f27747e = cVar;
                return this;
            }
            throw new NullPointerException("Null encoding");
        }

        @Override // p2.o.a
        o.a c(n2.d dVar) {
            if (dVar != null) {
                this.f27745c = dVar;
                return this;
            }
            throw new NullPointerException("Null event");
        }

        @Override // p2.o.a
        o.a d(n2.h hVar) {
            if (hVar != null) {
                this.f27746d = hVar;
                return this;
            }
            throw new NullPointerException("Null transformer");
        }

        @Override // p2.o.a
        public o.a e(p pVar) {
            if (pVar != null) {
                this.f27743a = pVar;
                return this;
            }
            throw new NullPointerException("Null transportContext");
        }

        @Override // p2.o.a
        public o.a f(String str) {
            if (str != null) {
                this.f27744b = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }
    }

    @Override // p2.o
    public n2.c b() {
        return this.f27742e;
    }

    @Override // p2.o
    n2.d c() {
        return this.f27740c;
    }

    @Override // p2.o
    n2.h e() {
        return this.f27741d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f27738a.equals(oVar.f()) && this.f27739b.equals(oVar.g()) && this.f27740c.equals(oVar.c()) && this.f27741d.equals(oVar.e()) && this.f27742e.equals(oVar.b())) {
            return true;
        }
        return false;
    }

    @Override // p2.o
    public p f() {
        return this.f27738a;
    }

    @Override // p2.o
    public String g() {
        return this.f27739b;
    }

    public int hashCode() {
        return ((((((((this.f27738a.hashCode() ^ 1000003) * 1000003) ^ this.f27739b.hashCode()) * 1000003) ^ this.f27740c.hashCode()) * 1000003) ^ this.f27741d.hashCode()) * 1000003) ^ this.f27742e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f27738a + ", transportName=" + this.f27739b + ", event=" + this.f27740c + ", transformer=" + this.f27741d + ", encoding=" + this.f27742e + "}";
    }

    private c(p pVar, String str, n2.d dVar, n2.h hVar, n2.c cVar) {
        this.f27738a = pVar;
        this.f27739b = str;
        this.f27740c = dVar;
        this.f27741d = hVar;
        this.f27742e = cVar;
    }
}
