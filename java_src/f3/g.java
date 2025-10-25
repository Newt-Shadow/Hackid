package f3;

import android.media.NotProvisionedException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.util.Pair;
import c3.t3;
import f3.b0;
import f3.n;
import f3.u;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import x4.d0;
import y4.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g implements n {

    /* renamed from: a  reason: collision with root package name */
    public final List f15623a;

    /* renamed from: b  reason: collision with root package name */
    private final b0 f15624b;

    /* renamed from: c  reason: collision with root package name */
    private final a f15625c;

    /* renamed from: d  reason: collision with root package name */
    private final b f15626d;

    /* renamed from: e  reason: collision with root package name */
    private final int f15627e;

    /* renamed from: f  reason: collision with root package name */
    private final boolean f15628f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f15629g;

    /* renamed from: h  reason: collision with root package name */
    private final HashMap f15630h;

    /* renamed from: i  reason: collision with root package name */
    private final y4.i f15631i;

    /* renamed from: j  reason: collision with root package name */
    private final x4.d0 f15632j;

    /* renamed from: k  reason: collision with root package name */
    private final t3 f15633k;

    /* renamed from: l  reason: collision with root package name */
    private final m0 f15634l;

    /* renamed from: m  reason: collision with root package name */
    private final UUID f15635m;

    /* renamed from: n  reason: collision with root package name */
    private final Looper f15636n;

    /* renamed from: o  reason: collision with root package name */
    private final e f15637o;

    /* renamed from: p  reason: collision with root package name */
    private int f15638p;

    /* renamed from: q  reason: collision with root package name */
    private int f15639q;

    /* renamed from: r  reason: collision with root package name */
    private HandlerThread f15640r;

    /* renamed from: s  reason: collision with root package name */
    private c f15641s;

    /* renamed from: t  reason: collision with root package name */
    private e3.b f15642t;

    /* renamed from: u  reason: collision with root package name */
    private n.a f15643u;

    /* renamed from: v  reason: collision with root package name */
    private byte[] f15644v;

    /* renamed from: w  reason: collision with root package name */
    private byte[] f15645w;

    /* renamed from: x  reason: collision with root package name */
    private b0.a f15646x;

    /* renamed from: y  reason: collision with root package name */
    private b0.d f15647y;

    /* loaded from: classes.dex */
    public interface a {
        void a(Exception exc, boolean z10);

        void b(g gVar);

        void c();
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(g gVar, int i10);

        void b(g gVar, int i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class c extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private boolean f15648a;

        public c(Looper looper) {
            super(looper);
        }

        private boolean a(Message message, n0 n0Var) {
            IOException fVar;
            d dVar = (d) message.obj;
            if (!dVar.f15651b) {
                return false;
            }
            int i10 = dVar.f15654e + 1;
            dVar.f15654e = i10;
            if (i10 > g.this.f15632j.d(3)) {
                return false;
            }
            d4.n nVar = new d4.n(dVar.f15650a, n0Var.f15724a, n0Var.f15725b, n0Var.f15726c, SystemClock.elapsedRealtime(), SystemClock.elapsedRealtime() - dVar.f15652c, n0Var.f15727d);
            d4.q qVar = new d4.q(3);
            if (n0Var.getCause() instanceof IOException) {
                fVar = (IOException) n0Var.getCause();
            } else {
                fVar = new f(n0Var.getCause());
            }
            long a10 = g.this.f15632j.a(new d0.c(nVar, qVar, fVar, dVar.f15654e));
            if (a10 == -9223372036854775807L) {
                return false;
            }
            synchronized (this) {
                if (this.f15648a) {
                    return false;
                }
                sendMessageDelayed(Message.obtain(message), a10);
                return true;
            }
        }

        void b(int i10, Object obj, boolean z10) {
            obtainMessage(i10, new d(d4.n.a(), z10, SystemClock.elapsedRealtime(), obj)).sendToTarget();
        }

        public synchronized void c() {
            removeCallbacksAndMessages(null);
            this.f15648a = true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Throwable, java.lang.Exception] */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr;
            d dVar = (d) message.obj;
            try {
                int i10 = message.what;
                if (i10 != 0) {
                    if (i10 == 1) {
                        bArr = g.this.f15634l.a(g.this.f15635m, (b0.a) dVar.f15653d);
                    } else {
                        throw new RuntimeException();
                    }
                } else {
                    bArr = g.this.f15634l.b(g.this.f15635m, (b0.d) dVar.f15653d);
                }
            } catch (n0 e10) {
                boolean a10 = a(message, e10);
                bArr = e10;
                if (a10) {
                    return;
                }
            } catch (Exception e11) {
                y4.r.j("DefaultDrmSession", "Key/provisioning request produced an unexpected exception. Not retrying.", e11);
                bArr = e11;
            }
            g.this.f15632j.c(dVar.f15650a);
            synchronized (this) {
                if (!this.f15648a) {
                    g.this.f15637o.obtainMessage(message.what, Pair.create(dVar.f15653d, bArr)).sendToTarget();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final long f15650a;

        /* renamed from: b  reason: collision with root package name */
        public final boolean f15651b;

        /* renamed from: c  reason: collision with root package name */
        public final long f15652c;

        /* renamed from: d  reason: collision with root package name */
        public final Object f15653d;

        /* renamed from: e  reason: collision with root package name */
        public int f15654e;

        public d(long j10, boolean z10, long j11, Object obj) {
            this.f15650a = j10;
            this.f15651b = z10;
            this.f15652c = j11;
            this.f15653d = obj;
        }
    }

    /* loaded from: classes.dex */
    private class e extends Handler {
        public e(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            Pair pair = (Pair) message.obj;
            Object obj = pair.first;
            Object obj2 = pair.second;
            int i10 = message.what;
            if (i10 == 0) {
                g.this.F(obj, obj2);
            } else if (i10 == 1) {
                g.this.z(obj, obj2);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class f extends IOException {
        public f(Throwable th) {
            super(th);
        }
    }

    public g(UUID uuid, b0 b0Var, a aVar, b bVar, List list, int i10, boolean z10, boolean z11, byte[] bArr, HashMap hashMap, m0 m0Var, Looper looper, x4.d0 d0Var, t3 t3Var) {
        if (i10 == 1 || i10 == 3) {
            y4.a.e(bArr);
        }
        this.f15635m = uuid;
        this.f15625c = aVar;
        this.f15626d = bVar;
        this.f15624b = b0Var;
        this.f15627e = i10;
        this.f15628f = z10;
        this.f15629g = z11;
        if (bArr != null) {
            this.f15645w = bArr;
            this.f15623a = null;
        } else {
            this.f15623a = Collections.unmodifiableList((List) y4.a.e(list));
        }
        this.f15630h = hashMap;
        this.f15634l = m0Var;
        this.f15631i = new y4.i();
        this.f15632j = d0Var;
        this.f15633k = t3Var;
        this.f15638p = 2;
        this.f15636n = looper;
        this.f15637o = new e(looper);
    }

    private void A(Exception exc, boolean z10) {
        int i10;
        if (exc instanceof NotProvisionedException) {
            this.f15625c.b(this);
            return;
        }
        if (z10) {
            i10 = 1;
        } else {
            i10 = 2;
        }
        y(exc, i10);
    }

    private void B() {
        if (this.f15627e == 0 && this.f15638p == 4) {
            q0.j(this.f15644v);
            s(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F(Object obj, Object obj2) {
        if (obj == this.f15647y) {
            if (this.f15638p == 2 || v()) {
                this.f15647y = null;
                if (obj2 instanceof Exception) {
                    this.f15625c.a((Exception) obj2, false);
                    return;
                }
                try {
                    this.f15624b.k((byte[]) obj2);
                    this.f15625c.c();
                } catch (Exception e10) {
                    this.f15625c.a(e10, true);
                }
            }
        }
    }

    private boolean G() {
        if (v()) {
            return true;
        }
        try {
            byte[] e10 = this.f15624b.e();
            this.f15644v = e10;
            this.f15624b.j(e10, this.f15633k);
            this.f15642t = this.f15624b.d(this.f15644v);
            this.f15638p = 3;
            r(new y4.h() { // from class: f3.d
                @Override // y4.h
                public final void accept(Object obj) {
                    ((u.a) obj).k(r1);
                }
            });
            y4.a.e(this.f15644v);
            return true;
        } catch (NotProvisionedException unused) {
            this.f15625c.b(this);
            return false;
        } catch (Exception e11) {
            y(e11, 1);
            return false;
        }
    }

    private void H(byte[] bArr, int i10, boolean z10) {
        try {
            this.f15646x = this.f15624b.l(bArr, this.f15623a, i10, this.f15630h);
            ((c) q0.j(this.f15641s)).b(1, y4.a.e(this.f15646x), z10);
        } catch (Exception e10) {
            A(e10, true);
        }
    }

    private boolean J() {
        try {
            this.f15624b.g(this.f15644v, this.f15645w);
            return true;
        } catch (Exception e10) {
            y(e10, 1);
            return false;
        }
    }

    private void K() {
        if (Thread.currentThread() != this.f15636n.getThread()) {
            y4.r.j("DefaultDrmSession", "DefaultDrmSession accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.f15636n.getThread().getName(), new IllegalStateException());
        }
    }

    private void r(y4.h hVar) {
        for (u.a aVar : this.f15631i.E()) {
            hVar.accept(aVar);
        }
    }

    private void s(boolean z10) {
        if (this.f15629g) {
            return;
        }
        byte[] bArr = (byte[]) q0.j(this.f15644v);
        int i10 = this.f15627e;
        if (i10 != 0 && i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    y4.a.e(this.f15645w);
                    y4.a.e(this.f15644v);
                    H(this.f15645w, 3, z10);
                }
            } else if (this.f15645w == null || J()) {
                H(bArr, 2, z10);
            }
        } else if (this.f15645w == null) {
            H(bArr, 1, z10);
        } else if (this.f15638p == 4 || J()) {
            long t10 = t();
            if (this.f15627e == 0 && t10 <= 60) {
                y4.r.b("DefaultDrmSession", "Offline license has expired or will expire soon. Remaining seconds: " + t10);
                H(bArr, 2, z10);
            } else if (t10 <= 0) {
                y(new l0(), 2);
            } else {
                this.f15638p = 4;
                r(new y4.h() { // from class: f3.f
                    @Override // y4.h
                    public final void accept(Object obj) {
                        ((u.a) obj).j();
                    }
                });
            }
        }
    }

    private long t() {
        if (!b3.s.f4354d.equals(this.f15635m)) {
            return Long.MAX_VALUE;
        }
        Pair pair = (Pair) y4.a.e(p0.b(this));
        return Math.min(((Long) pair.first).longValue(), ((Long) pair.second).longValue());
    }

    private boolean v() {
        int i10 = this.f15638p;
        if (i10 != 3 && i10 != 4) {
            return false;
        }
        return true;
    }

    private void y(final Exception exc, int i10) {
        this.f15643u = new n.a(exc, y.a(exc, i10));
        y4.r.d("DefaultDrmSession", "DRM session error", exc);
        r(new y4.h() { // from class: f3.e
            @Override // y4.h
            public final void accept(Object obj) {
                ((u.a) obj).l(exc);
            }
        });
        if (this.f15638p != 4) {
            this.f15638p = 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z(Object obj, Object obj2) {
        if (obj == this.f15646x && v()) {
            this.f15646x = null;
            if (obj2 instanceof Exception) {
                A((Exception) obj2, false);
                return;
            }
            try {
                byte[] bArr = (byte[]) obj2;
                if (this.f15627e == 3) {
                    this.f15624b.i((byte[]) q0.j(this.f15645w), bArr);
                    r(new y4.h() { // from class: f3.b
                        @Override // y4.h
                        public final void accept(Object obj3) {
                            ((u.a) obj3).i();
                        }
                    });
                    return;
                }
                byte[] i10 = this.f15624b.i(this.f15644v, bArr);
                int i11 = this.f15627e;
                if ((i11 == 2 || (i11 == 0 && this.f15645w != null)) && i10 != null && i10.length != 0) {
                    this.f15645w = i10;
                }
                this.f15638p = 4;
                r(new y4.h() { // from class: f3.c
                    @Override // y4.h
                    public final void accept(Object obj3) {
                        ((u.a) obj3).h();
                    }
                });
            } catch (Exception e10) {
                A(e10, true);
            }
        }
    }

    public void C(int i10) {
        if (i10 == 2) {
            B();
        }
    }

    public void D() {
        if (G()) {
            s(true);
        }
    }

    public void E(Exception exc, boolean z10) {
        int i10;
        if (z10) {
            i10 = 1;
        } else {
            i10 = 3;
        }
        y(exc, i10);
    }

    public void I() {
        this.f15647y = this.f15624b.c();
        ((c) q0.j(this.f15641s)).b(0, y4.a.e(this.f15647y), true);
    }

    @Override // f3.n
    public void a(u.a aVar) {
        K();
        boolean z10 = false;
        if (this.f15639q < 0) {
            y4.r.c("DefaultDrmSession", "Session reference count less than zero: " + this.f15639q);
            this.f15639q = 0;
        }
        if (aVar != null) {
            this.f15631i.d(aVar);
        }
        int i10 = this.f15639q + 1;
        this.f15639q = i10;
        if (i10 == 1) {
            if (this.f15638p == 2) {
                z10 = true;
            }
            y4.a.f(z10);
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:DrmRequestHandler");
            this.f15640r = handlerThread;
            handlerThread.start();
            this.f15641s = new c(this.f15640r.getLooper());
            if (G()) {
                s(true);
            }
        } else if (aVar != null && v() && this.f15631i.g(aVar) == 1) {
            aVar.k(this.f15638p);
        }
        this.f15626d.b(this, this.f15639q);
    }

    @Override // f3.n
    public final UUID b() {
        K();
        return this.f15635m;
    }

    @Override // f3.n
    public boolean c() {
        K();
        return this.f15628f;
    }

    @Override // f3.n
    public Map e() {
        K();
        byte[] bArr = this.f15644v;
        if (bArr == null) {
            return null;
        }
        return this.f15624b.a(bArr);
    }

    @Override // f3.n
    public void f(u.a aVar) {
        K();
        int i10 = this.f15639q;
        if (i10 <= 0) {
            y4.r.c("DefaultDrmSession", "release() called on a session that's already fully released.");
            return;
        }
        int i11 = i10 - 1;
        this.f15639q = i11;
        if (i11 == 0) {
            this.f15638p = 0;
            ((e) q0.j(this.f15637o)).removeCallbacksAndMessages(null);
            ((c) q0.j(this.f15641s)).c();
            this.f15641s = null;
            ((HandlerThread) q0.j(this.f15640r)).quit();
            this.f15640r = null;
            this.f15642t = null;
            this.f15643u = null;
            this.f15646x = null;
            this.f15647y = null;
            byte[] bArr = this.f15644v;
            if (bArr != null) {
                this.f15624b.h(bArr);
                this.f15644v = null;
            }
        }
        if (aVar != null) {
            this.f15631i.i(aVar);
            if (this.f15631i.g(aVar) == 0) {
                aVar.m();
            }
        }
        this.f15626d.a(this, this.f15639q);
    }

    @Override // f3.n
    public boolean g(String str) {
        K();
        return this.f15624b.f((byte[]) y4.a.h(this.f15644v), str);
    }

    @Override // f3.n
    public final int getState() {
        K();
        return this.f15638p;
    }

    @Override // f3.n
    public final n.a h() {
        K();
        if (this.f15638p == 1) {
            return this.f15643u;
        }
        return null;
    }

    @Override // f3.n
    public final e3.b i() {
        K();
        return this.f15642t;
    }

    public boolean u(byte[] bArr) {
        K();
        return Arrays.equals(this.f15644v, bArr);
    }
}
