package io.sentry;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.ParseException;
import java.text.ParsePosition;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes2.dex */
public abstract class j {
    public static long a(Date date) {
        return h(date.getTime());
    }

    public static double b(Date date) {
        return i(date.getTime());
    }

    public static Date c() {
        return Calendar.getInstance(io.sentry.vendor.gson.internal.bind.util.a.f23862a).getTime();
    }

    public static Date d(long j10) {
        Calendar calendar = Calendar.getInstance(io.sentry.vendor.gson.internal.bind.util.a.f23862a);
        calendar.setTimeInMillis(j10);
        return calendar.getTime();
    }

    public static Date e(String str) {
        try {
            return io.sentry.vendor.gson.internal.bind.util.a.f(str, new ParsePosition(0));
        } catch (ParseException unused) {
            throw new IllegalArgumentException("timestamp is not ISO format " + str);
        }
    }

    public static Date f(String str) {
        try {
            return d(new BigDecimal(str).setScale(3, RoundingMode.DOWN).movePointRight(3).longValue());
        } catch (NumberFormatException unused) {
            throw new IllegalArgumentException("timestamp is not millis format " + str);
        }
    }

    public static String g(Date date) {
        return io.sentry.vendor.gson.internal.bind.util.a.b(date, true);
    }

    public static long h(long j10) {
        return j10 * 1000000;
    }

    public static double i(double d10) {
        return d10 / 1000.0d;
    }

    public static Date j(long j10) {
        return d(Double.valueOf(k(Double.valueOf(j10).doubleValue())).longValue());
    }

    public static double k(double d10) {
        return d10 / 1000000.0d;
    }

    public static double l(long j10) {
        return Double.valueOf(j10).doubleValue() / 1.0E9d;
    }

    public static long m(long j10) {
        return j10 * 1000000000;
    }

    public static Date n(y3 y3Var) {
        if (y3Var == null) {
            return null;
        }
        return o(y3Var);
    }

    public static Date o(y3 y3Var) {
        return j(y3Var.l());
    }
}
