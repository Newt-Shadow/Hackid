package io.sentry.android.replay.capture;

import android.graphics.Bitmap;
import android.view.MotionEvent;
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
import io.sentry.util.t;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.n;
import kotlin.jvm.internal.z;
import yc.o;
import yc.w;
/* loaded from: classes2.dex */
public final class f extends io.sentry.android.replay.capture.a {

    /* renamed from: z  reason: collision with root package name */
    public static final a f22674z = new a(null);

    /* renamed from: u  reason: collision with root package name */
    private final s5 f22675u;

    /* renamed from: v  reason: collision with root package name */
    private final o0 f22676v;

    /* renamed from: w  reason: collision with root package name */
    private final p f22677w;

    /* renamed from: x  reason: collision with root package name */
    private final t f22678x;

    /* renamed from: y  reason: collision with root package name */
    private final List f22679y;

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

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ id.l f22681f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(id.l lVar) {
            super(1);
            this.f22681f = lVar;
        }

        public final void a(h.c segment) {
            kotlin.jvm.internal.m.e(segment, "segment");
            f fVar = f.this;
            fVar.L(fVar.f22679y);
            if (segment instanceof h.c.a) {
                h.c.a aVar = (h.c.a) segment;
                h.c.a.b(aVar, f.this.f22676v, null, 2, null);
                id.l lVar = this.f22681f;
                Date g02 = aVar.c().g0();
                kotlin.jvm.internal.m.d(g02, "segment.replay.timestamp");
                lVar.invoke(g02);
            }
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((h.c) obj);
            return xc.t.f32733a;
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
                f.this.f22679y.add(segment);
                f fVar = f.this;
                fVar.i(fVar.k() + 1);
            }
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((h.c) obj);
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes2.dex */
    static final class d extends n implements id.l {
        d() {
            super(1);
        }

