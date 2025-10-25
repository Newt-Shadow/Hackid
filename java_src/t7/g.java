package t7;

import java.util.Arrays;
import t7.f0;
/* loaded from: classes.dex */
final class g extends f0.d.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f30295a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f30296b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends f0.d.b.a {

        /* renamed from: a  reason: collision with root package name */
        private String f30297a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f30298b;

        @Override // t7.f0.d.b.a
        public f0.d.b a() {
            byte[] bArr;
            String str = this.f30297a;
            if (str != null && (bArr = this.f30298b) != null) {
                return new g(str, bArr);
            }
            StringBuilder sb2 = new StringBuilder();
            if (this.f30297a == null) {
                sb2.append(" filename");
            }
            if (this.f30298b == null) {
                sb2.append(" contents");
            }
            throw new IllegalStateException("Missing required properties:" + ((Object) sb2));
        }

        @Override // t7.f0.d.b.a
        public f0.d.b.a b(byte[] bArr) {
            if (bArr != null) {
                this.f30298b = bArr;
                return this;
            }
            throw new NullPointerException("Null contents");
        }

        @Override // t7.f0.d.b.a
        public f0.d.b.a c(String str) {
            if (str != null) {
                this.f30297a = str;
                return this;
            }
            throw new NullPointerException("Null filename");
        }
    }

    @Override // t7.f0.d.b
    public byte[] b() {
        return this.f30296b;
    }

    @Override // t7.f0.d.b
    public String c() {
        return this.f30295a;
    }

    public boolean equals(Object obj) {
        byte[] b10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.d.b)) {
            return false;
        }
        f0.d.b bVar = (f0.d.b) obj;
        if (this.f30295a.equals(bVar.c())) {
            byte[] bArr = this.f30296b;
            if (bVar instanceof g) {
                b10 = ((g) bVar).f30296b;
            } else {
                b10 = bVar.b();
            }
            if (Arrays.equals(bArr, b10)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((this.f30295a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f30296b);
    }

    public String toString() {
        return "File{filename=" + this.f30295a + ", contents=" + Arrays.toString(this.f30296b) + "}";
    }

    private g(String str, byte[] bArr) {
        this.f30295a = str;
        this.f30296b = bArr;
    }
}
