package q2;

import q2.g;
/* loaded from: classes.dex */
final class b extends g {

    /* renamed from: a  reason: collision with root package name */
    private final g.a f27988a;

    /* renamed from: b  reason: collision with root package name */
    private final long f27989b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(g.a aVar, long j10) {
        if (aVar != null) {
            this.f27988a = aVar;
            this.f27989b = j10;
            return;
        }
        throw new NullPointerException("Null status");
    }

    @Override // q2.g
    public long b() {
        return this.f27989b;
    }

    @Override // q2.g
    public g.a c() {
        return this.f27988a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f27988a.equals(gVar.c()) && this.f27989b == gVar.b()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f27989b;
        return ((this.f27988a.hashCode() ^ 1000003) * 1000003) ^ ((int) (j10 ^ (j10 >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f27988a + ", nextRequestWaitMillis=" + this.f27989b + "}";
    }
}
