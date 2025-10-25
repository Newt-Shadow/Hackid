package o6;

import java.util.Arrays;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;
/* loaded from: classes.dex */
public abstract class s extends o implements Set {

    /* renamed from: b  reason: collision with root package name */
    private transient q f27498b;

    public static s B() {
        return l0.f27456i;
    }

    public static s C(Object obj) {
        return new p0(obj);
    }

    public static s D(Object obj, Object obj2) {
        return p(2, obj, obj2);
    }

    public static s F(Object obj, Object obj2, Object obj3) {
        return p(3, obj, obj2, obj3);
    }

    public static s G(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return p(5, obj, obj2, obj3, obj4, obj5);
    }

    public static s I(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        boolean z10;
        if (objArr.length <= 2147483641) {
            z10 = true;
        } else {
            z10 = false;
        }
        n6.m.e(z10, "the total number of elements must fit in an int");
        int length = objArr.length + 6;
        Object[] objArr2 = new Object[length];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, objArr.length);
        return p(length, objArr2);
    }

    private static boolean J(int i10, int i11) {
        return i10 < (i11 >> 1) + (i11 >> 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int o(int i10) {
        int max = Math.max(i10, 2);
        boolean z10 = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1) << 1;
            while (highestOneBit * 0.7d < max) {
                highestOneBit <<= 1;
            }
            return highestOneBit;
        }
        if (max >= 1073741824) {
            z10 = false;
        }
        n6.m.e(z10, "collection too large");
        return 1073741824;
    }

    private static s p(int i10, Object... objArr) {
        if (i10 != 0) {
            if (i10 != 1) {
                int o10 = o(i10);
                Object[] objArr2 = new Object[o10];
                int i11 = o10 - 1;
                int i12 = 0;
                int i13 = 0;
                for (int i14 = 0; i14 < i10; i14++) {
                    Object a10 = g0.a(objArr[i14], i14);
                    int hashCode = a10.hashCode();
                    int a11 = n.a(hashCode);
                    while (true) {
                        int i15 = a11 & i11;
                        Object obj = objArr2[i15];
                        if (obj == null) {
                            objArr[i13] = a10;
                            objArr2[i15] = a10;
                            i12 += hashCode;
                            i13++;
                            break;
                        } else if (obj.equals(a10)) {
                            break;
                        } else {
                            a11++;
                        }
                    }
                }
                Arrays.fill(objArr, i13, i10, (Object) null);
                if (i13 == 1) {
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    return new p0(obj2);
                } else if (o(i13) < o10 / 2) {
                    return p(i13, objArr);
                } else {
                    if (J(i13, objArr.length)) {
                        objArr = Arrays.copyOf(objArr, i13);
                    }
                    return new l0(objArr, i12, objArr2, i11, i13);
                }
            }
            Object obj3 = objArr[0];
            Objects.requireNonNull(obj3);
            return C(obj3);
        }
        return B();
    }

    public static s r(Collection collection) {
        if ((collection instanceof s) && !(collection instanceof SortedSet)) {
            s sVar = (s) collection;
            if (!sVar.n()) {
                return sVar;
            }
        }
        Object[] array = collection.toArray();
        return p(array.length, array);
    }

    public static s s(Object[] objArr) {
        int length = objArr.length;
        if (length != 0) {
            if (length != 1) {
                return p(objArr.length, (Object[]) objArr.clone());
            }
            return C(objArr[0]);
        }
        return B();
    }

    public abstract r0 A();

    @Override // o6.o
    public q d() {
        q qVar = this.f27498b;
        if (qVar == null) {
            q t10 = t();
            this.f27498b = t10;
            return t10;
        }
        return qVar;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof s) && y() && ((s) obj).y() && hashCode() != obj.hashCode()) {
            return false;
        }
        return o0.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return o0.d(this);
    }

    q t() {
        return q.o(toArray());
    }

    boolean y() {
        return false;
    }
}
