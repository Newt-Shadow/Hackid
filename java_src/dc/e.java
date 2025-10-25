package dc;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final long f15153a;

    /* renamed from: b  reason: collision with root package name */
    private final long f15154b;

    public e(long j10, long j11) {
        this.f15153a = j10;
        this.f15154b = j11;
    }

    public final long a() {
        return this.f15153a;
    }

    public final long b() {
        return this.f15154b;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof e) {
                e eVar = (e) obj;
                return this.f15153a == eVar.f15153a && this.f15154b == eVar.f15154b;
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        long j10 = this.f15153a;
        long j11 = this.f15154b;
        return (((int) (j10 ^ (j10 >>> 32))) * 31) + ((int) ((j11 >>> 32) ^ j11));
    }

    public String toString() {
        return "UtilityServiceConfiguration(initialConfigTime=" + this.f15153a + ", lastUpdateConfigTime=" + this.f15154b + ")";
    }
}
