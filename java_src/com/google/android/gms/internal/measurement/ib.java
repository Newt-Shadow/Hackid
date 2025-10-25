package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ib extends w9 implements RandomAccess, lb, pc {

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f6436d;

    /* renamed from: e  reason: collision with root package name */
    private static final ib f6437e;

    /* renamed from: b  reason: collision with root package name */
    private int[] f6438b;

    /* renamed from: c  reason: collision with root package name */
    private int f6439c;

    static {
        int[] iArr = new int[0];
        f6436d = iArr;
        f6437e = new ib(iArr, 0, false);
    }

    private ib(int[] iArr, int i10, boolean z10) {
        super(z10);
        this.f6438b = iArr;
        this.f6439c = i10;
    }

    public static ib g() {
        return f6437e;
    }

    private static int m(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final void n(int i10) {
        if (i10 >= 0 && i10 < this.f6439c) {
            return;
        }
        throw new IndexOutOfBoundsException(o(i10));
    }

    private final String o(int i10) {
        return y9.a(this.f6439c, i10, (byte) 13, "Index:", ", Size:");
    }

    @Override // com.google.android.gms.internal.measurement.nb
    /* renamed from: H */
    public final lb u(int i10) {
        int[] copyOf;
        if (i10 >= this.f6439c) {
            if (i10 == 0) {
                copyOf = f6436d;
            } else {
                copyOf = Arrays.copyOf(this.f6438b, i10);
            }
            return new ib(copyOf, this.f6439c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        int intValue = ((Integer) obj).intValue();
        d();
        if (i10 >= 0 && i10 <= (i11 = this.f6439c)) {
            int i12 = i10 + 1;
            int[] iArr = this.f6438b;
            int length = iArr.length;
            if (i11 < length) {
                System.arraycopy(iArr, i10, iArr, i12, i11 - i10);
            } else {
                int[] iArr2 = new int[m(length)];
                System.arraycopy(this.f6438b, 0, iArr2, 0, i10);
                System.arraycopy(this.f6438b, i10, iArr2, i12, this.f6439c - i10);
                this.f6438b = iArr2;
            }
            this.f6438b[i10] = intValue;
            this.f6439c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(o(i10));
    }

    @Override // com.google.android.gms.internal.measurement.w9, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        d();
        byte[] bArr = ob.f6616b;
        collection.getClass();
        if (!(collection instanceof ib)) {
            return super.addAll(collection);
        }
        ib ibVar = (ib) collection;
        int i10 = ibVar.f6439c;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f6439c;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            int[] iArr = this.f6438b;
            if (i12 > iArr.length) {
                this.f6438b = Arrays.copyOf(iArr, i12);
            }
            System.arraycopy(ibVar.f6438b, 0, this.f6438b, this.f6439c, ibVar.f6439c);
            this.f6439c = i12;
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

    @Override // com.google.android.gms.internal.measurement.w9, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ib)) {
            return super.equals(obj);
        }
        ib ibVar = (ib) obj;
        if (this.f6439c != ibVar.f6439c) {
            return false;
        }
        int[] iArr = ibVar.f6438b;
        for (int i10 = 0; i10 < this.f6439c; i10++) {
            if (this.f6438b[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        n(i10);
        return Integer.valueOf(this.f6438b[i10]);
    }

    @Override // com.google.android.gms.internal.measurement.w9, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f6439c; i11++) {
            i10 = (i10 * 31) + this.f6438b[i11];
        }
        return i10;
    }

    public final int i(int i10) {
        n(i10);
        return this.f6438b[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i10 = this.f6439c;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f6438b[i11] == intValue) {
                return i11;
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l(int i10) {
        int length = this.f6438b.length;
        if (i10 <= length) {
            return;
        }
        if (length != 0) {
            while (length < i10) {
                length = m(length);
            }
            this.f6438b = Arrays.copyOf(this.f6438b, length);
            return;
        }
        this.f6438b = new int[Math.max(i10, 10)];
    }

    @Override // com.google.android.gms.internal.measurement.w9, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        int i11;
        d();
        n(i10);
        int[] iArr = this.f6438b;
        int i12 = iArr[i10];
        if (i10 < this.f6439c - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (i11 - i10) - 1);
        }
        this.f6439c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i12);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        d();
        if (i11 >= i10) {
            int[] iArr = this.f6438b;
            System.arraycopy(iArr, i11, iArr, i10, this.f6439c - i11);
            this.f6439c -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        int intValue = ((Integer) obj).intValue();
        d();
        n(i10);
        int[] iArr = this.f6438b;
        int i11 = iArr[i10];
        iArr[i10] = intValue;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6439c;
    }

    public final void x(int i10) {
        d();
        int i11 = this.f6439c;
        int length = this.f6438b.length;
        if (i11 == length) {
            int[] iArr = new int[m(length)];
            System.arraycopy(this.f6438b, 0, iArr, 0, this.f6439c);
            this.f6438b = iArr;
        }
        int[] iArr2 = this.f6438b;
        int i12 = this.f6439c;
        this.f6439c = i12 + 1;
        iArr2[i12] = i10;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        x(((Integer) obj).intValue());
        return true;
    }
}
