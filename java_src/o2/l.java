package o2;
/* loaded from: classes.dex */
final class l extends v {

    /* renamed from: a  reason: collision with root package name */
    private final long f27079a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(long j10) {
        this.f27079a = j10;
    }

    @Override // o2.v
    public long c() {
        return this.f27079a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof v) && this.f27079a == ((v) obj).c()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f27079a;
        return ((int) (j10 ^ (j10 >>> 32))) ^ 1000003;
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f27079a + "}";
    }
}
