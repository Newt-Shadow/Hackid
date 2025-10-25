package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import n5.q;
@KeepName
/* loaded from: classes.dex */
public abstract class BasePendingResult<R extends k> extends h {

    /* renamed from: m  reason: collision with root package name */
    static final ThreadLocal f5896m = new b();

    /* renamed from: b  reason: collision with root package name */
    protected final a f5898b;

    /* renamed from: c  reason: collision with root package name */
    protected final WeakReference f5899c;

    /* renamed from: g  reason: collision with root package name */
    private k f5903g;

    /* renamed from: h  reason: collision with root package name */
    private Status f5904h;

    /* renamed from: i  reason: collision with root package name */
    private volatile boolean f5905i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f5906j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f5907k;

    /* renamed from: a  reason: collision with root package name */
    private final Object f5897a = new Object();

    /* renamed from: d  reason: collision with root package name */
    private final CountDownLatch f5900d = new CountDownLatch(1);

    /* renamed from: e  reason: collision with root package name */
    private final ArrayList f5901e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final AtomicReference f5902f = new AtomicReference();

    /* renamed from: l  reason: collision with root package name */
    private boolean f5908l = false;

    /* loaded from: classes.dex */
    public static class a extends a6.h {
        public a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 != 1) {
                if (i10 != 2) {
                    Log.wtf("BasePendingResult", "Don't know how to handle message: " + i10, new Exception());
                    return;
                }
                ((BasePendingResult) message.obj).d(Status.f5868i);
                return;
            }
            Pair pair = (Pair) message.obj;
            android.support.v4.media.session.b.a(pair.first);
            k kVar = (k) pair.second;
            try {
                throw null;
            } catch (RuntimeException e10) {
                BasePendingResult.j(kVar);
                throw e10;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BasePendingResult(f fVar) {
        Looper mainLooper;
        if (fVar != null) {
            mainLooper = fVar.d();
        } else {
            mainLooper = Looper.getMainLooper();
        }
        this.f5898b = new a(mainLooper);
        this.f5899c = new WeakReference(fVar);
    }

    private final k g() {
        k kVar;
        synchronized (this.f5897a) {
            q.o(!this.f5905i, "Result has already been consumed.");
            q.o(e(), "Result is not ready.");
            kVar = this.f5903g;
            this.f5903g = null;
            this.f5905i = true;
        }
        android.support.v4.media.session.b.a(this.f5902f.getAndSet(null));
        return (k) q.k(kVar);
    }

    private final void h(k kVar) {
        this.f5903g = kVar;
        this.f5904h = kVar.d();
        this.f5900d.countDown();
        boolean z10 = this.f5906j;
        ArrayList arrayList = this.f5901e;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((h.a) arrayList.get(i10)).a(this.f5904h);
        }
        this.f5901e.clear();
    }

    public static void j(k kVar) {
    }

    @Override // com.google.android.gms.common.api.h
    public final void a(h.a aVar) {
        boolean z10;
        if (aVar != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        q.b(z10, "Callback cannot be null.");
        synchronized (this.f5897a) {
            if (e()) {
                aVar.a(this.f5904h);
            } else {
                this.f5901e.add(aVar);
            }
        }
    }

    @Override // com.google.android.gms.common.api.h
    public final k b(long j10, TimeUnit timeUnit) {
        if (j10 > 0) {
            q.j("await must not be called on the UI thread when time is greater than zero.");
        }
        q.o(!this.f5905i, "Result has already been consumed.");
        q.o(true, "Cannot await if then() has been called.");
        try {
            if (!this.f5900d.await(j10, timeUnit)) {
                d(Status.f5868i);
            }
        } catch (InterruptedException unused) {
            d(Status.f5866g);
        }
        q.o(e(), "Result is not ready.");
        return g();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract k c(Status status);

    public final void d(Status status) {
        synchronized (this.f5897a) {
            if (!e()) {
                f(c(status));
                this.f5907k = true;
            }
        }
    }

    public final boolean e() {
        if (this.f5900d.getCount() == 0) {
            return true;
        }
        return false;
    }

    public final void f(k kVar) {
        synchronized (this.f5897a) {
            if (!this.f5907k && !this.f5906j) {
                e();
                q.o(!e(), "Results have already been set");
                q.o(!this.f5905i, "Result has already been consumed");
                h(kVar);
                return;
            }
            j(kVar);
        }
    }

    public final void i() {
        boolean z10 = true;
        if (!this.f5908l && !((Boolean) f5896m.get()).booleanValue()) {
            z10 = false;
        }
        this.f5908l = z10;
    }
}
