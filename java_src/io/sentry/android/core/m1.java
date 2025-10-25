package io.sentry.android.core;

import androidx.lifecycle.DefaultLifecycleObserver;
import io.appmetrica.analytics.impl.C1515ta;
import io.appmetrica.analytics.impl.H2;
import io.sentry.e3;
import io.sentry.f6;
import io.sentry.j5;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicLong;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class m1 implements DefaultLifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicLong f22412a;

    /* renamed from: b  reason: collision with root package name */
    private final long f22413b;

    /* renamed from: c  reason: collision with root package name */
    private TimerTask f22414c;

    /* renamed from: d  reason: collision with root package name */
    private final Timer f22415d;

    /* renamed from: e  reason: collision with root package name */
    private final Object f22416e;

    /* renamed from: f  reason: collision with root package name */
    private final io.sentry.o0 f22417f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f22418g;

    /* renamed from: h  reason: collision with root package name */
    private final boolean f22419h;

    /* renamed from: i  reason: collision with root package name */
    private final io.sentry.transport.p f22420i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a extends TimerTask {
        a() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (m1.this.f22418g) {
                m1.this.f22417f.e();
            }
            m1.this.f22417f.B().getReplayController().stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m1(io.sentry.o0 o0Var, long j10, boolean z10, boolean z11) {
        this(o0Var, j10, z10, z11, io.sentry.transport.n.b());
    }

    private void e(String str) {
        if (this.f22419h) {
            io.sentry.e eVar = new io.sentry.e();
            eVar.r("navigation");
            eVar.o("state", str);
            eVar.n("app.lifecycle");
            eVar.p(j5.INFO);
            this.f22417f.t(eVar);
        }
    }

    private void f() {
        synchronized (this.f22416e) {
            TimerTask timerTask = this.f22414c;
            if (timerTask != null) {
                timerTask.cancel();
                this.f22414c = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void g(io.sentry.u0 u0Var) {
        f6 k10;
        if (this.f22412a.get() == 0 && (k10 = u0Var.k()) != null && k10.k() != null) {
            this.f22412a.set(k10.k().getTime());
        }
    }

    private void h() {
        synchronized (this.f22416e) {
            f();
            if (this.f22415d != null) {
                a aVar = new a();
                this.f22414c = aVar;
                this.f22415d.schedule(aVar, this.f22413b);
            }
        }
    }

    private void i() {
        f();
        long a10 = this.f22420i.a();
        this.f22417f.y(new e3() { // from class: io.sentry.android.core.l1
            @Override // io.sentry.e3
            public final void a(io.sentry.u0 u0Var) {
                m1.this.g(u0Var);
            }
        });
        long j10 = this.f22412a.get();
        if (j10 == 0 || j10 + this.f22413b <= a10) {
            if (this.f22418g) {
                this.f22417f.f();
            }
            this.f22417f.B().getReplayController().start();
        }
        this.f22417f.B().getReplayController().resume();
        this.f22412a.set(a10);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStart(androidx.lifecycle.m mVar) {
        i();
        e(C1515ta.f20667g);
        o0.a().c(false);
    }

    @Override // androidx.lifecycle.DefaultLifecycleObserver
    public void onStop(androidx.lifecycle.m mVar) {
        this.f22412a.set(this.f22420i.a());
        this.f22417f.B().getReplayController().pause();
        h();
        o0.a().c(true);
        e(H2.f18288g);
    }

    m1(io.sentry.o0 o0Var, long j10, boolean z10, boolean z11, io.sentry.transport.p pVar) {
        this.f22412a = new AtomicLong(0L);
        this.f22415d = new Timer(true);
        this.f22416e = new Object();
        this.f22413b = j10;
        this.f22418g = z10;
        this.f22419h = z11;
        this.f22417f = o0Var;
        this.f22420i = pVar;
    }
}
