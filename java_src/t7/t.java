package t7;

import t7.f0;
/* loaded from: classes.dex */
final class t extends f0.e.d.a.c {

    /* renamed from: a  reason: collision with root package name */
    private final String f30438a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30439b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30440c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f30441d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.a.c.AbstractC0333a {

        /* renamed from: a  reason: collision with root package name */
        private String f30442a;

        /* renamed from: b  reason: collision with root package name */
        private int f30443b;

        /* renamed from: c  reason: collision with root package name */
        private int f30444c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f30445d;

        /* renamed from: e  reason: collision with root package name */
        private byte f30446e;

        @Override // t7.f0.e.d.a.c.AbstractC0333a
        public f0.e.d.a.c a() {
            String str;
            if (this.f30446e == 7 && (str = this.f30442a) != null) {
                return new t(str, this.f30443b, this.f30444c, this.f30445d);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30442a == null) {
                sb2.append(" processName");
            }
            if ((this.f30446e & 1) == 0) {
                sb2.append(" pid");
            }
            if ((this.f30446e & 2) == 0) {
                sb2.append(" importance");
            }
            if ((this.f30446e & 4) == 0) {
                sb2.append(" defaultProcess");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.d.a.c.AbstractC0333a
        public f0.e.d.a.c.AbstractC0333a b(boolean z10) {
            this.f30445d = z10;
            this.f30446e = (byte) (this.f30446e | 4);
            return this;
        }

        @Override // t7.f0.e.d.a.c.AbstractC0333a
        public f0.e.d.a.c.AbstractC0333a c(int i10) {
            this.f30444c = i10;
            this.f30446e = (byte) (this.f30446e | 2);
            return this;
        }

        @Override // t7.f0.e.d.a.c.AbstractC0333a
        public f0.e.d.a.c.AbstractC0333a d(int i10) {
            this.f30443b = i10;
            this.f30446e = (byte) (this.f30446e | 1);
            return this;
        }

        @Override // t7.f0.e.d.a.c.AbstractC0333a
        public f0.e.d.a.c.AbstractC0333a e(String str) {
            if (str != null) {
                this.f30442a = str;
                return this;
            }
            throw new NullPointerException("Null processName");
        }
    }

    @Override // t7.f0.e.d.a.c
    public int b() {
        return this.f30440c;
    }

    @Override // t7.f0.e.d.a.c
    public int c() {
        return this.f30439b;
    }

    @Override // t7.f0.e.d.a.c
    public String d() {
        return this.f30438a;
    }

    @Override // t7.f0.e.d.a.c
    public boolean e() {
        return this.f30441d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.c)) {
            return false;
        }
        f0.e.d.a.c cVar = (f0.e.d.a.c) obj;
        if (this.f30438a.equals(cVar.d()) && this.f30439b == cVar.c() && this.f30440c == cVar.b() && this.f30441d == cVar.e()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i10;
        int hashCode = (((((this.f30438a.hashCode() ^ 1000003) * 1000003) ^ this.f30439b) * 1000003) ^ this.f30440c) * 1000003;
        if (this.f30441d) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return hashCode ^ i10;
    }

    public String toString() {
        return "ProcessDetails{processName=" + this.f30438a + ", pid=" + this.f30439b + ", importance=" + this.f30440c + ", defaultProcess=" + this.f30441d + "}";
    }

    private t(String str, int i10, int i11, boolean z10) {
        this.f30438a = str;
        this.f30439b = i10;
        this.f30440c = i11;
        this.f30441d = z10;
    }
}
