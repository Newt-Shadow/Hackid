package o6;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class g extends h0 implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final n6.g f27429a;

    /* renamed from: b  reason: collision with root package name */
    final h0 f27430b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(n6.g gVar, h0 h0Var) {
        this.f27429a = (n6.g) n6.m.i(gVar);
        this.f27430b = (h0) n6.m.i(h0Var);
    }

    @Override // o6.h0, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return this.f27430b.compare(this.f27429a.apply(obj), this.f27429a.apply(obj2));
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f27429a.equals(gVar.f27429a) && this.f27430b.equals(gVar.f27430b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return n6.k.b(this.f27429a, this.f27430b);
    }

    public String toString() {
        String valueOf = String.valueOf(this.f27430b);
        String valueOf2 = String.valueOf(this.f27429a);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 13 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(".onResultOf(");
        sb2.append(valueOf2);
        sb2.append(")");
        return sb2.toString();
    }
}
