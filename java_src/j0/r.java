package j0;
/* loaded from: classes.dex */
public final class r extends i0 {

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f24238b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(Throwable finalException) {
        super(Integer.MAX_VALUE, null);
        kotlin.jvm.internal.m.e(finalException, "finalException");
        this.f24238b = finalException;
    }

    public final Throwable b() {
        return this.f24238b;
    }
}
