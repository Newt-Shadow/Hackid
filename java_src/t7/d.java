package t7;

import t7.f0;
/* loaded from: classes.dex */
final class d extends f0.a.AbstractC0319a {

    /* renamed from: a  reason: collision with root package name */
    private final String f30268a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30269b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30270c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.a.AbstractC0319a.AbstractC0320a {

        /* renamed from: a  reason: collision with root package name */
        private String f30271a;

        /* renamed from: b  reason: collision with root package name */
        private String f30272b;

        /* renamed from: c  reason: collision with root package name */
        private String f30273c;

        @Override // t7.f0.a.AbstractC0319a.AbstractC0320a
        public f0.a.AbstractC0319a a() {
            String str;
            String str2;
            String str3 = this.f30271a;
            if (str3 != null && (str = this.f30272b) != null && (str2 = this.f30273c) != null) {
                return new d(str3, str, str2);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30271a == null) {
                sb2.append(" arch");
            }
            if (this.f30272b == null) {
                sb2.append(" libraryName");
            }
            if (this.f30273c == null) {
                sb2.append(" buildId");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.a.AbstractC0319a.AbstractC0320a
        public f0.a.AbstractC0319a.AbstractC0320a b(String str) {
            if (str != null) {
                this.f30271a = str;
                return this;
            }
            throw new NullPointerException("Null arch");
        }

        @Override // t7.f0.a.AbstractC0319a.AbstractC0320a
        public f0.a.AbstractC0319a.AbstractC0320a c(String str) {
            if (str != null) {
                this.f30273c = str;
                return this;
            }
            throw new NullPointerException("Null buildId");
        }

        @Override // t7.f0.a.AbstractC0319a.AbstractC0320a
        public f0.a.AbstractC0319a.AbstractC0320a d(String str) {
            if (str != null) {
                this.f30272b = str;
                return this;
            }
            throw new NullPointerException("Null libraryName");
        }
    }

    @Override // t7.f0.a.AbstractC0319a
    public String b() {
        return this.f30268a;
    }

    @Override // t7.f0.a.AbstractC0319a
    public String c() {
        return this.f30270c;
    }

    @Override // t7.f0.a.AbstractC0319a
    public String d() {
        return this.f30269b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.a.AbstractC0319a)) {
            return false;
        }
        f0.a.AbstractC0319a abstractC0319a = (f0.a.AbstractC0319a) obj;
        if (this.f30268a.equals(abstractC0319a.b()) && this.f30269b.equals(abstractC0319a.d()) && this.f30270c.equals(abstractC0319a.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f30268a.hashCode() ^ 1000003) * 1000003) ^ this.f30269b.hashCode()) * 1000003) ^ this.f30270c.hashCode();
    }

    public String toString() {
        return "BuildIdMappingForArch{arch=" + this.f30268a + ", libraryName=" + this.f30269b + ", buildId=" + this.f30270c + "}";
    }

    private d(String str, String str2, String str3) {
        this.f30268a = str;
        this.f30269b = str2;
        this.f30270c = str3;
    }
}
