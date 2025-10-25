package ne;

import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class j {

    /* renamed from: a  reason: collision with root package name */
    private final se.g f26724a;

    public j(se.g delegate) {
        kotlin.jvm.internal.m.e(delegate, "delegate");
        this.f26724a = delegate;
    }

    public final se.g a() {
        return this.f26724a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public j(int i10, long j10, TimeUnit timeUnit) {
        this(new se.g(re.e.f29139i, i10, j10, timeUnit));
        kotlin.jvm.internal.m.e(timeUnit, "timeUnit");
    }

    public j() {
        this(5, 5L, TimeUnit.MINUTES);
    }
}
