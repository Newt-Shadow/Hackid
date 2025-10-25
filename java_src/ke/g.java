package ke;
/* loaded from: classes2.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    public final l f24912a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f24913b;

    public g(l writer) {
        kotlin.jvm.internal.m.e(writer, "writer");
        this.f24912a = writer;
        this.f24913b = true;
    }

    public final boolean a() {
        return this.f24913b;
    }

    public void b() {
        this.f24913b = true;
    }

    public void c() {
        this.f24913b = false;
    }

    public void d() {
        this.f24913b = false;
    }

    public final void e(char c10) {
        this.f24912a.a(c10);
    }

    public void f(double d10) {
        this.f24912a.d(String.valueOf(d10));
    }

    public void g(int i10) {
        this.f24912a.c(i10);
    }

    public void h(long j10) {
        this.f24912a.c(j10);
    }

    public final void i(String v10) {
        kotlin.jvm.internal.m.e(v10, "v");
        this.f24912a.d(v10);
    }

    public void j(boolean z10) {
        this.f24912a.d(String.valueOf(z10));
    }

    public void k(String value) {
        kotlin.jvm.internal.m.e(value, "value");
        this.f24912a.b(value);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void l(boolean z10) {
        this.f24913b = z10;
    }

    public void m() {
    }

    public void n() {
    }
}
