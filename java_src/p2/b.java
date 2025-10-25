package p2;

import java.util.Arrays;
import java.util.Map;
import p2.i;
/* loaded from: classes.dex */
final class b extends i {

    /* renamed from: a  reason: collision with root package name */
    private final String f27718a;

    /* renamed from: b  reason: collision with root package name */
    private final Integer f27719b;

    /* renamed from: c  reason: collision with root package name */
    private final h f27720c;

    /* renamed from: d  reason: collision with root package name */
    private final long f27721d;

    /* renamed from: e  reason: collision with root package name */
    private final long f27722e;

    /* renamed from: f  reason: collision with root package name */
    private final Map f27723f;

    /* renamed from: g  reason: collision with root package name */
    private final Integer f27724g;

    /* renamed from: h  reason: collision with root package name */
    private final String f27725h;

    /* renamed from: i  reason: collision with root package name */
    private final byte[] f27726i;

    /* renamed from: j  reason: collision with root package name */
    private final byte[] f27727j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p2.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0282b extends i.a {

        /* renamed from: a  reason: collision with root package name */
        private String f27728a;

        /* renamed from: b  reason: collision with root package name */
        private Integer f27729b;

        /* renamed from: c  reason: collision with root package name */
        private h f27730c;

        /* renamed from: d  reason: collision with root package name */
        private Long f27731d;

        /* renamed from: e  reason: collision with root package name */
        private Long f27732e;

        /* renamed from: f  reason: collision with root package name */
        private Map f27733f;

        /* renamed from: g  reason: collision with root package name */
        private Integer f27734g;

        /* renamed from: h  reason: collision with root package name */
        private String f27735h;

        /* renamed from: i  reason: collision with root package name */
        private byte[] f27736i;

        /* renamed from: j  reason: collision with root package name */
        private byte[] f27737j;

        @Override // p2.i.a
        public i d() {
            String str = "";
            if (this.f27728a == null) {
                str = " transportName";
            }
            if (this.f27730c == null) {
                str = str + " encodedPayload";
            }
            if (this.f27731d == null) {
                str = str + " eventMillis";
            }
            if (this.f27732e == null) {
                str = str + " uptimeMillis";
            }
            if (this.f27733f == null) {
                str = str + " autoMetadata";
            }
            if (str.isEmpty()) {
                return new b(this.f27728a, this.f27729b, this.f27730c, this.f27731d.longValue(), this.f27732e.longValue(), this.f27733f, this.f27734g, this.f27735h, this.f27736i, this.f27737j);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p2.i.a
        protected Map e() {
            Map map = this.f27733f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p2.i.a
        public i.a f(Map map) {
            if (map != null) {
                this.f27733f = map;
                return this;
            }
            throw new NullPointerException("Null autoMetadata");
        }

        @Override // p2.i.a
        public i.a g(Integer num) {
            this.f27729b = num;
            return this;
        }

        @Override // p2.i.a
        public i.a h(h hVar) {
            if (hVar != null) {
                this.f27730c = hVar;
                return this;
            }
            throw new NullPointerException("Null encodedPayload");
        }

        @Override // p2.i.a
        public i.a i(long j10) {
            this.f27731d = Long.valueOf(j10);
            return this;
        }

        @Override // p2.i.a
        public i.a j(byte[] bArr) {
            this.f27736i = bArr;
            return this;
        }

        @Override // p2.i.a
        public i.a k(byte[] bArr) {
            this.f27737j = bArr;
            return this;
        }

        @Override // p2.i.a
        public i.a l(Integer num) {
            this.f27734g = num;
            return this;
        }

        @Override // p2.i.a
        public i.a m(String str) {
            this.f27735h = str;
            return this;
        }

        @Override // p2.i.a
        public i.a n(String str) {
            if (str != null) {
                this.f27728a = str;
                return this;
            }
            throw new NullPointerException("Null transportName");
        }

        @Override // p2.i.a
        public i.a o(long j10) {
            this.f27732e = Long.valueOf(j10);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p2.i
    public Map c() {
        return this.f27723f;
    }

    @Override // p2.i
    public Integer d() {
        return this.f27719b;
    }

    @Override // p2.i
    public h e() {
        return this.f27720c;
    }

    public boolean equals(Object obj) {
        Integer num;
        Integer num2;
        String str;
        byte[] g10;
        byte[] h10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f27718a.equals(iVar.n()) && ((num = this.f27719b) != null ? num.equals(iVar.d()) : iVar.d() == null) && this.f27720c.equals(iVar.e()) && this.f27721d == iVar.f() && this.f27722e == iVar.o() && this.f27723f.equals(iVar.c()) && ((num2 = this.f27724g) != null ? num2.equals(iVar.l()) : iVar.l() == null) && ((str = this.f27725h) != null ? str.equals(iVar.m()) : iVar.m() == null)) {
            byte[] bArr = this.f27726i;
            boolean z10 = iVar instanceof b;
            if (z10) {
                g10 = ((b) iVar).f27726i;
            } else {
                g10 = iVar.g();
            }
            if (Arrays.equals(bArr, g10)) {
                byte[] bArr2 = this.f27727j;
                if (z10) {
                    h10 = ((b) iVar).f27727j;
                } else {
                    h10 = iVar.h();
                }
                if (Arrays.equals(bArr2, h10)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // p2.i
    public long f() {
        return this.f27721d;
    }

    @Override // p2.i
    public byte[] g() {
        return this.f27726i;
    }

    @Override // p2.i
    public byte[] h() {
        return this.f27727j;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = (this.f27718a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f27719b;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        long j10 = this.f27721d;
        long j11 = this.f27722e;
        int hashCode4 = (((((((((hashCode3 ^ hashCode) * 1000003) ^ this.f27720c.hashCode()) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ this.f27723f.hashCode()) * 1000003;
        Integer num2 = this.f27724g;
        if (num2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num2.hashCode();
        }
        int i11 = (hashCode4 ^ hashCode2) * 1000003;
        String str = this.f27725h;
        if (str != null) {
            i10 = str.hashCode();
        }
        return ((((i11 ^ i10) * 1000003) ^ Arrays.hashCode(this.f27726i)) * 1000003) ^ Arrays.hashCode(this.f27727j);
    }

    @Override // p2.i
    public Integer l() {
        return this.f27724g;
    }

    @Override // p2.i
    public String m() {
        return this.f27725h;
    }

    @Override // p2.i
    public String n() {
        return this.f27718a;
    }

    @Override // p2.i
    public long o() {
        return this.f27722e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f27718a + ", code=" + this.f27719b + ", encodedPayload=" + this.f27720c + ", eventMillis=" + this.f27721d + ", uptimeMillis=" + this.f27722e + ", autoMetadata=" + this.f27723f + ", productId=" + this.f27724g + ", pseudonymousId=" + this.f27725h + ", experimentIdsClear=" + Arrays.toString(this.f27726i) + ", experimentIdsEncrypted=" + Arrays.toString(this.f27727j) + "}";
    }

    private b(String str, Integer num, h hVar, long j10, long j11, Map map, Integer num2, String str2, byte[] bArr, byte[] bArr2) {
        this.f27718a = str;
        this.f27719b = num;
        this.f27720c = hVar;
        this.f27721d = j10;
        this.f27722e = j11;
        this.f27723f = map;
        this.f27724g = num2;
        this.f27725h = str2;
        this.f27726i = bArr;
        this.f27727j = bArr2;
    }
}
