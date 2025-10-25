package org.apache.tika.io;

import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.HashSet;
import java.util.Locale;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class FilenameUtils {
    private static final Pattern ASCII_NUMERIC;
    private static final HashSet<Character> RESERVED = new HashSet<>(38);
    public static final char[] RESERVED_FILENAME_CHARACTERS;

    static {
        char[] cArr = {0, 1, 2, 3, 4, 5, 6, 7, '\b', '\t', '\n', 11, '\f', '\r', 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, '?', ':', '*', '<', '>', '|'};
        RESERVED_FILENAME_CHARACTERS = cArr;
        for (char c10 : cArr) {
            RESERVED.add(Character.valueOf(c10));
        }
        ASCII_NUMERIC = Pattern.compile("\\A\\.(?i)[a-z0-9]{1,5}\\Z");
    }

    public static String getName(String str) {
        if (str != null && !str.isEmpty()) {
            String substring = str.substring(Math.max(str.lastIndexOf(":"), Math.max(str.lastIndexOf("/"), str.lastIndexOf("\\"))) + 1);
            if (!substring.equals("..") && !substring.equals(".")) {
                return substring;
            }
        }
        return "";
    }

    public static String getSuffixFromPath(String str) {
        String name = getName(str);
        int lastIndexOf = name.lastIndexOf(".");
        if (lastIndexOf > -1 && name.length() - lastIndexOf < 6) {
            String substring = name.substring(lastIndexOf);
            if (ASCII_NUMERIC.matcher(substring).matches()) {
                return substring;
            }
            return "";
        }
        return "";
    }

    public static String normalize(String str) {
        char[] charArray;
        String str2;
        if (str != null) {
            StringBuilder sb2 = new StringBuilder();
            for (char c10 : str.toCharArray()) {
                if (RESERVED.contains(Character.valueOf(c10))) {
                    sb2.append('%');
                    if (c10 < 16) {
                        str2 = CommonUrlParts.Values.FALSE_INTEGER;
                    } else {
                        str2 = "";
                    }
                    sb2.append(str2);
                    sb2.append(Integer.toHexString(c10).toUpperCase(Locale.ROOT));
                } else {
                    sb2.append(c10);
                }
            }
            return sb2.toString();
        }
        throw new IllegalArgumentException("name cannot be null");
    }
}
