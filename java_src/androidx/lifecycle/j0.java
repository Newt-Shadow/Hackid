package androidx.lifecycle;
/* loaded from: classes.dex */
public abstract class j0 {

    /* renamed from: a  reason: collision with root package name */
    private final y0.c f2982a = new y0.c();

    public final void a(String key, AutoCloseable closeable) {
        kotlin.jvm.internal.m.e(key, "key");
        kotlin.jvm.internal.m.e(closeable, "closeable");
        y0.c cVar = this.f2982a;
        if (cVar != null) {
            cVar.d(key, closeable);
        }
    }

    public final void b() {
        y0.c cVar = this.f2982a;
        if (cVar != null) {
            cVar.e();
        }
        d();
    }

    public final AutoCloseable c(String key) {
        kotlin.jvm.internal.m.e(key, "key");
        y0.c cVar = this.f2982a;
        if (cVar != null) {
            return cVar.g(key);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d() {
    }
}
