package yc;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.SortedSet;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public abstract class j extends i {
    public static List c(Object[] objArr) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        List a10 = l.a(objArr);
        kotlin.jvm.internal.m.d(a10, "asList(...)");
        return a10;
    }

    public static byte[] d(byte[] bArr, byte[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.m.e(bArr, "<this>");
        kotlin.jvm.internal.m.e(destination, "destination");
        System.arraycopy(bArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static int[] e(int[] iArr, int[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.m.e(iArr, "<this>");
        kotlin.jvm.internal.m.e(destination, "destination");
        System.arraycopy(iArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static long[] f(long[] jArr, long[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.m.e(jArr, "<this>");
        kotlin.jvm.internal.m.e(destination, "destination");
        System.arraycopy(jArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static Object[] g(Object[] objArr, Object[] destination, int i10, int i11, int i12) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        kotlin.jvm.internal.m.e(destination, "destination");
        System.arraycopy(objArr, i11, destination, i10, i12 - i11);
        return destination;
    }

    public static /* synthetic */ byte[] h(byte[] bArr, byte[] bArr2, int i10, int i11, int i12, int i13, Object obj) {
        byte[] d10;
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = bArr.length;
        }
        d10 = d(bArr, bArr2, i10, i11, i12);
        return d10;
    }

    public static /* synthetic */ int[] i(int[] iArr, int[] iArr2, int i10, int i11, int i12, int i13, Object obj) {
        int[] e10;
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = iArr.length;
        }
        e10 = e(iArr, iArr2, i10, i11, i12);
        return e10;
    }

    public static /* synthetic */ Object[] j(Object[] objArr, Object[] objArr2, int i10, int i11, int i12, int i13, Object obj) {
        Object[] g10;
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = objArr.length;
        }
        g10 = g(objArr, objArr2, i10, i11, i12);
        return g10;
    }

    public static byte[] k(byte[] bArr, int i10, int i11) {
        kotlin.jvm.internal.m.e(bArr, "<this>");
        h.b(i11, bArr.length);
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i10, i11);
        kotlin.jvm.internal.m.d(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    public static Object[] l(Object[] objArr, int i10, int i11) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        h.b(i11, objArr.length);
        Object[] copyOfRange = Arrays.copyOfRange(objArr, i10, i11);
        kotlin.jvm.internal.m.d(copyOfRange, "copyOfRange(...)");
        return copyOfRange;
    }

    public static void m(Object[] objArr, Object obj, int i10, int i11) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        Arrays.fill(objArr, i10, i11, obj);
    }

    public static /* synthetic */ void n(Object[] objArr, Object obj, int i10, int i11, int i12, Object obj2) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = objArr.length;
        }
        m(objArr, obj, i10, i11);
    }

    public static Object[] o(Object[] objArr, Collection elements) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        kotlin.jvm.internal.m.e(elements, "elements");
        int length = objArr.length;
        Object[] copyOf = Arrays.copyOf(objArr, elements.size() + length);
        for (Object obj : elements) {
            copyOf[length] = obj;
            length++;
        }
        kotlin.jvm.internal.m.b(copyOf);
        return copyOf;
    }

    public static final void p(Object[] objArr, Comparator comparator) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        kotlin.jvm.internal.m.e(comparator, "comparator");
        if (objArr.length > 1) {
            Arrays.sort(objArr, comparator);
        }
    }

    public static SortedSet q(Comparable[] comparableArr) {
        kotlin.jvm.internal.m.e(comparableArr, "<this>");
        return (SortedSet) k.M(comparableArr, new TreeSet());
    }
}
