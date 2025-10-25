package o6;

import java.io.Serializable;
import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class j extends h0 implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    final Comparator f27433a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(Comparator comparator) {
        this.f27433a = (Comparator) n6.m.i(comparator);
    }

    @Override // o6.h0, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return this.f27433a.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            return this.f27433a.equals(((j) obj).f27433a);
        }
        return false;
    }

    public int hashCode() {
        return this.f27433a.hashCode();
    }

    public String toString() {
        return this.f27433a.toString();
    }
}
