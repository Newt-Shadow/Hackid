package gb;
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    private final int f16381a;

    /* renamed from: b  reason: collision with root package name */
    private final int f16382b;

    /* renamed from: c  reason: collision with root package name */
    private final float f16383c;

    public t(int i10, int i11, float f10) {
        this.f16381a = i10;
        this.f16382b = i11;
        this.f16383c = f10;
    }

    public final int a() {
        return this.f16382b;
    }

    public final int b() {
        return this.f16381a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof t) {
            t tVar = (t) obj;
            return this.f16381a == tVar.f16381a && this.f16382b == tVar.f16382b && Float.compare(this.f16383c, tVar.f16383c) == 0;
        }
        return false;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.f16381a) * 31) + Integer.hashCode(this.f16382b)) * 31) + Float.hashCode(this.f16383c);
    }

    public String toString() {
        return "PostHogScreenSizeInfo(width=" + this.f16381a + ", height=" + this.f16382b + ", density=" + this.f16383c + ')';
    }
}
