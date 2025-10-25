package io.appmetrica.analytics.impl;

import android.content.Intent;
import android.os.RemoteException;
import io.appmetrica.analytics.internal.IAppMetricaService;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
/* renamed from: io.appmetrica.analytics.impl.yh  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractCallableC1647yh implements Callable {

    /* renamed from: d  reason: collision with root package name */
    public static final C1622xh f20989d = new C1622xh();

    /* renamed from: a  reason: collision with root package name */
    public final C1207h0 f20990a;

    /* renamed from: b  reason: collision with root package name */
    public final Lk f20991b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f20992c;

    public AbstractCallableC1647yh(C1207h0 c1207h0, Lk lk) {
        this.f20990a = c1207h0;
        this.f20991b = lk;
    }

    public abstract void a(IAppMetricaService iAppMetricaService);

    public void a(Throwable th) {
    }

    public final C1207h0 b() {
        return this.f20990a;
    }

    public boolean c() {
        C1207h0 c1207h0 = this.f20990a;
        synchronized (c1207h0) {
            if (c1207h0.f19702d == null) {
                c1207h0.f19703e = new CountDownLatch(1);
                Intent a10 = AbstractC1351mk.a(c1207h0.f19699a);
                try {
                    c1207h0.f19705g.b(c1207h0.f19699a);
                    c1207h0.f19699a.bindService(a10, c1207h0.f19707i, 1);
                } catch (Throwable unused) {
                }
            }
        }
        this.f20990a.a(5000L);
        return true;
    }

    @Override // java.util.concurrent.Callable
    public /* bridge */ /* synthetic */ Object call() {
        a();
        return xc.t.f32733a;
    }

    public final boolean d() {
        return this.f20992c;
    }

    public final void a(boolean z10) {
        this.f20992c = z10;
    }

    public void a() {
        IAppMetricaService iAppMetricaService;
        try {
            if (this.f20992c) {
                return;
            }
            this.f20992c = true;
            int i10 = 0;
            do {
                C1207h0 c1207h0 = this.f20990a;
                synchronized (c1207h0) {
                    iAppMetricaService = c1207h0.f19702d;
                }
                if (iAppMetricaService != null) {
                    try {
                        a(iAppMetricaService);
                        Lk lk = this.f20991b;
                        if (lk == null || ((C1274ji) lk).a()) {
                            this.f20990a.c();
                            return;
                        }
                        return;
                    } catch (RemoteException unused) {
                    }
                }
                i10++;
                if (!c() || Q1.f18798e.get()) {
                    return;
                }
            } while (i10 < 3);
        } catch (Throwable th) {
            a(th);
        }
    }
}
