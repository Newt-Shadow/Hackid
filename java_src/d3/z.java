package d3;
/* loaded from: classes.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    public final int f14707a;

    /* renamed from: b  reason: collision with root package name */
    public final float f14708b;

    public z(int i10, float f10) {
        this.f14707a = i10;
        this.f14708b = f10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || z.class != obj.getClass()) {
            return false;
        }
        z zVar = (z) obj;
        if (this.f14707a == zVar.f14707a && Float.compare(zVar.f14708b, this.f14708b) == 0) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((527 + this.f14707a) * 31) + Float.floatToIntBits(this.f14708b);
    }
}
