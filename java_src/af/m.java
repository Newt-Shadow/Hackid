package af;
/* loaded from: classes2.dex */
public abstract class m implements a1 {

    /* renamed from: a  reason: collision with root package name */
    private final a1 f418a;

    public m(a1 delegate) {
        kotlin.jvm.internal.m.e(delegate, "delegate");
        this.f418a = delegate;
    }

    @Override // af.a1
    public long L0(d sink, long j10) {
        kotlin.jvm.internal.m.e(sink, "sink");
        return this.f418a.L0(sink, j10);
    }

    public final a1 a() {
        return this.f418a;
    }

    @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f418a.close();
    }

    @Override // af.a1
    public b1 n() {
        return this.f418a.n();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.f418a + ')';
    }
}
