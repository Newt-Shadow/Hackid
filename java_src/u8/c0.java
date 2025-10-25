package u8;
/* loaded from: classes.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f30883a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30884b;

    /* renamed from: c  reason: collision with root package name */
    private final int f30885c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f30886d;

    public c0(String processName, int i10, int i11, boolean z10) {
        kotlin.jvm.internal.m.e(processName, "processName");
        this.f30883a = processName;
        this.f30884b = i10;
        this.f30885c = i11;
        this.f30886d = z10;
    }

    public final int a() {
        return this.f30885c;
    }

    public final int b() {
        return this.f30884b;
    }

    public final String c() {
        return this.f30883a;
    }

    public final boolean d() {
        return this.f30886d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c0) {
            c0 c0Var = (c0) obj;
            return kotlin.jvm.internal.m.a(this.f30883a, c0Var.f30883a) && this.f30884b == c0Var.f30884b && this.f30885c == c0Var.f30885c && this.f30886d == c0Var.f30886d;
        }
        return false;
    }

    public int hashCode() {
        return (((((this.f30883a.hashCode() * 31) + Integer.hashCode(this.f30884b)) * 31) + Integer.hashCode(this.f30885c)) * 31) + Boolean.hashCode(this.f30886d);
    }

    public String toString() {
        return "ProcessDetails(processName=" + this.f30883a + ", pid=" + this.f30884b + ", importance=" + this.f30885c + ", isDefaultProcess=" + this.f30886d + ')';
    }
}
