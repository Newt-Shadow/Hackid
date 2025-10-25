package t7;

import java.util.List;
import t7.f0;
/* loaded from: classes.dex */
final class c extends f0.a {

    /* renamed from: a  reason: collision with root package name */
    private final int f30243a;

    /* renamed from: b  reason: collision with root package name */
    private final String f30244b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30245c;

    /* renamed from: d  reason: collision with root package name */
    private final int f30246d;

    /* renamed from: e  reason: collision with root package name */
    private final long f30247e;

    /* renamed from: f  reason: collision with root package name */
    private final long f30248f;

    /* renamed from: g  reason: collision with root package name */
    private final long f30249g;

    /* renamed from: h  reason: collision with root package name */
    private final String f30250h;

    /* renamed from: i  reason: collision with root package name */
    private final List f30251i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.a.b {

        /* renamed from: a  reason: collision with root package name */
        private int f30252a;

        /* renamed from: b  reason: collision with root package name */
        private String f30253b;

        /* renamed from: c  reason: collision with root package name */
        private int f30254c;

        /* renamed from: d  reason: collision with root package name */
        private int f30255d;

        /* renamed from: e  reason: collision with root package name */
        private long f30256e;

        /* renamed from: f  reason: collision with root package name */
        private long f30257f;

        /* renamed from: g  reason: collision with root package name */
        private long f30258g;

        /* renamed from: h  reason: collision with root package name */
        private String f30259h;

        /* renamed from: i  reason: collision with root package name */
        private List f30260i;

        /* renamed from: j  reason: collision with root package name */
        private byte f30261j;

        @Override // t7.f0.a.b
        public f0.a a() {
            String str;
            if (this.f30261j == 63 && (str = this.f30253b) != null) {
                return new c(this.f30252a, str, this.f30254c, this.f30255d, this.f30256e, this.f30257f, this.f30258g, this.f30259h, this.f30260i);
            }
            StringBuilder sb2 = new StringBuilder();
            if ((this.f30261j & 1) == 0) {
                sb2.append(" pid");
            }
            if (this.f30253b == null) {
                sb2.append(" processName");
            }
            if ((this.f30261j & 2) == 0) {
                sb2.append(" reasonCode");
            }
            if ((this.f30261j & 4) == 0) {
                sb2.append(" importance");
            }
            if ((this.f30261j & 8) == 0) {
                sb2.append(" pss");
            }
            if ((this.f30261j & 16) == 0) {
                sb2.append(" rss");
            }
            if ((this.f30261j & 32) == 0) {
                sb2.append(" timestamp");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.a.b
        public f0.a.b b(List list) {
            this.f30260i = list;
            return this;
        }

        @Override // t7.f0.a.b
        public f0.a.b c(int i10) {
            this.f30255d = i10;
            this.f30261j = (byte) (this.f30261j | 4);
            return this;
        }

        @Override // t7.f0.a.b
        public f0.a.b d(int i10) {
            this.f30252a = i10;
            this.f30261j = (byte) (this.f30261j | 1);
            return this;
        }

        @Override // t7.f0.a.b
        public f0.a.b e(String str) {
            if (str != null) {
                this.f30253b = str;
                return this;
            }
            throw new NullPointerException("Null processName");
        }

        @Override // t7.f0.a.b
        public f0.a.b f(long j10) {
            this.f30256e = j10;
            this.f30261j = (byte) (this.f30261j | 8);
            return this;
        }

        @Override // t7.f0.a.b
        public f0.a.b g(int i10) {
            this.f30254c = i10;
            this.f30261j = (byte) (this.f30261j | 2);
            return this;
        }

        @Override // t7.f0.a.b
        public f0.a.b h(long j10) {
            this.f30257f = j10;
            this.f30261j = (byte) (this.f30261j | 16);
            return this;
        }

        @Override // t7.f0.a.b
        public f0.a.b i(long j10) {
            this.f30258g = j10;
            this.f30261j = (byte) (this.f30261j | 32);
            return this;
        }

        @Override // t7.f0.a.b
        public f0.a.b j(String str) {
            this.f30259h = str;
            return this;
        }
    }

    @Override // t7.f0.a
    public List b() {
        return this.f30251i;
    }

    @Override // t7.f0.a
    public int c() {
        return this.f30246d;
    }

    @Override // t7.f0.a
    public int d() {
        return this.f30243a;
    }

    @Override // t7.f0.a
    public String e() {
        return this.f30244b;
    }

    public boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.a)) {
            return false;
        }
        f0.a aVar = (f0.a) obj;
        if (this.f30243a == aVar.d() && this.f30244b.equals(aVar.e()) && this.f30245c == aVar.g() && this.f30246d == aVar.c() && this.f30247e == aVar.f() && this.f30248f == aVar.h() && this.f30249g == aVar.i() && ((str = this.f30250h) != null ? str.equals(aVar.j()) : aVar.j() == null)) {
            List list = this.f30251i;
            if (list == null) {
                if (aVar.b() == null) {
                    return true;
                }
            } else if (list.equals(aVar.b())) {
                return true;
            }
        }
        return false;
    }

    @Override // t7.f0.a
    public long f() {
        return this.f30247e;
    }

    @Override // t7.f0.a
    public int g() {
        return this.f30245c;
    }

    @Override // t7.f0.a
    public long h() {
        return this.f30248f;
    }

    public int hashCode() {
        int hashCode;
        long j10 = this.f30247e;
        long j11 = this.f30248f;
        long j12 = this.f30249g;
        int hashCode2 = (((((((((((((this.f30243a ^ 1000003) * 1000003) ^ this.f30244b.hashCode()) * 1000003) ^ this.f30245c) * 1000003) ^ this.f30246d) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ ((int) (j12 ^ (j12 >>> 32)))) * 1000003;
        String str = this.f30250h;
        int i10 = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i11 = (hashCode2 ^ hashCode) * 1000003;
        List list = this.f30251i;
        if (list != null) {
            i10 = list.hashCode();
        }
        return i11 ^ i10;
    }

    @Override // t7.f0.a
    public long i() {
        return this.f30249g;
    }

    @Override // t7.f0.a
    public String j() {
        return this.f30250h;
    }

    public String toString() {
        return "ApplicationExitInfo{pid=" + this.f30243a + ", processName=" + this.f30244b + ", reasonCode=" + this.f30245c + ", importance=" + this.f30246d + ", pss=" + this.f30247e + ", rss=" + this.f30248f + ", timestamp=" + this.f30249g + ", traceFile=" + this.f30250h + ", buildIdMappingForArch=" + this.f30251i + "}";
    }

    private c(int i10, String str, int i11, int i12, long j10, long j11, long j12, String str2, List list) {
        this.f30243a = i10;
        this.f30244b = str;
        this.f30245c = i11;
        this.f30246d = i12;
        this.f30247e = j10;
        this.f30248f = j11;
        this.f30249g = j12;
        this.f30250h = str2;
        this.f30251i = list;
    }
}
