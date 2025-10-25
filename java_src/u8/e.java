package u8;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final d f30897a;

    /* renamed from: b  reason: collision with root package name */
    private final d f30898b;

    /* renamed from: c  reason: collision with root package name */
    private final double f30899c;

    public e(d performance, d crashlytics, double d10) {
        kotlin.jvm.internal.m.e(performance, "performance");
        kotlin.jvm.internal.m.e(crashlytics, "crashlytics");
        this.f30897a = performance;
        this.f30898b = crashlytics;
        this.f30899c = d10;
    }

    public final d a() {
        return this.f30898b;
    }

    public final d b() {
        return this.f30897a;
    }

    public final double c() {
        return this.f30899c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            return this.f30897a == eVar.f30897a && this.f30898b == eVar.f30898b && Double.compare(this.f30899c, eVar.f30899c) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f30897a.hashCode() * 31) + this.f30898b.hashCode()) * 31) + Double.hashCode(this.f30899c);
    }

    public String toString() {
        return "DataCollectionStatus(performance=" + this.f30897a + ", crashlytics=" + this.f30898b + ", sessionSamplingRate=" + this.f30899c + ')';
    }
}
