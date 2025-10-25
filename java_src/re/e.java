package re;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import xc.t;
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: h  reason: collision with root package name */
    public static final b f29138h = new b(null);

    /* renamed from: i  reason: collision with root package name */
    public static final e f29139i = new e(new c(oe.d.L(m.l(oe.d.f27590i, " TaskRunner"), true)));

    /* renamed from: j  reason: collision with root package name */
    private static final Logger f29140j;

    /* renamed from: a  reason: collision with root package name */
    private final a f29141a;

    /* renamed from: b  reason: collision with root package name */
    private int f29142b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29143c;

    /* renamed from: d  reason: collision with root package name */
    private long f29144d;

    /* renamed from: e  reason: collision with root package name */
    private final List f29145e;

    /* renamed from: f  reason: collision with root package name */
    private final List f29146f;

    /* renamed from: g  reason: collision with root package name */
    private final Runnable f29147g;

    /* loaded from: classes2.dex */
    public interface a {
        long a();

        void b(e eVar);

        void c(e eVar, long j10);

        void execute(Runnable runnable);
    }

    /* loaded from: classes2.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Logger a() {
            return e.f29140j;
        }
    }

    /* loaded from: classes2.dex */
    public static final class c implements a {

        /* renamed from: a  reason: collision with root package name */
        private final ThreadPoolExecutor f29148a;

        public c(ThreadFactory threadFactory) {
            m.e(threadFactory, "threadFactory");
            this.f29148a = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), threadFactory);
        }

        @Override // re.e.a
        public long a() {
            return System.nanoTime();
        }

        @Override // re.e.a
        public void b(e taskRunner) {
            m.e(taskRunner, "taskRunner");
            taskRunner.notify();
        }

        @Override // re.e.a
        public void c(e taskRunner, long j10) {
            m.e(taskRunner, "taskRunner");
            long j11 = j10 / 1000000;
            long j12 = j10 - (1000000 * j11);
            if (j11 > 0 || j10 > 0) {
                taskRunner.wait(j11, (int) j12);
            }
        }

        @Override // re.e.a
        public void execute(Runnable runnable) {
            m.e(runnable, "runnable");
            this.f29148a.execute(runnable);
        }
    }

    /* loaded from: classes2.dex */
    public static final class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            re.a d10;
            long j10;
            while (true) {
                e eVar = e.this;
                synchronized (eVar) {
                    d10 = eVar.d();
                }
                if (d10 == null) {
                    return;
                }
                re.d d11 = d10.d();
                m.b(d11);
                e eVar2 = e.this;
                boolean isLoggable = e.f29138h.a().isLoggable(Level.FINE);
                if (isLoggable) {
                    j10 = d11.h().g().a();
                    re.b.c(d10, d11, "starting");
                } else {
                    j10 = -1;
                }
                try {
                    eVar2.j(d10);
                    t tVar = t.f32733a;
                    if (isLoggable) {
                        re.b.c(d10, d11, m.l("finished run in ", re.b.b(d11.h().g().a() - j10)));
                    }
                } catch (Throwable th) {
                    if (isLoggable) {
                        re.b.c(d10, d11, m.l("failed a run in ", re.b.b(d11.h().g().a() - j10)));
                    }
                    throw th;
                }
            }
        }
    }

    static {
        Logger logger = Logger.getLogger(e.class.getName());
        m.d(logger, "getLogger(TaskRunner::class.java.name)");
        f29140j = logger;
    }

    public e(a backend) {
        m.e(backend, "backend");
        this.f29141a = backend;
        this.f29142b = 10000;
        this.f29145e = new ArrayList();
        this.f29146f = new ArrayList();
        this.f29147g = new d();
    }

    private final void c(re.a aVar, long j10) {
        boolean z10;
        if (oe.d.f27589h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        re.d d10 = aVar.d();
        m.b(d10);
        if (d10.c() == aVar) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            boolean d11 = d10.d();
            d10.m(false);
            d10.l(null);
            this.f29145e.remove(d10);
            if (j10 != -1 && !d11 && !d10.g()) {
                d10.k(aVar, j10, true);
            }
            if (!d10.e().isEmpty()) {
                this.f29146f.add(d10);
                return;
            }
            return;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    private final void e(re.a aVar) {
        if (oe.d.f27589h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        aVar.g(-1L);
        re.d d10 = aVar.d();
        m.b(d10);
        d10.e().remove(aVar);
        this.f29146f.remove(d10);
        d10.l(aVar);
        this.f29145e.add(d10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(re.a aVar) {
        if (oe.d.f27589h && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        currentThread.setName(aVar.b());
        try {
            long f10 = aVar.f();
            synchronized (this) {
                c(aVar, f10);
                t tVar = t.f32733a;
            }
            currentThread.setName(name);
        } catch (Throwable th) {
            synchronized (this) {
                c(aVar, -1L);
                t tVar2 = t.f32733a;
                currentThread.setName(name);
                throw th;
            }
        }
    }

    public final re.a d() {
        boolean z10;
        if (oe.d.f27589h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        while (!this.f29146f.isEmpty()) {
            long a10 = this.f29141a.a();
            Iterator it = this.f29146f.iterator();
            long j10 = Long.MAX_VALUE;
            re.a aVar = null;
            while (true) {
                if (it.hasNext()) {
                    re.a aVar2 = (re.a) ((re.d) it.next()).e().get(0);
                    long max = Math.max(0L, aVar2.c() - a10);
                    if (max > 0) {
                        j10 = Math.min(max, j10);
                    } else if (aVar != null) {
                        z10 = true;
                        break;
                    } else {
                        aVar = aVar2;
                    }
                } else {
                    z10 = false;
                    break;
                }
            }
            if (aVar != null) {
                e(aVar);
                if (z10 || (!this.f29143c && (!this.f29146f.isEmpty()))) {
                    this.f29141a.execute(this.f29147g);
                }
                return aVar;
            } else if (this.f29143c) {
                if (j10 < this.f29144d - a10) {
                    this.f29141a.b(this);
                }
                return null;
            } else {
                this.f29143c = true;
                this.f29144d = a10 + j10;
                try {
                    try {
                        this.f29141a.c(this, j10);
                    } catch (InterruptedException unused) {
                        f();
                    }
                } finally {
                    this.f29143c = false;
                }
            }
        }
        return null;
    }

    public final void f() {
        int size = this.f29145e.size() - 1;
        if (size >= 0) {
            while (true) {
                int i10 = size - 1;
                ((re.d) this.f29145e.get(size)).b();
                if (i10 < 0) {
                    break;
                }
                size = i10;
            }
        }
        int size2 = this.f29146f.size() - 1;
        if (size2 < 0) {
            return;
        }
        while (true) {
            int i11 = size2 - 1;
            re.d dVar = (re.d) this.f29146f.get(size2);
            dVar.b();
            if (dVar.e().isEmpty()) {
                this.f29146f.remove(size2);
            }
            if (i11 >= 0) {
                size2 = i11;
            } else {
                return;
            }
        }
    }

    public final a g() {
        return this.f29141a;
    }

    public final void h(re.d taskQueue) {
        m.e(taskQueue, "taskQueue");
        if (oe.d.f27589h && !Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
        }
        if (taskQueue.c() == null) {
            if (!taskQueue.e().isEmpty()) {
                oe.d.c(this.f29146f, taskQueue);
            } else {
                this.f29146f.remove(taskQueue);
            }
        }
        if (this.f29143c) {
            this.f29141a.b(this);
        } else {
            this.f29141a.execute(this.f29147g);
        }
    }

    public final re.d i() {
        int i10;
        synchronized (this) {
            i10 = this.f29142b;
            this.f29142b = i10 + 1;
        }
        return new re.d(this, m.l("Q", Integer.valueOf(i10)));
    }
}
