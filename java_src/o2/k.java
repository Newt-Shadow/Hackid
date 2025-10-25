package o2;

import java.util.List;
import o2.u;
/* loaded from: classes.dex */
final class k extends u {

    /* renamed from: a  reason: collision with root package name */
    private final long f27065a;

    /* renamed from: b  reason: collision with root package name */
    private final long f27066b;

    /* renamed from: c  reason: collision with root package name */
    private final o f27067c;

    /* renamed from: d  reason: collision with root package name */
    private final Integer f27068d;

    /* renamed from: e  reason: collision with root package name */
    private final String f27069e;

    /* renamed from: f  reason: collision with root package name */
    private final List f27070f;

    /* renamed from: g  reason: collision with root package name */
    private final x f27071g;

    /* loaded from: classes.dex */
    static final class b extends u.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f27072a;

        /* renamed from: b  reason: collision with root package name */
        private Long f27073b;

        /* renamed from: c  reason: collision with root package name */
        private o f27074c;

        /* renamed from: d  reason: collision with root package name */
        private Integer f27075d;

        /* renamed from: e  reason: collision with root package name */
        private String f27076e;

        /* renamed from: f  reason: collision with root package name */
        private List f27077f;

        /* renamed from: g  reason: collision with root package name */
        private x f27078g;

        @Override // o2.u.a
        public u a() {
            String str = "";
            if (this.f27072a == null) {
                str = " requestTimeMs";
            }
            if (this.f27073b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new k(this.f27072a.longValue(), this.f27073b.longValue(), this.f27074c, this.f27075d, this.f27076e, this.f27077f, this.f27078g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // o2.u.a
        public u.a b(o oVar) {
            this.f27074c = oVar;
            return this;
        }

        @Override // o2.u.a
        public u.a c(List list) {
            this.f27077f = list;
            return this;
        }

        @Override // o2.u.a
        u.a d(Integer num) {
            this.f27075d = num;
            return this;
        }

        @Override // o2.u.a
        u.a e(String str) {
            this.f27076e = str;
            return this;
        }

        @Override // o2.u.a
        public u.a f(x xVar) {
            this.f27078g = xVar;
            return this;
        }

        @Override // o2.u.a
        public u.a g(long j10) {
            this.f27072a = Long.valueOf(j10);
            return this;
        }

        @Override // o2.u.a
        public u.a h(long j10) {
            this.f27073b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // o2.u
    public o b() {
        return this.f27067c;
    }

    @Override // o2.u
    public List c() {
        return this.f27070f;
    }

    @Override // o2.u
    public Integer d() {
        return this.f27068d;
    }

    @Override // o2.u
    public String e() {
        return this.f27069e;
    }

    public boolean equals(Object obj) {
        o oVar;
        Integer num;
        String str;
        List list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        if (this.f27065a == uVar.g() && this.f27066b == uVar.h() && ((oVar = this.f27067c) != null ? oVar.equals(uVar.b()) : uVar.b() == null) && ((num = this.f27068d) != null ? num.equals(uVar.d()) : uVar.d() == null) && ((str = this.f27069e) != null ? str.equals(uVar.e()) : uVar.e() == null) && ((list = this.f27070f) != null ? list.equals(uVar.c()) : uVar.c() == null)) {
            x xVar = this.f27071g;
            if (xVar == null) {
                if (uVar.f() == null) {
                    return true;
                }
            } else if (xVar.equals(uVar.f())) {
                return true;
            }
        }
        return false;
    }

    @Override // o2.u
    public x f() {
        return this.f27071g;
    }

    @Override // o2.u
    public long g() {
        return this.f27065a;
    }

    @Override // o2.u
    public long h() {
        return this.f27066b;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        long j10 = this.f27065a;
        long j11 = this.f27066b;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j11 >>> 32) ^ j11))) * 1000003;
        o oVar = this.f27067c;
        int i11 = 0;
        if (oVar == null) {
            hashCode = 0;
        } else {
            hashCode = oVar.hashCode();
        }
        int i12 = (i10 ^ hashCode) * 1000003;
        Integer num = this.f27068d;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i13 = (i12 ^ hashCode2) * 1000003;
        String str = this.f27069e;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        int i14 = (i13 ^ hashCode3) * 1000003;
        List list = this.f27070f;
        if (list == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = list.hashCode();
        }
        int i15 = (i14 ^ hashCode4) * 1000003;
        x xVar = this.f27071g;
        if (xVar != null) {
            i11 = xVar.hashCode();
        }
        return i15 ^ i11;
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f27065a + ", requestUptimeMs=" + this.f27066b + ", clientInfo=" + this.f27067c + ", logSource=" + this.f27068d + ", logSourceName=" + this.f27069e + ", logEvents=" + this.f27070f + ", qosTier=" + this.f27071g + "}";
    }

    private k(long j10, long j11, o oVar, Integer num, String str, List list, x xVar) {
        this.f27065a = j10;
        this.f27066b = j11;
        this.f27067c = oVar;
        this.f27068d = num;
        this.f27069e = str;
        this.f27070f = list;
        this.f27071g = xVar;
    }
}
