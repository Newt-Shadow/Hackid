package t7;

import t7.f0;
/* loaded from: classes.dex */
final class x extends f0.e.d.AbstractC0335e.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f30471a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30472b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.AbstractC0335e.b.a {

        /* renamed from: a  reason: collision with root package name */
        private String f30473a;

        /* renamed from: b  reason: collision with root package name */
        private String f30474b;

        @Override // t7.f0.e.d.AbstractC0335e.b.a
        public f0.e.d.AbstractC0335e.b a() {
            String str;
            String str2 = this.f30473a;
            if (str2 != null && (str = this.f30474b) != null) {
                return new x(str2, str);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30473a == null) {
                sb2.append(" rolloutId");
            }
            if (this.f30474b == null) {
                sb2.append(" variantId");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.d.AbstractC0335e.b.a
        public f0.e.d.AbstractC0335e.b.a b(String str) {
            if (str != null) {
                this.f30473a = str;
                return this;
            }
            throw new NullPointerException("Null rolloutId");
        }

        @Override // t7.f0.e.d.AbstractC0335e.b.a
        public f0.e.d.AbstractC0335e.b.a c(String str) {
            if (str != null) {
                this.f30474b = str;
                return this;
            }
            throw new NullPointerException("Null variantId");
        }
    }

    @Override // t7.f0.e.d.AbstractC0335e.b
    public String b() {
        return this.f30471a;
    }

    @Override // t7.f0.e.d.AbstractC0335e.b
    public String c() {
        return this.f30472b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.AbstractC0335e.b)) {
            return false;
        }
        f0.e.d.AbstractC0335e.b bVar = (f0.e.d.AbstractC0335e.b) obj;
        if (this.f30471a.equals(bVar.b()) && this.f30472b.equals(bVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f30471a.hashCode() ^ 1000003) * 1000003) ^ this.f30472b.hashCode();
    }

    public String toString() {
        return "RolloutVariant{rolloutId=" + this.f30471a + ", variantId=" + this.f30472b + "}";
    }

    private x(String str, String str2) {
        this.f30471a = str;
        this.f30472b = str2;
    }
}
