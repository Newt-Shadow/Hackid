package rd;

import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class b {
    public static int a(int i10) {
        boolean z10 = false;
        if (2 <= i10 && i10 < 37) {
            z10 = true;
        }
        if (z10) {
            return i10;
        }
        throw new IllegalArgumentException("radix " + i10 + " was not in valid range " + new od.c(2, 36));
    }

    public static final int b(char c10, int i10) {
        return Character.digit((int) c10, i10);
    }

    public static final boolean c(char c10) {
        if (!Character.isWhitespace(c10) && !Character.isSpaceChar(c10)) {
            return false;
        }
        return true;
    }

    public static String d(char c10, Locale locale) {
        kotlin.jvm.internal.m.e(locale, "locale");
        String e10 = e(c10, locale);
        if (e10.length() > 1) {
            if (c10 != 329) {
                char charAt = e10.charAt(0);
                kotlin.jvm.internal.m.c(e10, "null cannot be cast to non-null type java.lang.String");
                String substring = e10.substring(1);
                kotlin.jvm.internal.m.d(substring, "substring(...)");
                kotlin.jvm.internal.m.c(substring, "null cannot be cast to non-null type java.lang.String");
                String lowerCase = substring.toLowerCase(Locale.ROOT);
                kotlin.jvm.internal.m.d(lowerCase, "toLowerCase(...)");
                return charAt + lowerCase;
            }
            return e10;
        }
        String valueOf = String.valueOf(c10);
        kotlin.jvm.internal.m.c(valueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = valueOf.toUpperCase(Locale.ROOT);
        kotlin.jvm.internal.m.d(upperCase, "toUpperCase(...)");
        if (!kotlin.jvm.internal.m.a(e10, upperCase)) {
            return e10;
        }
        return String.valueOf(Character.toTitleCase(c10));
    }

    public static final String e(char c10, Locale locale) {
        kotlin.jvm.internal.m.e(locale, "locale");
        String valueOf = String.valueOf(c10);
        kotlin.jvm.internal.m.c(valueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = valueOf.toUpperCase(locale);
        kotlin.jvm.internal.m.d(upperCase, "toUpperCase(...)");
        return upperCase;
    }
}
