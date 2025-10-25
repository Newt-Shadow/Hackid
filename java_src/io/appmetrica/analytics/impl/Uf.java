package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreapi.internal.executors.InterruptionSafeThread;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class Uf implements Sf {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1048ag f19061a;

    public Uf(C1048ag c1048ag) {
        this.f19061a = c1048ag;
    }

    @Override // io.appmetrica.analytics.impl.Sf
    public final void a() {
        C1048ag c1048ag = this.f19061a;
        La la2 = c1048ag.f19385b;
        Tf tf = new Tf(c1048ag);
        la2.getClass();
        try {
            FutureTask futureTask = new FutureTask(new Ka(la2));
            C1665za.E.f21040d.f19529a.getClass();
            new InterruptionSafeThread(futureTask, "IAA-SHMSR-" + Fd.f18227a.incrementAndGet()).start();
            C1322lg c1322lg = (C1322lg) futureTask.get(5L, TimeUnit.SECONDS);
            Rn.a(la2.f18521b);
            C1048ag.a(c1048ag, c1322lg, C1048ag.a(c1048ag));
        } catch (Throwable th) {
            try {
                tf.a(th);
            } finally {
                Rn.a(la2.f18521b);
            }
        }
    }
}
