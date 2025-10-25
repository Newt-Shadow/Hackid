package rd;

import id.Function2;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public abstract class b0 extends y {

    /* loaded from: classes2.dex */
    public static final class a implements qd.e {

        /* renamed from: a */
        final /* synthetic */ CharSequence f29087a;

        public a(CharSequence charSequence) {
            this.f29087a = charSequence;
        }

        @Override // qd.e
        public Iterator iterator() {
            return new f(this.f29087a);
        }
    }

    public static final boolean A0(CharSequence charSequence, CharSequence prefix, boolean z10) {
        boolean H;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        if (!z10 && (charSequence instanceof String) && (prefix instanceof String)) {
            H = y.H((String) charSequence, (String) prefix, false, 2, null);
            return H;
        }
        return r0(charSequence, 0, prefix, 0, prefix.length(), z10);
    }

    public static /* synthetic */ boolean B0(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return A0(charSequence, charSequence2, z10);
    }

    public static final String C0(CharSequence charSequence, od.c range) {
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        kotlin.jvm.internal.m.e(range, "range");
        return charSequence.subSequence(range.p().intValue(), range.o().intValue() + 1).toString();
    }

    public static String D0(String str, char c10, String missingDelimiterValue) {
        int Y;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(missingDelimiterValue, "missingDelimiterValue");
        Y = Y(str, c10, 0, false, 6, null);
        if (Y != -1) {
            String substring = str.substring(Y + 1, str.length());
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    public static final String E0(String str, String delimiter, String missingDelimiterValue) {
        int Z;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(delimiter, "delimiter");
        kotlin.jvm.internal.m.e(missingDelimiterValue, "missingDelimiterValue");
        Z = Z(str, delimiter, 0, false, 6, null);
        if (Z != -1) {
            String substring = str.substring(Z + delimiter.length(), str.length());
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    public static /* synthetic */ String F0(String str, char c10, String str2, int i10, Object obj) {
        String D0;
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        D0 = D0(str, c10, str2);
        return D0;
    }

    public static /* synthetic */ String G0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return E0(str, str2, str3);
    }

    public static String H0(String str, char c10, String missingDelimiterValue) {
        int e02;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(missingDelimiterValue, "missingDelimiterValue");
        e02 = e0(str, c10, 0, false, 6, null);
        if (e02 != -1) {
            String substring = str.substring(e02 + 1, str.length());
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    public static /* synthetic */ String I0(String str, char c10, String str2, int i10, Object obj) {
        String H0;
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        H0 = H0(str, c10, str2);
        return H0;
    }

    public static final String J0(String str, char c10, String missingDelimiterValue) {
        int Y;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(missingDelimiterValue, "missingDelimiterValue");
        Y = Y(str, c10, 0, false, 6, null);
        if (Y != -1) {
            String substring = str.substring(0, Y);
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    public static final boolean K(CharSequence charSequence, char c10, boolean z10) {
        int Y;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        Y = Y(charSequence, c10, 0, z10, 2, null);
        if (Y >= 0) {
            return true;
        }
        return false;
    }

    public static final String K0(String str, String delimiter, String missingDelimiterValue) {
        int Z;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(delimiter, "delimiter");
        kotlin.jvm.internal.m.e(missingDelimiterValue, "missingDelimiterValue");
        Z = Z(str, delimiter, 0, false, 6, null);
        if (Z != -1) {
            String substring = str.substring(0, Z);
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    public static boolean L(CharSequence charSequence, CharSequence other, boolean z10) {
        int Z;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        kotlin.jvm.internal.m.e(other, "other");
        if (other instanceof String) {
            Z = Z(charSequence, (String) other, 0, z10, 2, null);
            if (Z >= 0) {
                return true;
            }
        } else if (X(charSequence, other, 0, charSequence.length(), z10, false, 16, null) >= 0) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ String L0(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return J0(str, c10, str2);
    }

    public static /* synthetic */ boolean M(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return K(charSequence, c10, z10);
    }

    public static /* synthetic */ String M0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return K0(str, str2, str3);
    }

    public static /* synthetic */ boolean N(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        boolean L;
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        L = L(charSequence, charSequence2, z10);
        return L;
    }

    public static final String N0(String str, String delimiter, String missingDelimiterValue) {
        int f02;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(delimiter, "delimiter");
        kotlin.jvm.internal.m.e(missingDelimiterValue, "missingDelimiterValue");
        f02 = f0(str, delimiter, 0, false, 6, null);
        if (f02 != -1) {
            String substring = str.substring(0, f02);
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        }
        return missingDelimiterValue;
    }

    public static final boolean O(CharSequence charSequence, char c10, boolean z10) {
        int T;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        if (charSequence.length() > 0) {
            T = T(charSequence);
            if (c.f(charSequence.charAt(T), c10, z10)) {
                return true;
            }
        }
        return false;
    }

    public static /* synthetic */ String O0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return N0(str, str2, str3);
    }

    public static final boolean P(CharSequence charSequence, CharSequence suffix, boolean z10) {
        boolean w10;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        kotlin.jvm.internal.m.e(suffix, "suffix");
        if (!z10 && (charSequence instanceof String) && (suffix instanceof String)) {
            w10 = y.w((String) charSequence, (String) suffix, false, 2, null);
            return w10;
        }
        return r0(charSequence, charSequence.length() - suffix.length(), suffix, 0, suffix.length(), z10);
    }

    public static CharSequence P0(CharSequence charSequence) {
        int i10;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i11 = 0;
        boolean z10 = false;
        while (i11 <= length) {
            if (!z10) {
                i10 = i11;
            } else {
                i10 = length;
            }
            boolean c10 = b.c(charSequence.charAt(i10));
            if (!z10) {
                if (!c10) {
                    z10 = true;
                } else {
                    i11++;
                }
            } else if (!c10) {
                break;
            } else {
                length--;
            }
        }
        return charSequence.subSequence(i11, length + 1);
    }

    public static /* synthetic */ boolean Q(CharSequence charSequence, char c10, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return O(charSequence, c10, z10);
    }

    public static /* synthetic */ boolean R(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return P(charSequence, charSequence2, z10);
    }

    private static final xc.k S(CharSequence charSequence, Collection collection, int i10, boolean z10, boolean z11) {
        int T;
        int d10;
        od.a h10;
        Object obj;
        Object obj2;
        boolean y10;
        int b10;
        Object e02;
        if (!z10 && collection.size() == 1) {
            e02 = yc.w.e0(collection);
            String str = (String) e02;
            int Z = !z11 ? Z(charSequence, str, i10, false, 4, null) : f0(charSequence, str, i10, false, 4, null);
            if (Z < 0) {
                return null;
            }
            return xc.q.a(Integer.valueOf(Z), str);
        }
        if (!z11) {
            b10 = od.i.b(i10, 0);
            h10 = new od.c(b10, charSequence.length());
        } else {
            T = T(charSequence);
            d10 = od.i.d(i10, T);
            h10 = od.i.h(d10, 0);
        }
        if (charSequence instanceof String) {
            int g10 = h10.g();
            int i11 = h10.i();
            int l10 = h10.l();
            if ((l10 > 0 && g10 <= i11) || (l10 < 0 && i11 <= g10)) {
                while (true) {
                    Iterator it = collection.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj2 = it.next();
                            String str2 = (String) obj2;
                            y10 = y.y(str2, 0, (String) charSequence, g10, str2.length(), z10);
                            if (y10) {
                                break;
                            }
                        } else {
                            obj2 = null;
                            break;
                        }
                    }
                    String str3 = (String) obj2;
                    if (str3 != null) {
                        return xc.q.a(Integer.valueOf(g10), str3);
                    }
                    if (g10 == i11) {
                        break;
                    }
                    g10 += l10;
                }
            }
        } else {
            int g11 = h10.g();
            int i12 = h10.i();
            int l11 = h10.l();
            if ((l11 > 0 && g11 <= i12) || (l11 < 0 && i12 <= g11)) {
                while (true) {
                    Iterator it2 = collection.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            obj = it2.next();
                            String str4 = (String) obj;
                            if (r0(str4, 0, charSequence, g11, str4.length(), z10)) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    String str5 = (String) obj;
                    if (str5 != null) {
                        return xc.q.a(Integer.valueOf(g11), str5);
                    }
                    if (g11 == i12) {
                        break;
                    }
                    g11 += l11;
                }
            }
        }
        return null;
    }

    public static int T(CharSequence charSequence) {
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int U(CharSequence charSequence, char c10, int i10, boolean z10) {
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(c10, i10);
        }
        return a0(charSequence, new char[]{c10}, i10, z10);
    }

    public static final int V(CharSequence charSequence, String string, int i10, boolean z10) {
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        kotlin.jvm.internal.m.e(string, "string");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(string, i10);
        }
        return X(charSequence, string, i10, charSequence.length(), z10, false, 16, null);
    }

    private static final int W(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11) {
        int T;
        int d10;
        int b10;
        od.a h10;
        boolean y10;
        int b11;
        int d11;
        if (!z11) {
            b11 = od.i.b(i10, 0);
            d11 = od.i.d(i11, charSequence.length());
            h10 = new od.c(b11, d11);
        } else {
            T = T(charSequence);
            d10 = od.i.d(i10, T);
            b10 = od.i.b(i11, 0);
            h10 = od.i.h(d10, b10);
        }
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int g10 = h10.g();
            int i12 = h10.i();
            int l10 = h10.l();
            if ((l10 <= 0 || g10 > i12) && (l10 >= 0 || i12 > g10)) {
                return -1;
            }
            while (true) {
                String str = (String) charSequence2;
                y10 = y.y(str, 0, (String) charSequence, g10, str.length(), z10);
                if (y10) {
                    return g10;
                }
                if (g10 != i12) {
                    g10 += l10;
                } else {
                    return -1;
                }
            }
        } else {
            int g11 = h10.g();
            int i13 = h10.i();
            int l11 = h10.l();
            if ((l11 > 0 && g11 <= i13) || (l11 < 0 && i13 <= g11)) {
                while (!r0(charSequence2, 0, charSequence, g11, charSequence2.length(), z10)) {
                    if (g11 != i13) {
                        g11 += l11;
                    } else {
                        return -1;
                    }
                }
                return g11;
            }
            return -1;
        }
    }

    static /* synthetic */ int X(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11, int i12, Object obj) {
        if ((i12 & 16) != 0) {
            z11 = false;
        }
        return W(charSequence, charSequence2, i10, i11, z10, z11);
    }

    public static /* synthetic */ int Y(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return U(charSequence, c10, i10, z10);
    }

    public static /* synthetic */ int Z(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return V(charSequence, str, i10, z10);
    }

    public static final int a0(CharSequence charSequence, char[] chars, int i10, boolean z10) {
        int b10;
        int T;
        boolean z11;
        char H;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        kotlin.jvm.internal.m.e(chars, "chars");
        if (z10 || chars.length != 1 || !(charSequence instanceof String)) {
            b10 = od.i.b(i10, 0);
            T = T(charSequence);
            if (b10 > T) {
                return -1;
            }
            while (true) {
                char charAt = charSequence.charAt(b10);
                int length = chars.length;
                int i11 = 0;
                while (true) {
                    if (i11 < length) {
                        if (c.f(chars[i11], charAt, z10)) {
                            z11 = true;
                            break;
                        }
                        i11++;
                    } else {
                        z11 = false;
                        break;
                    }
                }
                if (z11) {
                    return b10;
                }
                if (b10 != T) {
                    b10++;
                } else {
                    return -1;
                }
            }
        } else {
            H = yc.k.H(chars);
            return ((String) charSequence).indexOf(H, i10);
        }
    }

    public static boolean b0(CharSequence charSequence) {
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        for (int i10 = 0; i10 < charSequence.length(); i10++) {
            if (!b.c(charSequence.charAt(i10))) {
                return false;
            }
        }
        return true;
    }

    public static final int c0(CharSequence charSequence, char c10, int i10, boolean z10) {
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(c10, i10);
        }
        return g0(charSequence, new char[]{c10}, i10, z10);
    }

    public static final int d0(CharSequence charSequence, String string, int i10, boolean z10) {
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        kotlin.jvm.internal.m.e(string, "string");
        if (!z10 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(string, i10);
        }
        return W(charSequence, string, i10, 0, z10, true);
    }

    public static /* synthetic */ int e0(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = T(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return c0(charSequence, c10, i10, z10);
    }

    public static /* synthetic */ int f0(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = T(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return d0(charSequence, str, i10, z10);
    }

    public static final int g0(CharSequence charSequence, char[] chars, int i10, boolean z10) {
        int T;
        int d10;
        char H;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        kotlin.jvm.internal.m.e(chars, "chars");
        if (z10 || chars.length != 1 || !(charSequence instanceof String)) {
            T = T(charSequence);
            for (d10 = od.i.d(i10, T); -1 < d10; d10--) {
                char charAt = charSequence.charAt(d10);
                int length = chars.length;
                boolean z11 = false;
                int i11 = 0;
                while (true) {
                    if (i11 >= length) {
                        break;
                    } else if (c.f(chars[i11], charAt, z10)) {
                        z11 = true;
                        break;
                    } else {
                        i11++;
                    }
                }
                if (z11) {
                    return d10;
                }
            }
            return -1;
        }
        H = yc.k.H(chars);
        return ((String) charSequence).lastIndexOf(H, i10);
    }

    public static final qd.e h0(CharSequence charSequence) {
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        return new a(charSequence);
    }

    public static final List i0(CharSequence charSequence) {
        List l10;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        l10 = qd.l.l(h0(charSequence));
        return l10;
    }

    public static final CharSequence j0(CharSequence charSequence, int i10, char c10) {
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        if (i10 >= 0) {
            if (i10 <= charSequence.length()) {
                return charSequence.subSequence(0, charSequence.length());
            }
            StringBuilder sb2 = new StringBuilder(i10);
            int length = i10 - charSequence.length();
            int i11 = 1;
            if (1 <= length) {
                while (true) {
                    sb2.append(c10);
                    if (i11 == length) {
                        break;
                    }
                    i11++;
                }
            }
            sb2.append(charSequence);
            return sb2;
        }
        throw new IllegalArgumentException("Desired length " + i10 + " is less than zero.");
    }

    public static String k0(String str, int i10, char c10) {
        kotlin.jvm.internal.m.e(str, "<this>");
        return j0(str, i10, c10).toString();
    }

    private static final qd.e l0(CharSequence charSequence, final char[] cArr, int i10, final boolean z10, int i11) {
        u0(i11);
        return new e(charSequence, i10, i11, new Function2() { // from class: rd.z
            @Override // id.Function2
            public final Object invoke(Object obj, Object obj2) {
                xc.k p02;
                p02 = b0.p0(cArr, z10, (CharSequence) obj, ((Integer) obj2).intValue());
                return p02;
            }
        });
    }

    private static final qd.e m0(CharSequence charSequence, String[] strArr, int i10, final boolean z10, int i11) {
        final List c10;
        u0(i11);
        c10 = yc.j.c(strArr);
        return new e(charSequence, i10, i11, new Function2() { // from class: rd.a0
            @Override // id.Function2
            public final Object invoke(Object obj, Object obj2) {
                xc.k q02;
                q02 = b0.q0(c10, z10, (CharSequence) obj, ((Integer) obj2).intValue());
                return q02;
            }
        });
    }

    static /* synthetic */ qd.e n0(CharSequence charSequence, char[] cArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return l0(charSequence, cArr, i10, z10, i11);
    }

    static /* synthetic */ qd.e o0(CharSequence charSequence, String[] strArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return m0(charSequence, strArr, i10, z10, i11);
    }

    public static final xc.k p0(char[] cArr, boolean z10, CharSequence DelimitedRangesSequence, int i10) {
        kotlin.jvm.internal.m.e(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
        int a02 = a0(DelimitedRangesSequence, cArr, i10, z10);
        if (a02 < 0) {
            return null;
        }
        return xc.q.a(Integer.valueOf(a02), 1);
    }

    public static final xc.k q0(List list, boolean z10, CharSequence DelimitedRangesSequence, int i10) {
        kotlin.jvm.internal.m.e(DelimitedRangesSequence, "$this$DelimitedRangesSequence");
        xc.k S = S(DelimitedRangesSequence, list, i10, z10, false);
        if (S != null) {
            return xc.q.a(S.c(), Integer.valueOf(((String) S.d()).length()));
        }
        return null;
    }

    public static final boolean r0(CharSequence charSequence, int i10, CharSequence other, int i11, int i12, boolean z10) {
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        kotlin.jvm.internal.m.e(other, "other");
        if (i11 < 0 || i10 < 0 || i10 > charSequence.length() - i12 || i11 > other.length() - i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (!c.f(charSequence.charAt(i10 + i13), other.charAt(i11 + i13), z10)) {
                return false;
            }
        }
        return true;
    }

    public static String s0(String str, CharSequence prefix) {
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        if (B0(str, prefix, false, 2, null)) {
            String substring = str.substring(prefix.length());
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        }
        return str;
    }

    public static String t0(String str, CharSequence suffix) {
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(suffix, "suffix");
        if (R(str, suffix, false, 2, null)) {
            String substring = str.substring(0, str.length() - suffix.length());
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        }
        return str;
    }

    public static final void u0(int i10) {
        boolean z10;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i10).toString());
    }

    public static final List v0(CharSequence charSequence, char[] delimiters, boolean z10, int i10) {
        Iterable<od.c> f10;
        int r10;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        kotlin.jvm.internal.m.e(delimiters, "delimiters");
        if (delimiters.length != 1) {
            f10 = qd.l.f(n0(charSequence, delimiters, 0, z10, i10, 2, null));
            r10 = yc.p.r(f10, 10);
            ArrayList arrayList = new ArrayList(r10);
            for (od.c cVar : f10) {
                arrayList.add(C0(charSequence, cVar));
            }
            return arrayList;
        }
        return x0(charSequence, String.valueOf(delimiters[0]), z10, i10);
    }

    public static final List w0(CharSequence charSequence, String[] delimiters, boolean z10, int i10) {
        Iterable<od.c> f10;
        int r10;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        kotlin.jvm.internal.m.e(delimiters, "delimiters");
        boolean z11 = true;
        if (delimiters.length == 1) {
            String str = delimiters[0];
            if (str.length() != 0) {
                z11 = false;
            }
            if (!z11) {
                return x0(charSequence, str, z10, i10);
            }
        }
        f10 = qd.l.f(o0(charSequence, delimiters, 0, z10, i10, 2, null));
        r10 = yc.p.r(f10, 10);
        ArrayList arrayList = new ArrayList(r10);
        for (od.c cVar : f10) {
            arrayList.add(C0(charSequence, cVar));
        }
        return arrayList;
    }

    private static final List x0(CharSequence charSequence, String str, boolean z10, int i10) {
        List b10;
        boolean z11;
        u0(i10);
        int i11 = 0;
        int V = V(charSequence, str, 0, z10);
        if (V == -1 || i10 == 1) {
            b10 = yc.n.b(charSequence.toString());
            return b10;
        }
        if (i10 > 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        int i12 = 10;
        if (z11) {
            i12 = od.i.d(i10, 10);
        }
        ArrayList arrayList = new ArrayList(i12);
        do {
            arrayList.add(charSequence.subSequence(i11, V).toString());
            i11 = str.length() + V;
            if (z11 && arrayList.size() == i10 - 1) {
                break;
            }
            V = V(charSequence, str, i11, z10);
        } while (V != -1);
        arrayList.add(charSequence.subSequence(i11, charSequence.length()).toString());
        return arrayList;
    }

    public static /* synthetic */ List y0(CharSequence charSequence, char[] cArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return v0(charSequence, cArr, z10, i10);
    }

    public static /* synthetic */ List z0(CharSequence charSequence, String[] strArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return w0(charSequence, strArr, z10, i10);
    }
}
