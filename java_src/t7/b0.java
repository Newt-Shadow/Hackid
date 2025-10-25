package t7;

import t7.g0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b0 extends g0 {

    /* renamed from: a  reason: collision with root package name */
    private final g0.a f30240a;

    /* renamed from: b  reason: collision with root package name */
    private final g0.c f30241b;

    /* renamed from: c  reason: collision with root package name */
    private final g0.b f30242c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b0(g0.a aVar, g0.c cVar, g0.b bVar) {
        if (aVar != null) {
            this.f30240a = aVar;
            if (cVar != null) {
                this.f30241b = cVar;
                if (bVar != null) {
                    this.f30242c = bVar;
                    return;
                }
                throw new NullPointerException("Null deviceData");
            }
            throw new NullPointerException("Null osData");
        }
        throw new NullPointerException("Null appData");
    }

    @Override // t7.g0
    public g0.a a() {
        return this.f30240a;
    }

    @Override // t7.g0
    public g0.b c() {
        return this.f30242c;
    }

    @Override // t7.g0
    public g0.c d() {
        return this.f30241b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g0)) {
            return false;
        }
        g0 g0Var = (g0) obj;
        if (this.f30240a.equals(g0Var.a()) && this.f30241b.equals(g0Var.d()) && this.f30242c.equals(g0Var.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f30240a.hashCode() ^ 1000003) * 1000003) ^ this.f30241b.hashCode()) * 1000003) ^ this.f30242c.hashCode();
    }

    public String toString() {
        return "StaticSessionData{appData=" + this.f30240a + ", osData=" + this.f30241b + ", deviceData=" + this.f30242c + "}";
    }
}
