package yc;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class k extends j {
    public static Object A(Object[] objArr, int i10) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        boolean z10 = false;
        if (i10 >= 0 && i10 < objArr.length) {
            z10 = true;
        }
        if (z10) {
            return objArr[i10];
        }
        return null;
    }

    public static int B(Object[] objArr, Object obj) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        int i10 = 0;
        if (obj == null) {
            int length = objArr.length;
            while (i10 < length) {
                if (objArr[i10] == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        int length2 = objArr.length;
        while (i10 < length2) {
            if (kotlin.jvm.internal.m.a(obj, objArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static final Appendable C(byte[] bArr, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, id.l lVar) {
        kotlin.jvm.internal.m.e(bArr, "<this>");
        kotlin.jvm.internal.m.e(buffer, "buffer");
        kotlin.jvm.internal.m.e(separator, "separator");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        kotlin.jvm.internal.m.e(postfix, "postfix");
        kotlin.jvm.internal.m.e(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (byte b10 : bArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            if (lVar != null) {
                buffer.append((CharSequence) lVar.invoke(Byte.valueOf(b10)));
            } else {
                buffer.append(String.valueOf((int) b10));
            }
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final Appendable D(Object[] objArr, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, id.l lVar) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        kotlin.jvm.internal.m.e(buffer, "buffer");
        kotlin.jvm.internal.m.e(separator, "separator");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        kotlin.jvm.internal.m.e(postfix, "postfix");
        kotlin.jvm.internal.m.e(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (Object obj : objArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            rd.o.a(buffer, obj, lVar);
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final String E(byte[] bArr, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, id.l lVar) {
        kotlin.jvm.internal.m.e(bArr, "<this>");
        kotlin.jvm.internal.m.e(separator, "separator");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        kotlin.jvm.internal.m.e(postfix, "postfix");
        kotlin.jvm.internal.m.e(truncated, "truncated");
        return ((StringBuilder) C(bArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    public static String F(Object[] objArr, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, id.l lVar) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        kotlin.jvm.internal.m.e(separator, "separator");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        kotlin.jvm.internal.m.e(postfix, "postfix");
        kotlin.jvm.internal.m.e(truncated, "truncated");
        return ((StringBuilder) D(objArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, lVar)).toString();
    }

    public static /* synthetic */ String G(byte[] bArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, id.l lVar, int i11, Object obj) {
        CharSequence charSequence5;
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence6 = "";
        if ((i11 & 2) != 0) {
            charSequence5 = "";
        } else {
            charSequence5 = charSequence2;
        }
        if ((i11 & 4) == 0) {
            charSequence6 = charSequence3;
        }
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            lVar = null;
        }
        return E(bArr, charSequence, charSequence5, charSequence6, i12, charSequence7, lVar);
    }

    public static char H(char[] cArr) {
        kotlin.jvm.internal.m.e(cArr, "<this>");
        int length = cArr.length;
        if (length != 0) {
            if (length == 1) {
                return cArr[0];
            }
            throw new IllegalArgumentException("Array has more than one element.");
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static Object I(Object[] objArr) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        if (objArr.length == 1) {
            return objArr[0];
        }
        return null;
    }

    public static byte[] J(byte[] bArr, od.c indices) {
        byte[] k10;
        kotlin.jvm.internal.m.e(bArr, "<this>");
        kotlin.jvm.internal.m.e(indices, "indices");
        if (!indices.isEmpty()) {
            k10 = j.k(bArr, indices.p().intValue(), indices.o().intValue() + 1);
            return k10;
        }
        return new byte[0];
    }

    public static final List K(Object[] objArr, int i10) {
        boolean z10;
        List b10;
        List Q;
        List h10;
        kotlin.jvm.internal.m.e(objArr, "<this>");
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i10 == 0) {
                h10 = o.h();
                return h10;
            }
            int length = objArr.length;
            if (i10 >= length) {
                Q = Q(objArr);
                return Q;
            } else if (i10 == 1) {
                b10 = n.b(objArr[length - 1]);
                return b10;
            } else {
                ArrayList arrayList = new ArrayList(i10);
                for (int i11 = length - i10; i11 < length; i11++) {
                    arrayList.add(objArr[i11]);
                }
                return arrayList;
            }
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static final Collection L(int[] iArr, Collection destination) {
        kotlin.jvm.internal.m.e(iArr, "<this>");
        kotlin.jvm.internal.m.e(destination, "destination");
        for (int i10 : iArr) {
            destination.add(Integer.valueOf(i10));
        }
        return destination;
    }

    public static final Collection M(Object[] objArr, Collection destination) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        kotlin.jvm.internal.m.e(destination, "destination");
        for (Object obj : objArr) {
            destination.add(obj);
        }
        return destination;
    }

    public static HashSet N(int[] iArr) {
        int b10;
        kotlin.jvm.internal.m.e(iArr, "<this>");
        b10 = g0.b(iArr.length);
        return (HashSet) L(iArr, new HashSet(b10));
    }

    public static HashSet O(Object[] objArr) {
        int b10;
        kotlin.jvm.internal.m.e(objArr, "<this>");
        b10 = g0.b(objArr.length);
        return (HashSet) M(objArr, new HashSet(b10));
    }

    public static List P(int[] iArr) {
        List h10;
        List b10;
        kotlin.jvm.internal.m.e(iArr, "<this>");
        int length = iArr.length;
        if (length == 0) {
            h10 = o.h();
            return h10;
        } else if (length == 1) {
            b10 = n.b(Integer.valueOf(iArr[0]));
            return b10;
        } else {
            return R(iArr);
        }
    }

    public static List Q(Object[] objArr) {
        List h10;
        List b10;
        List S;
        kotlin.jvm.internal.m.e(objArr, "<this>");
        int length = objArr.length;
        if (length == 0) {
            h10 = o.h();
            return h10;
        } else if (length != 1) {
            S = S(objArr);
            return S;
        } else {
            b10 = n.b(objArr[0]);
            return b10;
        }
    }

    public static final List R(int[] iArr) {
        kotlin.jvm.internal.m.e(iArr, "<this>");
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i10 : iArr) {
            arrayList.add(Integer.valueOf(i10));
        }
        return arrayList;
    }

    public static List S(Object[] objArr) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        return new ArrayList(o.e(objArr));
    }

    public static Set T(Object[] objArr) {
        Set b10;
        Set a10;
        int b11;
        kotlin.jvm.internal.m.e(objArr, "<this>");
        int length = objArr.length;
        if (length == 0) {
            b10 = m0.b();
            return b10;
        } else if (length != 1) {
            b11 = g0.b(objArr.length);
            return (Set) M(objArr, new LinkedHashSet(b11));
        } else {
            a10 = l0.a(objArr[0]);
            return a10;
        }
    }

    public static final boolean r(Object[] objArr, Object obj) {
        int B;
        kotlin.jvm.internal.m.e(objArr, "<this>");
        B = B(objArr, obj);
        if (B >= 0) {
            return true;
        }
        return false;
    }

    public static List s(Object[] objArr, int i10) {
        boolean z10;
        int b10;
        kotlin.jvm.internal.m.e(objArr, "<this>");
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            b10 = od.i.b(objArr.length - i10, 0);
            return K(objArr, b10);
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static List t(Object[] objArr) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        return (List) u(objArr, new ArrayList());
    }

    public static final Collection u(Object[] objArr, Collection destination) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        kotlin.jvm.internal.m.e(destination, "destination");
        for (Object obj : objArr) {
            if (obj != null) {
                destination.add(obj);
            }
        }
        return destination;
    }

    public static Object v(Object[] objArr) {
        boolean z10;
        kotlin.jvm.internal.m.e(objArr, "<this>");
        if (objArr.length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return objArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static Integer w(int[] iArr) {
        boolean z10;
        kotlin.jvm.internal.m.e(iArr, "<this>");
        if (iArr.length == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return null;
        }
        return Integer.valueOf(iArr[0]);
    }

    public static od.c x(Object[] objArr) {
        int z10;
        kotlin.jvm.internal.m.e(objArr, "<this>");
        z10 = z(objArr);
        return new od.c(0, z10);
    }

    public static int y(long[] jArr) {
        kotlin.jvm.internal.m.e(jArr, "<this>");
        return jArr.length - 1;
    }

    public static int z(Object[] objArr) {
        kotlin.jvm.internal.m.e(objArr, "<this>");
        return objArr.length - 1;
    }
}
