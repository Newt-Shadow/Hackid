package t7;

import t7.f0;
/* loaded from: classes.dex */
final class a0 extends f0.e.f {

    /* renamed from: a  reason: collision with root package name */
    private final String f30213a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.f.a {

        /* renamed from: a  reason: collision with root package name */
        private String f30214a;

        @Override // t7.f0.e.f.a
        public f0.e.f a() {
            String str = this.f30214a;
            if (str != null) {
                return new a0(str);
            }
            throw new IllegalStateException("Missing required properties: identifier");
        }

        @Override // t7.f0.e.f.a
        public f0.e.f.a b(String str) {
            if (str != null) {
                this.f30214a = str;
                return this;
            }
            throw new NullPointerException("Null identifier");
        }
    }

    @Override // t7.f0.e.f
    public String b() {
        return this.f30213a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.f) {
            return this.f30213a.equals(((f0.e.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f30213a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "User{identifier=" + this.f30213a + "}";
    }

    private a0(String str) {
        this.f30213a = str;
    }
}
