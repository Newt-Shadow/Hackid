package rd;

import java.util.NoSuchElementException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class d0 extends c0 {
    public static String Q0(String str, int i10) {
        boolean z10;
        int d10;
        kotlin.jvm.internal.m.e(str, "<this>");
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            d10 = od.i.d(i10, str.length());
            String substring = str.substring(d10);
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }

    public static char R0(CharSequence charSequence) {
        boolean z10;
        int T;
        kotlin.jvm.internal.m.e(charSequence, "<this>");
        if (charSequence.length() == 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            T = b0.T(charSequence);
            return charSequence.charAt(T);
        }
        throw new NoSuchElementException("Char sequence is empty.");
    }

    public static String S0(String str, int i10) {
        boolean z10;
        int d10;
        kotlin.jvm.internal.m.e(str, "<this>");
        if (i10 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            d10 = od.i.d(i10, str.length());
            String substring = str.substring(0, d10);
            kotlin.jvm.internal.m.d(substring, "substring(...)");
            return substring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }
}
