package k7;
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    private final e0 f24844a;

    /* renamed from: b  reason: collision with root package name */
    private final int f24845b;

    /* renamed from: c  reason: collision with root package name */
    private final int f24846c;

    private q(Class cls, int i10, int i11) {
        this(e0.b(cls), i10, i11);
    }

    public static q a(Class cls) {
        return new q(cls, 0, 2);
    }

    private static String b(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    return "deferred";
                }
                throw new AssertionError("Unsupported injection: " + i10);
            }
            return "provider";
        }
        return "direct";
    }

    public static q h(Class cls) {
        return new q(cls, 0, 0);
    }

    public static q i(Class cls) {
        return new q(cls, 0, 1);
    }

    public static q j(e0 e0Var) {
        return new q(e0Var, 0, 1);
    }

    public static q k(Class cls) {
        return new q(cls, 1, 0);
    }

    public static q l(e0 e0Var) {
        return new q(e0Var, 1, 0);
    }

    public static q m(Class cls) {
        return new q(cls, 1, 1);
    }

    public static q n(e0 e0Var) {
        return new q(e0Var, 1, 1);
    }

    public static q o(Class cls) {
        return new q(cls, 2, 0);
    }

    public e0 c() {
        return this.f24844a;
    }

    public boolean d() {
        if (this.f24846c == 2) {
            return true;
        }
        return false;
    }

    public boolean e() {
        if (this.f24846c == 0) {
            return true;
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (!this.f24844a.equals(qVar.f24844a) || this.f24845b != qVar.f24845b || this.f24846c != qVar.f24846c) {
            return false;
        }
        return true;
    }

    public boolean f() {
        if (this.f24845b == 1) {
            return true;
        }
        return false;
    }

    public boolean g() {
        if (this.f24845b == 2) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f24844a.hashCode() ^ 1000003) * 1000003) ^ this.f24845b) * 1000003) ^ this.f24846c;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder("Dependency{anInterface=");
        sb2.append(this.f24844a);
        sb2.append(", type=");
        int i10 = this.f24845b;
        if (i10 == 1) {
            str = "required";
        } else if (i10 == 0) {
            str = "optional";
        } else {
            str = "set";
        }
        sb2.append(str);
        sb2.append(", injection=");
        sb2.append(b(this.f24846c));
        sb2.append("}");
        return sb2.toString();
    }

    private q(e0 e0Var, int i10, int i11) {
        this.f24844a = (e0) d0.c(e0Var, "Null dependency anInterface.");
        this.f24845b = i10;
        this.f24846c = i11;
    }
}
