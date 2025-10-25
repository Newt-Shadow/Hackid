package o6;

import java.io.Serializable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class n0 extends h0 implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final h0 f27463a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n0(h0 h0Var) {
        this.f27463a = (h0) n6.m.i(h0Var);
    }

    @Override // o6.h0, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return this.f27463a.compare(obj2, obj);
    }

    @Override // o6.h0
    public h0 d() {
        return this.f27463a;
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof n0) {
            return this.f27463a.equals(((n0) obj).f27463a);
        }
        return false;
    }

    public int hashCode() {
        return -this.f27463a.hashCode();
    }

    public String toString() {
        String valueOf = String.valueOf(this.f27463a);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 10);
        sb2.append(valueOf);
        sb2.append(".reverse()");
        return sb2.toString();
    }
}
