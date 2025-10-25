package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes.dex */
final class b1 extends c implements RandomAccess {

    /* renamed from: d  reason: collision with root package name */
    private static final b1 f2123d = new b1(new Object[0], 0, false);

    /* renamed from: b  reason: collision with root package name */
    private Object[] f2124b;

    /* renamed from: c  reason: collision with root package name */
    private int f2125c;

    private b1(Object[] objArr, int i10, boolean z10) {
        super(z10);
        this.f2124b = objArr;
        this.f2125c = i10;
    }

    private static Object[] g(int i10) {
        return new Object[i10];
    }

    public static b1 i() {
        return f2123d;
    }

    private void l(int i10) {
        if (i10 >= 0 && i10 < this.f2125c) {
            return;
        }
        throw new IndexOutOfBoundsException(m(i10));
    }

    private String m(int i10) {
        return "Index:" + i10 + ", Size:" + this.f2125c;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        d();
        int i10 = this.f2125c;
        Object[] objArr = this.f2124b;
        if (i10 == objArr.length) {
            this.f2124b = Arrays.copyOf(objArr, ((i10 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f2124b;
        int i11 = this.f2125c;
        this.f2125c = i11 + 1;
        objArr2[i11] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i10) {
        l(i10);
        return this.f2124b[i10];
    }

    @Override // androidx.datastore.preferences.protobuf.y.b
    /* renamed from: n */
    public b1 c(int i10) {
        if (i10 >= this.f2125c) {
            return new b1(Arrays.copyOf(this.f2124b, i10), this.f2125c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.List
    public Object remove(int i10) {
        int i11;
        d();
        l(i10);
        Object[] objArr = this.f2124b;
        Object obj = objArr[i10];
        if (i10 < this.f2125c - 1) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, (i11 - i10) - 1);
        }
        this.f2125c--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i10, Object obj) {
        d();
        l(i10);
        Object[] objArr = this.f2124b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f2125c;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i10, Object obj) {
        int i11;
        d();
        if (i10 >= 0 && i10 <= (i11 = this.f2125c)) {
            Object[] objArr = this.f2124b;
            if (i11 < objArr.length) {
                System.arraycopy(objArr, i10, objArr, i10 + 1, i11 - i10);
            } else {
                Object[] g10 = g(((i11 * 3) / 2) + 1);
                System.arraycopy(this.f2124b, 0, g10, 0, i10);
                System.arraycopy(this.f2124b, i10, g10, i10 + 1, this.f2125c - i10);
                this.f2124b = g10;
            }
            this.f2124b[i10] = obj;
            this.f2125c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m(i10));
    }
}
