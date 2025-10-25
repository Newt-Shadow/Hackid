package io.appmetrica.analytics.impl;

import android.os.Debug;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: io.appmetrica.analytics.impl.d  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1106d extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicBoolean f19497a = new AtomicBoolean(true);

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1131e f19498b;

    public C1106d(C1131e c1131e) {
        this.f19498b = c1131e;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        while (!isInterrupted() && this.f19497a.get()) {
            this.f19498b.f19554e.set(false);
            C1131e c1131e = this.f19498b;
            c1131e.f19552c.postAtFrontOfQueue(c1131e.f19555f);
            int i10 = this.f19498b.f19551b.get();
            while (i10 > 0) {
                try {
                    Thread.sleep(C1131e.f19548g);
                    if (this.f19498b.f19554e.get()) {
                        break;
                    }
                    i10--;
                } catch (InterruptedException unused) {
                    return;
                }
            }
            if (i10 == 0 && !Debug.isDebuggerConnected()) {
                Iterator it = this.f19498b.f19550a.iterator();
                while (it.hasNext()) {
                    ((InterfaceC1081c) it.next()).onAppNotResponding();
                }
            }
            while (!this.f19498b.f19554e.get()) {
                try {
                    Thread.sleep(C1131e.f19548g);
                } catch (InterruptedException unused2) {
                    return;
                }
            }
        }
    }
}
