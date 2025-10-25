package o6;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j0 extends q {

    /* renamed from: e  reason: collision with root package name */
    static final q f27434e = new j0(new Object[0], 0);

    /* renamed from: c  reason: collision with root package name */
    final transient Object[] f27435c;

    /* renamed from: d  reason: collision with root package name */
    private final transient int f27436d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0(Object[] objArr, int i10) {
        this.f27435c = objArr;
        this.f27436d = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // o6.q, o6.o
    public int g(Object[] objArr, int i10) {
        System.arraycopy(this.f27435c, 0, objArr, i10, this.f27436d);
        return i10 + this.f27436d;
    }

    @Override // java.util.List
    public Object get(int i10) {
        n6.m.g(i10, this.f27436d);
        Object obj = this.f27435c[i10];
        Objects.requireNonNull(obj);
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // o6.o
    public Object[] i() {
        return this.f27435c;
    }

    @Override // o6.o
    int l() {
        return this.f27436d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // o6.o
    public int m() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // o6.o
    public boolean n() {
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f27436d;
    }
}
