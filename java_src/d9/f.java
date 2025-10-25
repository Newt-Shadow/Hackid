package d9;
/* loaded from: classes.dex */
public final class f extends m {

    /* renamed from: c  reason: collision with root package name */
    private static final f f15090c;

    static {
        f fVar = new f();
        f15090c = fVar;
        fVar.setStackTrace(m.f15104b);
    }

    private f() {
    }

    public static f a() {
        if (m.f15103a) {
            return new f();
        }
        return f15090c;
    }

    public static f b(Throwable th) {
        if (m.f15103a) {
            return new f(th);
        }
        return f15090c;
    }

    private f(Throwable th) {
        super(th);
    }
}
