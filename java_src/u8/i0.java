package u8;
/* loaded from: classes.dex */
public final class i0 {

    /* renamed from: a  reason: collision with root package name */
    private final j f30916a;

    /* renamed from: b  reason: collision with root package name */
    private final p0 f30917b;

    /* renamed from: c  reason: collision with root package name */
    private final b f30918c;

    public i0(j eventType, p0 sessionData, b applicationInfo) {
        kotlin.jvm.internal.m.e(eventType, "eventType");
        kotlin.jvm.internal.m.e(sessionData, "sessionData");
        kotlin.jvm.internal.m.e(applicationInfo, "applicationInfo");
        this.f30916a = eventType;
        this.f30917b = sessionData;
        this.f30918c = applicationInfo;
    }

    public final b a() {
        return this.f30918c;
    }

    public final j b() {
        return this.f30916a;
    }

    public final p0 c() {
        return this.f30917b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i0) {
            i0 i0Var = (i0) obj;
            return this.f30916a == i0Var.f30916a && kotlin.jvm.internal.m.a(this.f30917b, i0Var.f30917b) && kotlin.jvm.internal.m.a(this.f30918c, i0Var.f30918c);
        }
        return false;
    }

    public int hashCode() {
        return (((this.f30916a.hashCode() * 31) + this.f30917b.hashCode()) * 31) + this.f30918c.hashCode();
    }

    public String toString() {
        return "SessionEvent(eventType=" + this.f30916a + ", sessionData=" + this.f30917b + ", applicationInfo=" + this.f30918c + ')';
    }
}
