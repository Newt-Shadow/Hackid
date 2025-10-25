package kotlin.jvm.internal;
/* loaded from: classes2.dex */
public final class r implements e {

    /* renamed from: a  reason: collision with root package name */
    private final Class f24984a;

    /* renamed from: b  reason: collision with root package name */
    private final String f24985b;

    public r(Class jClass, String moduleName) {
        m.e(jClass, "jClass");
        m.e(moduleName, "moduleName");
        this.f24984a = jClass;
        this.f24985b = moduleName;
    }

    @Override // kotlin.jvm.internal.e
    public Class e() {
        return this.f24984a;
    }

    public boolean equals(Object obj) {
        if ((obj instanceof r) && m.a(e(), ((r) obj).e())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return e().hashCode();
    }

    public String toString() {
        return e() + " (Kotlin reflection is not available)";
    }
}
