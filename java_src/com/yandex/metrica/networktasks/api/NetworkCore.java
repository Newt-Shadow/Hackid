package com.yandex.metrica.networktasks.api;

import com.yandex.metrica.networktasks.impl.e;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes2.dex */
public class NetworkCore extends com.yandex.metrica.networktasks.impl.c {

    /* renamed from: b  reason: collision with root package name */
    private final BlockingQueue f14175b;

    /* renamed from: c  reason: collision with root package name */
    private final Object f14176c;

    /* renamed from: d  reason: collision with root package name */
    private final Object f14177d;

    /* renamed from: e  reason: collision with root package name */
    private volatile c f14178e;

    /* renamed from: f  reason: collision with root package name */
    private final e f14179f;

    public NetworkCore() {
        this(new e());
    }

    public void b() {
        synchronized (this.f14177d) {
            c cVar = this.f14178e;
            if (cVar != null) {
                cVar.f14213a.u();
            }
            ArrayList arrayList = new ArrayList(this.f14175b.size());
            this.f14175b.drainTo(arrayList);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((c) it.next()).f14213a.u();
            }
        }
    }

    public void c(NetworkTask networkTask) {
        boolean z10;
        synchronized (this.f14176c) {
            c cVar = new c(networkTask);
            if (a()) {
                if (!this.f14175b.contains(cVar) && !cVar.equals(this.f14178e)) {
                    z10 = false;
                    if (!z10 && cVar.f14213a.s()) {
                        this.f14175b.offer(cVar);
                    }
                }
                z10 = true;
                if (!z10) {
                    this.f14175b.offer(cVar);
                }
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        NetworkTask networkTask = null;
        while (a()) {
            try {
                synchronized (this.f14177d) {
                }
                this.f14178e = (c) this.f14175b.take();
                networkTask = this.f14178e.f14213a;
                networkTask.e().execute(this.f14179f.a(networkTask, this));
                synchronized (this.f14177d) {
                    this.f14178e = null;
                    networkTask.t();
                    networkTask.u();
                }
            } catch (InterruptedException unused) {
                synchronized (this.f14177d) {
                    this.f14178e = null;
                    if (networkTask != null) {
                        networkTask.t();
                        networkTask.u();
                    }
                }
            } catch (Throwable th) {
                synchronized (this.f14177d) {
                    this.f14178e = null;
                    if (networkTask != null) {
                        networkTask.t();
                        networkTask.u();
                    }
                    throw th;
                }
            }
        }
    }

    NetworkCore(e eVar) {
        this.f14175b = new LinkedBlockingQueue();
        this.f14176c = new Object();
        this.f14177d = new Object();
        this.f14179f = eVar;
    }
}
