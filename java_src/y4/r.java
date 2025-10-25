package y4;

import android.text.TextUtils;
import android.util.Log;
import java.net.UnknownHostException;
/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: b  reason: collision with root package name */
    private static int f32962b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f32963c = true;

    /* renamed from: a  reason: collision with root package name */
    private static final Object f32961a = new Object();

    /* renamed from: d  reason: collision with root package name */
    private static a f32964d = a.f32965a;

    /* loaded from: classes.dex */
    public interface a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f32965a = new C0375a();

        /* renamed from: y4.r$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0375a implements a {
            C0375a() {
            }

            @Override // y4.r.a
            public void a(String str, String str2) {
                Log.w(str, str2);
            }

            @Override // y4.r.a
            public void b(String str, String str2) {
                Log.e(str, str2);
            }

            @Override // y4.r.a
            public void c(String str, String str2) {
                Log.i(str, str2);
            }

            @Override // y4.r.a
            public void d(String str, String str2) {
                Log.d(str, str2);
            }
        }

        void a(String str, String str2);

        void b(String str, String str2);

        void c(String str, String str2);

        void d(String str, String str2);
    }

    private static String a(String str, Throwable th) {
        String e10 = e(th);
        if (!TextUtils.isEmpty(e10)) {
            return str + "\n  " + e10.replace("\n", "\n  ") + '\n';
        }
        return str;
    }

    public static void b(String str, String str2) {
        synchronized (f32961a) {
            if (f32962b == 0) {
                f32964d.d(str, str2);
            }
        }
    }

    public static void c(String str, String str2) {
        synchronized (f32961a) {
            if (f32962b <= 3) {
                f32964d.b(str, str2);
            }
        }
    }

    public static void d(String str, String str2, Throwable th) {
        c(str, a(str2, th));
    }

    public static String e(Throwable th) {
        synchronized (f32961a) {
            if (th == null) {
                return null;
            }
            if (h(th)) {
                return "UnknownHostException (no network)";
            }
            if (!f32963c) {
                return th.getMessage();
            }
            return Log.getStackTraceString(th).trim().replace("\t", "    ");
        }
    }

    public static void f(String str, String str2) {
        synchronized (f32961a) {
            if (f32962b <= 1) {
                f32964d.c(str, str2);
            }
        }
    }

    public static void g(String str, String str2, Throwable th) {
        f(str, a(str2, th));
    }

    private static boolean h(Throwable th) {
        while (th != null) {
            if (th instanceof UnknownHostException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    public static void i(String str, String str2) {
        synchronized (f32961a) {
            if (f32962b <= 2) {
                f32964d.a(str, str2);
            }
        }
    }

    public static void j(String str, String str2, Throwable th) {
        i(str, a(str2, th));
    }
}
