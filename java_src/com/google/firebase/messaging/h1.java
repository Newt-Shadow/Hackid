package com.google.firebase.messaging;

import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import m6.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h1 {

    /* renamed from: i  reason: collision with root package name */
    private static final long f8906i = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: a  reason: collision with root package name */
    private final Context f8907a;

    /* renamed from: b  reason: collision with root package name */
    private final l0 f8908b;

    /* renamed from: c  reason: collision with root package name */
    private final g0 f8909c;

    /* renamed from: d  reason: collision with root package name */
    private final FirebaseMessaging f8910d;

    /* renamed from: f  reason: collision with root package name */
    private final ScheduledExecutorService f8912f;

    /* renamed from: h  reason: collision with root package name */
    private final f1 f8914h;

    /* renamed from: e  reason: collision with root package name */
    private final Map f8911e = new r.a();

    /* renamed from: g  reason: collision with root package name */
    private boolean f8913g = false;

    private h1(FirebaseMessaging firebaseMessaging, l0 l0Var, f1 f1Var, g0 g0Var, Context context, ScheduledExecutorService scheduledExecutorService) {
        this.f8910d = firebaseMessaging;
        this.f8908b = l0Var;
        this.f8914h = f1Var;
        this.f8909c = g0Var;
        this.f8907a = context;
        this.f8912f = scheduledExecutorService;
    }

    private void b(e1 e1Var, m6.l lVar) {
        ArrayDeque arrayDeque;
        synchronized (this.f8911e) {
            String e10 = e1Var.e();
            if (this.f8911e.containsKey(e10)) {
                arrayDeque = (ArrayDeque) this.f8911e.get(e10);
            } else {
                ArrayDeque arrayDeque2 = new ArrayDeque();
                this.f8911e.put(e10, arrayDeque2);
                arrayDeque = arrayDeque2;
            }
            arrayDeque.add(lVar);
        }
    }

    private static void c(Task task) {
        try {
            m6.n.b(task, 30L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            e = e10;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        } catch (ExecutionException e11) {
            Throwable cause = e11.getCause();
            if (!(cause instanceof IOException)) {
                if (cause instanceof RuntimeException) {
                    throw ((RuntimeException) cause);
                }
                throw new IOException(e11);
            }
            throw ((IOException) cause);
        } catch (TimeoutException e12) {
            e = e12;
            throw new IOException("SERVICE_NOT_AVAILABLE", e);
        }
    }

    private void d(String str) {
        c(this.f8909c.n(this.f8910d.n(), str));
    }

    private void e(String str) {
        c(this.f8909c.o(this.f8910d.n(), str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Task f(final FirebaseMessaging firebaseMessaging, final l0 l0Var, final g0 g0Var, final Context context, final ScheduledExecutorService scheduledExecutorService) {
        return m6.n.c(scheduledExecutorService, new Callable() { // from class: com.google.firebase.messaging.g1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                h1 j10;
                j10 = h1.j(context, scheduledExecutorService, firebaseMessaging, l0Var, g0Var);
                return j10;
            }
        });
    }

    static boolean h() {
        if (!Log.isLoggable("FirebaseMessaging", 3)) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ h1 j(Context context, ScheduledExecutorService scheduledExecutorService, FirebaseMessaging firebaseMessaging, l0 l0Var, g0 g0Var) {
        return new h1(firebaseMessaging, l0Var, f1.b(context, scheduledExecutorService), g0Var, context, scheduledExecutorService);
    }

    private void k(e1 e1Var) {
        synchronized (this.f8911e) {
            String e10 = e1Var.e();
            if (!this.f8911e.containsKey(e10)) {
                return;
            }
            ArrayDeque arrayDeque = (ArrayDeque) this.f8911e.get(e10);
            m6.l lVar = (m6.l) arrayDeque.poll();
            if (lVar != null) {
                lVar.c(null);
            }
            if (arrayDeque.isEmpty()) {
                this.f8911e.remove(e10);
            }
        }
    }

    private void p() {
        if (!i()) {
            t(0L);
        }
    }

    boolean g() {
        if (this.f8914h.c() != null) {
            return true;
        }
        return false;
    }

    synchronized boolean i() {
        return this.f8913g;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0079 A[Catch: IOException -> 0x00a2, TryCatch #0 {IOException -> 0x00a2, blocks: (B:3:0x0003, B:18:0x0030, B:20:0x0036, B:21:0x0050, B:23:0x005d, B:24:0x0079, B:26:0x0086, B:8:0x0015, B:11:0x001f), top: B:43:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    boolean l(com.google.firebase.messaging.e1 r7) {
        /*
            r6 = this;
            java.lang.String r0 = "FirebaseMessaging"
            r1 = 0
            java.lang.String r2 = r7.b()     // Catch: java.io.IOException -> La2
            int r3 = r2.hashCode()     // Catch: java.io.IOException -> La2
            r4 = 83
            r5 = 1
            if (r3 == r4) goto L1f
            r4 = 85
            if (r3 == r4) goto L15
            goto L29
        L15:
            java.lang.String r3 = "U"
            boolean r2 = r2.equals(r3)     // Catch: java.io.IOException -> La2
            if (r2 == 0) goto L29
            r2 = r5
            goto L2a
        L1f:
            java.lang.String r3 = "S"
            boolean r2 = r2.equals(r3)     // Catch: java.io.IOException -> La2
            if (r2 == 0) goto L29
            r2 = r1
            goto L2a
        L29:
            r2 = -1
        L2a:
            java.lang.String r3 = " succeeded."
            if (r2 == 0) goto L79
            if (r2 == r5) goto L50
            boolean r2 = h()     // Catch: java.io.IOException -> La2
            if (r2 == 0) goto La1
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> La2
            r2.<init>()     // Catch: java.io.IOException -> La2
            java.lang.String r3 = "Unknown topic operation"
            r2.append(r3)     // Catch: java.io.IOException -> La2
            r2.append(r7)     // Catch: java.io.IOException -> La2
            java.lang.String r7 = "."
            r2.append(r7)     // Catch: java.io.IOException -> La2
            java.lang.String r7 = r2.toString()     // Catch: java.io.IOException -> La2
            android.util.Log.d(r0, r7)     // Catch: java.io.IOException -> La2
            goto La1
        L50:
            java.lang.String r2 = r7.c()     // Catch: java.io.IOException -> La2
            r6.e(r2)     // Catch: java.io.IOException -> La2
            boolean r2 = h()     // Catch: java.io.IOException -> La2
            if (r2 == 0) goto La1
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> La2
            r2.<init>()     // Catch: java.io.IOException -> La2
            java.lang.String r4 = "Unsubscribe from topic: "
            r2.append(r4)     // Catch: java.io.IOException -> La2
            java.lang.String r7 = r7.c()     // Catch: java.io.IOException -> La2
            r2.append(r7)     // Catch: java.io.IOException -> La2
            r2.append(r3)     // Catch: java.io.IOException -> La2
            java.lang.String r7 = r2.toString()     // Catch: java.io.IOException -> La2
            android.util.Log.d(r0, r7)     // Catch: java.io.IOException -> La2
            goto La1
        L79:
            java.lang.String r2 = r7.c()     // Catch: java.io.IOException -> La2
            r6.d(r2)     // Catch: java.io.IOException -> La2
            boolean r2 = h()     // Catch: java.io.IOException -> La2
            if (r2 == 0) goto La1
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.io.IOException -> La2
            r2.<init>()     // Catch: java.io.IOException -> La2
            java.lang.String r4 = "Subscribe to topic: "
            r2.append(r4)     // Catch: java.io.IOException -> La2
            java.lang.String r7 = r7.c()     // Catch: java.io.IOException -> La2
            r2.append(r7)     // Catch: java.io.IOException -> La2
            r2.append(r3)     // Catch: java.io.IOException -> La2
            java.lang.String r7 = r2.toString()     // Catch: java.io.IOException -> La2
            android.util.Log.d(r0, r7)     // Catch: java.io.IOException -> La2
        La1:
            return r5
        La2:
            r7 = move-exception
            java.lang.String r2 = "SERVICE_NOT_AVAILABLE"
            java.lang.String r3 = r7.getMessage()
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto Ld5
            java.lang.String r2 = "INTERNAL_SERVER_ERROR"
            java.lang.String r3 = r7.getMessage()
            boolean r2 = r2.equals(r3)
            if (r2 != 0) goto Ld5
            java.lang.String r2 = "TOO_MANY_SUBSCRIBERS"
            java.lang.String r3 = r7.getMessage()
            boolean r2 = r2.equals(r3)
            if (r2 == 0) goto Lc8
            goto Ld5
        Lc8:
            java.lang.String r2 = r7.getMessage()
            if (r2 != 0) goto Ld4
            java.lang.String r7 = "Topic operation failed without exception message. Will retry Topic operation."
            android.util.Log.e(r0, r7)
            return r1
        Ld4:
            throw r7
        Ld5:
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Topic operation failed: "
            r2.append(r3)
            java.lang.String r7 = r7.getMessage()
            r2.append(r7)
            java.lang.String r7 = ". Will retry Topic operation."
            r2.append(r7)
            java.lang.String r7 = r2.toString()
            android.util.Log.e(r0, r7)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.h1.l(com.google.firebase.messaging.e1):boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(Runnable runnable, long j10) {
        this.f8912f.schedule(runnable, j10, TimeUnit.SECONDS);
    }

    Task n(e1 e1Var) {
        this.f8914h.a(e1Var);
        m6.l lVar = new m6.l();
        b(e1Var, lVar);
        return lVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void o(boolean z10) {
        this.f8913g = z10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q() {
        if (g()) {
            p();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task r(String str) {
        Task n10 = n(e1.f(str));
        q();
        return n10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x000d, code lost:
        if (h() == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000f, code lost:
        android.util.Log.d("FirebaseMessaging", "topic sync succeeded");
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0017, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean s() {
        /*
            r2 = this;
        L0:
            monitor-enter(r2)
            com.google.firebase.messaging.f1 r0 = r2.f8914h     // Catch: java.lang.Throwable -> L2b
            com.google.firebase.messaging.e1 r0 = r0.c()     // Catch: java.lang.Throwable -> L2b
            if (r0 != 0) goto L19
            boolean r0 = h()     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L16
            java.lang.String r0 = "FirebaseMessaging"
            java.lang.String r1 = "topic sync succeeded"
            android.util.Log.d(r0, r1)     // Catch: java.lang.Throwable -> L2b
        L16:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            r0 = 1
            return r0
        L19:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            boolean r1 = r2.l(r0)
            if (r1 != 0) goto L22
            r0 = 0
            return r0
        L22:
            com.google.firebase.messaging.f1 r1 = r2.f8914h
            r1.e(r0)
            r2.k(r0)
            goto L0
        L2b:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2b
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.h1.s():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void t(long j10) {
        m(new i1(this, this.f8907a, this.f8908b, Math.min(Math.max(30L, 2 * j10), f8906i)), j10);
        o(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Task u(String str) {
        Task n10 = n(e1.g(str));
        q();
        return n10;
    }
}
