package i6;
/* loaded from: classes.dex */
public enum d0 {
    GOOGLE_ANALYTICS(0),
    GOOGLE_SIGNAL(1),
    SGTM(2),
    SGTM_CLIENT(3),
    GOOGLE_SIGNAL_PENDING(4),
    UNKNOWN(99);
    

    /* renamed from: a  reason: collision with root package name */
    private final int f17294a;

    d0(int i10) {
        this.f17294a = i10;
    }

    public static d0 a(int i10) {
        d0[] values;
        for (d0 d0Var : values()) {
            if (d0Var.f17294a == i10) {
                return d0Var;
            }
        }
        return UNKNOWN;
    }

    public final int zza() {
        return this.f17294a;
    }
}
