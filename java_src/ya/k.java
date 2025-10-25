package ya;

import android.os.Handler;
import android.os.HandlerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k {

    /* renamed from: e  reason: collision with root package name */
    private static k f33152e;

    /* renamed from: a  reason: collision with root package name */
    private Handler f33153a;

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f33154b;

    /* renamed from: c  reason: collision with root package name */
    private int f33155c = 0;

    /* renamed from: d  reason: collision with root package name */
    private final Object f33156d = new Object();

    private k() {
    }

    private void a() {
        synchronized (this.f33156d) {
            if (this.f33153a == null) {
                if (this.f33155c > 0) {
                    HandlerThread handlerThread = new HandlerThread("CameraThread");
                    this.f33154b = handlerThread;
                    handlerThread.start();
                    this.f33153a = new Handler(this.f33154b.getLooper());
                } else {
                    throw new IllegalStateException("CameraThread is not open");
                }
            }
        }
    }

    public static k d() {
        if (f33152e == null) {
            f33152e = new k();
        }
        return f33152e;
    }

    private void f() {
        synchronized (this.f33156d) {
            this.f33154b.quit();
            this.f33154b = null;
            this.f33153a = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        synchronized (this.f33156d) {
            int i10 = this.f33155c - 1;
            this.f33155c = i10;
            if (i10 == 0) {
                f();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(Runnable runnable) {
        synchronized (this.f33156d) {
            a();
            this.f33153a.post(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(Runnable runnable) {
        synchronized (this.f33156d) {
            this.f33155c++;
            c(runnable);
        }
    }
}
