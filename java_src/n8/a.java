package n8;

import n8.d;
/* loaded from: classes.dex */
final class a extends d {

    /* renamed from: a  reason: collision with root package name */
    private final String f26480a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26481b;

    /* renamed from: c  reason: collision with root package name */
    private final String f26482c;

    /* renamed from: d  reason: collision with root package name */
    private final f f26483d;

    /* renamed from: e  reason: collision with root package name */
    private final d.b f26484e;

    /* loaded from: classes.dex */
    static final class b extends d.a {

        /* renamed from: a  reason: collision with root package name */
        private String f26485a;

        /* renamed from: b  reason: collision with root package name */
        private String f26486b;

        /* renamed from: c  reason: collision with root package name */
        private String f26487c;

        /* renamed from: d  reason: collision with root package name */
        private f f26488d;

        /* renamed from: e  reason: collision with root package name */
        private d.b f26489e;

        @Override // n8.d.a
        public d a() {
            return new a(this.f26485a, this.f26486b, this.f26487c, this.f26488d, this.f26489e);
        }

        @Override // n8.d.a
        public d.a b(f fVar) {
            this.f26488d = fVar;
            return this;
        }

        @Override // n8.d.a
        public d.a c(String str) {
            this.f26486b = str;
            return this;
        }

        @Override // n8.d.a
        public d.a d(String str) {
            this.f26487c = str;
            return this;
        }

        @Override // n8.d.a
        public d.a e(d.b bVar) {
            this.f26489e = bVar;
            return this;
        }

        @Override // n8.d.a
        public d.a f(String str) {
            this.f26485a = str;
            return this;
        }
    }

    @Override // n8.d
    public f b() {
        return this.f26483d;
    }

    @Override // n8.d
    public String c() {
        return this.f26481b;
    }

    @Override // n8.d
    public String d() {
        return this.f26482c;
    }

    @Override // n8.d
    public d.b e() {
        return this.f26484e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        String str = this.f26480a;
        if (str != null ? str.equals(dVar.f()) : dVar.f() == null) {
            String str2 = this.f26481b;
            if (str2 != null ? str2.equals(dVar.c()) : dVar.c() == null) {
                String str3 = this.f26482c;
                if (str3 != null ? str3.equals(dVar.d()) : dVar.d() == null) {
                    f fVar = this.f26483d;
                    if (fVar != null ? fVar.equals(dVar.b()) : dVar.b() == null) {
                        d.b bVar = this.f26484e;
                        if (bVar == null) {
                            if (dVar.e() == null) {
                                return true;
                            }
                        } else if (bVar.equals(dVar.e())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // n8.d
    public String f() {
        return this.f26480a;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        String str = this.f26480a;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode ^ 1000003) * 1000003;
        String str2 = this.f26481b;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int i12 = (i11 ^ hashCode2) * 1000003;
        String str3 = this.f26482c;
        if (str3 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str3.hashCode();
        }
        int i13 = (i12 ^ hashCode3) * 1000003;
        f fVar = this.f26483d;
        if (fVar == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = fVar.hashCode();
        }
        int i14 = (i13 ^ hashCode4) * 1000003;
        d.b bVar = this.f26484e;
        if (bVar != null) {
            i10 = bVar.hashCode();
        }
        return i14 ^ i10;
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.f26480a + ", fid=" + this.f26481b + ", refreshToken=" + this.f26482c + ", authToken=" + this.f26483d + ", responseCode=" + this.f26484e + "}";
    }

    private a(String str, String str2, String str3, f fVar, d.b bVar) {
        this.f26480a = str;
        this.f26481b = str2;
        this.f26482c = str3;
        this.f26483d = fVar;
        this.f26484e = bVar;
    }
}
