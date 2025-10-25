package h7;
/* loaded from: classes.dex */
final class a extends o {

    /* renamed from: a  reason: collision with root package name */
    private final long f16856a;

    /* renamed from: b  reason: collision with root package name */
    private final long f16857b;

    /* renamed from: c  reason: collision with root package name */
    private final long f16858c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(long j10, long j11, long j12) {
        this.f16856a = j10;
        this.f16857b = j11;
        this.f16858c = j12;
    }

    @Override // h7.o
    public long b() {
        return this.f16857b;
    }

    @Override // h7.o
    public long c() {
        return this.f16856a;
    }

    @Override // h7.o
    public long d() {
        return this.f16858c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f16856a == oVar.c() && this.f16857b == oVar.b() && this.f16858c == oVar.d()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        long j10 = this.f16856a;
        long j11 = this.f16857b;
        long j12 = this.f16858c;
        return ((((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ ((int) ((j12 >>> 32) ^ j12));
    }

    public String toString() {
        return "StartupTime{epochMillis=" + this.f16856a + ", elapsedRealtime=" + this.f16857b + ", uptimeMillis=" + this.f16858c + "}";
    }
}
