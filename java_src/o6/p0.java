package o6;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class p0 extends s {

    /* renamed from: c  reason: collision with root package name */
    final transient Object f27479c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p0(Object obj) {
        this.f27479c = n6.m.i(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: A */
    public r0 iterator() {
        return u.p(this.f27479c);
    }

    @Override // o6.o, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.f27479c.equals(obj);
    }

    @Override // o6.s, o6.o
    public q d() {
        return q.F(this.f27479c);
    }

    @Override // o6.o
    int g(Object[] objArr, int i10) {
        objArr[i10] = this.f27479c;
        return i10 + 1;
    }

    @Override // o6.s, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.f27479c.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // o6.o
    public boolean n() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return 1;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        String obj = this.f27479c.toString();
        StringBuilder sb2 = new StringBuilder(String.valueOf(obj).length() + 2);
        sb2.append('[');
        sb2.append(obj);
        sb2.append(']');
        return sb2.toString();
    }
}
