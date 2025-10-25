package io.sentry.android.replay.capture;

import android.graphics.Bitmap;
import id.Function2;
import io.sentry.android.replay.capture.h;
import io.sentry.android.replay.u;
import io.sentry.e3;
import io.sentry.j5;
import io.sentry.o0;
import io.sentry.protocol.r;
import io.sentry.s5;
import io.sentry.t5;
import io.sentry.transport.p;
import io.sentry.u0;
import java.io.File;
import java.util.Date;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.n;
import rd.b0;
import xc.t;
/* loaded from: classes2.dex */
public final class m extends io.sentry.android.replay.capture.a {

    /* renamed from: x  reason: collision with root package name */
    public static final a f22709x = new a(null);

    /* renamed from: u  reason: collision with root package name */
    private final s5 f22710u;

    /* renamed from: v  reason: collision with root package name */
    private final o0 f22711v;

    /* renamed from: w  reason: collision with root package name */
    private final p f22712w;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends n implements id.l {
        b() {
            super(1);
        }

        public final void a(h.c segment) {
            kotlin.jvm.internal.m.e(segment, "segment");
            if (segment instanceof h.c.a) {
                h.c.a aVar = (h.c.a) segment;
                h.c.a.b(aVar, m.this.f22711v, null, 2, null);
                m mVar = m.this;
                mVar.i(mVar.k() + 1);
                m.this.h(aVar.c().g0());
            }
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((h.c) obj);
            return t.f32733a;
        }
    }

    /* loaded from: classes2.dex */
    static final class c extends n implements id.l {
        c() {
            super(1);
        }

        public final void a(h.c segment) {
            kotlin.jvm.internal.m.e(segment, "segment");
            if (segment instanceof h.c.a) {
                h.c.a.b((h.c.a) segment, m.this.f22711v, null, 2, null);
                m mVar = m.this;
                mVar.i(mVar.k() + 1);
            }
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((h.c) obj);
            return t.f32733a;
        }
    }

    /* loaded from: classes2.dex */
    static final class d extends n implements id.l {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ File f22716f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(File file) {
            super(1);
            this.f22716f = file;
        }

        public final void a(h.c segment) {
            kotlin.jvm.internal.m.e(segment, "segment");
            if (segment instanceof h.c.a) {
                h.c.a.b((h.c.a) segment, m.this.f22711v, null, 2, null);
            }
            io.sentry.util.e.a(this.f22716f);
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((h.c) obj);
            return t.f32733a;
        }
    }

    public /* synthetic */ m(s5 s5Var, o0 o0Var, p pVar, ScheduledExecutorService scheduledExecutorService, id.l lVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(s5Var, o0Var, pVar, scheduledExecutorService, (i10 & 16) != 0 ? null : lVar);
    }

