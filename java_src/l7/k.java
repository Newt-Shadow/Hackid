package l7;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Logger;
import n5.q;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class k implements Executor {

    /* renamed from: f  reason: collision with root package name */
    private static final Logger f25351f = Logger.getLogger(k.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final Executor f25352a;

    /* renamed from: b  reason: collision with root package name */
    private final Deque f25353b = new ArrayDeque();

    /* renamed from: c  reason: collision with root package name */
    private c f25354c = c.IDLE;

    /* renamed from: d  reason: collision with root package name */
    private long f25355d = 0;

    /* renamed from: e  reason: collision with root package name */
    private final b f25356e = new b(this, null);

    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f25357a;

        a(Runnable runnable) {
            this.f25357a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f25357a.run();
        }

        public String toString() {
            return this.f25357a.toString();
        }
    }

    /* loaded from: classes.dex */
    private final class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        Runnable f25359a;

        private b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0043, code lost:
            if (r1 == false) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0045, code lost:
            java.lang.Thread.currentThread().interrupt();
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x004c, code lost:
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:0x0052, code lost:
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
            r8.f25359a.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x005e, code lost:
            r3 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x005f, code lost:
            l7.k.f25351f.log(java.util.logging.Level.SEVERE, "Exception while executing runnable " + r8.f25359a, (java.lang.Throwable) r3);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void a() {
            /*
                r8 = this;
                r0 = 0
                r1 = r0
            L2:
                l7.k r2 = l7.k.this     // Catch: java.lang.Throwable -> L82
                java.util.Deque r2 = l7.k.a(r2)     // Catch: java.lang.Throwable -> L82
                monitor-enter(r2)     // Catch: java.lang.Throwable -> L82
                if (r0 != 0) goto L2b
                l7.k r0 = l7.k.this     // Catch: java.lang.Throwable -> L7f
                l7.k$c r0 = l7.k.b(r0)     // Catch: java.lang.Throwable -> L7f
                l7.k$c r3 = l7.k.c.RUNNING     // Catch: java.lang.Throwable -> L7f
                if (r0 != r3) goto L20
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                if (r1 == 0) goto L1f
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L1f:
                return
            L20:
                l7.k r0 = l7.k.this     // Catch: java.lang.Throwable -> L7f
                l7.k.d(r0)     // Catch: java.lang.Throwable -> L7f
                l7.k r0 = l7.k.this     // Catch: java.lang.Throwable -> L7f
                l7.k.c(r0, r3)     // Catch: java.lang.Throwable -> L7f
                r0 = 1
            L2b:
                l7.k r3 = l7.k.this     // Catch: java.lang.Throwable -> L7f
                java.util.Deque r3 = l7.k.a(r3)     // Catch: java.lang.Throwable -> L7f
                java.lang.Object r3 = r3.poll()     // Catch: java.lang.Throwable -> L7f
                java.lang.Runnable r3 = (java.lang.Runnable) r3     // Catch: java.lang.Throwable -> L7f
                r8.f25359a = r3     // Catch: java.lang.Throwable -> L7f
                if (r3 != 0) goto L4d
                l7.k r0 = l7.k.this     // Catch: java.lang.Throwable -> L7f
                l7.k$c r3 = l7.k.c.IDLE     // Catch: java.lang.Throwable -> L7f
                l7.k.c(r0, r3)     // Catch: java.lang.Throwable -> L7f
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                if (r1 == 0) goto L4c
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                r0.interrupt()
            L4c:
                return
            L4d:
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                boolean r2 = java.lang.Thread.interrupted()     // Catch: java.lang.Throwable -> L82
                r1 = r1 | r2
                r2 = 0
                java.lang.Runnable r3 = r8.f25359a     // Catch: java.lang.Throwable -> L5c java.lang.RuntimeException -> L5e
                r3.run()     // Catch: java.lang.Throwable -> L5c java.lang.RuntimeException -> L5e
            L59:
                r8.f25359a = r2     // Catch: java.lang.Throwable -> L82
                goto L2
            L5c:
                r0 = move-exception
                goto L7c
            L5e:
                r3 = move-exception
                java.util.logging.Logger r4 = l7.k.e()     // Catch: java.lang.Throwable -> L5c
                java.util.logging.Level r5 = java.util.logging.Level.SEVERE     // Catch: java.lang.Throwable -> L5c
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L5c
                r6.<init>()     // Catch: java.lang.Throwable -> L5c
                java.lang.String r7 = "Exception while executing runnable "
                r6.append(r7)     // Catch: java.lang.Throwable -> L5c
                java.lang.Runnable r7 = r8.f25359a     // Catch: java.lang.Throwable -> L5c
                r6.append(r7)     // Catch: java.lang.Throwable -> L5c
                java.lang.String r6 = r6.toString()     // Catch: java.lang.Throwable -> L5c
                r4.log(r5, r6, r3)     // Catch: java.lang.Throwable -> L5c
                goto L59
            L7c:
                r8.f25359a = r2     // Catch: java.lang.Throwable -> L82
                throw r0     // Catch: java.lang.Throwable -> L82
            L7f:
                r0 = move-exception
                monitor-exit(r2)     // Catch: java.lang.Throwable -> L7f
                throw r0     // Catch: java.lang.Throwable -> L82
            L82:
                r0 = move-exception
                if (r1 == 0) goto L8c
                java.lang.Thread r1 = java.lang.Thread.currentThread()
                r1.interrupt()
            L8c:
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: l7.k.b.a():void");
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                a();
            } catch (Error e10) {
                synchronized (k.this.f25353b) {
                    k.this.f25354c = c.IDLE;
                    throw e10;
                }
            }
        }

        public String toString() {
            Runnable runnable = this.f25359a;
            if (runnable != null) {
                return "SequentialExecutorWorker{running=" + runnable + "}";
            }
            return "SequentialExecutorWorker{state=" + k.this.f25354c + "}";
        }

        /* synthetic */ b(k kVar, a aVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public enum c {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Executor executor) {
        this.f25352a = (Executor) q.k(executor);
    }

    static /* synthetic */ long d(k kVar) {
        long j10 = kVar.f25355d;
        kVar.f25355d = 1 + j10;
        return j10;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        c cVar;
        q.k(runnable);
        synchronized (this.f25353b) {
            c cVar2 = this.f25354c;
            if (cVar2 != c.RUNNING && cVar2 != (cVar = c.QUEUED)) {
                long j10 = this.f25355d;
                a aVar = new a(runnable);
                this.f25353b.add(aVar);
                c cVar3 = c.QUEUING;
                this.f25354c = cVar3;
                boolean z10 = true;
                try {
                    this.f25352a.execute(this.f25356e);
                    if (this.f25354c == cVar3) {
                        z10 = false;
                    }
                    if (z10) {
                        return;
                    }
                    synchronized (this.f25353b) {
                        if (this.f25355d == j10 && this.f25354c == cVar3) {
                            this.f25354c = cVar;
                        }
                    }
                    return;
                } catch (Error | RuntimeException e10) {
                    synchronized (this.f25353b) {
                        c cVar4 = this.f25354c;
                        if ((cVar4 != c.IDLE && cVar4 != c.QUEUING) || !this.f25353b.removeLastOccurrence(aVar)) {
                            z10 = false;
                        }
                        if (!(e10 instanceof RejectedExecutionException) || z10) {
                            throw e10;
                        }
                    }
                    return;
                }
            }
            this.f25353b.add(runnable);
        }
    }

    public String toString() {
        return "SequentialExecutor@" + System.identityHashCode(this) + "{" + this.f25352a + "}";
    }
}
