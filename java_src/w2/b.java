package w2;

import java.util.Map;
/* loaded from: classes.dex */
final class b extends f {

    /* renamed from: a  reason: collision with root package name */
    private final z2.a f31653a;

    /* renamed from: b  reason: collision with root package name */
    private final Map f31654b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(z2.a aVar, Map map) {
        if (aVar != null) {
            this.f31653a = aVar;
            if (map != null) {
                this.f31654b = map;
                return;
            }
            throw new NullPointerException("Null values");
        }
        throw new NullPointerException("Null clock");
    }

    @Override // w2.f
    z2.a e() {
        return this.f31653a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f31653a.equals(fVar.e()) && this.f31654b.equals(fVar.h())) {
            return true;
        }
        return false;
    }

    @Override // w2.f
    Map h() {
        return this.f31654b;
    }

    public int hashCode() {
        return ((this.f31653a.hashCode() ^ 1000003) * 1000003) ^ this.f31654b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f31653a + ", values=" + this.f31654b + "}";
    }
}
