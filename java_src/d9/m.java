package d9;
/* loaded from: classes.dex */
public abstract class m extends Exception {

    /* renamed from: a  reason: collision with root package name */
    protected static boolean f15103a;

    /* renamed from: b  reason: collision with root package name */
    protected static final StackTraceElement[] f15104b;

    static {
        boolean z10;
        if (System.getProperty("surefire.test.class.path") != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        f15103a = z10;
        f15104b = new StackTraceElement[0];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m() {
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(Throwable th) {
        super(th);
    }
}
