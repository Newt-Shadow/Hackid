package td;
/* loaded from: classes2.dex */
public abstract class a2 {

    /* renamed from: a  reason: collision with root package name */
    private static final yd.f0 f30622a = new yd.f0("COMPLETING_ALREADY");

    /* renamed from: b  reason: collision with root package name */
    public static final yd.f0 f30623b = new yd.f0("COMPLETING_WAITING_CHILDREN");

    /* renamed from: c  reason: collision with root package name */
    private static final yd.f0 f30624c = new yd.f0("COMPLETING_RETRY");

    /* renamed from: d  reason: collision with root package name */
    private static final yd.f0 f30625d = new yd.f0("TOO_LATE_TO_CANCEL");

    /* renamed from: e  reason: collision with root package name */
    private static final yd.f0 f30626e = new yd.f0("SEALED");

    /* renamed from: f  reason: collision with root package name */
    private static final c1 f30627f = new c1(false);

    /* renamed from: g  reason: collision with root package name */
    private static final c1 f30628g = new c1(true);

    public static final Object g(Object obj) {
        if (obj instanceof p1) {
            return new q1((p1) obj);
        }
        return obj;
    }

    public static final Object h(Object obj) {
        q1 q1Var;
        p1 p1Var;
        if (obj instanceof q1) {
            q1Var = (q1) obj;
        } else {
            q1Var = null;
        }
        if (q1Var != null && (p1Var = q1Var.f30685a) != null) {
            return p1Var;
        }
        return obj;
    }
}
