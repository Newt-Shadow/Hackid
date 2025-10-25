package xa;

import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
/* loaded from: classes.dex */
public class i {

    /* renamed from: k  reason: collision with root package name */
    private static final String f32623k = "i";

    /* renamed from: a  reason: collision with root package name */
    private ya.g f32624a;

    /* renamed from: b  reason: collision with root package name */
    private HandlerThread f32625b;

    /* renamed from: c  reason: collision with root package name */
    private Handler f32626c;

    /* renamed from: d  reason: collision with root package name */
    private f f32627d;

    /* renamed from: e  reason: collision with root package name */
    private Handler f32628e;

    /* renamed from: f  reason: collision with root package name */
    private Rect f32629f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f32630g = false;

    /* renamed from: h  reason: collision with root package name */
    private final Object f32631h = new Object();

    /* renamed from: i  reason: collision with root package name */
    private final Handler.Callback f32632i = new a();

    /* renamed from: j  reason: collision with root package name */
    private final ya.p f32633j = new b();

    /* loaded from: classes.dex */
    class a implements Handler.Callback {
        a() {
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == h9.k.f16934e) {
                i.this.g((q) message.obj);
                return true;
            } else if (i10 == h9.k.f16938i) {
                i.this.h();
                return true;
            } else {
                return true;
            }
        }
    }

    /* loaded from: classes.dex */
    class b implements ya.p {
        b() {
        }

        @Override // ya.p
        public void a(q qVar) {
            synchronized (i.this.f32631h) {
                if (i.this.f32630g) {
                    i.this.f32626c.obtainMessage(h9.k.f16934e, qVar).sendToTarget();
                }
            }
        }

        @Override // ya.p
        public void b(Exception exc) {
            synchronized (i.this.f32631h) {
                if (i.this.f32630g) {
                    i.this.f32626c.obtainMessage(h9.k.f16938i).sendToTarget();
                }
            }
        }
    }

    public i(ya.g gVar, f fVar, Handler handler) {
        r.a();
        this.f32624a = gVar;
        this.f32627d = fVar;
        this.f32628e = handler;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(q qVar) {
        d9.n nVar;
        long currentTimeMillis = System.currentTimeMillis();
        qVar.d(this.f32629f);
        d9.h f10 = f(qVar);
        if (f10 != null) {
            nVar = this.f32627d.c(f10);
        } else {
            nVar = null;
        }
        if (nVar != null) {
            long currentTimeMillis2 = System.currentTimeMillis();
            String str = f32623k;
            Log.d(str, "Found barcode in " + (currentTimeMillis2 - currentTimeMillis) + " ms");
            if (this.f32628e != null) {
                Message obtain = Message.obtain(this.f32628e, h9.k.f16936g, new xa.b(nVar, qVar));
                obtain.setData(new Bundle());
                obtain.sendToTarget();
            }
        } else {
            Handler handler = this.f32628e;
            if (handler != null) {
                Message.obtain(handler, h9.k.f16935f).sendToTarget();
            }
        }
        if (this.f32628e != null) {
            Message.obtain(this.f32628e, h9.k.f16937h, xa.b.f(this.f32627d.d(), qVar)).sendToTarget();
        }
        h();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        this.f32624a.v(this.f32633j);
    }

    protected d9.h f(q qVar) {
        if (this.f32629f == null) {
            return null;
        }
        return qVar.a();
    }

    public void i(Rect rect) {
        this.f32629f = rect;
    }

    public void j(f fVar) {
        this.f32627d = fVar;
    }

    public void k() {
        r.a();
        HandlerThread handlerThread = new HandlerThread(f32623k);
        this.f32625b = handlerThread;
        handlerThread.start();
        this.f32626c = new Handler(this.f32625b.getLooper(), this.f32632i);
        this.f32630g = true;
        h();
    }

    public void l() {
        r.a();
        synchronized (this.f32631h) {
            this.f32630g = false;
            this.f32626c.removeCallbacksAndMessages(null);
            this.f32625b.quit();
        }
    }
}
