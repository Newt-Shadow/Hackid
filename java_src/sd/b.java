package sd;
/* loaded from: classes2.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f29586a = false;

    /* renamed from: b  reason: collision with root package name */
    private static final ThreadLocal[] f29587b;

    static {
        ThreadLocal[] threadLocalArr = new ThreadLocal[4];
        for (int i10 = 0; i10 < 4; i10++) {
            threadLocalArr[i10] = new ThreadLocal();
        }
        f29587b = threadLocalArr;
    }

    public static final boolean a() {
        return f29586a;
    }
}
