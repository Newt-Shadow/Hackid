package n5;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.Objects;
/* loaded from: classes.dex */
public abstract class q {
    public static void a(boolean z10) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException();
    }

    public static void b(boolean z10, Object obj) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    public static void c(boolean z10, String str, Object... objArr) {
        if (z10) {
            return;
        }
        throw new IllegalArgumentException(String.format(str, objArr));
    }

    public static void d(Handler handler) {
        String str;
        Looper myLooper = Looper.myLooper();
        if (myLooper != handler.getLooper()) {
            if (myLooper != null) {
                str = myLooper.getThread().getName();
            } else {
                str = "null current looper";
            }
            String name = handler.getLooper().getThread().getName();
            throw new IllegalStateException("Must be called on " + name + " thread, but got " + str + ".");
        }
    }

    public static String e(String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Given String is empty or null");
    }

    public static String f(String str, Object obj) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException(String.valueOf(obj));
    }

    public static void g() {
        h("Must not be called on GoogleApiHandler thread.");
    }

    public static void h(String str) {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null && Objects.equals(myLooper.getThread().getName(), "GoogleApiHandler")) {
            throw new IllegalStateException(str);
        }
    }

    public static void i() {
        j("Must not be called on the main application thread");
    }

    public static void j(String str) {
        if (!com.google.android.gms.common.util.v.a()) {
            return;
        }
        throw new IllegalStateException(str);
    }

    public static Object k(Object obj) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("null reference");
    }

    public static Object l(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    public static int m(int i10) {
        if (i10 != 0) {
            return i10;
        }
        throw new IllegalArgumentException("Given Integer is zero");
    }

    public static void n(boolean z10) {
        if (z10) {
            return;
        }
        throw new IllegalStateException();
    }

    public static void o(boolean z10, Object obj) {
        if (z10) {
            return;
        }
        throw new IllegalStateException(String.valueOf(obj));
    }
}
