package h4;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final String f16756a;

    /* renamed from: b  reason: collision with root package name */
    public final String f16757b;

    /* renamed from: c  reason: collision with root package name */
    public final int f16758c;

    /* renamed from: d  reason: collision with root package name */
    public final int f16759d;

    public b(String str, String str2, int i10, int i11) {
        this.f16756a = str;
        this.f16757b = str2;
        this.f16758c = i10;
        this.f16759d = i11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f16758c == bVar.f16758c && this.f16759d == bVar.f16759d && n6.k.a(this.f16756a, bVar.f16756a) && n6.k.a(this.f16757b, bVar.f16757b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return n6.k.b(this.f16756a, this.f16757b, Integer.valueOf(this.f16758c), Integer.valueOf(this.f16759d));
    }
}
