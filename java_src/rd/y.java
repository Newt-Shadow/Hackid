package rd;

import java.util.Locale;
/* loaded from: classes2.dex */
public abstract class y extends x {
    public static final String A(String str, char c10, char c11, boolean z10) {
        kotlin.jvm.internal.m.e(str, "<this>");
        if (!z10) {
            String replace = str.replace(c10, c11);
            kotlin.jvm.internal.m.d(replace, "replace(...)");
            return replace;
        }
        StringBuilder sb2 = new StringBuilder(str.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            char charAt = str.charAt(i10);
            if (c.f(charAt, c10, z10)) {
                charAt = c11;
            }
            sb2.append(charAt);
        }
        return sb2.toString();
    }

    public static final String B(String str, String oldValue, String newValue, boolean z10) {
        int b10;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(oldValue, "oldValue");
        kotlin.jvm.internal.m.e(newValue, "newValue");
        int i10 = 0;
        int V = b0.V(str, oldValue, 0, z10);
        if (V < 0) {
            return str;
        }
        int length = oldValue.length();
        b10 = od.i.b(length, 1);
        int length2 = (str.length() - length) + newValue.length();
        if (length2 >= 0) {
            StringBuilder sb2 = new StringBuilder(length2);
            do {
                sb2.append((CharSequence) str, i10, V);
                sb2.append(newValue);
                i10 = V + length;
                if (V >= str.length()) {
                    break;
                }
                V = b0.V(str, oldValue, V + b10, z10);
            } while (V > 0);
            sb2.append((CharSequence) str, i10, str.length());
            String sb3 = sb2.toString();
            kotlin.jvm.internal.m.d(sb3, "toString(...)");
            return sb3;
        }
        throw new OutOfMemoryError();
    }

    public static /* synthetic */ String C(String str, char c10, char c11, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return A(str, c10, c11, z10);
    }

    public static /* synthetic */ String D(String str, String str2, String str3, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return B(str, str2, str3, z10);
    }

    public static boolean E(String str, String prefix, int i10, boolean z10) {
        boolean y10;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        if (z10) {
            y10 = y(str, i10, prefix, 0, prefix.length(), z10);
            return y10;
        }
        return str.startsWith(prefix, i10);
    }

    public static boolean F(String str, String prefix, boolean z10) {
        boolean y10;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(prefix, "prefix");
        if (z10) {
            y10 = y(str, 0, prefix, 0, prefix.length(), z10);
            return y10;
        }
        return str.startsWith(prefix);
    }

    public static /* synthetic */ boolean G(String str, String str2, int i10, boolean z10, int i11, Object obj) {
        boolean E;
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        E = E(str, str2, i10, z10);
        return E;
    }

    public static /* synthetic */ boolean H(String str, String str2, boolean z10, int i10, Object obj) {
        boolean F;
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        F = F(str, str2, z10);
        return F;
    }

    public static String q(String str, Locale locale) {
        boolean z10;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(locale, "locale");
        if (str.length() > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            char charAt = str.charAt(0);
            if (Character.isLowerCase(charAt)) {
                StringBuilder sb2 = new StringBuilder();
                char titleCase = Character.toTitleCase(charAt);
                if (titleCase != Character.toUpperCase(charAt)) {
                    sb2.append(titleCase);
                } else {
                    String substring = str.substring(0, 1);
                    kotlin.jvm.internal.m.d(substring, "substring(...)");
                    kotlin.jvm.internal.m.c(substring, "null cannot be cast to non-null type java.lang.String");
                    String upperCase = substring.toUpperCase(locale);
                    kotlin.jvm.internal.m.d(upperCase, "toUpperCase(...)");
                    sb2.append(upperCase);
                }
                String substring2 = str.substring(1);
                kotlin.jvm.internal.m.d(substring2, "substring(...)");
                sb2.append(substring2);
                return sb2.toString();
            }
            return str;
        }
        return str;
    }

    public static String r(char[] cArr) {
        kotlin.jvm.internal.m.e(cArr, "<this>");
        return new String(cArr);
    }

    public static String s(char[] cArr, int i10, int i11) {
        kotlin.jvm.internal.m.e(cArr, "<this>");
        yc.c.f33226a.a(i10, i11, cArr.length);
        return new String(cArr, i10, i11 - i10);
    }

    public static String t(byte[] bArr) {
        kotlin.jvm.internal.m.e(bArr, "<this>");
        return new String(bArr, d.f29089b);
    }

    public static byte[] u(String str) {
        kotlin.jvm.internal.m.e(str, "<this>");
        byte[] bytes = str.getBytes(d.f29089b);
        kotlin.jvm.internal.m.d(bytes, "getBytes(...)");
        return bytes;
    }

    public static boolean v(String str, String suffix, boolean z10) {
        boolean y10;
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(suffix, "suffix");
        if (z10) {
            y10 = y(str, str.length() - suffix.length(), suffix, 0, suffix.length(), true);
            return y10;
        }
        return str.endsWith(suffix);
    }

    public static /* synthetic */ boolean w(String str, String str2, boolean z10, int i10, Object obj) {
        boolean v10;
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        v10 = v(str, str2, z10);
        return v10;
    }

    public static boolean x(String str, String str2, boolean z10) {
        if (str == null) {
            if (str2 == null) {
                return true;
            }
            return false;
        } else if (!z10) {
            return str.equals(str2);
        } else {
            return str.equalsIgnoreCase(str2);
        }
    }

    public static boolean y(String str, int i10, String other, int i11, int i12, boolean z10) {
        kotlin.jvm.internal.m.e(str, "<this>");
        kotlin.jvm.internal.m.e(other, "other");
        if (!z10) {
            return str.regionMatches(i10, other, i11, i12);
        }
        return str.regionMatches(z10, i10, other, i11, i12);
    }

    public static String z(CharSequence charSequence, int i10) {
        boolean z10;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        int i11 = 1;
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            if (i10 == 0) {
                return "";
            }
            if (i10 != 1) {
                int length = charSequence.length();
                if (length == 0) {
                    return "";
                }
                if (length != 1) {
                    StringBuilder sb2 = new StringBuilder(charSequence.length() * i10);
                    if (1 <= i10) {
                        while (true) {
                            sb2.append(charSequence);
                            if (i11 == i10) {
                                break;
                            }
                            i11++;
                        }
                    }
                    String sb3 = sb2.toString();
                    kotlin.jvm.internal.m.b(sb3);
                    return sb3;
                }
                char charAt = charSequence.charAt(0);
                char[] cArr = new char[i10];
                for (int i12 = 0; i12 < i10; i12++) {
                    cArr[i12] = charAt;
                }
                return new String(cArr);
            }
            return charSequence.toString();
        }
        throw new IllegalArgumentException(("Count 'n' must be non-negative, but was " + i10 + '.').toString());
    }
}
