package b3;
/* loaded from: classes.dex */
public final class v3 {

    /* renamed from: b  reason: collision with root package name */
    public static final v3 f4474b = new v3(false);

    /* renamed from: a  reason: collision with root package name */
    public final boolean f4475a;

    public v3(boolean z10) {
        this.f4475a = z10;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && v3.class == obj.getClass() && this.f4475a == ((v3) obj).f4475a) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return !this.f4475a ? 1 : 0;
    }
}
