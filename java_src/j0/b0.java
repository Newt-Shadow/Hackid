package j0;
/* loaded from: classes.dex */
public final class b0 extends i0 {

    /* renamed from: b  reason: collision with root package name */
    private final Throwable f23980b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b0(Throwable readException, int i10) {
        super(i10, null);
        kotlin.jvm.internal.m.e(readException, "readException");
        this.f23980b = readException;
    }

    public final Throwable b() {
        return this.f23980b;
    }
}
