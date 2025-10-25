package rd;
/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    private final String f29113a;

    /* renamed from: b  reason: collision with root package name */
    private final od.c f29114b;

    public g(String value, od.c range) {
        kotlin.jvm.internal.m.e(value, "value");
        kotlin.jvm.internal.m.e(range, "range");
        this.f29113a = value;
        this.f29114b = range;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            return kotlin.jvm.internal.m.a(this.f29113a, gVar.f29113a) && kotlin.jvm.internal.m.a(this.f29114b, gVar.f29114b);
        }
        return false;
    }

    public int hashCode() {
        return (this.f29113a.hashCode() * 31) + this.f29114b.hashCode();
    }

    public String toString() {
        return "MatchGroup(value=" + this.f29113a + ", range=" + this.f29114b + ')';
    }
}
