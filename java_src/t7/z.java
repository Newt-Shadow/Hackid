package t7;

import t7.f0;
/* loaded from: classes.dex */
final class z extends f0.e.AbstractC0336e {

    /* renamed from: a  reason: collision with root package name */
    private final int f30477a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30478b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30479c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f30480d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.AbstractC0336e.a {

        /* renamed from: a  reason: collision with root package name */
        private int f30481a;

        /* renamed from: b  reason: collision with root package name */
        private String f30482b;

        /* renamed from: c  reason: collision with root package name */
        private String f30483c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f30484d;

        /* renamed from: e  reason: collision with root package name */
        private byte f30485e;

        @Override // t7.f0.e.AbstractC0336e.a
        public f0.e.AbstractC0336e a() {
            String str;
            String str2;
            if (this.f30485e == 3 && (str = this.f30482b) != null && (str2 = this.f30483c) != null) {
                return new z(this.f30481a, str, str2, this.f30484d);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f30485e & 1) == 0) {
                sb2.append(" platform");
            }
            if (this.f30482b == null) {
                sb2.append(" version");
            }
            if (this.f30483c == null) {
                sb2.append(" buildVersion");
            }
            if ((this.f30485e & 2) == 0) {
                sb2.append(" jailbroken");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.AbstractC0336e.a
        public f0.e.AbstractC0336e.a b(String str) {
            if (str != null) {
                this.f30483c = str;
                return this;
            }
            throw new NullPointerException("Null buildVersion");
        }

        @Override // t7.f0.e.AbstractC0336e.a
        public f0.e.AbstractC0336e.a c(boolean z10) {
            this.f30484d = z10;
            this.f30485e = (byte) (this.f30485e | 2);
            return this;
        }

        @Override // t7.f0.e.AbstractC0336e.a
        public f0.e.AbstractC0336e.a d(int i10) {
            this.f30481a = i10;
            this.f30485e = (byte) (this.f30485e | 1);
            return this;
        }

        @Override // t7.f0.e.AbstractC0336e.a
        public f0.e.AbstractC0336e.a e(String str) {
            if (str != null) {
                this.f30482b = str;
                return this;
            }
            throw new NullPointerException("Null version");
        }
    }

    @Override // t7.f0.e.AbstractC0336e
    public String b() {
        return this.f30479c;
    }

    @Override // t7.f0.e.AbstractC0336e
    public int c() {
        return this.f30477a;
    }

    @Override // t7.f0.e.AbstractC0336e
    public String d() {
        return this.f30478b;
    }

    @Override // t7.f0.e.AbstractC0336e
    public boolean e() {
        return this.f30480d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.AbstractC0336e)) {
            return false;
        }
        f0.e.AbstractC0336e abstractC0336e = (f0.e.AbstractC0336e) obj;
        if (this.f30477a == abstractC0336e.c() && this.f30478b.equals(abstractC0336e.d()) && this.f30479c.equals(abstractC0336e.b()) && this.f30480d == abstractC0336e.e()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (((((this.f30477a ^ 1000003) * 1000003) ^ this.f30478b.hashCode()) * 1000003) ^ this.f30479c.hashCode()) * 1000003;
        if (this.f30480d) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return hashCode ^ i10;
    }

    public String toString() {
        return "OperatingSystem{platform=" + this.f30477a + ", version=" + this.f30478b + ", buildVersion=" + this.f30479c + ", jailbroken=" + this.f30480d + "}";
    }

    private z(int i10, String str, String str2, boolean z10) {
        this.f30477a = i10;
        this.f30478b = str;
        this.f30479c = str2;
        this.f30480d = z10;
    }
}
