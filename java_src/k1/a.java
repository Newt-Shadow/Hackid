package k1;

import android.os.Build;
import android.os.Trace;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private static long f24651a;

    /* renamed from: b  reason: collision with root package name */
    private static Method f24652b;

    /* renamed from: c  reason: collision with root package name */
    private static Method f24653c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f24654d;

    public static void a(String str, int i10) {
        if (Build.VERSION.SDK_INT >= 29) {
            c.a(j(str), i10);
        } else {
            b(j(str), i10);
        }
    }

    private static void b(String str, int i10) {
        try {
            if (f24653c == null) {
                f24653c = Trace.class.getMethod("asyncTraceBegin", Long.TYPE, String.class, Integer.TYPE);
            }
            f24653c.invoke(null, Long.valueOf(f24651a), str, Integer.valueOf(i10));
        } catch (Exception e10) {
            g("asyncTraceBegin", e10);
        }
    }

    public static void c(String str) {
        b.a(j(str));
    }

    public static void d(String str, int i10) {
        if (Build.VERSION.SDK_INT >= 29) {
            c.b(j(str), i10);
        } else {
            e(j(str), i10);
        }
    }

    private static void e(String str, int i10) {
        try {
            if (f24654d == null) {
                f24654d = Trace.class.getMethod("asyncTraceEnd", Long.TYPE, String.class, Integer.TYPE);
            }
            f24654d.invoke(null, Long.valueOf(f24651a), str, Integer.valueOf(i10));
        } catch (Exception e10) {
            g("asyncTraceEnd", e10);
        }
    }

    public static void f() {
        b.b();
    }

    private static void g(String str, Exception exc) {
        if (exc instanceof InvocationTargetException) {
            Throwable cause = exc.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            throw new RuntimeException(cause);
        }
        Log.v("Trace", "Unable to call " + str + " via reflection", exc);
    }

    public static boolean h() {
        if (Build.VERSION.SDK_INT >= 29) {
            return c.c();
        }
        return i();
    }

    private static boolean i() {
        try {
            if (f24652b == null) {
                f24651a = Trace.class.getField("TRACE_TAG_APP").getLong(null);
                f24652b = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            }
            return ((Boolean) f24652b.invoke(null, Long.valueOf(f24651a))).booleanValue();
        } catch (Exception e10) {
            g("isTagEnabled", e10);
            return false;
        }
    }

    private static String j(String str) {
        if (str.length() <= 127) {
            return str;
        }
        return str.substring(0, 127);
    }
}
