package d9;
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final b f15073a;

    /* renamed from: b  reason: collision with root package name */
    private j9.b f15074b;

    public c(b bVar) {
        if (bVar != null) {
            this.f15073a = bVar;
            return;
        }
        throw new IllegalArgumentException("Binarizer must be non-null.");
    }

    public j9.b a() {
        if (this.f15074b == null) {
            this.f15074b = this.f15073a.b();
        }
        return this.f15074b;
    }

    public j9.a b(int i10, j9.a aVar) {
        return this.f15073a.c(i10, aVar);
    }

    public int c() {
        return this.f15073a.d();
    }

    public int d() {
        return this.f15073a.f();
    }

    public boolean e() {
        return this.f15073a.e().f();
    }

    public c f() {
        return new c(this.f15073a.a(this.f15073a.e().g()));
    }

    public String toString() {
        try {
            return a().toString();
        } catch (j unused) {
            return "";
        }
    }
}
