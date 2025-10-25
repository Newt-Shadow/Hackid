package g3;
/* loaded from: classes.dex */
public final class a0 {

    /* renamed from: c  reason: collision with root package name */
    public static final a0 f16142c = new a0(0, 0);

    /* renamed from: a  reason: collision with root package name */
    public final long f16143a;

    /* renamed from: b  reason: collision with root package name */
    public final long f16144b;

    public a0(long j10, long j11) {
        this.f16143a = j10;
        this.f16144b = j11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a0.class != obj.getClass()) {
            return false;
        }
        a0 a0Var = (a0) obj;
        if (this.f16143a == a0Var.f16143a && this.f16144b == a0Var.f16144b) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((int) this.f16143a) * 31) + ((int) this.f16144b);
    }

    public String toString() {
        return "[timeUs=" + this.f16143a + ", position=" + this.f16144b + "]";
    }
}
