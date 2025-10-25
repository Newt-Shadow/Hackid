package t7;

import t7.f0;
/* loaded from: classes.dex */
final class k extends f0.e.c {

    /* renamed from: a  reason: collision with root package name */
    private final int f30336a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30337b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30338c;

    /* renamed from: d  reason: collision with root package name */
    private final long f30339d;

    /* renamed from: e  reason: collision with root package name */
    private final long f30340e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f30341f;

    /* renamed from: g  reason: collision with root package name */
    private final int f30342g;

    /* renamed from: h  reason: collision with root package name */
    private final String f30343h;

    /* renamed from: i  reason: collision with root package name */
    private final String f30344i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.c.a {

        /* renamed from: a  reason: collision with root package name */
        private int f30345a;

        /* renamed from: b  reason: collision with root package name */
        private String f30346b;

        /* renamed from: c  reason: collision with root package name */
        private int f30347c;

        /* renamed from: d  reason: collision with root package name */
        private long f30348d;

        /* renamed from: e  reason: collision with root package name */
        private long f30349e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f30350f;

        /* renamed from: g  reason: collision with root package name */
        private int f30351g;

        /* renamed from: h  reason: collision with root package name */
        private String f30352h;

        /* renamed from: i  reason: collision with root package name */
        private String f30353i;

        /* renamed from: j  reason: collision with root package name */
        private byte f30354j;

        @Override // t7.f0.e.c.a
        public f0.e.c a() {
            String str;
            String str2;
            String str3;
            if (this.f30354j == 63 && (str = this.f30346b) != null && (str2 = this.f30352h) != null && (str3 = this.f30353i) != null) {
                return new k(this.f30345a, str, this.f30347c, this.f30348d, this.f30349e, this.f30350f, this.f30351g, str2, str3);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f30354j & 1) == 0) {
                sb2.append(" arch");
            }
            if (this.f30346b == null) {
                sb2.append(" model");
            }
            if ((this.f30354j & 2) == 0) {
                sb2.append(" cores");
            }
            if ((this.f30354j & 4) == 0) {
                sb2.append(" ram");
            }
            if ((this.f30354j & 8) == 0) {
                sb2.append(" diskSpace");
            }
            if ((this.f30354j & 16) == 0) {
                sb2.append(" simulator");
            }
            if ((this.f30354j & 32) == 0) {
                sb2.append(" state");
            }
            if (this.f30352h == null) {
                sb2.append(" manufacturer");
            }
            if (this.f30353i == null) {
                sb2.append(" modelClass");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.e.c.a
        public f0.e.c.a b(int i10) {
            this.f30345a = i10;
            this.f30354j = (byte) (this.f30354j | 1);
            return this;
        }

        @Override // t7.f0.e.c.a
        public f0.e.c.a c(int i10) {
            this.f30347c = i10;
            this.f30354j = (byte) (this.f30354j | 2);
            return this;
        }

        @Override // t7.f0.e.c.a
        public f0.e.c.a d(long j10) {
            this.f30349e = j10;
            this.f30354j = (byte) (this.f30354j | 8);
            return this;
        }

        @Override // t7.f0.e.c.a
        public f0.e.c.a e(String str) {
            if (str != null) {
                this.f30352h = str;
                return this;
            }
            throw new NullPointerException("Null manufacturer");
        }

        @Override // t7.f0.e.c.a
        public f0.e.c.a f(String str) {
            if (str != null) {
                this.f30346b = str;
                return this;
            }
            throw new NullPointerException("Null model");
        }

        @Override // t7.f0.e.c.a
        public f0.e.c.a g(String str) {
            if (str != null) {
                this.f30353i = str;
                return this;
            }
            throw new NullPointerException("Null modelClass");
        }

        @Override // t7.f0.e.c.a
        public f0.e.c.a h(long j10) {
            this.f30348d = j10;
            this.f30354j = (byte) (this.f30354j | 4);
            return this;
        }

        @Override // t7.f0.e.c.a
        public f0.e.c.a i(boolean z10) {
            this.f30350f = z10;
            this.f30354j = (byte) (this.f30354j | 16);
            return this;
        }

        @Override // t7.f0.e.c.a
        public f0.e.c.a j(int i10) {
            this.f30351g = i10;
            this.f30354j = (byte) (this.f30354j | 32);
            return this;
        }
    }

    @Override // t7.f0.e.c
    public int b() {
        return this.f30336a;
    }

    @Override // t7.f0.e.c
    public int c() {
        return this.f30338c;
    }

    @Override // t7.f0.e.c
    public long d() {
        return this.f30340e;
    }

    @Override // t7.f0.e.c
    public String e() {
        return this.f30343h;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.c)) {
            return false;
        }
        f0.e.c cVar = (f0.e.c) obj;
        if (this.f30336a == cVar.b() && this.f30337b.equals(cVar.f()) && this.f30338c == cVar.c() && this.f30339d == cVar.h() && this.f30340e == cVar.d() && this.f30341f == cVar.j() && this.f30342g == cVar.i() && this.f30343h.equals(cVar.e()) && this.f30344i.equals(cVar.g())) {
            return true;
        }
        return false;
    }

    @Override // t7.f0.e.c
    public String f() {
        return this.f30337b;
    }

    @Override // t7.f0.e.c
    public String g() {
        return this.f30344i;
    }

    @Override // t7.f0.e.c
    public long h() {
        return this.f30339d;
    }

    public int hashCode() {
        int i10;
        long j10 = this.f30339d;
        long j11 = this.f30340e;
        int hashCode = (((((((((this.f30336a ^ 1000003) * 1000003) ^ this.f30337b.hashCode()) * 1000003) ^ this.f30338c) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        if (this.f30341f) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        return ((((((hashCode ^ i10) * 1000003) ^ this.f30342g) * 1000003) ^ this.f30343h.hashCode()) * 1000003) ^ this.f30344i.hashCode();
    }

    @Override // t7.f0.e.c
    public int i() {
        return this.f30342g;
    }

    @Override // t7.f0.e.c
    public boolean j() {
        return this.f30341f;
    }

    public String toString() {
        return "Device{arch=" + this.f30336a + ", model=" + this.f30337b + ", cores=" + this.f30338c + ", ram=" + this.f30339d + ", diskSpace=" + this.f30340e + ", simulator=" + this.f30341f + ", state=" + this.f30342g + ", manufacturer=" + this.f30343h + ", modelClass=" + this.f30344i + "}";
    }

    private k(int i10, String str, int i11, long j10, long j11, boolean z10, int i12, String str2, String str3) {
        this.f30336a = i10;
        this.f30337b = str;
        this.f30338c = i11;
        this.f30339d = j10;
        this.f30340e = j11;
        this.f30341f = z10;
        this.f30342g = i12;
        this.f30343h = str2;
        this.f30344i = str3;
    }
}
