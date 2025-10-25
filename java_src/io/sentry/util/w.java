package io.sentry.util;

import io.sentry.ILogger;
import io.sentry.j5;
import java.math.BigInteger;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public abstract class w {

    /* renamed from: a  reason: collision with root package name */
    private static final Charset f23806a = Charset.forName("UTF-8");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f23807b = Pattern.compile("[\\W_]+");

    public static String a(String str, ILogger iLogger) {
        if (str != null && !str.isEmpty()) {
            try {
                return new StringBuilder(new BigInteger(1, MessageDigest.getInstance("SHA-1").digest(str.getBytes(f23806a))).toString(16)).toString();
            } catch (NoSuchAlgorithmException e10) {
                iLogger.b(j5.INFO, "SHA-1 isn't available to calculate the hash.", e10);
            } catch (Throwable th) {
                iLogger.c(j5.INFO, "string: %s could not calculate its hash", th, str);
            }
        }
        return null;
    }

    public static String b(String str) {
        if (str != null && !str.isEmpty()) {
            String[] split = f23807b.split(str, -1);
            StringBuilder sb2 = new StringBuilder();
            for (String str2 : split) {
                sb2.append(c(str2));
            }
            return sb2.toString();
        }
        return str;
    }

    public static String c(String str) {
        if (str != null && !str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            String substring = str.substring(0, 1);
            Locale locale = Locale.ROOT;
            sb2.append(substring.toUpperCase(locale));
            sb2.append(str.substring(1).toLowerCase(locale));
            return sb2.toString();
        }
        return str;
    }

    public static String d(String str) {
        int i10;
        if (str != null) {
            int lastIndexOf = str.lastIndexOf(".");
            if (lastIndexOf >= 0 && str.length() > (i10 = lastIndexOf + 1)) {
                return str.substring(i10);
            }
            return str;
        }
        return null;
    }

    public static String e(String str) {
        if (str.equals("0000-0000")) {
            return "00000000-0000-0000-0000-000000000000";
        }
        return str;
    }

    public static String f(String str, String str2) {
        if (str != null && str2 != null && str.startsWith(str2) && str.endsWith(str2)) {
            return str.substring(str2.length(), str.length() - str2.length());
        }
        return str;
    }

    public static String g(Object obj) {
        if (obj == null) {
            return null;
        }
        return obj.toString();
    }
}
