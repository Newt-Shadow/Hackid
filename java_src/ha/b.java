package ha;
/* loaded from: classes.dex */
public enum b {
    auto("auto"),
    locked("locked");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f16975a;

    b(String str) {
        this.f16975a = str;
    }

    public static b b(String str) {
        b[] values;
        for (b bVar : values()) {
            if (bVar.f16975a.equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f16975a;
    }
}
