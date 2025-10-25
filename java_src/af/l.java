package af;
/* loaded from: classes2.dex */
public abstract class l implements y0 {

    /* renamed from: a  reason: collision with root package name */
    private final y0 f417a;

    public l(y0 delegate) {
        kotlin.jvm.internal.m.e(delegate, "delegate");
        this.f417a = delegate;
    }

    @Override // af.y0
    public void c0(d source, long j10) {
        kotlin.jvm.internal.m.e(source, "source");
        this.f417a.c0(source, j10);
    }

    @Override // af.y0, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f417a.close();
    }

    @Override // af.y0, java.io.Flushable
    public void flush() {
        this.f417a.flush();
    }

    @Override // af.y0
    public b1 n() {
        return this.f417a.n();
    }

    public String toString() {
        return getClass().getSimpleName() + '(' + this.f417a + ')';
    }
}