    private final void I(String str, final id.l lVar) {
        long a10 = this.f22712w.a();
        final Date x10 = x();
        if (x10 == null) {
            return;
        }
        final int k10 = k();
        final long time = a10 - x10.getTime();
        final r e10 = e();
        final int c10 = s().c();
        final int d10 = s().d();
        ScheduledExecutorService t10 = t();
        s5 s5Var = this.f22710u;
        io.sentry.android.replay.util.g.h(t10, s5Var, "SessionCaptureStrategy." + str, new Runnable() { // from class: io.sentry.android.replay.capture.j
            @Override // java.lang.Runnable
            public final void run() {
                m.J(m.this, time, x10, e10, k10, c10, d10, lVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J(m this$0, long j10, Date currentSegmentTimestamp, r replayId, int i10, int i11, int i12, id.l onSegmentCreated) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(currentSegmentTimestamp, "$currentSegmentTimestamp");
        kotlin.jvm.internal.m.e(replayId, "$replayId");
        kotlin.jvm.internal.m.e(onSegmentCreated, "$onSegmentCreated");
        onSegmentCreated.invoke(io.sentry.android.replay.capture.a.o(this$0, j10, currentSegmentTimestamp, replayId, i10, i11, i12, null, null, 0, 0, null, null, null, 8128, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K(m this$0, Function2 store, long j10, int i10, int i11) {
        m mVar;
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(store, "$store");
        io.sentry.android.replay.h p10 = this$0.p();
        if (p10 != null) {
            store.invoke(p10, Long.valueOf(j10));
        }
        Date x10 = this$0.x();
        if (x10 == null) {
            this$0.f22710u.getLogger().c(j5.DEBUG, "Segment timestamp is not set, not recording frame", new Object[0]);
        } else if (this$0.y().get()) {
            this$0.f22710u.getLogger().c(j5.DEBUG, "Not capturing segment, because the app is terminating, will be captured on next launch", new Object[0]);
        } else {
            long a10 = this$0.f22712w.a();
            if (a10 - x10.getTime() >= this$0.f22710u.getSessionReplay().l()) {
                h.c o10 = io.sentry.android.replay.capture.a.o(this$0, this$0.f22710u.getSessionReplay().l(), x10, this$0.e(), this$0.k(), i10, i11, null, null, 0, 0, null, null, null, 8128, null);
                if (o10 instanceof h.c.a) {
                    h.c.a aVar = (h.c.a) o10;
                    mVar = this$0;
                    h.c.a.b(aVar, mVar.f22711v, null, 2, null);
                    mVar.i(this$0.k() + 1);
                    mVar.h(aVar.c().g0());
                } else {
                    mVar = this$0;
                }
            } else {
                mVar = this$0;
            }
            if (a10 - this$0.u().get() >= mVar.f22710u.getSessionReplay().j()) {
                mVar.f22710u.getReplayController().stop();
                mVar.f22710u.getLogger().c(j5.INFO, "Session replay deadline exceeded (1h), stopping recording", new Object[0]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L(m this$0, u0 it) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(it, "it");
        it.g(this$0.e());
        String C = it.C();
        String str = null;
        if (C != null) {
            str = b0.I0(C, '.', null, 2, null);
        }
        this$0.C(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(u0 it) {
        kotlin.jvm.internal.m.e(it, "it");
        it.g(r.f23462b);
    }

    @Override // io.sentry.android.replay.capture.a, io.sentry.android.replay.capture.h
    public void b(u recorderConfig) {
        kotlin.jvm.internal.m.e(recorderConfig, "recorderConfig");
        I("onConfigurationChanged", new b());
        super.b(recorderConfig);
    }

    @Override // io.sentry.android.replay.capture.a, io.sentry.android.replay.capture.h
    public void c(u recorderConfig, int i10, r replayId, t5.b bVar) {
        kotlin.jvm.internal.m.e(recorderConfig, "recorderConfig");
        kotlin.jvm.internal.m.e(replayId, "replayId");
        super.c(recorderConfig, i10, replayId, bVar);
        o0 o0Var = this.f22711v;
        if (o0Var != null) {
            o0Var.y(new e3() { // from class: io.sentry.android.replay.capture.i
                @Override // io.sentry.e3
                public final void a(u0 u0Var) {
                    m.L(m.this, u0Var);
                }
            });
        }
    }

    @Override // io.sentry.android.replay.capture.h
    public void d(boolean z10, id.l onSegmentSent) {
        kotlin.jvm.internal.m.e(onSegmentSent, "onSegmentSent");
        this.f22710u.getLogger().c(j5.DEBUG, "Replay is already running in 'session' mode, not capturing for event", new Object[0]);
        y().set(z10);
    }

    @Override // io.sentry.android.replay.capture.h
    public void f(Bitmap bitmap, final Function2 store) {
        kotlin.jvm.internal.m.e(store, "store");
        final long a10 = this.f22712w.a();
        final int c10 = s().c();
        final int d10 = s().d();
        io.sentry.android.replay.util.g.h(t(), this.f22710u, "SessionCaptureStrategy.add_frame", new Runnable() { // from class: io.sentry.android.replay.capture.k
            @Override // java.lang.Runnable
            public final void run() {
                m.K(m.this, store, a10, c10, d10);
            }
        });
    }

    @Override // io.sentry.android.replay.capture.h
    public h g() {
        return this;
    }

    @Override // io.sentry.android.replay.capture.a, io.sentry.android.replay.capture.h
    public void pause() {
        I("pause", new c());
        super.pause();
    }

    @Override // io.sentry.android.replay.capture.a, io.sentry.android.replay.capture.h
    public void stop() {
        File file;
        io.sentry.android.replay.h p10 = p();
        if (p10 != null) {
            file = p10.v();
        } else {
            file = null;
        }
        I("stop", new d(file));
        o0 o0Var = this.f22711v;
        if (o0Var != null) {
            o0Var.y(new e3() { // from class: io.sentry.android.replay.capture.l
                @Override // io.sentry.e3
                public final void a(u0 u0Var) {
                    m.M(u0Var);
                }
            });
        }
        super.stop();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(s5 options, o0 o0Var, p dateProvider, ScheduledExecutorService executor, id.l lVar) {
        super(options, o0Var, dateProvider, executor, lVar);
        kotlin.jvm.internal.m.e(options, "options");
        kotlin.jvm.internal.m.e(dateProvider, "dateProvider");
        kotlin.jvm.internal.m.e(executor, "executor");
        this.f22710u = options;
        this.f22711v = o0Var;
        this.f22712w = dateProvider;
    }
}
