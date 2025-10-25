package s8;
/* loaded from: classes.dex */
final class a extends f {

    /* renamed from: a  reason: collision with root package name */
    private final String f29540a;

    /* renamed from: b  reason: collision with root package name */
    private final String f29541b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2) {
        if (str != null) {
            this.f29540a = str;
            if (str2 != null) {
                this.f29541b = str2;
                return;
            }
            throw new NullPointerException("Null version");
        }
        throw new NullPointerException("Null libraryName");
    }

    @Override // s8.f
    public String b() {
        return this.f29540a;
    }

    @Override // s8.f
    public String c() {
        return this.f29541b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f29540a.equals(fVar.b()) && this.f29541b.equals(fVar.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((this.f29540a.hashCode() ^ 1000003) * 1000003) ^ this.f29541b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.f29540a + ", version=" + this.f29541b + "}";
    }
}
