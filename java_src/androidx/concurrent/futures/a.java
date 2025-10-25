package androidx.concurrent.futures;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.tika.utils.StringUtils;
/* loaded from: classes.dex */
public abstract class a implements r6.d {

    /* renamed from: d  reason: collision with root package name */
    static final boolean f1810d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: e  reason: collision with root package name */
    private static final Logger f1811e = Logger.getLogger(a.class.getName());

    /* renamed from: f  reason: collision with root package name */
    static final b f1812f;

    /* renamed from: g  reason: collision with root package name */
    private static final Object f1813g;

    /* renamed from: a  reason: collision with root package name */
    volatile Object f1814a;

    /* renamed from: b  reason: collision with root package name */
    volatile e f1815b;

    /* renamed from: c  reason: collision with root package name */
    volatile h f1816c;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static abstract class b {
        private b() {
        }

        abstract boolean a(a aVar, e eVar, e eVar2);

        abstract boolean b(a aVar, Object obj, Object obj2);

        abstract boolean c(a aVar, h hVar, h hVar2);

        abstract void d(h hVar, h hVar2);

        abstract void e(h hVar, Thread thread);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: c  reason: collision with root package name */
        static final c f1817c;

        /* renamed from: d  reason: collision with root package name */
        static final c f1818d;

        /* renamed from: a  reason: collision with root package name */
        final boolean f1819a;

        /* renamed from: b  reason: collision with root package name */
        final Throwable f1820b;

        static {
            if (a.f1810d) {
                f1818d = null;
                f1817c = null;
                return;
            }
            f1818d = new c(false, null);
            f1817c = new c(true, null);
        }

        c(boolean z10, Throwable th) {
            this.f1819a = z10;
            this.f1820b = th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: b  reason: collision with root package name */
        static final d f1821b = new d(new C0023a("Failure occurred while trying to finish a future."));

        /* renamed from: a  reason: collision with root package name */
        final Throwable f1822a;

        /* renamed from: androidx.concurrent.futures.a$d$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0023a extends Throwable {
            C0023a(String str) {
                super(str);
            }

            @Override // java.lang.Throwable
            public synchronized Throwable fillInStackTrace() {
                return this;
            }
        }

        d(Throwable th) {
            this.f1822a = (Throwable) a.j(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: d  reason: collision with root package name */
        static final e f1823d = new e(null, null);

        /* renamed from: a  reason: collision with root package name */
        final Runnable f1824a;

        /* renamed from: b  reason: collision with root package name */
        final Executor f1825b;

        /* renamed from: c  reason: collision with root package name */
        e f1826c;

        e(Runnable runnable, Executor executor) {
            this.f1824a = runnable;
            this.f1825b = executor;
        }
    }

    /* loaded from: classes.dex */
    private static final class f extends b {

        /* renamed from: a  reason: collision with root package name */
        final AtomicReferenceFieldUpdater f1827a;

        /* renamed from: b  reason: collision with root package name */
        final AtomicReferenceFieldUpdater f1828b;

        /* renamed from: c  reason: collision with root package name */
        final AtomicReferenceFieldUpdater f1829c;

        /* renamed from: d  reason: collision with root package name */
        final AtomicReferenceFieldUpdater f1830d;

        /* renamed from: e  reason: collision with root package name */
        final AtomicReferenceFieldUpdater f1831e;

        f(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
            super();
            this.f1827a = atomicReferenceFieldUpdater;
            this.f1828b = atomicReferenceFieldUpdater2;
            this.f1829c = atomicReferenceFieldUpdater3;
            this.f1830d = atomicReferenceFieldUpdater4;
            this.f1831e = atomicReferenceFieldUpdater5;
        }

        @Override // androidx.concurrent.futures.a.b
        boolean a(a aVar, e eVar, e eVar2) {
            return androidx.concurrent.futures.b.a(this.f1830d, aVar, eVar, eVar2);
        }

        @Override // androidx.concurrent.futures.a.b
        boolean b(a aVar, Object obj, Object obj2) {
            return androidx.concurrent.futures.b.a(this.f1831e, aVar, obj, obj2);
        }

        @Override // androidx.concurrent.futures.a.b
        boolean c(a aVar, h hVar, h hVar2) {
            return androidx.concurrent.futures.b.a(this.f1829c, aVar, hVar, hVar2);
        }

        @Override // androidx.concurrent.futures.a.b
        void d(h hVar, h hVar2) {
            this.f1828b.lazySet(hVar, hVar2);
        }

        @Override // androidx.concurrent.futures.a.b
        void e(h hVar, Thread thread) {
            this.f1827a.lazySet(hVar, thread);
        }
    }

    /* loaded from: classes.dex */
    private static final class g extends b {
        g() {
            super();
        }

        @Override // androidx.concurrent.futures.a.b
        boolean a(a aVar, e eVar, e eVar2) {
            synchronized (aVar) {
                if (aVar.f1815b == eVar) {
                    aVar.f1815b = eVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.concurrent.futures.a.b
        boolean b(a aVar, Object obj, Object obj2) {
            synchronized (aVar) {
                if (aVar.f1814a == obj) {
                    aVar.f1814a = obj2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.concurrent.futures.a.b
        boolean c(a aVar, h hVar, h hVar2) {
            synchronized (aVar) {
                if (aVar.f1816c == hVar) {
                    aVar.f1816c = hVar2;
                    return true;
                }
                return false;
            }
        }

        @Override // androidx.concurrent.futures.a.b
        void d(h hVar, h hVar2) {
            hVar.f1834b = hVar2;
        }

        @Override // androidx.concurrent.futures.a.b
        void e(h hVar, Thread thread) {
            hVar.f1833a = thread;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class h {

        /* renamed from: c  reason: collision with root package name */
        static final h f1832c = new h(false);

        /* renamed from: a  reason: collision with root package name */
        volatile Thread f1833a;

        /* renamed from: b  reason: collision with root package name */
        volatile h f1834b;

        h(boolean z10) {
        }

        void a(h hVar) {
            a.f1812f.d(this, hVar);
        }

        void b() {
            Thread thread = this.f1833a;
            if (thread != null) {
                this.f1833a = null;
                LockSupport.unpark(thread);
            }
        }

        h() {
            a.f1812f.e(this, Thread.currentThread());
        }
    }

    static {
        b gVar;
        try {
            gVar = new f(AtomicReferenceFieldUpdater.newUpdater(h.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(h.class, h.class, "b"), AtomicReferenceFieldUpdater.newUpdater(a.class, h.class, "c"), AtomicReferenceFieldUpdater.newUpdater(a.class, e.class, "b"), AtomicReferenceFieldUpdater.newUpdater(a.class, Object.class, "a"));
            th = null;
        } catch (Throwable th) {
            th = th;
            gVar = new g();
        }
        f1812f = gVar;
        if (th != null) {
            f1811e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f1813g = new Object();
    }

    private void b(StringBuilder sb2) {
        try {
            Object p10 = p(this);
            sb2.append("SUCCESS, result=[");
            sb2.append(w(p10));
            sb2.append("]");
        } catch (CancellationException unused) {
            sb2.append("CANCELLED");
        } catch (RuntimeException e10) {
            sb2.append("UNKNOWN, cause=[");
            sb2.append(e10.getClass());
            sb2.append(" thrown from get()]");
        } catch (ExecutionException e11) {
            sb2.append("FAILURE, cause=[");
            sb2.append(e11.getCause());
            sb2.append("]");
        }
    }

    private static CancellationException i(String str, Throwable th) {
        CancellationException cancellationException = new CancellationException(str);
        cancellationException.initCause(th);
        return cancellationException;
    }

    static Object j(Object obj) {
        obj.getClass();
        return obj;
    }

    private e l(e eVar) {
        e eVar2;
        do {
            eVar2 = this.f1815b;
        } while (!f1812f.a(this, eVar2, e.f1823d));
        e eVar3 = eVar;
        e eVar4 = eVar2;
        while (eVar4 != null) {
            e eVar5 = eVar4.f1826c;
            eVar4.f1826c = eVar3;
            eVar3 = eVar4;
            eVar4 = eVar5;
        }
        return eVar3;
    }

    static void m(a aVar) {
        aVar.s();
        aVar.f();
        e l10 = aVar.l(null);
        while (l10 != null) {
            e eVar = l10.f1826c;
            n(l10.f1824a, l10.f1825b);
            l10 = eVar;
        }
    }

    private static void n(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e10) {
            Logger logger = f1811e;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e10);
        }
    }

    private Object o(Object obj) {
        if (!(obj instanceof c)) {
            if (!(obj instanceof d)) {
                if (obj == f1813g) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException(((d) obj).f1822a);
        }
        throw i("Task was cancelled.", ((c) obj).f1820b);
    }

    static Object p(Future future) {
        Object obj;
        boolean z10 = false;
        while (true) {
            try {
                obj = future.get();
                break;
            } catch (InterruptedException unused) {
                z10 = true;
            } catch (Throwable th) {
                if (z10) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z10) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    private void s() {
        h hVar;
        do {
            hVar = this.f1816c;
        } while (!f1812f.c(this, hVar, h.f1832c));
        while (hVar != null) {
            hVar.b();
            hVar = hVar.f1834b;
        }
    }

    private void t(h hVar) {
        hVar.f1833a = null;
        while (true) {
            h hVar2 = this.f1816c;
            if (hVar2 == h.f1832c) {
                return;
            }
            h hVar3 = null;
            while (hVar2 != null) {
                h hVar4 = hVar2.f1834b;
                if (hVar2.f1833a != null) {
                    hVar3 = hVar2;
                } else if (hVar3 != null) {
                    hVar3.f1834b = hVar4;
                    if (hVar3.f1833a == null) {
                        break;
                    }
                } else if (!f1812f.c(this, hVar2, hVar4)) {
                    break;
                }
                hVar2 = hVar4;
            }
            return;
        }
    }

    private String w(Object obj) {
        if (obj == this) {
            return "this future";
        }
        return String.valueOf(obj);
    }

    @Override // r6.d
    public final void a(Runnable runnable, Executor executor) {
        j(runnable);
        j(executor);
        e eVar = this.f1815b;
        if (eVar != e.f1823d) {
            e eVar2 = new e(runnable, executor);
            do {
                eVar2.f1826c = eVar;
                if (f1812f.a(this, eVar, eVar2)) {
                    return;
                }
                eVar = this.f1815b;
            } while (eVar != e.f1823d);
            n(runnable, executor);
        }
        n(runnable, executor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z10) {
        boolean z11;
        c cVar;
        Object obj = this.f1814a;
        if (obj == null) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11 | false) {
            if (f1810d) {
                cVar = new c(z10, new CancellationException("Future.cancel() was called."));
            } else if (z10) {
                cVar = c.f1817c;
            } else {
                cVar = c.f1818d;
            }
            if (f1812f.b(this, obj, cVar)) {
                if (z10) {
                    q();
                }
                m(this);
                return true;
            }
        }
        return false;
    }

    protected void f() {
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j10, TimeUnit timeUnit) {
        Locale locale;
        long nanos = timeUnit.toNanos(j10);
        if (!Thread.interrupted()) {
            Object obj = this.f1814a;
            if ((obj != null) & true) {
                return o(obj);
            }
            long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
            if (nanos >= 1000) {
                h hVar = this.f1816c;
                if (hVar != h.f1832c) {
                    h hVar2 = new h();
                    do {
                        hVar2.a(hVar);
                        if (f1812f.c(this, hVar, hVar2)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.f1814a;
                                    if ((obj2 != null) & true) {
                                        return o(obj2);
                                    }
                                    nanos = nanoTime - System.nanoTime();
                                } else {
                                    t(hVar2);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            t(hVar2);
                        } else {
                            hVar = this.f1816c;
                        }
                    } while (hVar != h.f1832c);
                    return o(this.f1814a);
                }
                return o(this.f1814a);
            }
            while (nanos > 0) {
                Object obj3 = this.f1814a;
                if ((obj3 != null) & true) {
                    return o(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = nanoTime - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String aVar = toString();
            String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
            String str = "Waited " + j10 + StringUtils.SPACE + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String str2 = str + " (plus ";
                long j11 = -nanos;
                long convert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
                long nanos2 = j11 - timeUnit.toNanos(convert);
                int i10 = (convert > 0L ? 1 : (convert == 0L ? 0 : -1));
                boolean z10 = i10 == 0 || nanos2 > 1000;
                if (i10 > 0) {
                    String str3 = str2 + convert + StringUtils.SPACE + lowerCase;
                    if (z10) {
                        str3 = str3 + io.appmetrica.analytics.coreutils.internal.StringUtils.COMMA;
                    }
                    str2 = str3 + StringUtils.SPACE;
                }
                if (z10) {
                    str2 = str2 + nanos2 + " nanoseconds ";
                }
                str = str2 + "delay)";
            }
            if (isDone()) {
                throw new TimeoutException(str + " but future completed as timeout expired");
            }
            throw new TimeoutException(str + " for " + aVar);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f1814a instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        boolean z10;
        if (this.f1814a != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        return z10 & true;
    }

    protected void q() {
    }

    protected String r() {
        if (this instanceof ScheduledFuture) {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
        return null;
    }

    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append("[status=");
        if (isCancelled()) {
            sb2.append("CANCELLED");
        } else if (isDone()) {
            b(sb2);
        } else {
            try {
                str = r();
            } catch (RuntimeException e10) {
                str = "Exception thrown from implementation: " + e10.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb2.append("PENDING, info=[");
                sb2.append(str);
                sb2.append("]");
            } else if (isDone()) {
                b(sb2);
            } else {
                sb2.append("PENDING");
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean u(Object obj) {
        if (obj == null) {
            obj = f1813g;
        }
        if (f1812f.b(this, null, obj)) {
            m(this);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean v(Throwable th) {
        if (f1812f.b(this, null, new d((Throwable) j(th)))) {
            m(this);
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean x() {
        Object obj = this.f1814a;
        if ((obj instanceof c) && ((c) obj).f1819a) {
            return true;
        }
        return false;
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f1814a;
            if ((obj2 != null) & true) {
                return o(obj2);
            }
            h hVar = this.f1816c;
            if (hVar != h.f1832c) {
                h hVar2 = new h();
                do {
                    hVar2.a(hVar);
                    if (f1812f.c(this, hVar, hVar2)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f1814a;
                            } else {
                                t(hVar2);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & true));
                        return o(obj);
                    }
                    hVar = this.f1816c;
                } while (hVar != h.f1832c);
                return o(this.f1814a);
            }
            return o(this.f1814a);
        }
        throw new InterruptedException();
    }
}
