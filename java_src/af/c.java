package af;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public class c extends b1 {

    /* renamed from: i  reason: collision with root package name */
    public static final a f358i = new a(null);

    /* renamed from: j  reason: collision with root package name */
    private static final ReentrantLock f359j;

    /* renamed from: k  reason: collision with root package name */
    private static final Condition f360k;

    /* renamed from: l  reason: collision with root package name */
    private static final long f361l;

    /* renamed from: m  reason: collision with root package name */
    private static final long f362m;

    /* renamed from: n  reason: collision with root package name */
    private static c f363n;

    /* renamed from: f  reason: collision with root package name */
    private boolean f364f;

    /* renamed from: g  reason: collision with root package name */
    private c f365g;

    /* renamed from: h  reason: collision with root package name */
    private long f366h;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean d(c cVar) {
            ReentrantLock f10 = c.f358i.f();
            f10.lock();
            try {
                if (cVar.f364f) {
                    cVar.f364f = false;
                    for (c cVar2 = c.f363n; cVar2 != null; cVar2 = cVar2.f365g) {
                        if (cVar2.f365g == cVar) {
                            cVar2.f365g = cVar.f365g;
                            cVar.f365g = null;
                            return false;
                        }
                    }
                    f10.unlock();
                    return true;
                }
                return false;
            } finally {
                f10.unlock();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void g(c cVar, long j10, boolean z10) {
            ReentrantLock f10 = c.f358i.f();
            f10.lock();
            try {
                if (!cVar.f364f) {
                    cVar.f364f = true;
                    if (c.f363n == null) {
                        c.f363n = new c();
                        new b().start();
                    }
                    long nanoTime = System.nanoTime();
                    int i10 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
                    if (i10 != 0 && z10) {
                        cVar.f366h = Math.min(j10, cVar.c() - nanoTime) + nanoTime;
                    } else if (i10 != 0) {
                        cVar.f366h = j10 + nanoTime;
                    } else if (z10) {
                        cVar.f366h = cVar.c();
                    } else {
                        throw new AssertionError();
                    }
                    long y10 = cVar.y(nanoTime);
                    c cVar2 = c.f363n;
                    kotlin.jvm.internal.m.b(cVar2);
                    while (cVar2.f365g != null) {
                        c cVar3 = cVar2.f365g;
                        kotlin.jvm.internal.m.b(cVar3);
                        if (y10 < cVar3.y(nanoTime)) {
                            break;
                        }
                        cVar2 = cVar2.f365g;
                        kotlin.jvm.internal.m.b(cVar2);
                    }
                    cVar.f365g = cVar2.f365g;
                    cVar2.f365g = cVar;
                    if (cVar2 == c.f363n) {
                        c.f358i.e().signal();
                    }
                    xc.t tVar = xc.t.f32733a;
                    return;
                }
                throw new IllegalStateException("Unbalanced enter/exit".toString());
            } finally {
                f10.unlock();
            }
        }

        public final c c() {
            c cVar = c.f363n;
            kotlin.jvm.internal.m.b(cVar);
            c cVar2 = cVar.f365g;
            if (cVar2 != null) {
                long y10 = cVar2.y(System.nanoTime());
                if (y10 <= 0) {
                    c cVar3 = c.f363n;
                    kotlin.jvm.internal.m.b(cVar3);
                    cVar3.f365g = cVar2.f365g;
                    cVar2.f365g = null;
                    return cVar2;
                }
                e().await(y10, TimeUnit.NANOSECONDS);
                return null;
            }
            long nanoTime = System.nanoTime();
            e().await(c.f361l, TimeUnit.MILLISECONDS);
            c cVar4 = c.f363n;
            kotlin.jvm.internal.m.b(cVar4);
            if (cVar4.f365g == null && System.nanoTime() - nanoTime >= c.f362m) {
                return c.f363n;
            }
            return null;
        }

        public final Condition e() {
            return c.f360k;
        }

        public final ReentrantLock f() {
            return c.f359j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b extends Thread {
        public b() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            ReentrantLock f10;
            c c10;
            while (true) {
                try {
                    a aVar = c.f358i;
                    f10 = aVar.f();
                    f10.lock();
                    c10 = aVar.c();
                } catch (InterruptedException unused) {
                }
                if (c10 == c.f363n) {
                    c.f363n = null;
                    f10.unlock();
                    return;
                }
                xc.t tVar = xc.t.f32733a;
                f10.unlock();
                if (c10 != null) {
                    c10.B();
                }
            }
        }
    }

    /* renamed from: af.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0010c implements y0 {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ y0 f368b;

        C0010c(y0 y0Var) {
            this.f368b = y0Var;
        }

        @Override // af.y0
        /* renamed from: a */
        public c n() {
            return c.this;
        }

        @Override // af.y0
        public void c0(af.d source, long j10) {
            kotlin.jvm.internal.m.e(source, "source");
            af.b.b(source.k0(), 0L, j10);
            while (true) {
                long j11 = 0;
                if (j10 > 0) {
                    v0 v0Var = source.f371a;
                    kotlin.jvm.internal.m.b(v0Var);
                    while (true) {
                        if (j11 >= 65536) {
                            break;
                        }
                        j11 += v0Var.f457c - v0Var.f456b;
                        if (j11 >= j10) {
                            j11 = j10;
                            break;
                        } else {
                            v0Var = v0Var.f460f;
                            kotlin.jvm.internal.m.b(v0Var);
                        }
                    }
                    c cVar = c.this;
                    y0 y0Var = this.f368b;
                    cVar.v();
                    try {
                        y0Var.c0(source, j11);
                        xc.t tVar = xc.t.f32733a;
                        if (!cVar.w()) {
                            j10 -= j11;
                        } else {
                            throw cVar.p(null);
                        }
                    } catch (IOException e10) {
                        if (!cVar.w()) {
                            throw e10;
                        }
                        throw cVar.p(e10);
                    } finally {
                        cVar.w();
                    }
                } else {
                    return;
                }
            }
        }

        @Override // af.y0, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            c cVar = c.this;
            y0 y0Var = this.f368b;
            cVar.v();
            try {
                y0Var.close();
                xc.t tVar = xc.t.f32733a;
                if (!cVar.w()) {
                    return;
                }
                throw cVar.p(null);
            } catch (IOException e10) {
                if (!cVar.w()) {
                    throw e10;
                }
                throw cVar.p(e10);
            } finally {
                cVar.w();
            }
        }

        @Override // af.y0, java.io.Flushable
        public void flush() {
            c cVar = c.this;
            y0 y0Var = this.f368b;
            cVar.v();
            try {
                y0Var.flush();
                xc.t tVar = xc.t.f32733a;
                if (!cVar.w()) {
                    return;
                }
                throw cVar.p(null);
            } catch (IOException e10) {
                if (!cVar.w()) {
                    throw e10;
                }
                throw cVar.p(e10);
            } finally {
                cVar.w();
            }
        }

        public String toString() {
            return "AsyncTimeout.sink(" + this.f368b + ')';
        }
    }

    /* loaded from: classes2.dex */
    public static final class d implements a1 {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ a1 f370b;

        d(a1 a1Var) {
            this.f370b = a1Var;
        }

        @Override // af.a1
        public long L0(af.d sink, long j10) {
            kotlin.jvm.internal.m.e(sink, "sink");
            c cVar = c.this;
            a1 a1Var = this.f370b;
            cVar.v();
            try {
                long L0 = a1Var.L0(sink, j10);
                if (!cVar.w()) {
                    return L0;
                }
                throw cVar.p(null);
            } catch (IOException e10) {
                if (!cVar.w()) {
                    throw e10;
                }
                throw cVar.p(e10);
            } finally {
                cVar.w();
            }
        }

        @Override // af.a1
        /* renamed from: a */
        public c n() {
            return c.this;
        }

        @Override // af.a1, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            c cVar = c.this;
            a1 a1Var = this.f370b;
            cVar.v();
            try {
                a1Var.close();
                xc.t tVar = xc.t.f32733a;
                if (!cVar.w()) {
                    return;
                }
                throw cVar.p(null);
            } catch (IOException e10) {
                if (!cVar.w()) {
                    throw e10;
                }
                throw cVar.p(e10);
            } finally {
                cVar.w();
            }
        }

        public String toString() {
            return "AsyncTimeout.source(" + this.f370b + ')';
        }
    }

    static {
        ReentrantLock reentrantLock = new ReentrantLock();
        f359j = reentrantLock;
        Condition newCondition = reentrantLock.newCondition();
        kotlin.jvm.internal.m.d(newCondition, "lock.newCondition()");
        f360k = newCondition;
        long millis = TimeUnit.SECONDS.toMillis(60L);
        f361l = millis;
        f362m = TimeUnit.MILLISECONDS.toNanos(millis);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long y(long j10) {
        return this.f366h - j10;
    }

    public final a1 A(a1 source) {
        kotlin.jvm.internal.m.e(source, "source");
        return new d(source);
    }

    protected void B() {
    }

    public final IOException p(IOException iOException) {
        return x(iOException);
    }

    public final void v() {
        long h10 = h();
        boolean e10 = e();
        if (h10 != 0 || e10) {
            f358i.g(this, h10, e10);
        }
    }

    public final boolean w() {
        return f358i.d(this);
    }

    protected IOException x(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    public final y0 z(y0 sink) {
        kotlin.jvm.internal.m.e(sink, "sink");
        return new C0010c(sink);
    }
}
