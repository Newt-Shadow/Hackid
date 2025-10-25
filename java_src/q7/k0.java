package q7;
/* loaded from: classes.dex */
public enum k0 {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f28490a;

    k0(int i10) {
        this.f28490a = i10;
    }

    public static k0 b(String str) {
        if (str != null) {
            return APP_STORE;
        }
        return DEVELOPER;
    }

    public int f() {
        return this.f28490a;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.f28490a);
    }
}
