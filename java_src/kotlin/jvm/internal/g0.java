package kotlin.jvm.internal;

import id.Function2;
import java.util.Map;
import xc.Function;
/* loaded from: classes2.dex */
public abstract class g0 {
    public static Iterable a(Object obj) {
        if ((obj instanceof jd.a) && !(obj instanceof jd.b)) {
            j(obj, "kotlin.collections.MutableIterable");
        }
        return d(obj);
    }

    public static Map b(Object obj) {
        if ((obj instanceof jd.a) && !(obj instanceof jd.c)) {
            j(obj, "kotlin.collections.MutableMap");
        }
        return e(obj);
    }

    public static Object c(Object obj, int i10) {
        if (obj != null && !g(obj, i10)) {
            j(obj, "kotlin.jvm.functions.Function" + i10);
        }
        return obj;
    }

    public static Iterable d(Object obj) {
        try {
            return (Iterable) obj;
        } catch (ClassCastException e10) {
            throw i(e10);
        }
    }

    public static Map e(Object obj) {
        try {
            return (Map) obj;
        } catch (ClassCastException e10) {
            throw i(e10);
        }
    }

    public static int f(Object obj) {
        if (obj instanceof i) {
            return ((i) obj).getArity();
        }
        if (obj instanceof id.a) {
            return 0;
        }
        if (obj instanceof id.l) {
            return 1;
        }
        if (obj instanceof Function2) {
            return 2;
        }
        if (obj instanceof id.p) {
            return 3;
        }
        return -1;
    }

    public static boolean g(Object obj, int i10) {
        if ((obj instanceof Function) && f(obj) == i10) {
            return true;
        }
        return false;
    }

    private static Throwable h(Throwable th) {
        return m.k(th, g0.class.getName());
    }

    public static ClassCastException i(ClassCastException classCastException) {
        throw ((ClassCastException) h(classCastException));
    }

    public static void j(Object obj, String str) {
        String name;
        if (obj == null) {
            name = "null";
        } else {
            name = obj.getClass().getName();
        }
        k(name + " cannot be cast to " + str);
    }

    public static void k(String str) {
        throw i(new ClassCastException(str));
    }
}
