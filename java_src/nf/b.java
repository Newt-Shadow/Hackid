package nf;
/* loaded from: classes2.dex */
public enum b {
    ERROR(40, "ERROR"),
    WARN(30, "WARN"),
    INFO(20, "INFO"),
    DEBUG(10, "DEBUG"),
    TRACE(0, "TRACE");
    

    /* renamed from: a  reason: collision with root package name */
    private final int f26894a;

    /* renamed from: b  reason: collision with root package name */
    private final String f26895b;

    b(int i10, String str) {
        this.f26894a = i10;
        this.f26895b = str;
    }

    public int b() {
        return this.f26894a;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f26895b;
    }
}
