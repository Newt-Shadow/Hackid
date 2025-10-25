package q2;

import java.util.Arrays;
import q2.f;
/* loaded from: classes.dex */
final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final Iterable f27984a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f27985b;

    /* loaded from: classes.dex */
    static final class b extends f.a {

        /* renamed from: a  reason: collision with root package name */
        private Iterable f27986a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f27987b;

        @Override // q2.f.a
        public f a() {
            String str = "";
            if (this.f27986a == null) {
                str = " events";
            }
            if (str.isEmpty()) {
                return new a(this.f27986a, this.f27987b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // q2.f.a
        public f.a b(Iterable iterable) {
            if (iterable != null) {
                this.f27986a = iterable;
                return this;
            }
            throw new NullPointerException("Null events");
        }

        @Override // q2.f.a
        public f.a c(byte[] bArr) {
            this.f27987b = bArr;
            return this;
        }
    }

    @Override // q2.f
    public Iterable b() {
        return this.f27984a;
    }

    @Override // q2.f
    public byte[] c() {
        return this.f27985b;
    }

    public boolean equals(Object obj) {
        byte[] c10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f27984a.equals(fVar.b())) {
            byte[] bArr = this.f27985b;
            if (fVar instanceof a) {
                c10 = ((a) fVar).f27985b;
            } else {
                c10 = fVar.c();
            }
            if (Arrays.equals(bArr, c10)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f27984a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f27985b);
    }

    public String toString() {
        return "BackendRequest{events=" + this.f27984a + ", extras=" + Arrays.toString(this.f27985b) + "}";
    }

    private a(Iterable iterable, byte[] bArr) {
        this.f27984a = iterable;
        this.f27985b = bArr;
    }
}
