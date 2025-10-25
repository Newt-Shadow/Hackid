package o2;

import java.util.Arrays;
import o2.t;
/* loaded from: classes.dex */
final class j extends t {

    /* renamed from: a  reason: collision with root package name */
    private final long f27047a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f27048b;

    /* renamed from: c  reason: collision with root package name */
    private final p f27049c;

    /* renamed from: d  reason: collision with root package name */
    private final long f27050d;

    /* renamed from: e  reason: collision with root package name */
    private final byte[] f27051e;

    /* renamed from: f  reason: collision with root package name */
    private final String f27052f;

    /* renamed from: g  reason: collision with root package name */
    private final long f27053g;

    /* renamed from: h  reason: collision with root package name */
    private final w f27054h;

    /* renamed from: i  reason: collision with root package name */
    private final q f27055i;

    /* loaded from: classes.dex */
    static final class b extends t.a {

        /* renamed from: a  reason: collision with root package name */
        private Long f27056a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f27057b;

        /* renamed from: c  reason: collision with root package name */
        private p f27058c;

        /* renamed from: d  reason: collision with root package name */
        private Long f27059d;

        /* renamed from: e  reason: collision with root package name */
        private byte[] f27060e;

        /* renamed from: f  reason: collision with root package name */
        private String f27061f;

        /* renamed from: g  reason: collision with root package name */
        private Long f27062g;

        /* renamed from: h  reason: collision with root package name */
        private w f27063h;

        /* renamed from: i  reason: collision with root package name */
        private q f27064i;

        @Override // o2.t.a
        public t a() {
            String str = "";
            if (this.f27056a == null) {
                str = " eventTimeMs";
            }
            if (this.f27059d == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f27062g == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new j(this.f27056a.longValue(), this.f27057b, this.f27058c, this.f27059d.longValue(), this.f27060e, this.f27061f, this.f27062g.longValue(), this.f27063h, this.f27064i);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // o2.t.a
        public t.a b(p pVar) {
            this.f27058c = pVar;
            return this;
        }

        @Override // o2.t.a
        public t.a c(Integer num) {
            this.f27057b = num;
            return this;
        }

        @Override // o2.t.a
        public t.a d(long j10) {
            this.f27056a = Long.valueOf(j10);
            return this;
        }

        @Override // o2.t.a
        public t.a e(long j10) {
            this.f27059d = Long.valueOf(j10);
            return this;
        }

        @Override // o2.t.a
        public t.a f(q qVar) {
            this.f27064i = qVar;
            return this;
        }

        @Override // o2.t.a
        public t.a g(w wVar) {
            this.f27063h = wVar;
            return this;
        }

        @Override // o2.t.a
        t.a h(byte[] bArr) {
            this.f27060e = bArr;
            return this;
        }

        @Override // o2.t.a
        t.a i(String str) {
            this.f27061f = str;
            return this;
        }

        @Override // o2.t.a
        public t.a j(long j10) {
            this.f27062g = Long.valueOf(j10);
            return this;
        }
    }

    @Override // o2.t
    public p b() {
        return this.f27049c;
    }

    @Override // o2.t
    public Integer c() {
        return this.f27048b;
    }

    @Override // o2.t
    public long d() {
        return this.f27047a;
    }

    @Override // o2.t
    public long e() {
        return this.f27050d;
    }

    public boolean equals(Object obj) {
        Integer num;
        p pVar;
        byte[] h10;
        String str;
        w wVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        if (this.f27047a == tVar.d() && ((num = this.f27048b) != null ? num.equals(tVar.c()) : tVar.c() == null) && ((pVar = this.f27049c) != null ? pVar.equals(tVar.b()) : tVar.b() == null) && this.f27050d == tVar.e()) {
            byte[] bArr = this.f27051e;
            if (tVar instanceof j) {
                h10 = ((j) tVar).f27051e;
            } else {
                h10 = tVar.h();
            }
            if (Arrays.equals(bArr, h10) && ((str = this.f27052f) != null ? str.equals(tVar.i()) : tVar.i() == null) && this.f27053g == tVar.j() && ((wVar = this.f27054h) != null ? wVar.equals(tVar.g()) : tVar.g() == null)) {
                q qVar = this.f27055i;
                if (qVar == null) {
                    if (tVar.f() == null) {
                        return true;
                    }
                } else if (qVar.equals(tVar.f())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // o2.t
    public q f() {
        return this.f27055i;
    }

    @Override // o2.t
    public w g() {
        return this.f27054h;
    }

    @Override // o2.t
    public byte[] h() {
        return this.f27051e;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        long j10 = this.f27047a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f27048b;
        int i11 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i12 = (i10 ^ hashCode) * 1000003;
        p pVar = this.f27049c;
        if (pVar == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = pVar.hashCode();
        }
        long j11 = this.f27050d;
        int hashCode5 = (((((i12 ^ hashCode2) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f27051e)) * 1000003;
        String str = this.f27052f;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        long j12 = this.f27053g;
        int i13 = (((hashCode5 ^ hashCode3) * 1000003) ^ ((int) ((j12 >>> 32) ^ j12))) * 1000003;
        w wVar = this.f27054h;
        if (wVar == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = wVar.hashCode();
        }
        int i14 = (i13 ^ hashCode4) * 1000003;
        q qVar = this.f27055i;
        if (qVar != null) {
            i11 = qVar.hashCode();
        }
        return i14 ^ i11;
    }

    @Override // o2.t
    public String i() {
        return this.f27052f;
    }

    @Override // o2.t
    public long j() {
        return this.f27053g;
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.f27047a + ", eventCode=" + this.f27048b + ", complianceData=" + this.f27049c + ", eventUptimeMs=" + this.f27050d + ", sourceExtension=" + Arrays.toString(this.f27051e) + ", sourceExtensionJsonProto3=" + this.f27052f + ", timezoneOffsetSeconds=" + this.f27053g + ", networkConnectionInfo=" + this.f27054h + ", experimentIds=" + this.f27055i + "}";
    }

    private j(long j10, Integer num, p pVar, long j11, byte[] bArr, String str, long j12, w wVar, q qVar) {
        this.f27047a = j10;
        this.f27048b = num;
        this.f27049c = pVar;
        this.f27050d = j11;
        this.f27051e = bArr;
        this.f27052f = str;
        this.f27053g = j12;
        this.f27054h = wVar;
        this.f27055i = qVar;
    }
}
