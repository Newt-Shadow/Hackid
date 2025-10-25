package com.google.android.gms.measurement.internal;

import android.os.Process;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class r6 extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private final Object f7955a;

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue f7956b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f7957c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ s6 f7958d;

    public r6(s6 s6Var, String str, BlockingQueue blockingQueue) {
        Objects.requireNonNull(s6Var);
        this.f7958d = s6Var;
        this.f7957c = false;
        n5.q.k(str);
        n5.q.k(blockingQueue);
        this.f7955a = new Object();
        this.f7956b = blockingQueue;
        setName(str);
    }

    private final void b() {
        s6 s6Var = this.f7958d;
        synchronized (s6Var.B()) {
            if (!this.f7957c) {
                s6Var.C().release();
                s6Var.B().notifyAll();
                if (this == s6Var.x()) {
                    s6Var.y(null);
                } else if (this == s6Var.z()) {
                    s6Var.A(null);
                } else {
                    s6Var.f8322a.a().o().a("Current scheduler thread is neither worker nor network");
                }
                this.f7957c = true;
            }
        }
    }

    private final void c(InterruptedException interruptedException) {
        this.f7958d.f8322a.a().r().b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    public final void a() {
        Object obj = this.f7955a;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int i10;
        boolean z10 = false;
        while (!z10) {
            try {
                this.f7958d.C().acquire();
                z10 = true;
            } catch (InterruptedException e10) {
                c(e10);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                BlockingQueue blockingQueue = this.f7956b;
                q6 q6Var = (q6) blockingQueue.poll();
                if (q6Var != null) {
                    if (true != q6Var.f7924b) {
                        i10 = 10;
                    } else {
                        i10 = threadPriority;
                    }
                    Process.setThreadPriority(i10);
                    q6Var.run();
                } else {
                    Object obj = this.f7955a;
                    synchronized (obj) {
                        if (blockingQueue.peek() == null) {
                            this.f7958d.D();
                            try {
                                obj.wait(30000L);
                            } catch (InterruptedException e11) {
                                c(e11);
                            }
                        }
                    }
                    synchronized (this.f7958d.B()) {
                        if (this.f7956b.peek() == null) {
                            b();
                            return;
                        }
                    }
                }
            }
        } finally {
            b();
        }
    }
}
