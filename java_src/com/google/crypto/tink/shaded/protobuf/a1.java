package com.google.crypto.tink.shaded.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a1 extends c implements RandomAccess {

    /* renamed from: d  reason: collision with root package name */
    private static final a1 f8401d;

    /* renamed from: b  reason: collision with root package name */
    private Object[] f8402b;

    /* renamed from: c  reason: collision with root package name */
    private int f8403c;

    static {
        a1 a1Var = new a1(new Object[0], 0);
        f8401d = a1Var;
        a1Var.b();
    }

    private a1(Object[] objArr, int i10) {
        this.f8402b = objArr;
        this.f8403c = i10;
    }

    private static Object[] g(int i10) {
        return new Object[i10];
    }

    public static a1 i() {
        return f8401d;
    }

    private void l(int i10) {
        if (i10 >= 0 && i10 < this.f8403c) {
            return;
        }
        throw new IndexOutOfBoundsException(m(i10));
    }

    private String m(int i10) {
        return "Index:" + i10 + ", Size:" + this.f8403c;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        d();
        int i10 = this.f8403c;
        Object[] objArr = this.f8402b;
        if (i10 == objArr.length) {
            this.f8402b = Arrays.copyOf(objArr, ((i10 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f8402b;
        int i11 = this.f8403c;
        this.f8403c = i11 + 1;
        objArr2[i11] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int i10) {
        l(i10);
        return this.f8402b[i10];
    }

    @Override // com.google.crypto.tink.shaded.protobuf.z.d
    /* renamed from: n */
    public a1 c(int i10) {
        if (i10 >= this.f8403c) {
            return new a1(Arrays.copyOf(this.f8402b, i10), this.f8403c);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.c, java.util.AbstractList, java.util.List
    public Object remove(int i10) {
        int i11;
        d();
        l(i10);
        Object[] objArr = this.f8402b;
        Object obj = objArr[i10];
        if (i10 < this.f8403c - 1) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, (i11 - i10) - 1);
        }
        this.f8403c--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int i10, Object obj) {
        d();
        l(i10);
        Object[] objArr = this.f8402b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f8403c;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i10, Object obj) {
        int i11;
        d();
        if (i10 >= 0 && i10 <= (i11 = this.f8403c)) {
            Object[] objArr = this.f8402b;
            if (i11 < objArr.length) {
                System.arraycopy(objArr, i10, objArr, i10 + 1, i11 - i10);
            } else {
                Object[] g10 = g(((i11 * 3) / 2) + 1);
                System.arraycopy(this.f8402b, 0, g10, 0, i10);
                System.arraycopy(this.f8402b, i10, g10, i10 + 1, this.f8403c - i10);
                this.f8402b = g10;
            }
            this.f8402b[i10] = obj;
            this.f8403c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m(i10));
    }
}
