package z;

import android.os.CancellationSignal;
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private boolean f33319a;

    /* renamed from: b  reason: collision with root package name */
    private a f33320b;

    /* renamed from: c  reason: collision with root package name */
    private Object f33321c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f33322d;

    /* loaded from: classes.dex */
    public interface a {
        void a();
    }

    private void c() {
        while (this.f33322d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public void a() {
        synchronized (this) {
            if (this.f33319a) {
                return;
            }
            this.f33319a = true;
            this.f33322d = true;
            a aVar = this.f33320b;
            Object obj = this.f33321c;
            if (aVar != null) {
                try {
                    aVar.a();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f33322d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null) {
                ((CancellationSignal) obj).cancel();
            }
            synchronized (this) {
                this.f33322d = false;
                notifyAll();
            }
        }
    }

    public void b(a aVar) {
        synchronized (this) {
            c();
            if (this.f33320b == aVar) {
                return;
            }
            this.f33320b = aVar;
            if (this.f33319a && aVar != null) {
                aVar.a();
            }
        }
    }
}
