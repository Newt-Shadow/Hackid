package a9;

import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static final TimeZone f219a = TimeZone.getTimeZone("UTC");

    private static boolean a(String str, int i10, char c10) {
        if (i10 < str.length() && str.charAt(i10) == c10) {
            return true;
        }
        return false;
    }

    public static String b(Date date, boolean z10) {
        return c(date, z10, f219a);
    }

    public static String c(Date date, boolean z10, TimeZone timeZone) {
        int i10;
        int i11;
        GregorianCalendar gregorianCalendar = new GregorianCalendar(timeZone, Locale.US);
        gregorianCalendar.setTime(date);
        if (z10) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        int i12 = 19 + i10;
        if (timeZone.getRawOffset() == 0) {
            i11 = 1;
        } else {
            i11 = 6;
        }
        StringBuilder sb2 = new StringBuilder(i12 + i11);
        e(sb2, gregorianCalendar.get(1), 4);
        char c10 = '-';
        sb2.append('-');
        e(sb2, gregorianCalendar.get(2) + 1, 2);
        sb2.append('-');
        e(sb2, gregorianCalendar.get(5), 2);
        sb2.append('T');
        e(sb2, gregorianCalendar.get(11), 2);
        sb2.append(':');
        e(sb2, gregorianCalendar.get(12), 2);
        sb2.append(':');
        e(sb2, gregorianCalendar.get(13), 2);
        if (z10) {
            sb2.append('.');
            e(sb2, gregorianCalendar.get(14), 3);
        }
        int offset = timeZone.getOffset(gregorianCalendar.getTimeInMillis());
        if (offset != 0) {
            int i13 = offset / 60000;
            int abs = Math.abs(i13 / 60);
            int abs2 = Math.abs(i13 % 60);
            if (offset >= 0) {
                c10 = '+';
            }
            sb2.append(c10);
            e(sb2, abs, 2);
            sb2.append(':');
            e(sb2, abs2, 2);
        } else {
            sb2.append('Z');
        }
        return sb2.toString();
    }

    private static int d(String str, int i10) {
        while (i10 < str.length()) {
            char charAt = str.charAt(i10);
            if (charAt >= '0' && charAt <= '9') {
                i10++;
            } else {
                return i10;
            }
        }
        return str.length();
    }

    private static void e(StringBuilder sb2, int i10, int i11) {
        String num = Integer.toString(i10);
        for (int length = i11 - num.length(); length > 0; length--) {
            sb2.append('0');
        }
        sb2.append(num);
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00d3 A[Catch: IllegalArgumentException | IndexOutOfBoundsException -> 0x01c0, IndexOutOfBoundsException -> 0x01c2, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException -> 0x01c0, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0036, B:13:0x003c, B:17:0x0054, B:19:0x0064, B:20:0x0066, B:22:0x0072, B:23:0x0074, B:25:0x007a, B:29:0x0084, B:34:0x0094, B:36:0x009c, B:47:0x00cd, B:49:0x00d3, B:51:0x00da, B:75:0x0187, B:55:0x00e4, B:56:0x00ff, B:57:0x0100, B:61:0x011c, B:63:0x0129, B:66:0x0132, B:68:0x0151, B:71:0x0160, B:72:0x0182, B:74:0x0185, B:60:0x010b, B:77:0x01b8, B:78:0x01bf, B:40:0x00b4, B:41:0x00b7), top: B:92:0x0004 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b8 A[Catch: IllegalArgumentException | IndexOutOfBoundsException -> 0x01c0, IndexOutOfBoundsException -> 0x01c2, TryCatch #2 {IllegalArgumentException | IndexOutOfBoundsException -> 0x01c0, blocks: (B:3:0x0004, B:5:0x0016, B:6:0x0018, B:8:0x0024, B:9:0x0026, B:11:0x0036, B:13:0x003c, B:17:0x0054, B:19:0x0064, B:20:0x0066, B:22:0x0072, B:23:0x0074, B:25:0x007a, B:29:0x0084, B:34:0x0094, B:36:0x009c, B:47:0x00cd, B:49:0x00d3, B:51:0x00da, B:75:0x0187, B:55:0x00e4, B:56:0x00ff, B:57:0x0100, B:61:0x011c, B:63:0x0129, B:66:0x0132, B:68:0x0151, B:71:0x0160, B:72:0x0182, B:74:0x0185, B:60:0x010b, B:77:0x01b8, B:78:0x01bf, B:40:0x00b4, B:41:0x00b7), top: B:92:0x0004 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Date f(java.lang.String r17, java.text.ParsePosition r18) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a9.a.f(java.lang.String, java.text.ParsePosition):java.util.Date");
    }

    private static int g(String str, int i10, int i11) {
        int i12;
        int i13;
        if (i10 >= 0 && i11 <= str.length() && i10 <= i11) {
            if (i10 < i11) {
                i13 = i10 + 1;
                int digit = Character.digit(str.charAt(i10), 10);
                if (digit >= 0) {
                    i12 = -digit;
                } else {
                    throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
                }
            } else {
                i12 = 0;
                i13 = i10;
            }
            while (i13 < i11) {
                int i14 = i13 + 1;
                int digit2 = Character.digit(str.charAt(i13), 10);
                if (digit2 >= 0) {
                    i12 = (i12 * 10) - digit2;
                    i13 = i14;
                } else {
                    throw new NumberFormatException("Invalid number: " + str.substring(i10, i11));
                }
            }
            return -i12;
        }
        throw new NumberFormatException(str);
    }
}
