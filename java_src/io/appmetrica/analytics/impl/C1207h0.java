package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.internal.IAppMetricaService;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: io.appmetrica.analytics.impl.h0  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1207h0 {

    /* renamed from: j  reason: collision with root package name */
    public static final long f19698j = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: a  reason: collision with root package name */
    public final Context f19699a;

    /* renamed from: b  reason: collision with root package name */
    public final ICommonExecutor f19700b;

    /* renamed from: e  reason: collision with root package name */
    public CountDownLatch f19703e;

    /* renamed from: g  reason: collision with root package name */
    public final K1 f19705g;

    /* renamed from: d  reason: collision with root package name */
    public IAppMetricaService f19702d = null;

    /* renamed from: f  reason: collision with root package name */
    public final Object f19704f = new Object();

    /* renamed from: h  reason: collision with root package name */
    public final RunnableC1157f0 f19706h = new RunnableC1157f0(this);

    /* renamed from: i  reason: collision with root package name */
    public final ServiceConnectionC1182g0 f19707i = new ServiceConnectionC1182g0(this);

    /* renamed from: c  reason: collision with root package name */
    public boolean f19701c = false;

    public C1207h0(Context context, ICommonExecutor iCommonExecutor, K1 k12) {
        this.f19699a = context.getApplicationContext();
        this.f19700b = iCommonExecutor;
        this.f19705g = k12;
    }

    public final synchronized boolean a() {
        return this.f19702d != null;
    }

    public final void b() {
        synchronized (this.f19704f) {
            this.f19700b.remove(this.f19706h);
        }
    }

    public final void c() {
        ICommonExecutor iCommonExecutor = this.f19700b;
        synchronized (this.f19704f) {
            iCommonExecutor.remove(this.f19706h);
            if (!this.f19701c) {
                iCommonExecutor.executeDelayed(this.f19706h, f19698j);
            }
        }
    }

    public final void a(Long l10) {
        try {
            synchronized (this) {
                CountDownLatch countDownLatch = this.f19703e;
                if (countDownLatch == null) {
                    return;
                }
                countDownLatch.await(l10.longValue(), TimeUnit.MILLISECONDS);
            }
        } catch (InterruptedException unused) {
        }
    }
}
