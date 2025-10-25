package q7;
/* loaded from: classes.dex */
public final class n0 {

    /* renamed from: a  reason: collision with root package name */
    private final String f28510a;

    /* renamed from: b  reason: collision with root package name */
    private final String f28511b;

    public n0(String str, String str2) {
        this.f28510a = str;
        this.f28511b = str2;
    }

    public final String a() {
        return this.f28511b;
    }

    public final String b() {
        return this.f28510a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof n0) {
            n0 n0Var = (n0) obj;
            return kotlin.jvm.internal.m.a(this.f28510a, n0Var.f28510a) && kotlin.jvm.internal.m.a(this.f28511b, n0Var.f28511b);
        }
        return false;
    }

    public int hashCode() {
        String str = this.f28510a;
        int hashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.f28511b;
        return hashCode + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "FirebaseInstallationId(fid=" + this.f28510a + ", authToken=" + this.f28511b + ')';
    }
}
