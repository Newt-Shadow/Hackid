package io.appmetrica.analytics.networktasks.internal;

import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import io.appmetrica.analytics.networktasks.impl.d;
import io.appmetrica.analytics.networktasks.impl.f;
import io.appmetrica.analytics.networktasks.impl.g;
import io.appmetrica.analytics.networktasks.impl.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes2.dex */
public class NetworkCore extends InterruptionSafeThread {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedBlockingQueue f21279a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f21280b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f21281c;

    /* renamed from: d  reason: collision with root package name */
    private volatile d f21282d;

    /* renamed from: e  reason: collision with root package name */
    private final g f21283e;

    public NetworkCore() {
        this(new g());
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        NetworkTask networkTask = null;
        while (isRunning()) {
            try {
                synchronized (this.f21281c) {
                }
                this.f21282d = (d) this.f21279a.take();
                networkTask = this.f21282d.f21250a;
                Executor executor = networkTask.getExecutor();
                this.f21283e.getClass();
                executor.execute(new h(networkTask, this, new f()));
                networkTask.onTaskFinished();
                synchronized (this.f21281c) {
                    this.f21282d = null;
                }
            } catch (InterruptedException unused) {
                if (networkTask != null) {
                    networkTask.onTaskFinished();
                    synchronized (this.f21281c) {
                        this.f21282d = null;
                    }
                } else {
                    continue;
                }
            } catch (Throwable th) {
                if (networkTask != null) {
                    networkTask.onTaskFinished();
                    synchronized (this.f21281c) {
                        this.f21282d = null;
                        networkTask.onTaskRemoved();
                    }
                }
                throw th;
            }
            networkTask.onTaskRemoved();
        }
    }

    public void startTask(NetworkTask networkTask) {
        synchronized (this.f21280b) {
            d dVar = new d(networkTask);
            if (isRunning() && !this.f21279a.contains(dVar) && !dVar.equals(this.f21282d) && networkTask.onTaskAdded()) {
                this.f21279a.offer(dVar);
            }
        }
    }

    public void stopTasks() {
        synchronized (this.f21281c) {
            ArrayList arrayList = new ArrayList(this.f21279a.size());
            this.f21279a.drainTo(arrayList);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((d) it.next()).f21250a.onTaskRemoved();
            }
        }
    }

    NetworkCore(g gVar) {
        this.f21279a = new LinkedBlockingQueue();
        this.f21280b = new Object();
        this.f21281c = new Object();
        this.f21283e = gVar;
    }
}
