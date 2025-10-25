package n8;

import com.google.firebase.installations.i;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
class e {

    /* renamed from: d  reason: collision with root package name */
    private static final long f26505d = TimeUnit.HOURS.toMillis(24);

    /* renamed from: e  reason: collision with root package name */
    private static final long f26506e = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: a  reason: collision with root package name */
    private final i f26507a = i.c();

    /* renamed from: b  reason: collision with root package name */
    private long f26508b;

    /* renamed from: c  reason: collision with root package name */
    private int f26509c;

    private synchronized long a(int i10) {
        if (!c(i10)) {
            return f26505d;
        }
        return (long) Math.min(Math.pow(2.0d, this.f26509c) + this.f26507a.e(), f26506e);
    }

    private static boolean c(int i10) {
        return i10 == 429 || (i10 >= 500 && i10 < 600);
    }

    private static boolean d(int i10) {
        return (i10 >= 200 && i10 < 300) || i10 == 401 || i10 == 404;
    }

    private synchronized void e() {
        this.f26509c = 0;
    }

    public synchronized boolean b() {
        boolean z10;
        if (this.f26509c != 0) {
            if (this.f26507a.a() <= this.f26508b) {
                z10 = false;
            }
        }
        z10 = true;
        return z10;
    }

    public synchronized void f(int i10) {
        if (d(i10)) {
            e();
            return;
        }
        this.f26509c++;
        this.f26508b = this.f26507a.a() + a(i10);
    }
}
