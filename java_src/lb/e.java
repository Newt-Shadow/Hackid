package lb;
/* loaded from: classes.dex */
public final class e extends RuntimeException {

    /* renamed from: a  reason: collision with root package name */
    private final int f25431a;

    /* renamed from: b  reason: collision with root package name */
    private final String f25432b;

    /* renamed from: c  reason: collision with root package name */
    private final ne.b0 f25433c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(int i10, String message, ne.b0 b0Var) {
        super(message);
        kotlin.jvm.internal.m.e(message, "message");
        this.f25431a = i10;
        this.f25432b = message;
        this.f25433c = b0Var;
    }

    public final int a() {
        return this.f25431a;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        return this.f25432b;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return "PostHogApiError(statusCode=" + this.f25431a + ", message='" + getMessage() + "')";
    }
}
