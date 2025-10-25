package la;
/* loaded from: classes.dex */
public enum b {
    off("off"),
    auto("auto"),
    always("always"),
    torch("torch");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f25402a;

    b(String str) {
        this.f25402a = str;
    }

    public static b b(String str) {
        b[] values;
        for (b bVar : values()) {
            if (bVar.f25402a.equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f25402a;
    }
}
