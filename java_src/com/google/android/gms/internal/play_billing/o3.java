package com.google.android.gms.internal.play_billing;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes.dex */
final class o3 extends p0 implements RandomAccess {

    /* renamed from: d  reason: collision with root package name */
    private static final o3 f7081d = new o3(new Object[0], 0, false);

    /* renamed from: b  reason: collision with root package name */
    private Object[] f7082b;

    /* renamed from: c  reason: collision with root package name */
    private int f7083c;

    private o3(Object[] objArr, int i10, boolean z10) {
        super(z10);
        this.f7082b = objArr;
        this.f7083c = i10;
    }

    public static o3 g() {
        return f7081d;
    }

    private final String i(int i10) {
        int i11 = this.f7083c;
        return "Index:" + i10 + ", Size:" + i11;
    }

    private final void l(int i10) {
        if (i10 >= 0 && i10 < this.f7083c) {
            return;
        }
        throw new IndexOutOfBoundsException(i(i10));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        d();
        if (i10 >= 0 && i10 <= (i11 = this.f7083c)) {
            int i12 = i10 + 1;
            Object[] objArr = this.f7082b;
            if (i11 < objArr.length) {
                System.arraycopy(objArr, i10, objArr, i12, i11 - i10);
            } else {
                Object[] objArr2 = new Object[((i11 * 3) / 2) + 1];
                System.arraycopy(objArr, 0, objArr2, 0, i10);
                System.arraycopy(this.f7082b, i10, objArr2, i12, this.f7083c - i10);
                this.f7082b = objArr2;
            }
            this.f7082b[i10] = obj;
            this.f7083c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(i(i10));
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        l(i10);
        return this.f7082b[i10];
    }

    @Override // com.google.android.gms.internal.play_billing.i2
    public final /* bridge */ /* synthetic */ i2 j(int i10) {
        if (i10 >= this.f7083c) {
            return new o3(Arrays.copyOf(this.f7082b, i10), this.f7083c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.play_billing.p0, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        int i11;
        d();
        l(i10);
        Object[] objArr = this.f7082b;
        Object obj = objArr[i10];
        if (i10 < this.f7083c - 1) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, (i11 - i10) - 1);
        }
        this.f7083c--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        d();
        l(i10);
        Object[] objArr = this.f7082b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f7083c;
    }

    @Override // com.google.android.gms.internal.play_billing.p0, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        d();
        int i10 = this.f7083c;
        Object[] objArr = this.f7082b;
        if (i10 == objArr.length) {
            this.f7082b = Arrays.copyOf(objArr, ((i10 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f7082b;
        int i11 = this.f7083c;
        this.f7083c = i11 + 1;
        objArr2[i11] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
