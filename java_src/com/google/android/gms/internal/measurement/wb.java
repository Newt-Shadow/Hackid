package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class wb extends w9 implements RandomAccess, mb, pc {

    /* renamed from: d  reason: collision with root package name */
    private static final long[] f6869d;

    /* renamed from: e  reason: collision with root package name */
    private static final wb f6870e;

    /* renamed from: b  reason: collision with root package name */
    private long[] f6871b;

    /* renamed from: c  reason: collision with root package name */
    private int f6872c;

    static {
        long[] jArr = new long[0];
        f6869d = jArr;
        f6870e = new wb(jArr, 0, false);
    }

    private wb(long[] jArr, int i10, boolean z10) {
        super(z10);
        this.f6871b = jArr;
        this.f6872c = i10;
    }

    public static wb g() {
        return f6870e;
    }

    private static int l(int i10) {
        return Math.max(((i10 * 3) / 2) + 1, 10);
    }

    private final void m(int i10) {
        if (i10 >= 0 && i10 < this.f6872c) {
            return;
        }
        throw new IndexOutOfBoundsException(n(i10));
    }

    private final String n(int i10) {
        return y9.a(this.f6872c, i10, (byte) 13, "Index:", ", Size:");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        long longValue = ((Long) obj).longValue();
        d();
        if (i10 >= 0 && i10 <= (i11 = this.f6872c)) {
            int i12 = i10 + 1;
            long[] jArr = this.f6871b;
            int length = jArr.length;
            if (i11 < length) {
                System.arraycopy(jArr, i10, jArr, i12, i11 - i10);
            } else {
                long[] jArr2 = new long[l(length)];
                System.arraycopy(this.f6871b, 0, jArr2, 0, i10);
                System.arraycopy(this.f6871b, i10, jArr2, i12, this.f6872c - i10);
                this.f6871b = jArr2;
            }
            this.f6871b[i10] = longValue;
            this.f6872c++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(n(i10));
    }

    @Override // com.google.android.gms.internal.measurement.w9, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        d();
        byte[] bArr = ob.f6616b;
        collection.getClass();
        if (!(collection instanceof wb)) {
            return super.addAll(collection);
        }
        wb wbVar = (wb) collection;
        int i10 = wbVar.f6872c;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f6872c;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            long[] jArr = this.f6871b;
            if (i12 > jArr.length) {
                this.f6871b = Arrays.copyOf(jArr, i12);
            }
            System.arraycopy(wbVar.f6871b, 0, this.f6871b, this.f6872c, wbVar.f6872c);
            this.f6872c = i12;
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

    @Override // com.google.android.gms.internal.measurement.mb
    public final long d0(int i10) {
        m(i10);
        return this.f6871b[i10];
    }

    @Override // com.google.android.gms.internal.measurement.w9, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wb)) {
            return super.equals(obj);
        }
        wb wbVar = (wb) obj;
        if (this.f6872c != wbVar.f6872c) {
            return false;
        }
        long[] jArr = wbVar.f6871b;
        for (int i10 = 0; i10 < this.f6872c; i10++) {
            if (this.f6871b[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        m(i10);
        return Long.valueOf(this.f6871b[i10]);
    }

    @Override // com.google.android.gms.internal.measurement.w9, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f6872c; i11++) {
            long j10 = this.f6871b[i11];
            byte[] bArr = ob.f6616b;
            i10 = (i10 * 31) + ((int) (j10 ^ (j10 >>> 32)));
        }
        return i10;
    }

    public final void i(long j10) {
        d();
        int i10 = this.f6872c;
        int length = this.f6871b.length;
        if (i10 == length) {
            long[] jArr = new long[l(length)];
            System.arraycopy(this.f6871b, 0, jArr, 0, this.f6872c);
            this.f6871b = jArr;
        }
        long[] jArr2 = this.f6871b;
        int i11 = this.f6872c;
        this.f6872c = i11 + 1;
        jArr2[i11] = j10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i10 = this.f6872c;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f6871b[i11] == longValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.nb
    /* renamed from: j */
    public final mb u(int i10) {
        long[] copyOf;
        if (i10 >= this.f6872c) {
            if (i10 == 0) {
                copyOf = f6869d;
            } else {
                copyOf = Arrays.copyOf(this.f6871b, i10);
            }
            return new wb(copyOf, this.f6872c, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.w9, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        int i11;
        d();
        m(i10);
        long[] jArr = this.f6871b;
        long j10 = jArr[i10];
        if (i10 < this.f6872c - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (i11 - i10) - 1);
        }
        this.f6872c--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        d();
        if (i11 >= i10) {
            long[] jArr = this.f6871b;
            System.arraycopy(jArr, i11, jArr, i10, this.f6872c - i11);
            this.f6872c -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        long longValue = ((Long) obj).longValue();
        d();
        m(i10);
        long[] jArr = this.f6871b;
        long j10 = jArr[i10];
        jArr[i10] = longValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f6872c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void x(int i10) {
        int length = this.f6871b.length;
        if (i10 <= length) {
            return;
        }
        if (length != 0) {
            while (length < i10) {
                length = l(length);
            }
            this.f6871b = Arrays.copyOf(this.f6871b, length);
            return;
        }
        this.f6871b = new long[Math.max(i10, 10)];
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        i(((Long) obj).longValue());
        return true;
    }
}
