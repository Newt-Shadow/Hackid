package i6;
/* loaded from: classes.dex */
public enum r {
    UNINITIALIZED("uninitialized"),
    POLICY("eu_consent_policy"),
    DENIED("denied"),
    GRANTED("granted");
    

    /* renamed from: a  reason: collision with root package name */
    private final String f17305a;

    r(String str) {
        this.f17305a = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f17305a;
    }
}
