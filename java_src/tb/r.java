package tb;

import android.os.Handler;
import android.os.HandlerThread;
/* loaded from: classes.dex */
class r implements n {

    /* renamed from: a  reason: collision with root package name */
    final String f30582a;

    /* renamed from: b  reason: collision with root package name */
    final int f30583b;

    /* renamed from: c  reason: collision with root package name */
    private HandlerThread f30584c;

    /* renamed from: d  reason: collision with root package name */
    private Handler f30585d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(String str, int i10) {
        this.f30582a = str;
        this.f30583b = i10;
    }

    @Override // tb.n
    public void c(k kVar) {
        this.f30585d.post(kVar.f30562b);
    }

    @Override // tb.n
    public void d() {
        HandlerThread handlerThread = this.f30584c;
        if (handlerThread != null) {
            handlerThread.quit();
            this.f30584c = null;
            this.f30585d = null;
        }
    }

    @Override // tb.n
    public void start() {
        HandlerThread handlerThread = new HandlerThread(this.f30582a, this.f30583b);
        this.f30584c = handlerThread;
        handlerThread.start();
        this.f30585d = new Handler(this.f30584c.getLooper());
    }
}
