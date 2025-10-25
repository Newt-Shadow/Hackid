package m5;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k0 {

    /* renamed from: a  reason: collision with root package name */
    private final b f25824a;

    /* renamed from: b  reason: collision with root package name */
    private final l5.d f25825b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ k0(b bVar, l5.d dVar, j0 j0Var) {
        this.f25824a = bVar;
        this.f25825b = dVar;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof k0)) {
            k0 k0Var = (k0) obj;
            if (n5.o.a(this.f25824a, k0Var.f25824a) && n5.o.a(this.f25825b, k0Var.f25825b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return n5.o.b(this.f25824a, this.f25825b);
    }

    public final String toString() {
        return n5.o.c(this).a("key", this.f25824a).a("feature", this.f25825b).toString();
    }
}
