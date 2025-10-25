package z4;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.view.Choreographer;
import android.view.Display;
import android.view.Surface;
import android.view.WindowManager;
import y4.q0;
/* loaded from: classes.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final z4.e f33489a = new z4.e();

    /* renamed from: b  reason: collision with root package name */
    private final b f33490b;

    /* renamed from: c  reason: collision with root package name */
    private final e f33491c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f33492d;

    /* renamed from: e  reason: collision with root package name */
    private Surface f33493e;

    /* renamed from: f  reason: collision with root package name */
    private float f33494f;

    /* renamed from: g  reason: collision with root package name */
    private float f33495g;

    /* renamed from: h  reason: collision with root package name */
    private float f33496h;

    /* renamed from: i  reason: collision with root package name */
    private float f33497i;

    /* renamed from: j  reason: collision with root package name */
    private int f33498j;

    /* renamed from: k  reason: collision with root package name */
    private long f33499k;

    /* renamed from: l  reason: collision with root package name */
    private long f33500l;

    /* renamed from: m  reason: collision with root package name */
    private long f33501m;

    /* renamed from: n  reason: collision with root package name */
    private long f33502n;

    /* renamed from: o  reason: collision with root package name */
    private long f33503o;

    /* renamed from: p  reason: collision with root package name */
    private long f33504p;

    /* renamed from: q  reason: collision with root package name */
    private long f33505q;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {
        public static void a(Surface surface, float f10) {
            int i10;
            if (f10 == 0.0f) {
                i10 = 0;
            } else {
                i10 = 1;
            }
            try {
                surface.setFrameRate(f10, i10);
            } catch (IllegalStateException e10) {
                y4.r.d("VideoFrameReleaseHelper", "Failed to call Surface.setFrameRate", e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface b {

        /* loaded from: classes.dex */
        public interface a {
            void a(Display display);
        }

        void a(a aVar);

        void b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements b {

        /* renamed from: a  reason: collision with root package name */
        private final WindowManager f33506a;

        private c(WindowManager windowManager) {
            this.f33506a = windowManager;
        }

        public static b c(Context context) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new c(windowManager);
            }
            return null;
        }

        @Override // z4.n.b
        public void a(b.a aVar) {
            aVar.a(this.f33506a.getDefaultDisplay());
        }

        @Override // z4.n.b
        public void b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d implements b, DisplayManager.DisplayListener {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayManager f33507a;

        /* renamed from: b  reason: collision with root package name */
        private b.a f33508b;

        private d(DisplayManager displayManager) {
            this.f33507a = displayManager;
        }

        private Display c() {
            return this.f33507a.getDisplay(0);
        }

        public static b d(Context context) {
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                return new d(displayManager);
            }
            return null;
        }

        @Override // z4.n.b
        public void a(b.a aVar) {
            this.f33508b = aVar;
            this.f33507a.registerDisplayListener(this, q0.w());
            aVar.a(c());
        }

        @Override // z4.n.b
        public void b() {
            this.f33507a.unregisterDisplayListener(this);
            this.f33508b = null;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i10) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i10) {
            b.a aVar = this.f33508b;
            if (aVar != null && i10 == 0) {
                aVar.a(c());
            }
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i10) {
        }
    }

    /* loaded from: classes.dex */
    private static final class e implements Choreographer.FrameCallback, Handler.Callback {

        /* renamed from: f  reason: collision with root package name */
        private static final e f33509f = new e();

        /* renamed from: a  reason: collision with root package name */
        public volatile long f33510a = -9223372036854775807L;

        /* renamed from: b  reason: collision with root package name */
        private final Handler f33511b;

        /* renamed from: c  reason: collision with root package name */
        private final HandlerThread f33512c;

        /* renamed from: d  reason: collision with root package name */
        private Choreographer f33513d;

        /* renamed from: e  reason: collision with root package name */
        private int f33514e;

        private e() {
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.f33512c = handlerThread;
            handlerThread.start();
            Handler v10 = q0.v(handlerThread.getLooper(), this);
            this.f33511b = v10;
            v10.sendEmptyMessage(0);
        }

        private void b() {
            Choreographer choreographer = this.f33513d;
            if (choreographer != null) {
                int i10 = this.f33514e + 1;
                this.f33514e = i10;
                if (i10 == 1) {
                    choreographer.postFrameCallback(this);
                }
            }
        }

        private void c() {
            try {
                this.f33513d = Choreographer.getInstance();
            } catch (RuntimeException e10) {
                y4.r.j("VideoFrameReleaseHelper", "Vsync sampling disabled due to platform error", e10);
            }
        }

        public static e d() {
            return f33509f;
        }

        private void f() {
            Choreographer choreographer = this.f33513d;
            if (choreographer != null) {
                int i10 = this.f33514e - 1;
                this.f33514e = i10;
                if (i10 == 0) {
                    choreographer.removeFrameCallback(this);
                    this.f33510a = -9223372036854775807L;
                }
            }
        }

        public void a() {
            this.f33511b.sendEmptyMessage(1);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j10) {
            this.f33510a = j10;
            ((Choreographer) y4.a.e(this.f33513d)).postFrameCallbackDelayed(this, 500L);
        }

        public void e() {
            this.f33511b.sendEmptyMessage(2);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 != 2) {
                        return false;
                    }
                    f();
                    return true;
                }
                b();
                return true;
            }
            c();
            return true;
        }
    }

    public n(Context context) {
        e eVar;
        b f10 = f(context);
        this.f33490b = f10;
        if (f10 != null) {
            eVar = e.d();
        } else {
            eVar = null;
        }
        this.f33491c = eVar;
        this.f33499k = -9223372036854775807L;
        this.f33500l = -9223372036854775807L;
        this.f33494f = -1.0f;
        this.f33497i = 1.0f;
        this.f33498j = 0;
    }

    private static boolean c(long j10, long j11) {
        if (Math.abs(j10 - j11) <= 20000000) {
            return true;
        }
        return false;
    }

    private void d() {
        Surface surface;
        if (q0.f32946a >= 30 && (surface = this.f33493e) != null && this.f33498j != Integer.MIN_VALUE && this.f33496h != 0.0f) {
            this.f33496h = 0.0f;
            a.a(surface, 0.0f);
        }
    }

    private static long e(long j10, long j11, long j12) {
        long j13;
        long j14 = j11 + (((j10 - j11) / j12) * j12);
        if (j10 <= j14) {
            j13 = j14 - j12;
        } else {
            j14 = j12 + j14;
            j13 = j14;
        }
        if (j14 - j10 >= j10 - j13) {
            return j13;
        }
        return j14;
    }

    private static b f(Context context) {
        b bVar = null;
        if (context == null) {
            return null;
        }
        Context applicationContext = context.getApplicationContext();
        if (q0.f32946a >= 17) {
            bVar = d.d(applicationContext);
        }
        if (bVar == null) {
            return c.c(applicationContext);
        }
        return bVar;
    }

    private void n() {
        this.f33501m = 0L;
        this.f33504p = -1L;
        this.f33502n = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            this.f33499k = refreshRate;
            this.f33500l = (refreshRate * 80) / 100;
            return;
        }
        y4.r.i("VideoFrameReleaseHelper", "Unable to query display refresh rate");
        this.f33499k = -9223372036854775807L;
        this.f33500l = -9223372036854775807L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x005c, code lost:
        if (java.lang.Math.abs(r0 - r7.f33495g) >= r1) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x005f, code lost:
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006a, code lost:
        if (r7.f33489a.c() >= 30) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void q() {
        /*
            r7 = this;
            int r0 = y4.q0.f32946a
            r1 = 30
            if (r0 < r1) goto L73
            android.view.Surface r0 = r7.f33493e
            if (r0 != 0) goto Lc
            goto L73
        Lc:
            z4.e r0 = r7.f33489a
            boolean r0 = r0.e()
            if (r0 == 0) goto L1b
            z4.e r0 = r7.f33489a
            float r0 = r0.b()
            goto L1d
        L1b:
            float r0 = r7.f33494f
        L1d:
            float r2 = r7.f33495g
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 != 0) goto L24
            return
        L24:
            r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            int r4 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            r5 = 0
            r6 = 1
            if (r4 == 0) goto L61
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 == 0) goto L61
            z4.e r1 = r7.f33489a
            boolean r1 = r1.e()
            if (r1 == 0) goto L49
            z4.e r1 = r7.f33489a
            long r1 = r1.d()
            r3 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 < 0) goto L49
            r1 = r6
            goto L4a
        L49:
            r1 = r5
        L4a:
            if (r1 == 0) goto L50
            r1 = 1017370378(0x3ca3d70a, float:0.02)
            goto L52
        L50:
            r1 = 1065353216(0x3f800000, float:1.0)
        L52:
            float r2 = r7.f33495g
            float r2 = r0 - r2
            float r2 = java.lang.Math.abs(r2)
            int r1 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r1 < 0) goto L5f
            goto L6c
        L5f:
            r6 = r5
            goto L6c
        L61:
            if (r4 == 0) goto L64
            goto L6c
        L64:
            z4.e r2 = r7.f33489a
            int r2 = r2.c()
            if (r2 < r1) goto L5f
        L6c:
            if (r6 == 0) goto L73
            r7.f33495g = r0
            r7.r(r5)
        L73:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: z4.n.q():void");
    }

    private void r(boolean z10) {
        Surface surface;
        float f10;
        if (q0.f32946a >= 30 && (surface = this.f33493e) != null && this.f33498j != Integer.MIN_VALUE) {
            if (this.f33492d) {
                float f11 = this.f33495g;
                if (f11 != -1.0f) {
                    f10 = f11 * this.f33497i;
                    if (z10 && this.f33496h == f10) {
                        return;
                    }
                    this.f33496h = f10;
                    a.a(surface, f10);
                }
            }
            f10 = 0.0f;
            if (z10) {
            }
            this.f33496h = f10;
            a.a(surface, f10);
        }
    }

    public long b(long j10) {
        long j11;
        e eVar;
        if (this.f33504p != -1 && this.f33489a.e()) {
            long a10 = this.f33505q + (((float) (this.f33489a.a() * (this.f33501m - this.f33504p))) / this.f33497i);
            if (c(j10, a10)) {
                j11 = a10;
                this.f33502n = this.f33501m;
                this.f33503o = j11;
                eVar = this.f33491c;
                if (eVar == null && this.f33499k != -9223372036854775807L) {
                    long j12 = eVar.f33510a;
                    if (j12 == -9223372036854775807L) {
                        return j11;
                    }
                    return e(j11, j12, this.f33499k) - this.f33500l;
                }
                return j11;
            }
            n();
        }
        j11 = j10;
        this.f33502n = this.f33501m;
        this.f33503o = j11;
        eVar = this.f33491c;
        if (eVar == null) {
        }
        return j11;
    }

    public void g(float f10) {
        this.f33494f = f10;
        this.f33489a.g();
        q();
    }

    public void h(long j10) {
        long j11 = this.f33502n;
        if (j11 != -1) {
            this.f33504p = j11;
            this.f33505q = this.f33503o;
        }
        this.f33501m++;
        this.f33489a.f(j10 * 1000);
        q();
    }

    public void i(float f10) {
        this.f33497i = f10;
        n();
        r(false);
    }

    public void j() {
        n();
    }

    public void k() {
        this.f33492d = true;
        n();
        if (this.f33490b != null) {
            ((e) y4.a.e(this.f33491c)).a();
            this.f33490b.a(new b.a() { // from class: z4.l
                @Override // z4.n.b.a
                public final void a(Display display) {
                    n.this.p(display);
                }
            });
        }
        r(false);
    }

    public void l() {
        this.f33492d = false;
        b bVar = this.f33490b;
        if (bVar != null) {
            bVar.b();
            ((e) y4.a.e(this.f33491c)).e();
        }
        d();
    }

    public void m(Surface surface) {
        if (surface instanceof j) {
            surface = null;
        }
        if (this.f33493e == surface) {
            return;
        }
        d();
        this.f33493e = surface;
        r(true);
    }

    public void o(int i10) {
        if (this.f33498j == i10) {
            return;
        }
        this.f33498j = i10;
        r(true);
    }
}
