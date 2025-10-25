package x4;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.arthenica.ffmpegkit.AbstractSession;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import y4.q0;
/* loaded from: classes.dex */
public final class e0 implements f0 {

    /* renamed from: d  reason: collision with root package name */
    public static final c f32301d = h(false, -9223372036854775807L);

    /* renamed from: e  reason: collision with root package name */
    public static final c f32302e = h(true, -9223372036854775807L);

    /* renamed from: f  reason: collision with root package name */
    public static final c f32303f = new c(2, -9223372036854775807L);

    /* renamed from: g  reason: collision with root package name */
    public static final c f32304g = new c(3, -9223372036854775807L);

    /* renamed from: a  reason: collision with root package name */
    private final ExecutorService f32305a;

    /* renamed from: b  reason: collision with root package name */
    private d f32306b;

    /* renamed from: c  reason: collision with root package name */
    private IOException f32307c;

    /* loaded from: classes.dex */
    public interface b {
        c h(e eVar, long j10, long j11, IOException iOException, int i10);

        void o(e eVar, long j10, long j11);

        void s(e eVar, long j10, long j11, boolean z10);
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f32308a;

        /* renamed from: b  reason: collision with root package name */
        private final long f32309b;

        public boolean c() {
            int i10 = this.f32308a;
            if (i10 == 0 || i10 == 1) {
                return true;
            }
            return false;
        }

        private c(int i10, long j10) {
            this.f32308a = i10;
            this.f32309b = j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class d extends Handler implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final int f32310a;

        /* renamed from: b  reason: collision with root package name */
        private final e f32311b;

        /* renamed from: c  reason: collision with root package name */
        private final long f32312c;

        /* renamed from: d  reason: collision with root package name */
        private b f32313d;

        /* renamed from: e  reason: collision with root package name */
        private IOException f32314e;

        /* renamed from: f  reason: collision with root package name */
        private int f32315f;

        /* renamed from: g  reason: collision with root package name */
        private Thread f32316g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f32317h;

        /* renamed from: i  reason: collision with root package name */
        private volatile boolean f32318i;

        public d(Looper looper, e eVar, b bVar, int i10, long j10) {
            super(looper);
            this.f32311b = eVar;
            this.f32313d = bVar;
            this.f32310a = i10;
            this.f32312c = j10;
        }

        private void b() {
            this.f32314e = null;
            e0.this.f32305a.execute((Runnable) y4.a.e(e0.this.f32306b));
        }

        private void c() {
            e0.this.f32306b = null;
        }

        private long d() {
            return Math.min((this.f32315f - 1) * 1000, (int) AbstractSession.DEFAULT_TIMEOUT_FOR_ASYNCHRONOUS_MESSAGES_IN_TRANSMIT);
        }

        public void a(boolean z10) {
            this.f32318i = z10;
            this.f32314e = null;
            if (hasMessages(0)) {
                this.f32317h = true;
                removeMessages(0);
                if (!z10) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    this.f32317h = true;
                    this.f32311b.c();
                    Thread thread = this.f32316g;
                    if (thread != null) {
                        thread.interrupt();
                    }
                }
            }
            if (z10) {
                c();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                ((b) y4.a.e(this.f32313d)).s(this.f32311b, elapsedRealtime, elapsedRealtime - this.f32312c, true);
                this.f32313d = null;
            }
        }

        public void e(int i10) {
            IOException iOException = this.f32314e;
            if (iOException != null && this.f32315f > i10) {
                throw iOException;
            }
        }

