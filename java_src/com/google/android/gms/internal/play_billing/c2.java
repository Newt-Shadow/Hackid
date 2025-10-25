package com.google.android.gms.internal.play_billing;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* loaded from: classes.dex */
final class c2 extends p0 implements RandomAccess, g2, m3 {

    /* renamed from: d  reason: collision with root package name */
    private static final c2 f6957d = new c2(new int[0], 0, false);

    /* renamed from: b  reason: collision with root package name */
    private int[] f6958b;

    /* renamed from: c  reason: collision with root package name */
    private int f6959c;

    private c2(int[] iArr, int i10, boolean z10) {
        super(z10);
        this.f6958b = iArr;
        this.f6959c = i10;
    }

    public static c2 i() {
        return f6957d;
    }

    private final String l(int i10) {
        int i11 = this.f6959c;
        return "Index:" + i10 + ", Size:" + i11;
    }

    private final void m(int i10) {
        if (i10 >= 0 && i10 < this.f6959c) {
            return;
        }
        throw new IndexOutOfBoundsException(l(i10));
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        int intValue = ((Integer) obj).intValue();
        d();
        if (i10 >= 0 && i10 <= (i11 = this.f6959c)) {
            int i12 = i10 + 1;
            int[] iArr = this.f6958b;
            if (i11 < iArr.length) {
                System.arraycopy(iArr, i10, iArr, i12, i11 - i10);
            } else {
                int[] iArr2 = new int[((i11 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i10);
                System.arraycopy(this.f6958b, i10, iArr2, i12, this.f6959c - i10);
                this.f6958b = iArr2;
            }
            this.f6958b[i10] = intValue;
            this.f6959c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(l(i10));
    }

    @Override // com.google.android.gms.internal.play_billing.p0, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        d();
        byte[] bArr = j2.f7023d;
        collection.getClass();
        if (!(collection instanceof c2)) {
            return super.addAll(collection);
        }
        c2 c2Var = (c2) collection;
        int i10 = c2Var.f6959c;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f6959c;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            int[] iArr = this.f6958b;
            if (i12 > iArr.length) {
                this.f6958b = Arrays.copyOf(iArr, i12);
            }
            System.arraycopy(c2Var.f6958b, 0, this.f6958b, this.f6959c, c2Var.f6959c);
            this.f6959c = i12;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.play_billing.p0, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c2)) {
            return super.equals(obj);
        }
        c2 c2Var = (c2) obj;
        if (this.f6959c != c2Var.f6959c) {
            return false;
        }
        int[] iArr = c2Var.f6958b;
        for (int i10 = 0; i10 < this.f6959c; i10++) {
            if (this.f6958b[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public final int g(int i10) {
        m(i10);
        return this.f6958b[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        m(i10);
        return Integer.valueOf(this.f6958b[i10]);
    }

    @Override // com.google.android.gms.internal.play_billing.p0, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f6959c; i11++) {
            i10 = (i10 * 31) + this.f6958b[i11];
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i10 = this.f6959c;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f6958b[i11] == intValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.play_billing.p0, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        int i11;
        d();
        m(i10);
        int[] iArr = this.f6958b;
        int i12 = iArr[i10];
        if (i10 < this.f6959c - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (i11 - i10) - 1);
        }
        this.f6959c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i12);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        d();
        if (i11 >= i10) {
            int[] iArr = this.f6958b;
            System.arraycopy(iArr, i11, iArr, i10, this.f6959c - i11);
            this.f6959c -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        int intValue = ((Integer) obj).intValue();
        d();
        m(i10);
        int[] iArr = this.f6958b;
        int i11 = iArr[i10];
        iArr[i10] = intValue;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6959c;
    }

    @Override // com.google.android.gms.internal.play_billing.i2
    /* renamed from: u */
    public final g2 j(int i10) {
        if (i10 >= this.f6959c) {
            return new c2(Arrays.copyOf(this.f6958b, i10), this.f6959c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.play_billing.g2
    public final void x(int i10) {
        d();
        int i11 = this.f6959c;
        int[] iArr = this.f6958b;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.f6958b = iArr2;
        }
        int[] iArr3 = this.f6958b;
        int i12 = this.f6959c;
        this.f6959c = i12 + 1;
        iArr3[i12] = i10;
    }

    @Override // com.google.android.gms.internal.play_billing.p0, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        x(((Integer) obj).intValue());
        return true;
    }
}
