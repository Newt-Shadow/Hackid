package t7;

import java.util.List;
import t7.f0;
/* loaded from: classes.dex */
final class m extends f0.e.d.a {

    /* renamed from: a  reason: collision with root package name */
    private final f0.e.d.a.b f30368a;

    /* renamed from: b  reason: collision with root package name */
    private final List f30369b;

    /* renamed from: c  reason: collision with root package name */
    private final List f30370c;

    /* renamed from: d  reason: collision with root package name */
    private final Boolean f30371d;

    /* renamed from: e  reason: collision with root package name */
    private final f0.e.d.a.c f30372e;

    /* renamed from: f  reason: collision with root package name */
    private final List f30373f;

    /* renamed from: g  reason: collision with root package name */
    private final int f30374g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.a.AbstractC0322a {

        /* renamed from: a  reason: collision with root package name */
        private f0.e.d.a.b f30375a;

        /* renamed from: b  reason: collision with root package name */
        private List f30376b;

        /* renamed from: c  reason: collision with root package name */
        private List f30377c;

        /* renamed from: d  reason: collision with root package name */
        private Boolean f30378d;

        /* renamed from: e  reason: collision with root package name */
        private f0.e.d.a.c f30379e;

        /* renamed from: f  reason: collision with root package name */
        private List f30380f;

        /* renamed from: g  reason: collision with root package name */
        private int f30381g;

        /* renamed from: h  reason: collision with root package name */
        private byte f30382h;

        @Override // t7.f0.e.d.a.AbstractC0322a
        public f0.e.d.a a() {
            f0.e.d.a.b bVar;
            if (this.f30382h == 1 && (bVar = this.f30375a) != null) {
                return new m(bVar, this.f30376b, this.f30377c, this.f30378d, this.f30379e, this.f30380f, this.f30381g);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30375a == null) {
                sb2.append(" execution");
            }
            if ((1 & this.f30382h) == 0) {
                sb2.append(" uiOrientation");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.d.a.AbstractC0322a
        public f0.e.d.a.AbstractC0322a b(List list) {
            this.f30380f = list;
            return this;
        }

        @Override // t7.f0.e.d.a.AbstractC0322a
        public f0.e.d.a.AbstractC0322a c(Boolean bool) {
            this.f30378d = bool;
            return this;
        }

        @Override // t7.f0.e.d.a.AbstractC0322a
        public f0.e.d.a.AbstractC0322a d(f0.e.d.a.c cVar) {
            this.f30379e = cVar;
            return this;
        }

        @Override // t7.f0.e.d.a.AbstractC0322a
        public f0.e.d.a.AbstractC0322a e(List list) {
            this.f30376b = list;
            return this;
        }

        @Override // t7.f0.e.d.a.AbstractC0322a
        public f0.e.d.a.AbstractC0322a f(f0.e.d.a.b bVar) {
            if (bVar != null) {
                this.f30375a = bVar;
                return this;
            }
            throw new NullPointerException("Null execution");
        }

        @Override // t7.f0.e.d.a.AbstractC0322a
        public f0.e.d.a.AbstractC0322a g(List list) {
            this.f30377c = list;
            return this;
        }

        @Override // t7.f0.e.d.a.AbstractC0322a
        public f0.e.d.a.AbstractC0322a h(int i10) {
            this.f30381g = i10;
            this.f30382h = (byte) (this.f30382h | 1);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public b() {
        }

        private b(f0.e.d.a aVar) {
            this.f30375a = aVar.f();
            this.f30376b = aVar.e();
            this.f30377c = aVar.g();
            this.f30378d = aVar.c();
            this.f30379e = aVar.d();
            this.f30380f = aVar.b();
            this.f30381g = aVar.h();
            this.f30382h = (byte) 1;
        }
    }

    @Override // t7.f0.e.d.a
    public List b() {
        return this.f30373f;
    }

    @Override // t7.f0.e.d.a
    public Boolean c() {
        return this.f30371d;
    }

    @Override // t7.f0.e.d.a
    public f0.e.d.a.c d() {
        return this.f30372e;
    }

    @Override // t7.f0.e.d.a
    public List e() {
        return this.f30369b;
    }

    public boolean equals(Object obj) {
        List list;
        List list2;
        Boolean bool;
        f0.e.d.a.c cVar;
        List list3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a)) {
            return false;
        }
        f0.e.d.a aVar = (f0.e.d.a) obj;
        if (this.f30368a.equals(aVar.f()) && ((list = this.f30369b) != null ? list.equals(aVar.e()) : aVar.e() == null) && ((list2 = this.f30370c) != null ? list2.equals(aVar.g()) : aVar.g() == null) && ((bool = this.f30371d) != null ? bool.equals(aVar.c()) : aVar.c() == null) && ((cVar = this.f30372e) != null ? cVar.equals(aVar.d()) : aVar.d() == null) && ((list3 = this.f30373f) != null ? list3.equals(aVar.b()) : aVar.b() == null) && this.f30374g == aVar.h()) {
            return true;
        }
        return false;
    }

    @Override // t7.f0.e.d.a
    public f0.e.d.a.b f() {
        return this.f30368a;
    }

    @Override // t7.f0.e.d.a
    public List g() {
        return this.f30370c;
    }

    @Override // t7.f0.e.d.a
    public int h() {
        return this.f30374g;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5 = (this.f30368a.hashCode() ^ 1000003) * 1000003;
        List list = this.f30369b;
        int i10 = 0;
        if (list == null) {
            hashCode = 0;
        } else {
            hashCode = list.hashCode();
        }
        int i11 = (hashCode5 ^ hashCode) * 1000003;
        List list2 = this.f30370c;
        if (list2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = list2.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        Boolean bool = this.f30371d;
        if (bool == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = bool.hashCode();
        }
        int i13 = (i12 ^ hashCode3) * 1000003;
        f0.e.d.a.c cVar = this.f30372e;
        if (cVar == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = cVar.hashCode();
        }
        int i14 = (i13 ^ hashCode4) * 1000003;
        List list3 = this.f30373f;
        if (list3 != null) {
            i10 = list3.hashCode();
        }
        return ((i14 ^ i10) * 1000003) ^ this.f30374g;
    }

    @Override // t7.f0.e.d.a
    public f0.e.d.a.AbstractC0322a i() {
        return new b(this);
    }

    public String toString() {
        return "Application{execution=" + this.f30368a + ", customAttributes=" + this.f30369b + ", internalKeys=" + this.f30370c + ", background=" + this.f30371d + ", currentProcessDetails=" + this.f30372e + ", appProcessDetails=" + this.f30373f + ", uiOrientation=" + this.f30374g + "}";
    }

    private m(f0.e.d.a.b bVar, List list, List list2, Boolean bool, f0.e.d.a.c cVar, List list3, int i10) {
        this.f30368a = bVar;
        this.f30369b = list;
        this.f30370c = list2;
        this.f30371d = bool;
        this.f30372e = cVar;
        this.f30373f = list3;
        this.f30374g = i10;
    }
}
