package o2;

import java.util.Arrays;
import o2.q;
/* loaded from: classes.dex */
final class g extends q {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f27039a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f27040b;

    /* loaded from: classes.dex */
    static final class b extends q.a {

        /* renamed from: a  reason: collision with root package name */
        private byte[] f27041a;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f27042b;

        @Override // o2.q.a
        public q a() {
            return new g(this.f27041a, this.f27042b);
        }

        @Override // o2.q.a
        public q.a b(byte[] bArr) {
            this.f27041a = bArr;
            return this;
        }

        @Override // o2.q.a
        public q.a c(byte[] bArr) {
            this.f27042b = bArr;
            return this;
        }
    }

    @Override // o2.q
    public byte[] b() {
        return this.f27039a;
    }

    @Override // o2.q
    public byte[] c() {
        return this.f27040b;
    }

    public boolean equals(Object obj) {
        byte[] b10;
        byte[] c10;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        byte[] bArr = this.f27039a;
        boolean z10 = qVar instanceof g;
        if (z10) {
            b10 = ((g) qVar).f27039a;
        } else {
            b10 = qVar.b();
        }
        if (Arrays.equals(bArr, b10)) {
            byte[] bArr2 = this.f27040b;
            if (z10) {
                c10 = ((g) qVar).f27040b;
            } else {
                c10 = qVar.c();
            }
            if (Arrays.equals(bArr2, c10)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((Arrays.hashCode(this.f27039a) ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f27040b);
    }

    public String toString() {
        return "ExperimentIds{clearBlob=" + Arrays.toString(this.f27039a) + ", encryptedBlob=" + Arrays.toString(this.f27040b) + "}";
    }

    private g(byte[] bArr, byte[] bArr2) {
        this.f27039a = bArr;
        this.f27040b = bArr2;
    }
}
