package p2;

import java.util.Arrays;
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private final n2.c f27769a;

    /* renamed from: b  reason: collision with root package name */
    private final byte[] f27770b;

    public h(n2.c cVar, byte[] bArr) {
        if (cVar != null) {
            if (bArr != null) {
                this.f27769a = cVar;
                this.f27770b = bArr;
                return;
            }
            throw new NullPointerException("bytes is null");
        }
        throw new NullPointerException("encoding is null");
    }

    public byte[] a() {
        return this.f27770b;
    }

    public n2.c b() {
        return this.f27769a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        if (!this.f27769a.equals(hVar.f27769a)) {
            return false;
        }
        return Arrays.equals(this.f27770b, hVar.f27770b);
    }

    public int hashCode() {
        return ((this.f27769a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f27770b);
    }

    public String toString() {
        return "EncodedPayload{encoding=" + this.f27769a + ", bytes=[...]}";
    }
}
