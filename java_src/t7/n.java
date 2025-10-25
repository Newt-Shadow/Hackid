package t7;

import java.util.List;
import t7.f0;
/* loaded from: classes.dex */
final class n extends f0.e.d.a.b {

    /* renamed from: a  reason: collision with root package name */
    private final List f30383a;

    /* renamed from: b  reason: collision with root package name */
    private final f0.e.d.a.b.c f30384b;

    /* renamed from: c  reason: collision with root package name */
    private final f0.a f30385c;

    /* renamed from: d  reason: collision with root package name */
    private final f0.e.d.a.b.AbstractC0327d f30386d;

    /* renamed from: e  reason: collision with root package name */
    private final List f30387e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.a.b.AbstractC0325b {

        /* renamed from: a  reason: collision with root package name */
        private List f30388a;

        /* renamed from: b  reason: collision with root package name */
        private f0.e.d.a.b.c f30389b;

        /* renamed from: c  reason: collision with root package name */
        private f0.a f30390c;

        /* renamed from: d  reason: collision with root package name */
        private f0.e.d.a.b.AbstractC0327d f30391d;

        /* renamed from: e  reason: collision with root package name */
        private List f30392e;

        @Override // t7.f0.e.d.a.b.AbstractC0325b
        public f0.e.d.a.b a() {
            List list;
            f0.e.d.a.b.AbstractC0327d abstractC0327d = this.f30391d;
            if (abstractC0327d != null && (list = this.f30392e) != null) {
                return new n(this.f30388a, this.f30389b, this.f30390c, abstractC0327d, list);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30391d == null) {
                sb2.append(" signal");
            }
            if (this.f30392e == null) {
                sb2.append(" binaries");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.d.a.b.AbstractC0325b
        public f0.e.d.a.b.AbstractC0325b b(f0.a aVar) {
            this.f30390c = aVar;
            return this;
        }

        @Override // t7.f0.e.d.a.b.AbstractC0325b
        public f0.e.d.a.b.AbstractC0325b c(List list) {
            if (list != null) {
                this.f30392e = list;
                return this;
            }
            throw new NullPointerException("Null binaries");
        }

        @Override // t7.f0.e.d.a.b.AbstractC0325b
        public f0.e.d.a.b.AbstractC0325b d(f0.e.d.a.b.c cVar) {
            this.f30389b = cVar;
            return this;
        }

        @Override // t7.f0.e.d.a.b.AbstractC0325b
        public f0.e.d.a.b.AbstractC0325b e(f0.e.d.a.b.AbstractC0327d abstractC0327d) {
            if (abstractC0327d != null) {
                this.f30391d = abstractC0327d;
                return this;
            }
            throw new NullPointerException("Null signal");
        }

        @Override // t7.f0.e.d.a.b.AbstractC0325b
        public f0.e.d.a.b.AbstractC0325b f(List list) {
            this.f30388a = list;
            return this;
        }
    }

    @Override // t7.f0.e.d.a.b
    public f0.a b() {
        return this.f30385c;
    }

    @Override // t7.f0.e.d.a.b
    public List c() {
        return this.f30387e;
    }

    @Override // t7.f0.e.d.a.b
    public f0.e.d.a.b.c d() {
        return this.f30384b;
    }

    @Override // t7.f0.e.d.a.b
    public f0.e.d.a.b.AbstractC0327d e() {
        return this.f30386d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b)) {
            return false;
        }
        f0.e.d.a.b bVar = (f0.e.d.a.b) obj;
        List list = this.f30383a;
        if (list != null ? list.equals(bVar.f()) : bVar.f() == null) {
            f0.e.d.a.b.c cVar = this.f30384b;
            if (cVar != null ? cVar.equals(bVar.d()) : bVar.d() == null) {
                f0.a aVar = this.f30385c;
                if (aVar != null ? aVar.equals(bVar.b()) : bVar.b() == null) {
                    if (this.f30386d.equals(bVar.e()) && this.f30387e.equals(bVar.c())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // t7.f0.e.d.a.b
    public List f() {
        return this.f30383a;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        List list = this.f30383a;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        f0.e.d.a.b.c cVar = this.f30384b;
        if (cVar == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = cVar.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        f0.a aVar = this.f30385c;
        if (aVar != null) {
            i10 = aVar.hashCode();
        }
        return ((((i12 ^ i10) * 1000003) ^ this.f30386d.hashCode()) * 1000003) ^ this.f30387e.hashCode();
    }

    public String toString() {
        return "Execution{threads=" + this.f30383a + ", exception=" + this.f30384b + ", appExitInfo=" + this.f30385c + ", signal=" + this.f30386d + ", binaries=" + this.f30387e + "}";
    }

    private n(List list, f0.e.d.a.b.c cVar, f0.a aVar, f0.e.d.a.b.AbstractC0327d abstractC0327d, List list2) {
        this.f30383a = list;
        this.f30384b = cVar;
        this.f30385c = aVar;
        this.f30386d = abstractC0327d;
        this.f30387e = list2;
    }
}
