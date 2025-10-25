package t7;

import t7.f0;
/* loaded from: classes.dex */
final class w extends f0.e.d.AbstractC0335e {

    /* renamed from: a  reason: collision with root package name */
    private final f0.e.d.AbstractC0335e.b f30462a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30463b;

    /* renamed from: c  reason: collision with root package name */
    private final String f30464c;

    /* renamed from: d  reason: collision with root package name */
    private final long f30465d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.AbstractC0335e.a {

        /* renamed from: a  reason: collision with root package name */
        private f0.e.d.AbstractC0335e.b f30466a;

        /* renamed from: b  reason: collision with root package name */
        private String f30467b;

        /* renamed from: c  reason: collision with root package name */
        private String f30468c;

        /* renamed from: d  reason: collision with root package name */
        private long f30469d;

        /* renamed from: e  reason: collision with root package name */
        private byte f30470e;

        @Override // t7.f0.e.d.AbstractC0335e.a
        public f0.e.d.AbstractC0335e a() {
            f0.e.d.AbstractC0335e.b bVar;
            String str;
            String str2;
            if (this.f30470e == 1 && (bVar = this.f30466a) != null && (str = this.f30467b) != null && (str2 = this.f30468c) != null) {
                return new w(bVar, str, str2, this.f30469d);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30466a == null) {
                sb2.append(" rolloutVariant");
            }
            if (this.f30467b == null) {
                sb2.append(" parameterKey");
            }
            if (this.f30468c == null) {
                sb2.append(" parameterValue");
            }
            if ((1 & this.f30470e) == 0) {
                sb2.append(" templateVersion");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.d.AbstractC0335e.a
        public f0.e.d.AbstractC0335e.a b(String str) {
            if (str != null) {
                this.f30467b = str;
                return this;
            }
            throw new NullPointerException("Null parameterKey");
        }

        @Override // t7.f0.e.d.AbstractC0335e.a
        public f0.e.d.AbstractC0335e.a c(String str) {
            if (str != null) {
                this.f30468c = str;
                return this;
            }
            throw new NullPointerException("Null parameterValue");
        }

        @Override // t7.f0.e.d.AbstractC0335e.a
        public f0.e.d.AbstractC0335e.a d(f0.e.d.AbstractC0335e.b bVar) {
            if (bVar != null) {
                this.f30466a = bVar;
                return this;
            }
            throw new NullPointerException("Null rolloutVariant");
        }

        @Override // t7.f0.e.d.AbstractC0335e.a
        public f0.e.d.AbstractC0335e.a e(long j10) {
            this.f30469d = j10;
            this.f30470e = (byte) (this.f30470e | 1);
            return this;
        }
    }

    @Override // t7.f0.e.d.AbstractC0335e
    public String b() {
        return this.f30463b;
    }

    @Override // t7.f0.e.d.AbstractC0335e
    public String c() {
        return this.f30464c;
    }

    @Override // t7.f0.e.d.AbstractC0335e
    public f0.e.d.AbstractC0335e.b d() {
        return this.f30462a;
    }

    @Override // t7.f0.e.d.AbstractC0335e
    public long e() {
        return this.f30465d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.AbstractC0335e)) {
            return false;
        }
        f0.e.d.AbstractC0335e abstractC0335e = (f0.e.d.AbstractC0335e) obj;
        if (this.f30462a.equals(abstractC0335e.d()) && this.f30463b.equals(abstractC0335e.b()) && this.f30464c.equals(abstractC0335e.c()) && this.f30465d == abstractC0335e.e()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f30465d;
        return ((((((this.f30462a.hashCode() ^ 1000003) * 1000003) ^ this.f30463b.hashCode()) * 1000003) ^ this.f30464c.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "RolloutAssignment{rolloutVariant=" + this.f30462a + ", parameterKey=" + this.f30463b + ", parameterValue=" + this.f30464c + ", templateVersion=" + this.f30465d + "}";
    }

    private w(f0.e.d.AbstractC0335e.b bVar, String str, String str2, long j10) {
        this.f30462a = bVar;
        this.f30463b = str;
        this.f30464c = str2;
        this.f30465d = j10;
    }
}
