package n7;

import android.util.Log;
/* loaded from: classes.dex */
public class g {

    /* renamed from: c  reason: collision with root package name */
    static final g f26474c = new g("FirebaseCrashlytics");

    /* renamed from: a  reason: collision with root package name */
    private final String f26475a;

    /* renamed from: b  reason: collision with root package name */
    private int f26476b = 4;

    public g(String str) {
        this.f26475a = str;
    }

    private boolean a(int i10) {
        if (this.f26476b > i10 && !Log.isLoggable(this.f26475a, i10)) {
            return false;
        }
        return true;
    }

    public static g f() {
        return f26474c;
    }

    public void b(String str) {
        c(str, null);
    }

    public void c(String str, Throwable th) {
        if (a(3)) {
            Log.d(this.f26475a, str, th);
        }
    }

    public void d(String str) {
        e(str, null);
    }

    public void e(String str, Throwable th) {
        if (a(6)) {
            Log.e(this.f26475a, str, th);
        }
    }

    public void g(String str) {
        h(str, null);
    }

    public void h(String str, Throwable th) {
        if (a(4)) {
            Log.i(this.f26475a, str, th);
        }
    }

    public void i(String str) {
        j(str, null);
    }

    public void j(String str, Throwable th) {
        if (a(2)) {
            Log.v(this.f26475a, str, th);
        }
    }

    public void k(String str) {
        l(str, null);
    }

    public void l(String str, Throwable th) {
        if (a(5)) {
            Log.w(this.f26475a, str, th);
        }
    }
}
