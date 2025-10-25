package t7;

import t7.f0;
/* loaded from: classes.dex */
final class v extends f0.e.d.AbstractC0334d {

    /* renamed from: a  reason: collision with root package name */
    private final String f30460a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.AbstractC0334d.a {

        /* renamed from: a  reason: collision with root package name */
        private String f30461a;

        @Override // t7.f0.e.d.AbstractC0334d.a
        public f0.e.d.AbstractC0334d a() {
            String str = this.f30461a;
            if (str != null) {
                return new v(str);
            }
            throw new IllegalStateException("Missing required properties: content");
        }

        @Override // t7.f0.e.d.AbstractC0334d.a
        public f0.e.d.AbstractC0334d.a b(String str) {
            if (str != null) {
                this.f30461a = str;
                return this;
            }
            throw new NullPointerException("Null content");
        }
    }

    @Override // t7.f0.e.d.AbstractC0334d
    public String b() {
        return this.f30460a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.d.AbstractC0334d) {
            return this.f30460a.equals(((f0.e.d.AbstractC0334d) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f30460a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Log{content=" + this.f30460a + "}";
    }

    private v(String str) {
        this.f30460a = str;
    }
}