        public final void a(h.c segment) {
            kotlin.jvm.internal.m.e(segment, "segment");
            if (segment instanceof h.c.a) {
                f.this.f22679y.add(segment);
                f fVar = f.this;
                fVar.i(fVar.k() + 1);
            }
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((h.c) obj);
            return xc.t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class e extends n implements id.l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ long f22684e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ f f22685f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ z f22686g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(long j10, f fVar, z zVar) {
            super(1);
            this.f22684e = j10;
            this.f22685f = fVar;
            this.f22686g = zVar;
        }

        @Override // id.l
        /* renamed from: a */
        public final Boolean invoke(h.c.a it) {
            kotlin.jvm.internal.m.e(it, "it");
            if (it.c().g0().getTime() < this.f22684e) {
                f fVar = this.f22685f;
                fVar.i(fVar.k() - 1);
                this.f22685f.P(it.c().h0());
                this.f22686g.f24987a = true;
                return Boolean.TRUE;
            }
            return Boolean.FALSE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(s5 options, o0 o0Var, p dateProvider, t random, ScheduledExecutorService executor, id.l lVar) {
        super(options, o0Var, dateProvider, executor, lVar);
        kotlin.jvm.internal.m.e(options, "options");
        kotlin.jvm.internal.m.e(dateProvider, "dateProvider");
        kotlin.jvm.internal.m.e(random, "random");
        kotlin.jvm.internal.m.e(executor, "executor");
        this.f22675u = options;
        this.f22676v = o0Var;
        this.f22677w = dateProvider;
        this.f22678x = random;
        this.f22679y = new ArrayList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(List list) {
        Object C;
        Object C2;
        C = yc.t.C(list);
        h.c.a aVar = (h.c.a) C;
        while (aVar != null) {
            h.c.a.b(aVar, this.f22676v, null, 2, null);
            C2 = yc.t.C(list);
            aVar = (h.c.a) C2;
            Thread.sleep(100L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(f this$0, u0 it) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(it, "it");
        it.g(this$0.e());
    }

    private final void N(String str, final id.l lVar) {
        Date d10;
        Object O;
        List s10;
        long c10 = this.f22675u.getSessionReplay().c();
        long a10 = this.f22677w.a();
        io.sentry.android.replay.h p10 = p();
        boolean z10 = false;
        if (p10 != null && (s10 = p10.s()) != null && (!s10.isEmpty())) {
            z10 = true;
        }
        if (z10) {
            io.sentry.android.replay.h p11 = p();
            kotlin.jvm.internal.m.b(p11);
            O = w.O(p11.s());
            d10 = io.sentry.j.d(((io.sentry.android.replay.i) O).c());
        } else {
            d10 = io.sentry.j.d(a10 - c10);
        }
        final Date date = d10;
        kotlin.jvm.internal.m.d(date, "if (cache?.frames?.isNot…ReplayDuration)\n        }");
        final int k10 = k();
        final long time = a10 - date.getTime();
        final r e10 = e();
        final int c11 = s().c();
        final int d11 = s().d();
        io.sentry.android.replay.util.g.h(t(), this.f22675u, "BufferCaptureStrategy." + str, new Runnable() { // from class: io.sentry.android.replay.capture.c
            @Override // java.lang.Runnable
            public final void run() {
                f.O(f.this, time, date, e10, k10, c11, d11, lVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O(f this$0, long j10, Date currentSegmentTimestamp, r replayId, int i10, int i11, int i12, id.l onSegmentCreated) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(currentSegmentTimestamp, "$currentSegmentTimestamp");
        kotlin.jvm.internal.m.e(replayId, "$replayId");
        kotlin.jvm.internal.m.e(onSegmentCreated, "$onSegmentCreated");
        onSegmentCreated.invoke(io.sentry.android.replay.capture.a.o(this$0, j10, currentSegmentTimestamp, replayId, i10, i11, i12, null, null, 0, 0, null, null, null, 8128, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(File file) {
        if (file == null) {
            return;
        }
        try {
            if (!file.delete()) {
                this.f22675u.getLogger().c(j5.ERROR, "Failed to delete replay segment: %s", file.getAbsolutePath());
            }
        } catch (Throwable th) {
            this.f22675u.getLogger().a(j5.ERROR, th, "Failed to delete replay segment: %s", file.getAbsolutePath());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q(f this$0, Function2 store, long j10) {
        String str;
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(store, "$store");
        io.sentry.android.replay.h p10 = this$0.p();
        if (p10 != null) {
            store.invoke(p10, Long.valueOf(j10));
        }
        long a10 = this$0.f22677w.a() - this$0.f22675u.getSessionReplay().c();
        io.sentry.android.replay.h p11 = this$0.p();
        if (p11 != null) {
            str = p11.x(a10);
        } else {
            str = null;
        }
        this$0.C(str);
        this$0.R(this$0.f22679y, a10);
    }

    private final void R(List list, long j10) {
        z zVar = new z();
        yc.t.A(list, new e(j10, this, zVar));
        if (zVar.f24987a) {
            int i10 = 0;
            for (Object obj : list) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    o.q();
                }
                ((h.c.a) obj).d(i10);
                i10 = i11;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S(File file) {
        io.sentry.util.e.a(file);
    }

    @Override // io.sentry.android.replay.capture.a, io.sentry.android.replay.capture.h
    public void a(MotionEvent event) {
        kotlin.jvm.internal.m.e(event, "event");
        super.a(event);
        h.a.f(h.f22688a, q(), this.f22677w.a() - this.f22675u.getSessionReplay().c(), null, 4, null);
    }

    @Override // io.sentry.android.replay.capture.a, io.sentry.android.replay.capture.h
    public void b(u recorderConfig) {
        kotlin.jvm.internal.m.e(recorderConfig, "recorderConfig");
        N("configuration_changed", new c());
        super.b(recorderConfig);
    }

    @Override // io.sentry.android.replay.capture.h
    public void d(boolean z10, id.l onSegmentSent) {
        kotlin.jvm.internal.m.e(onSegmentSent, "onSegmentSent");
        if (!io.sentry.android.replay.util.k.a(this.f22678x, this.f22675u.getSessionReplay().g())) {
            this.f22675u.getLogger().c(j5.INFO, "Replay wasn't sampled by onErrorSampleRate, not capturing for event", new Object[0]);
            return;
        }
        o0 o0Var = this.f22676v;
        if (o0Var != null) {
            o0Var.y(new e3() { // from class: io.sentry.android.replay.capture.d
                @Override // io.sentry.e3
                public final void a(u0 u0Var) {
                    f.M(f.this, u0Var);
                }
            });
        }
        if (z10) {
            y().set(true);
            this.f22675u.getLogger().c(j5.DEBUG, "Not capturing replay for crashed event, will be captured on next launch", new Object[0]);
            return;
        }
        N("capture_replay", new b(onSegmentSent));
    }

    @Override // io.sentry.android.replay.capture.h
    public void f(Bitmap bitmap, final Function2 store) {
        kotlin.jvm.internal.m.e(store, "store");
        final long a10 = this.f22677w.a();
        io.sentry.android.replay.util.g.h(t(), this.f22675u, "BufferCaptureStrategy.add_frame", new Runnable() { // from class: io.sentry.android.replay.capture.e
            @Override // java.lang.Runnable
            public final void run() {
                f.Q(f.this, store, a10);
            }
        });
    }

    @Override // io.sentry.android.replay.capture.h
    public h g() {
        if (y().get()) {
            this.f22675u.getLogger().c(j5.DEBUG, "Not converting to session mode, because the process is about to terminate", new Object[0]);
            return this;
        }
        m mVar = new m(this.f22675u, this.f22676v, this.f22677w, t(), null, 16, null);
        mVar.c(s(), k(), e(), t5.b.BUFFER);
        return mVar;
    }

    @Override // io.sentry.android.replay.capture.a, io.sentry.android.replay.capture.h
    public void pause() {
        N("pause", new d());
        super.pause();
    }

    @Override // io.sentry.android.replay.capture.a, io.sentry.android.replay.capture.h
    public void stop() {
        final File file;
        io.sentry.android.replay.h p10 = p();
        if (p10 != null) {
            file = p10.v();
        } else {
            file = null;
        }
        io.sentry.android.replay.util.g.h(t(), this.f22675u, "BufferCaptureStrategy.stop", new Runnable() { // from class: io.sentry.android.replay.capture.b
            @Override // java.lang.Runnable
            public final void run() {
                f.S(file);
            }
        });
        super.stop();
    }
}