        public void f(long j10) {
            boolean z10;
            if (e0.this.f32306b == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.f(z10);
            e0.this.f32306b = this;
            if (j10 > 0) {
                sendEmptyMessageDelayed(0, j10);
            } else {
                b();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            long d10;
            if (this.f32318i) {
                return;
            }
            int i10 = message.what;
            if (i10 == 0) {
                b();
            } else if (i10 != 3) {
                c();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j10 = elapsedRealtime - this.f32312c;
                b bVar = (b) y4.a.e(this.f32313d);
                if (this.f32317h) {
                    bVar.s(this.f32311b, elapsedRealtime, j10, false);
                    return;
                }
                int i11 = message.what;
                if (i11 != 1) {
                    if (i11 == 2) {
                        IOException iOException = (IOException) message.obj;
                        this.f32314e = iOException;
                        int i12 = this.f32315f + 1;
                        this.f32315f = i12;
                        c h10 = bVar.h(this.f32311b, elapsedRealtime, j10, iOException, i12);
                        if (h10.f32308a == 3) {
                            e0.this.f32307c = this.f32314e;
                            return;
                        } else if (h10.f32308a != 2) {
                            if (h10.f32308a == 1) {
                                this.f32315f = 1;
                            }
                            if (h10.f32309b != -9223372036854775807L) {
                                d10 = h10.f32309b;
                            } else {
                                d10 = d();
                            }
                            f(d10);
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                try {
                    bVar.o(this.f32311b, elapsedRealtime, j10);
                } catch (RuntimeException e10) {
                    y4.r.d("LoadTask", "Unexpected exception handling load completed", e10);
                    e0.this.f32307c = new h(e10);
                }
            } else {
                throw ((Error) message.obj);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z10;
            try {
                synchronized (this) {
                    if (!this.f32317h) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    this.f32316g = Thread.currentThread();
                }
                if (z10) {
                    y4.n0.a("load:" + this.f32311b.getClass().getSimpleName());
                    try {
                        this.f32311b.a();
                        y4.n0.c();
                    } catch (Throwable th) {
                        y4.n0.c();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.f32316g = null;
                    Thread.interrupted();
                }
                if (!this.f32318i) {
                    sendEmptyMessage(1);
                }
            } catch (IOException e10) {
                if (!this.f32318i) {
                    obtainMessage(2, e10).sendToTarget();
                }
            } catch (Error e11) {
                if (!this.f32318i) {
                    y4.r.d("LoadTask", "Unexpected error loading stream", e11);
                    obtainMessage(3, e11).sendToTarget();
                }
                throw e11;
            } catch (Exception e12) {
                if (!this.f32318i) {
                    y4.r.d("LoadTask", "Unexpected exception loading stream", e12);
                    obtainMessage(2, new h(e12)).sendToTarget();
                }
            } catch (OutOfMemoryError e13) {
                if (!this.f32318i) {
                    y4.r.d("LoadTask", "OutOfMemory error loading stream", e13);
                    obtainMessage(2, new h(e13)).sendToTarget();
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public interface e {
        void a();

        void c();
    }

    /* loaded from: classes.dex */
    public interface f {
        void g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final f f32320a;

        public g(f fVar) {
            this.f32320a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f32320a.g();
        }
    }

    /* loaded from: classes.dex */
    public static final class h extends IOException {
        public h(Throwable th) {
            super("Unexpected " + th.getClass().getSimpleName() + ": " + th.getMessage(), th);
        }
    }

    public e0(String str) {
        this.f32305a = q0.B0("ExoPlayer:Loader:" + str);
    }

    public static c h(boolean z10, long j10) {
        return new c(z10 ? 1 : 0, j10);
    }

    @Override // x4.f0
    public void a() {
        k(Integer.MIN_VALUE);
    }

    public void f() {
        ((d) y4.a.h(this.f32306b)).a(false);
    }

    public void g() {
        this.f32307c = null;
    }

    public boolean i() {
        if (this.f32307c != null) {
            return true;
        }
        return false;
    }

    public boolean j() {
        if (this.f32306b != null) {
            return true;
        }
        return false;
    }

    public void k(int i10) {
        IOException iOException = this.f32307c;
        if (iOException == null) {
            d dVar = this.f32306b;
            if (dVar != null) {
                if (i10 == Integer.MIN_VALUE) {
                    i10 = dVar.f32310a;
                }
                dVar.e(i10);
                return;
            }
            return;
        }
        throw iOException;
    }

    public void l() {
        m(null);
    }

    public void m(f fVar) {
        d dVar = this.f32306b;
        if (dVar != null) {
            dVar.a(true);
        }
        if (fVar != null) {
            this.f32305a.execute(new g(fVar));
        }
        this.f32305a.shutdown();
    }

    public long n(e eVar, b bVar, int i10) {
        this.f32307c = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new d((Looper) y4.a.h(Looper.myLooper()), eVar, bVar, i10, elapsedRealtime).f(0L);
        return elapsedRealtime;
    }
}
