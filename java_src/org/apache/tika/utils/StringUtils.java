package org.apache.tika.utils;

import java.util.List;
/* loaded from: classes2.dex */
public class StringUtils {
    public static final String EMPTY = "";
    static int PAD_LIMIT = 10000;
    public static final String SPACE = " ";

    public static boolean isBlank(String str) {
        if (str != null && !org.apache.tika.config.j.a(str)) {
            return false;
        }
        return true;
    }

    public static boolean isEmpty(CharSequence charSequence) {
        if (charSequence != null && charSequence.length() != 0) {
            return false;
        }
        return true;
    }

    public static String joinWith(String str, List<String> list) {
        if (list.size() == 0) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (String str2 : list) {
            int i11 = i10 + 1;
            if (i10 > 0) {
                sb2.append(str);
            }
            sb2.append(str2);
            i10 = i11;
        }
        return sb2.toString();
    }

    public static String leftPad(String str, int i10, String str2) {
        if (str == null) {
            return null;
        }
        if (isEmpty(str2)) {
            str2 = SPACE;
        }
        int length = str2.length();
        int length2 = i10 - str.length();
        if (length2 <= 0) {
            return str;
        }
        if (length != 1 || length2 > PAD_LIMIT) {
            if (length2 == length) {
                return str2.concat(str);
            }
            if (length2 < length) {
                return str2.substring(0, length2).concat(str);
            }
            char[] cArr = new char[length2];
            char[] charArray = str2.toCharArray();
            for (int i11 = 0; i11 < length2; i11++) {
                cArr[i11] = charArray[i11 % length];
            }
            return new String(cArr).concat(str);
        }
        return leftPad(str, i10, str2.charAt(0));
    }

    public static String repeat(char c10, int i10) {
        if (i10 <= 0) {
            return "";
        }
        char[] cArr = new char[i10];
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            cArr[i11] = c10;
        }
        return new String(cArr);
    }

    public static String repeat(String str, int i10) {
        if (str == null) {
            return null;
        }
        if (i10 <= 0) {
            return "";
        }
        int length = str.length();
        if (i10 == 1 || length == 0) {
            return str;
        }
        if (length != 1 || i10 > PAD_LIMIT) {
            int i11 = length * i10;
            if (length != 1) {
                if (length != 2) {
                    StringBuilder sb2 = new StringBuilder(i11);
                    for (int i12 = 0; i12 < i10; i12++) {
                        sb2.append(str);
                    }
                    return sb2.toString();
                }
                char charAt = str.charAt(0);
                char charAt2 = str.charAt(1);
                char[] cArr = new char[i11];
                for (int i13 = (i10 * 2) - 2; i13 >= 0; i13 = (i13 - 1) - 1) {
                    cArr[i13] = charAt;
                    cArr[i13 + 1] = charAt2;
                }
                return new String(cArr);
            }
            return repeat(str.charAt(0), i10);
        }
        return repeat(str.charAt(0), i10);
    }

    public static String leftPad(String str, int i10, char c10) {
        if (str == null) {
            return null;
        }
        int length = i10 - str.length();
        if (length <= 0) {
            return str;
        }
        if (length > PAD_LIMIT) {
            return leftPad(str, i10, String.valueOf(c10));
        }
        return repeat(c10, length).concat(str);
    }
}
