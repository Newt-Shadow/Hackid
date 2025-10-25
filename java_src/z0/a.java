package z0;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.SystemClock;
import android.text.format.DateUtils;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public abstract class a extends b {

    /* renamed from: i  reason: collision with root package name */
    private Executor f33334i;

    /* renamed from: j  reason: collision with root package name */
    private volatile RunnableC0383a f33335j;

    /* renamed from: k  reason: collision with root package name */
    private volatile RunnableC0383a f33336k;

    /* renamed from: l  reason: collision with root package name */
    private long f33337l;

    /* renamed from: m  reason: collision with root package name */
    private long f33338m;

    /* renamed from: n  reason: collision with root package name */
    private Handler f33339n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z0.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public final class RunnableC0383a extends c implements Runnable {

        /* renamed from: f  reason: collision with root package name */
        boolean f33340f;

        RunnableC0383a() {
        }

        @Override // z0.c
        protected Object b() {
            return a.this.E();
        }

        @Override // z0.c
        protected void g(Object obj) {
            a.this.y(this, obj);
        }

        @Override // z0.c
        protected void h(Object obj) {
            a.this.z(this, obj);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f33340f = false;
            a.this.A();
        }
    }

    public a(Context context) {
        super(context);
        this.f33338m = -10000L;
    }

    void A() {
        if (this.f33336k == null && this.f33335j != null) {
            if (this.f33335j.f33340f) {
                this.f33335j.f33340f = false;
                this.f33339n.removeCallbacks(this.f33335j);
            }
            if (this.f33337l > 0 && SystemClock.uptimeMillis() < this.f33338m + this.f33337l) {
                this.f33335j.f33340f = true;
                this.f33339n.postAtTime(this.f33335j, this.f33338m + this.f33337l);
                return;
            }
            if (this.f33334i == null) {
                this.f33334i = B();
            }
            this.f33335j.c(this.f33334i);
        }
    }

    protected Executor B() {
        return AsyncTask.THREAD_POOL_EXECUTOR;
    }

    public abstract Object C();

    public void D(Object obj) {
    }

    protected Object E() {
        return C();
    }

    @Override // z0.b
    public void g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        TimeUnit timeUnit;
        String str2;
        super.g(str, fileDescriptor, printWriter, strArr);
        if (this.f33335j != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f33335j);
            printWriter.print(" waiting=");
            printWriter.println(this.f33335j.f33340f);
        }
        if (this.f33336k != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f33336k);
            printWriter.print(" waiting=");
            printWriter.println(this.f33336k.f33340f);
        }
        if (this.f33337l != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            printWriter.print(DateUtils.formatElapsedTime(TimeUnit.MILLISECONDS.toSeconds(this.f33337l)));
            printWriter.print(" mLastLoadCompleteTime=");
            if (this.f33338m == -10000) {
                str2 = "--";
            } else {
                str2 = "-" + DateUtils.formatElapsedTime(timeUnit.toSeconds(SystemClock.uptimeMillis() - this.f33338m));
            }
            printWriter.print(str2);
            printWriter.println();
        }
    }

    @Override // z0.b
    protected boolean l() {
        if (this.f33335j == null) {
            return false;
        }
        if (!j()) {
            m();
        }
        if (this.f33336k != null) {
            if (this.f33335j.f33340f) {
                this.f33335j.f33340f = false;
                this.f33339n.removeCallbacks(this.f33335j);
            }
            this.f33335j = null;
            return false;
        } else if (this.f33335j.f33340f) {
            this.f33335j.f33340f = false;
            this.f33339n.removeCallbacks(this.f33335j);
            this.f33335j = null;
            return false;
        } else {
            boolean a10 = this.f33335j.a(false);
            if (a10) {
                this.f33336k = this.f33335j;
                x();
            }
            this.f33335j = null;
            return a10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // z0.b
    public void n() {
        super.n();
        b();
        this.f33335j = new RunnableC0383a();
        A();
    }

    public void x() {
    }

    void y(RunnableC0383a runnableC0383a, Object obj) {
        D(obj);
        if (this.f33336k == runnableC0383a) {
            t();
            this.f33338m = SystemClock.uptimeMillis();
            this.f33336k = null;
            e();
            A();
        }
    }

    void z(RunnableC0383a runnableC0383a, Object obj) {
        if (this.f33335j != runnableC0383a) {
            y(runnableC0383a, obj);
        } else if (i()) {
            D(obj);
        } else {
            c();
            this.f33338m = SystemClock.uptimeMillis();
            this.f33335j = null;
            f(obj);
        }
    }
}
