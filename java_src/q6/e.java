package q6;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import n6.m;
/* loaded from: classes.dex */
public abstract class e extends f {

    /* loaded from: classes.dex */
    private static class a extends AbstractList implements RandomAccess, Serializable {

        /* renamed from: a  reason: collision with root package name */
        final int[] f28383a;

        /* renamed from: b  reason: collision with root package name */
        final int f28384b;

        /* renamed from: c  reason: collision with root package name */
        final int f28385c;

        a(int[] iArr) {
            this(iArr, 0, iArr.length);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if ((obj instanceof Integer) && e.h(this.f28383a, ((Integer) obj).intValue(), this.f28384b, this.f28385c) != -1) {
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: d */
        public Integer get(int i10) {
            m.g(i10, size());
            return Integer.valueOf(this.f28383a[this.f28384b + i10]);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (obj instanceof a) {
                a aVar = (a) obj;
                int size = size();
                if (aVar.size() != size) {
                    return false;
                }
                for (int i10 = 0; i10 < size; i10++) {
                    if (this.f28383a[this.f28384b + i10] != aVar.f28383a[aVar.f28384b + i10]) {
                        return false;
                    }
                }
                return true;
            }
            return super.equals(obj);
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: g */
        public Integer set(int i10, Integer num) {
            m.g(i10, size());
            int[] iArr = this.f28383a;
            int i11 = this.f28384b;
            int i12 = iArr[i11 + i10];
            iArr[i11 + i10] = ((Integer) m.i(num)).intValue();
            return Integer.valueOf(i12);
        }

        @Override // java.util.AbstractList, java.util.Collection, java.util.List
        public int hashCode() {
            int i10 = 1;
            for (int i11 = this.f28384b; i11 < this.f28385c; i11++) {
                i10 = (i10 * 31) + e.f(this.f28383a[i11]);
            }
            return i10;
        }

        int[] i() {
            return Arrays.copyOfRange(this.f28383a, this.f28384b, this.f28385c);
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            int h10;
            if ((obj instanceof Integer) && (h10 = e.h(this.f28383a, ((Integer) obj).intValue(), this.f28384b, this.f28385c)) >= 0) {
                return h10 - this.f28384b;
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            int i10;
            if ((obj instanceof Integer) && (i10 = e.i(this.f28383a, ((Integer) obj).intValue(), this.f28384b, this.f28385c)) >= 0) {
                return i10 - this.f28384b;
            }
            return -1;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f28385c - this.f28384b;
        }

        @Override // java.util.AbstractList, java.util.List
        public List subList(int i10, int i11) {
            m.m(i10, i11, size());
            if (i10 == i11) {
                return Collections.emptyList();
            }
            int[] iArr = this.f28383a;
            int i12 = this.f28384b;
            return new a(iArr, i10 + i12, i12 + i11);
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            StringBuilder sb2 = new StringBuilder(size() * 5);
            sb2.append('[');
            sb2.append(this.f28383a[this.f28384b]);
            int i10 = this.f28384b;
            while (true) {
                i10++;
                if (i10 < this.f28385c) {
                    sb2.append(", ");
                    sb2.append(this.f28383a[i10]);
                } else {
                    sb2.append(']');
                    return sb2.toString();
                }
            }
        }

        a(int[] iArr, int i10, int i11) {
            this.f28383a = iArr;
            this.f28384b = i10;
            this.f28385c = i11;
        }
    }

    public static List c(int... iArr) {
        if (iArr.length == 0) {
            return Collections.emptyList();
        }
        return new a(iArr);
    }

    public static int d(long j10) {
        boolean z10;
        int i10 = (int) j10;
        if (i10 == j10) {
            z10 = true;
        } else {
            z10 = false;
        }
        m.f(z10, "Out of range: %s", j10);
        return i10;
    }

    public static int e(int i10, int i11) {
        if (i10 < i11) {
            return -1;
        }
        return i10 > i11 ? 1 : 0;
    }

    public static int f(int i10) {
        return i10;
    }

    public static int g(int[] iArr, int i10) {
        return h(iArr, i10, 0, iArr.length);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int h(int[] iArr, int i10, int i11, int i12) {
        while (i11 < i12) {
            if (iArr[i11] == i10) {
                return i11;
            }
            i11++;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int i(int[] iArr, int i10, int i11, int i12) {
        for (int i13 = i12 - 1; i13 >= i11; i13--) {
            if (iArr[i13] == i10) {
                return i13;
            }
        }
        return -1;
    }

    public static int j(long j10) {
        if (j10 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j10 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j10;
    }

    public static int[] k(Collection collection) {
        if (collection instanceof a) {
            return ((a) collection).i();
        }
        Object[] array = collection.toArray();
        int length = array.length;
        int[] iArr = new int[length];
        for (int i10 = 0; i10 < length; i10++) {
            iArr[i10] = ((Number) m.i(array[i10])).intValue();
        }
        return iArr;
    }
}
