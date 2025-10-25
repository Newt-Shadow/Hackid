package t7;

import t7.f0;
/* loaded from: classes.dex */
final class e extends f0.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f30283a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30284b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.c.a {

        /* renamed from: a  reason: collision with root package name */
        private String f30285a;

        /* renamed from: b  reason: collision with root package name */
        private String f30286b;

        @Override // t7.f0.c.a
        public f0.c a() {
            String str;
            String str2 = this.f30285a;
            if (str2 != null && (str = this.f30286b) != null) {
                return new e(str2, str);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30285a == null) {
                sb2.append(" key");
            }
            if (this.f30286b == null) {
                sb2.append(" value");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.c.a
        public f0.c.a b(String str) {
            if (str != null) {
                this.f30285a = str;
                return this;
            }
            throw new NullPointerException("Null key");
        }

        @Override // t7.f0.c.a
        public f0.c.a c(String str) {
            if (str != null) {
                this.f30286b = str;
                return this;
            }
            throw new NullPointerException("Null value");
        }
    }

    @Override // t7.f0.c
    public String b() {
        return this.f30283a;
    }

    @Override // t7.f0.c
    public String c() {
        return this.f30284b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.c)) {
            return false;
        }
        f0.c cVar = (f0.c) obj;
        if (this.f30283a.equals(cVar.b()) && this.f30284b.equals(cVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f30283a.hashCode() ^ 1000003) * 1000003) ^ this.f30284b.hashCode();
    }

    public String toString() {
        return "CustomAttribute{key=" + this.f30283a + ", value=" + this.f30284b + "}";
    }

    private e(String str, String str2) {
        this.f30283a = str;
        this.f30284b = str2;
    }
}
