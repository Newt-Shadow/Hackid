package p2;

import java.util.Arrays;
import p2.p;
/* loaded from: classes.dex */
final class d extends p {

    /* renamed from: a  reason: collision with root package name */
    private final String f27748a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f27749b;

    /* renamed from: c  reason: collision with root package name */
    private final n2.f f27750c;

    /* loaded from: classes.dex */
    static final class b extends p.a {

        /* renamed from: a  reason: collision with root package name */
        private String f27751a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f27752b;

        /* renamed from: c  reason: collision with root package name */
        private n2.f f27753c;

        @Override // p2.p.a
        public p a() {
            String str = "";
            if (this.f27751a == null) {
                str = " backendName";
            }
            if (this.f27753c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new d(this.f27751a, this.f27752b, this.f27753c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // p2.p.a
        public p.a b(String str) {
            if (str != null) {
                this.f27751a = str;
                return this;
            }
            throw new NullPointerException("Null backendName");
        }

        @Override // p2.p.a
        public p.a c(byte[] bArr) {
            this.f27752b = bArr;
            return this;
        }

        @Override // p2.p.a
        public p.a d(n2.f fVar) {
            if (fVar != null) {
                this.f27753c = fVar;
                return this;
            }
            throw new NullPointerException("Null priority");
        }
    }

    @Override // p2.p
    public String b() {
        return this.f27748a;
    }

    @Override // p2.p
    public byte[] c() {
        return this.f27749b;
    }

    @Override // p2.p
    public n2.f d() {
        return this.f27750c;
    }

    public boolean equals(Object obj) {
        byte[] c10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f27748a.equals(pVar.b())) {
            byte[] bArr = this.f27749b;
            if (pVar instanceof d) {
                c10 = ((d) pVar).f27749b;
            } else {
                c10 = pVar.c();
            }
            if (Arrays.equals(bArr, c10) && this.f27750c.equals(pVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f27748a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f27749b)) * 1000003) ^ this.f27750c.hashCode();
    }

    private d(String str, byte[] bArr, n2.f fVar) {
        this.f27748a = str;
        this.f27749b = bArr;
        this.f27750c = fVar;
    }
}
