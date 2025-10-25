package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;
/* loaded from: classes.dex */
final class rc extends w9 implements RandomAccess {

    /* renamed from: d  reason: collision with root package name */
    private static final Object[] f6757d;

    /* renamed from: e  reason: collision with root package name */
    private static final rc f6758e;

    /* renamed from: b  reason: collision with root package name */
    private Object[] f6759b;

    /* renamed from: c  reason: collision with root package name */
    private int f6760c;

    static {
        Object[] objArr = new Object[0];
        f6757d = objArr;
        f6758e = new rc(objArr, 0, false);
    }

    private rc(Object[] objArr, int i10, boolean z10) {
        super(z10);
        this.f6759b = objArr;
        this.f6760c = i10;
    }

    public static rc g() {
        return f6758e;
    }

    private static int l(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final String m(int i10) {
        return y9.a(this.f6760c, i10, (byte) 13, "Index:", ", Size:");
    }

    private final void x(int i10) {
        if (i10 >= 0 && i10 < this.f6760c) {
            return;
        }
        throw new IndexOutOfBoundsException(m(i10));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        d();
        if (i10 >= 0 && i10 <= (i11 = this.f6760c)) {
            int i12 = i10 + 1;
            Object[] objArr = this.f6759b;
            int length = objArr.length;
            if (i11 < length) {
                System.arraycopy(objArr, i10, objArr, i12, i11 - i10);
            } else {
                Object[] objArr2 = new Object[l(length)];
                System.arraycopy(this.f6759b, 0, objArr2, 0, i10);
                System.arraycopy(this.f6759b, i10, objArr2, i12, this.f6760c - i10);
                this.f6759b = objArr2;
            }
            this.f6759b[i10] = obj;
            this.f6760c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m(i10));
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        x(i10);
        return this.f6759b[i10];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i(int i10) {
        int length = this.f6759b.length;
        if (i10 <= length) {
            return;
        }
        if (length != 0) {
            while (length < i10) {
                length = l(length);
            }
            this.f6759b = Arrays.copyOf(this.f6759b, length);
            return;
        }
        this.f6759b = new Object[Math.max(i10, 10)];
    }

    @Override // com.google.android.gms.internal.measurement.w9, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        int i11;
        d();
        x(i10);
        Object[] objArr = this.f6759b;
        Object obj = objArr[i10];
        if (i10 < this.f6760c - 1) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, (i11 - i10) - 1);
        }
        this.f6760c--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        d();
        x(i10);
        Object[] objArr = this.f6759b;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6760c;
    }

    @Override // com.google.android.gms.internal.measurement.nb
    public final /* bridge */ /* synthetic */ nb u(int i10) {
        Object[] copyOf;
        if (i10 >= this.f6760c) {
            if (i10 == 0) {
                copyOf = f6757d;
            } else {
                copyOf = Arrays.copyOf(this.f6759b, i10);
            }
            return new rc(copyOf, this.f6760c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        d();
        int i10 = this.f6760c;
        int length = this.f6759b.length;
        if (i10 == length) {
            this.f6759b = Arrays.copyOf(this.f6759b, l(length));
        }
        Object[] objArr = this.f6759b;
        int i11 = this.f6760c;
        this.f6760c = i11 + 1;
        objArr[i11] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
