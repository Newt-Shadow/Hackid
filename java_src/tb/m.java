package tb;

import android.os.Handler;
import android.os.HandlerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private final String f30565a;

    /* renamed from: b  reason: collision with root package name */
    private final int f30566b;

    /* renamed from: c  reason: collision with root package name */
    private HandlerThread f30567c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f30568d;

    /* renamed from: e  reason: collision with root package name */
    protected Runnable f30569e;

    /* renamed from: f  reason: collision with root package name */
    private k f30570f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(String str, int i10) {
        this.f30565a = str;
        this.f30566b = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        k kVar = this.f30570f;
        if (kVar != null && kVar.b()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Integer d() {
        k kVar = this.f30570f;
        if (kVar != null) {
            return kVar.a();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void e(final k kVar) {
        this.f30568d.post(new Runnable() { // from class: tb.l
            @Override // java.lang.Runnable
            public final void run() {
                m.this.c(kVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void f() {
        HandlerThread handlerThread = this.f30567c;
        if (handlerThread != null) {
            handlerThread.quit();
            this.f30567c = null;
            this.f30568d = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void g(Runnable runnable) {
        HandlerThread handlerThread = new HandlerThread(this.f30565a, this.f30566b);
        this.f30567c = handlerThread;
        handlerThread.start();
        this.f30568d = new Handler(this.f30567c.getLooper());
        this.f30569e = runnable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void c(k kVar) {
        kVar.f30562b.run();
        this.f30570f = kVar;
        this.f30569e.run();
    }
}
