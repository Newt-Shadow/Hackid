package t7;

import t7.f0;
/* loaded from: classes.dex */
final class u extends f0.e.d.c {

    /* renamed from: a  reason: collision with root package name */
    private final Double f30447a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30448b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f30449c;

    /* renamed from: d  reason: collision with root package name */
    private final int f30450d;

    /* renamed from: e  reason: collision with root package name */
    private final long f30451e;

    /* renamed from: f  reason: collision with root package name */
    private final long f30452f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.e.d.c.a {

        /* renamed from: a  reason: collision with root package name */
        private Double f30453a;

        /* renamed from: b  reason: collision with root package name */
        private int f30454b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f30455c;

        /* renamed from: d  reason: collision with root package name */
        private int f30456d;

        /* renamed from: e  reason: collision with root package name */
        private long f30457e;

        /* renamed from: f  reason: collision with root package name */
        private long f30458f;

        /* renamed from: g  reason: collision with root package name */
        private byte f30459g;

        @Override // t7.f0.e.d.c.a
        public f0.e.d.c a() {
            if (this.f30459g != 31) {
                StringBuilder sb2 = new StringBuilder();
                if ((this.f30459g & 1) == 0) {
                    sb2.append(" batteryVelocity");
                }
                if ((this.f30459g & 2) == 0) {
                    sb2.append(" proximityOn");
                }
                if ((this.f30459g & 4) == 0) {
                    sb2.append(" orientation");
                }
                if ((this.f30459g & 8) == 0) {
                    sb2.append(" ramUsed");
                }
                if ((this.f30459g & 16) == 0) {
                    sb2.append(" diskUsed");
                }
                throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
            }
            return new u(this.f30453a, this.f30454b, this.f30455c, this.f30456d, this.f30457e, this.f30458f);
        }

        @Override // t7.f0.e.d.c.a
        public f0.e.d.c.a b(Double d10) {
            this.f30453a = d10;
            return this;
        }

        @Override // t7.f0.e.d.c.a
        public f0.e.d.c.a c(int i10) {
            this.f30454b = i10;
            this.f30459g = (byte) (this.f30459g | 1);
            return this;
        }

        @Override // t7.f0.e.d.c.a
        public f0.e.d.c.a d(long j10) {
            this.f30458f = j10;
            this.f30459g = (byte) (this.f30459g | 16);
            return this;
        }

        @Override // t7.f0.e.d.c.a
        public f0.e.d.c.a e(int i10) {
            this.f30456d = i10;
            this.f30459g = (byte) (this.f30459g | 4);
            return this;
        }

        @Override // t7.f0.e.d.c.a
        public f0.e.d.c.a f(boolean z10) {
            this.f30455c = z10;
            this.f30459g = (byte) (this.f30459g | 2);
            return this;
        }

        @Override // t7.f0.e.d.c.a
        public f0.e.d.c.a g(long j10) {
            this.f30457e = j10;
            this.f30459g = (byte) (this.f30459g | 8);
            return this;
        }
    }

    @Override // t7.f0.e.d.c
    public Double b() {
        return this.f30447a;
    }

    @Override // t7.f0.e.d.c
    public int c() {
        return this.f30448b;
    }

    @Override // t7.f0.e.d.c
    public long d() {
        return this.f30452f;
    }

    @Override // t7.f0.e.d.c
    public int e() {
        return this.f30450d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.c)) {
            return false;
        }
        f0.e.d.c cVar = (f0.e.d.c) obj;
        Double d10 = this.f30447a;
        if (d10 != null ? d10.equals(cVar.b()) : cVar.b() == null) {
            if (this.f30448b == cVar.c() && this.f30449c == cVar.g() && this.f30450d == cVar.e() && this.f30451e == cVar.f() && this.f30452f == cVar.d()) {
                return true;
            }
        }
        return false;
    }

    @Override // t7.f0.e.d.c
    public long f() {
        return this.f30451e;
    }

    @Override // t7.f0.e.d.c
    public boolean g() {
        return this.f30449c;
    }

    public int hashCode() {
        int hashCode;
        int i10;
        Double d10 = this.f30447a;
        if (d10 == null) {
            hashCode = 0;
        } else {
            hashCode = d10.hashCode();
        }
        int i11 = (((hashCode ^ 1000003) * 1000003) ^ this.f30448b) * 1000003;
        if (this.f30449c) {
            i10 = 1231;
        } else {
            i10 = 1237;
        }
        long j10 = this.f30451e;
        long j11 = this.f30452f;
        return ((((((i11 ^ i10) * 1000003) ^ this.f30450d) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)));
    }

    public String toString() {
        return "Device{batteryLevel=" + this.f30447a + ", batteryVelocity=" + this.f30448b + ", proximityOn=" + this.f30449c + ", orientation=" + this.f30450d + ", ramUsed=" + this.f30451e + ", diskUsed=" + this.f30452f + "}";
    }

    private u(Double d10, int i10, boolean z10, int i11, long j10, long j11) {
        this.f30447a = d10;
        this.f30448b = i10;
        this.f30449c = z10;
        this.f30450d = i11;
        this.f30451e = j10;
        this.f30452f = j11;
    }
}
