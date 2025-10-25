package s9;
/* loaded from: classes.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private final int f29554a;

    /* renamed from: b  reason: collision with root package name */
    private final int f29555b;

    public b(int i10, int i11) {
        this.f29554a = i10;
        this.f29555b = i11;
    }

    public final int a() {
        return this.f29555b;
    }

    public final int b() {
        return this.f29554a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f29554a != bVar.f29554a || this.f29555b != bVar.f29555b) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.f29554a ^ this.f29555b;
    }

    public final String toString() {
        return this.f29554a + "(" + this.f29555b + ')';
    }
}
