package y4;
/* loaded from: classes.dex */
public final class g0 {

    /* renamed from: c  reason: collision with root package name */
    public static final g0 f32884c = new g0(-1, -1);

    /* renamed from: d  reason: collision with root package name */
    public static final g0 f32885d = new g0(0, 0);

    /* renamed from: a  reason: collision with root package name */
    private final int f32886a;

    /* renamed from: b  reason: collision with root package name */
    private final int f32887b;

    public g0(int i10, int i11) {
        boolean z10;
        if ((i10 != -1 && i10 < 0) || (i11 != -1 && i11 < 0)) {
            z10 = false;
        } else {
            z10 = true;
        }
        a.a(z10);
        this.f32886a = i10;
        this.f32887b = i11;
    }

    public int a() {
        return this.f32887b;
    }

    public int b() {
        return this.f32886a;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        if (this.f32886a != g0Var.f32886a || this.f32887b != g0Var.f32887b) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int i10 = this.f32887b;
        int i11 = this.f32886a;
        return i10 ^ ((i11 >>> 16) | (i11 << 16));
    }

    public String toString() {
        return this.f32886a + "x" + this.f32887b;
    }
}
