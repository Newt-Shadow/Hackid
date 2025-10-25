package io.sentry.android.replay;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Build;
import android.view.MotionEvent;
import androidx.compose.runtime.internal.StabilityInferred;
import id.Function2;
import io.sentry.a2;
import io.sentry.android.replay.capture.h;
import io.sentry.android.replay.h;
import io.sentry.android.replay.u;
import io.sentry.e1;
import io.sentry.e3;
import io.sentry.h5;
import io.sentry.j5;
import io.sentry.l0;
import io.sentry.o0;
import io.sentry.s5;
import io.sentry.transport.z;
import io.sentry.u0;
import io.sentry.u5;
import io.sentry.x0;
import io.sentry.x2;
import io.sentry.y2;
import java.io.Closeable;
import java.io.File;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.c0;
import rd.b0;
@StabilityInferred(parameters = 0)
/* loaded from: classes2.dex */
public final class ReplayIntegration implements e1, Closeable, t, io.sentry.android.replay.gestures.c, y2, ComponentCallbacks, l0.b, z.b {

    /* renamed from: a  reason: collision with root package name */
    private final Context f22534a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.transport.p f22535b;

    /* renamed from: c  reason: collision with root package name */
    private final id.a f22536c;

    /* renamed from: d  reason: collision with root package name */
    private final id.l f22537d;

    /* renamed from: e  reason: collision with root package name */
    private final id.l f22538e;

    /* renamed from: f  reason: collision with root package name */
    private s5 f22539f;

    /* renamed from: g  reason: collision with root package name */
    private o0 f22540g;

    /* renamed from: h  reason: collision with root package name */
    private io.sentry.android.replay.f f22541h;

    /* renamed from: i  reason: collision with root package name */
    private io.sentry.android.replay.gestures.a f22542i;

    /* renamed from: j  reason: collision with root package name */
    private final xc.d f22543j;

    /* renamed from: k  reason: collision with root package name */
    private final xc.d f22544k;

    /* renamed from: l  reason: collision with root package name */
    private final xc.d f22545l;

    /* renamed from: m  reason: collision with root package name */
    private final AtomicBoolean f22546m;

    /* renamed from: n  reason: collision with root package name */
    private final AtomicBoolean f22547n;

    /* renamed from: o  reason: collision with root package name */
    private io.sentry.android.replay.capture.h f22548o;

    /* renamed from: p  reason: collision with root package name */
    private x2 f22549p;

    /* renamed from: q  reason: collision with root package name */
    private id.l f22550q;

    /* renamed from: r  reason: collision with root package name */
    private io.sentry.android.replay.util.i f22551r;

    /* renamed from: s  reason: collision with root package name */
    private id.a f22552s;

    /* renamed from: t  reason: collision with root package name */
    private final l f22553t;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class a implements io.sentry.hints.c {
        @Override // io.sentry.hints.c
        public boolean a() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private int f22554a;

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r10) {
            kotlin.jvm.internal.m.e(r10, "r");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SentryReplayIntegration-");
            int i10 = this.f22554a;
            this.f22554a = i10 + 1;
            sb2.append(i10);
            Thread thread = new Thread(r10, sb2.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    /* loaded from: classes2.dex */
    static final class c extends kotlin.jvm.internal.n implements id.l {
        c() {
            super(1);
        }

        public final void a(Date newTimestamp) {
            Integer num;
            kotlin.jvm.internal.m.e(newTimestamp, "newTimestamp");
            io.sentry.android.replay.capture.h hVar = ReplayIntegration.this.f22548o;
            if (hVar != null) {
                io.sentry.android.replay.capture.h hVar2 = ReplayIntegration.this.f22548o;
                if (hVar2 != null) {
                    num = Integer.valueOf(hVar2.k());
                } else {
                    num = null;
                }
                kotlin.jvm.internal.m.b(num);
                hVar.i(num.intValue() + 1);
            }
            io.sentry.android.replay.capture.h hVar3 = ReplayIntegration.this.f22548o;
            if (hVar3 != null) {
                hVar3.h(newTimestamp);
            }
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((Date) obj);
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes2.dex */
    static final class d extends kotlin.jvm.internal.n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Bitmap f22556e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ c0 f22557f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ ReplayIntegration f22558g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(Bitmap bitmap, c0 c0Var, ReplayIntegration replayIntegration) {
            super(2);
            this.f22556e = bitmap;
            this.f22557f = c0Var;
            this.f22558g = replayIntegration;
        }

        public final void a(io.sentry.android.replay.h onScreenshotRecorded, long j10) {
            kotlin.jvm.internal.m.e(onScreenshotRecorded, "$this$onScreenshotRecorded");
            onScreenshotRecorded.g(this.f22556e, j10, (String) this.f22557f.f24971a);
            this.f22558g.u();
        }

        @Override // id.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            a((io.sentry.android.replay.h) obj, ((Number) obj2).longValue());
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes2.dex */
    static final class e extends kotlin.jvm.internal.n implements Function2 {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ File f22559e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ long f22560f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ ReplayIntegration f22561g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(File file, long j10, ReplayIntegration replayIntegration) {
            super(2);
            this.f22559e = file;
            this.f22560f = j10;
            this.f22561g = replayIntegration;
        }

        public final void a(io.sentry.android.replay.h onScreenshotRecorded, long j10) {
            kotlin.jvm.internal.m.e(onScreenshotRecorded, "$this$onScreenshotRecorded");
            io.sentry.android.replay.h.f(onScreenshotRecorded, this.f22559e, this.f22560f, null, 4, null);
            this.f22561g.u();
        }

        @Override // id.Function2
        public /* bridge */ /* synthetic */ Object invoke(Object obj, Object obj2) {
            a((io.sentry.android.replay.h) obj, ((Number) obj2).longValue());
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes2.dex */
    static final class f extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final f f22562e = new f();

        f() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final io.sentry.util.t invoke() {
            return new io.sentry.util.t();
        }
    }

    /* loaded from: classes2.dex */
    static final class g extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final g f22563e = new g();

        g() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final ScheduledExecutorService invoke() {
            return Executors.newSingleThreadScheduledExecutor(new b());
        }
    }

    /* loaded from: classes2.dex */
    static final class h extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final h f22564e = new h();

        h() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final o invoke() {
            return o.f22757e.b();
        }
    }

    public ReplayIntegration(Context context, io.sentry.transport.p dateProvider, id.a aVar, id.l lVar, id.l lVar2) {
        xc.d a10;
        xc.d a11;
        xc.d a12;
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(dateProvider, "dateProvider");
        this.f22534a = context;
        this.f22535b = dateProvider;
        this.f22536c = aVar;
        this.f22537d = lVar;
        this.f22538e = lVar2;
        a10 = xc.f.a(f.f22562e);
        this.f22543j = a10;
        a11 = xc.f.a(h.f22564e);
        this.f22544k = a11;
        a12 = xc.f.a(g.f22563e);
        this.f22545l = a12;
        this.f22546m = new AtomicBoolean(false);
        this.f22547n = new AtomicBoolean(false);
        a2 a13 = a2.a();
        kotlin.jvm.internal.m.d(a13, "getInstance()");
        this.f22549p = a13;
        this.f22551r = new io.sentry.android.replay.util.i(null, 1, null);
        this.f22553t = new l();
    }

    private final synchronized void A0() {
        boolean z10;
        io.sentry.transport.z l10;
        io.sentry.transport.z l11;
        if (this.f22546m.get()) {
            l lVar = this.f22553t;
            m mVar = m.RESUMED;
            if (lVar.b(mVar)) {
                if (!this.f22547n.get()) {
                    s5 s5Var = this.f22539f;
                    if (s5Var == null) {
                        kotlin.jvm.internal.m.s("options");
                        s5Var = null;
                    }
                    if (s5Var.getConnectionStatusProvider().b() != l0.a.DISCONNECTED) {
                        o0 o0Var = this.f22540g;
                        boolean z11 = true;
                        if (o0Var != null && (l11 = o0Var.l()) != null && l11.j(io.sentry.i.All)) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (!z10) {
                            o0 o0Var2 = this.f22540g;
                            if (o0Var2 == null || (l10 = o0Var2.l()) == null || !l10.j(io.sentry.i.Replay)) {
                                z11 = false;
                            }
                            if (!z11) {
                                io.sentry.android.replay.capture.h hVar = this.f22548o;
                                if (hVar != null) {
                                    hVar.resume();
                                }
                                io.sentry.android.replay.f fVar = this.f22541h;
                                if (fVar != null) {
                                    fVar.resume();
                                }
                                this.f22553t.d(mVar);
                            }
                        }
                    }
                }
            }
        }
    }

    private final io.sentry.util.t E() {
        return (io.sentry.util.t) this.f22543j.getValue();
    }

    private final void J0() {
        if (this.f22541h instanceof io.sentry.android.replay.d) {
            CopyOnWriteArrayList e10 = X().e();
            io.sentry.android.replay.f fVar = this.f22541h;
            kotlin.jvm.internal.m.c(fVar, "null cannot be cast to non-null type io.sentry.android.replay.OnRootViewsChangedListener");
            e10.remove((io.sentry.android.replay.d) fVar);
        }
        X().e().remove(this.f22542i);
    }

    private final ScheduledExecutorService P() {
        return (ScheduledExecutorService) this.f22545l.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(c0 screen, u0 it) {
        kotlin.jvm.internal.m.e(screen, "$screen");
        kotlin.jvm.internal.m.e(it, "it");
        String C = it.C();
        String str = null;
        if (C != null) {
            str = b0.I0(C, '.', null, 2, null);
        }
        screen.f24971a = str;
    }

    private final synchronized void q0() {
        if (this.f22546m.get()) {
            l lVar = this.f22553t;
            m mVar = m.PAUSED;
            if (lVar.b(mVar)) {
                io.sentry.android.replay.f fVar = this.f22541h;
                if (fVar != null) {
                    fVar.pause();
                }
                io.sentry.android.replay.capture.h hVar = this.f22548o;
                if (hVar != null) {
                    hVar.pause();
                }
                this.f22553t.d(mVar);
            }
        }
    }

    private final void t0() {
        if (this.f22541h instanceof io.sentry.android.replay.d) {
            CopyOnWriteArrayList e10 = X().e();
            io.sentry.android.replay.f fVar = this.f22541h;
            kotlin.jvm.internal.m.c(fVar, "null cannot be cast to non-null type io.sentry.android.replay.OnRootViewsChangedListener");
            e10.add((io.sentry.android.replay.d) fVar);
        }
        X().e().add(this.f22542i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void u() {
        boolean z10;
        io.sentry.transport.z l10;
        io.sentry.transport.z l11;
        if (this.f22548o instanceof io.sentry.android.replay.capture.m) {
            s5 s5Var = this.f22539f;
            if (s5Var == null) {
                kotlin.jvm.internal.m.s("options");
                s5Var = null;
            }
            if (s5Var.getConnectionStatusProvider().b() != l0.a.DISCONNECTED) {
                o0 o0Var = this.f22540g;
                boolean z11 = true;
                if (o0Var != null && (l11 = o0Var.l()) != null && l11.j(io.sentry.i.All)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    o0 o0Var2 = this.f22540g;
                    if (o0Var2 == null || (l10 = o0Var2.l()) == null || !l10.j(io.sentry.i.Replay)) {
                        z11 = false;
                    }
                    if (!z11) {
                        return;
                    }
                }
            }
            q0();
        }
    }

    private final void v(String str) {
        File[] listFiles;
        boolean H;
        boolean N;
        boolean b02;
        boolean N2;
        s5 s5Var = this.f22539f;
        if (s5Var == null) {
            kotlin.jvm.internal.m.s("options");
            s5Var = null;
        }
        String cacheDirPath = s5Var.getCacheDirPath();
        if (cacheDirPath != null && (listFiles = new File(cacheDirPath).listFiles()) != null) {
            kotlin.jvm.internal.m.d(listFiles, "listFiles()");
            for (File file : listFiles) {
                String name = file.getName();
                kotlin.jvm.internal.m.d(name, "name");
                H = rd.y.H(name, "replay_", false, 2, null);
                if (H) {
                    String rVar = W().toString();
                    kotlin.jvm.internal.m.d(rVar, "replayId.toString()");
                    N = b0.N(name, rVar, false, 2, null);
                    if (!N) {
                        b02 = b0.b0(str);
                        if (!b02) {
                            N2 = b0.N(name, str, false, 2, null);
                            if (N2) {
                            }
                        }
                        io.sentry.util.e.a(file);
                    }
                }
            }
        }
    }

    static /* synthetic */ void w(ReplayIntegration replayIntegration, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = "";
        }
        replayIntegration.v(str);
    }

    private final void x() {
        s5 s5Var = this.f22539f;
        s5 s5Var2 = null;
        if (s5Var == null) {
            kotlin.jvm.internal.m.s("options");
            s5Var = null;
        }
        x0 executorService = s5Var.getExecutorService();
        kotlin.jvm.internal.m.d(executorService, "options.executorService");
        s5 s5Var3 = this.f22539f;
        if (s5Var3 == null) {
            kotlin.jvm.internal.m.s("options");
        } else {
            s5Var2 = s5Var3;
        }
        io.sentry.android.replay.util.g.g(executorService, s5Var2, "ReplayIntegration.finalize_previous_replay", new Runnable() { // from class: io.sentry.android.replay.j
            @Override // java.lang.Runnable
            public final void run() {
                ReplayIntegration.z(ReplayIntegration.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z(ReplayIntegration this$0) {
        List list;
        s5 s5Var;
        kotlin.jvm.internal.m.e(this$0, "this$0");
        s5 s5Var2 = this$0.f22539f;
        if (s5Var2 == null) {
            kotlin.jvm.internal.m.s("options");
            s5Var2 = null;
        }
        io.sentry.cache.t findPersistingScopeObserver = s5Var2.findPersistingScopeObserver();
        if (findPersistingScopeObserver != null) {
            s5 s5Var3 = this$0.f22539f;
            if (s5Var3 == null) {
                kotlin.jvm.internal.m.s("options");
                s5Var3 = null;
            }
            String str = (String) findPersistingScopeObserver.L(s5Var3, "replay.json", String.class);
            if (str != null) {
                io.sentry.protocol.r rVar = new io.sentry.protocol.r(str);
                if (kotlin.jvm.internal.m.a(rVar, io.sentry.protocol.r.f23462b)) {
                    w(this$0, null, 1, null);
                    return;
                }
                h.a aVar = io.sentry.android.replay.h.f22732j;
                s5 s5Var4 = this$0.f22539f;
                if (s5Var4 == null) {
                    kotlin.jvm.internal.m.s("options");
                    s5Var4 = null;
                }
                io.sentry.android.replay.c c10 = aVar.c(s5Var4, rVar, this$0.f22538e);
                if (c10 == null) {
                    w(this$0, null, 1, null);
                    return;
                }
                s5 s5Var5 = this$0.f22539f;
                if (s5Var5 == null) {
                    kotlin.jvm.internal.m.s("options");
                    s5Var5 = null;
                }
                Object L = findPersistingScopeObserver.L(s5Var5, "breadcrumbs.json", List.class);
                if (L instanceof List) {
                    list = (List) L;
                } else {
                    list = null;
                }
                h.a aVar2 = io.sentry.android.replay.capture.h.f22688a;
                o0 o0Var = this$0.f22540g;
                s5 s5Var6 = this$0.f22539f;
                if (s5Var6 == null) {
                    kotlin.jvm.internal.m.s("options");
                    s5Var = null;
                } else {
                    s5Var = s5Var6;
                }
                h.c c11 = aVar2.c(o0Var, s5Var, c10.b(), c10.h(), rVar, c10.d(), c10.e().c(), c10.e().d(), c10.f(), c10.a(), c10.e().b(), c10.e().a(), c10.g(), list, new LinkedList(c10.c()));
                if (c11 instanceof h.c.a) {
                    io.sentry.c0 hint = io.sentry.util.j.e(new a());
                    o0 o0Var2 = this$0.f22540g;
                    kotlin.jvm.internal.m.d(hint, "hint");
                    ((h.c.a) c11).a(o0Var2, hint);
                }
                this$0.v(str);
                return;
            }
        }
        w(this$0, null, 1, null);
    }

    public void D0(x2 converter) {
        kotlin.jvm.internal.m.e(converter, "converter");
        this.f22549p = converter;
    }

    public final File H() {
        io.sentry.android.replay.capture.h hVar = this.f22548o;
        if (hVar != null) {
            return hVar.j();
        }
        return null;
    }

    public io.sentry.protocol.r W() {
        io.sentry.protocol.r e10;
        io.sentry.android.replay.capture.h hVar = this.f22548o;
        if (hVar == null || (e10 = hVar.e()) == null) {
            io.sentry.protocol.r EMPTY_ID = io.sentry.protocol.r.f23462b;
            kotlin.jvm.internal.m.d(EMPTY_ID, "EMPTY_ID");
            return EMPTY_ID;
        }
        return e10;
    }

    public final o X() {
        return (o) this.f22544k.getValue();
    }

    @Override // io.sentry.android.replay.gestures.c
    public void a(MotionEvent event) {
        io.sentry.android.replay.capture.h hVar;
        kotlin.jvm.internal.m.e(event, "event");
        if (this.f22546m.get() && this.f22553t.c() && (hVar = this.f22548o) != null) {
            hVar.a(event);
        }
    }

    @Override // io.sentry.y2
    public synchronized void b(Boolean bool) {
        io.sentry.protocol.r rVar;
        if (this.f22546m.get() && d0()) {
            io.sentry.protocol.r rVar2 = io.sentry.protocol.r.f23462b;
            io.sentry.android.replay.capture.h hVar = this.f22548o;
            io.sentry.android.replay.capture.h hVar2 = null;
            s5 s5Var = null;
            if (hVar != null) {
                rVar = hVar.e();
            } else {
                rVar = null;
            }
            if (rVar2.equals(rVar)) {
                s5 s5Var2 = this.f22539f;
                if (s5Var2 == null) {
                    kotlin.jvm.internal.m.s("options");
                } else {
                    s5Var = s5Var2;
                }
                s5Var.getLogger().c(j5.DEBUG, "Replay id is not set, not capturing for event", new Object[0]);
                return;
            }
            io.sentry.android.replay.capture.h hVar3 = this.f22548o;
            if (hVar3 != null) {
                hVar3.d(kotlin.jvm.internal.m.a(bool, Boolean.TRUE), new c());
            }
            io.sentry.android.replay.capture.h hVar4 = this.f22548o;
            if (hVar4 != null) {
                hVar2 = hVar4.g();
            }
            this.f22548o = hVar2;
        }
    }

    @Override // io.sentry.l0.b
    public void c(l0.a status) {
        kotlin.jvm.internal.m.e(status, "status");
        if (!(this.f22548o instanceof io.sentry.android.replay.capture.m)) {
            return;
        }
        if (status == l0.a.DISCONNECTED) {
            q0();
        } else {
            A0();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        io.sentry.transport.z l10;
        if (this.f22546m.get() && this.f22553t.b(m.CLOSED)) {
            s5 s5Var = this.f22539f;
            s5 s5Var2 = null;
            if (s5Var == null) {
                kotlin.jvm.internal.m.s("options");
                s5Var = null;
            }
            s5Var.getConnectionStatusProvider().d(this);
            o0 o0Var = this.f22540g;
            if (o0Var != null && (l10 = o0Var.l()) != null) {
                l10.z(this);
            }
            s5 s5Var3 = this.f22539f;
            if (s5Var3 == null) {
                kotlin.jvm.internal.m.s("options");
                s5Var3 = null;
            }
            if (s5Var3.getSessionReplay().q()) {
                try {
                    this.f22534a.unregisterComponentCallbacks(this);
                } catch (Throwable unused) {
                }
            }
            stop();
            io.sentry.android.replay.f fVar = this.f22541h;
            if (fVar != null) {
                fVar.close();
            }
            this.f22541h = null;
            X().close();
            ScheduledExecutorService replayExecutor = P();
            kotlin.jvm.internal.m.d(replayExecutor, "replayExecutor");
            s5 s5Var4 = this.f22539f;
            if (s5Var4 == null) {
                kotlin.jvm.internal.m.s("options");
            } else {
                s5Var2 = s5Var4;
            }
            io.sentry.android.replay.util.g.d(replayExecutor, s5Var2);
            this.f22553t.d(m.CLOSED);
        }
    }

    public boolean d0() {
        if (this.f22553t.a().compareTo(m.STARTED) >= 0 && this.f22553t.a().compareTo(m.STOPPED) < 0) {
            return true;
        }
        return false;
    }

    @Override // io.sentry.transport.z.b
    public void e(io.sentry.transport.z rateLimiter) {
        kotlin.jvm.internal.m.e(rateLimiter, "rateLimiter");
        if (!(this.f22548o instanceof io.sentry.android.replay.capture.m)) {
            return;
        }
        if (!rateLimiter.j(io.sentry.i.All) && !rateLimiter.j(io.sentry.i.Replay)) {
            A0();
        } else {
            q0();
        }
    }

    @Override // io.sentry.e1
    public void f(o0 hub, s5 options) {
        io.sentry.android.replay.f yVar;
        io.sentry.android.replay.gestures.a aVar;
        kotlin.jvm.internal.m.e(hub, "hub");
        kotlin.jvm.internal.m.e(options, "options");
        this.f22539f = options;
        if (Build.VERSION.SDK_INT < 26) {
            options.getLogger().c(j5.INFO, "Session replay is only supported on API 26 and above", new Object[0]);
        } else if (!options.getSessionReplay().o() && !options.getSessionReplay().p()) {
            options.getLogger().c(j5.INFO, "Session replay is disabled, no sample rate specified", new Object[0]);
        } else {
            this.f22540g = hub;
            id.a aVar2 = this.f22536c;
            if (aVar2 == null || (yVar = (io.sentry.android.replay.f) aVar2.invoke()) == null) {
                io.sentry.android.replay.util.i iVar = this.f22551r;
                ScheduledExecutorService replayExecutor = P();
                kotlin.jvm.internal.m.d(replayExecutor, "replayExecutor");
                yVar = new y(options, this, iVar, replayExecutor);
            }
            this.f22541h = yVar;
            id.a aVar3 = this.f22552s;
            if (aVar3 == null || (aVar = (io.sentry.android.replay.gestures.a) aVar3.invoke()) == null) {
                aVar = new io.sentry.android.replay.gestures.a(options, this);
            }
            this.f22542i = aVar;
            this.f22546m.set(true);
            options.getConnectionStatusProvider().c(this);
            io.sentry.transport.z l10 = hub.l();
            if (l10 != null) {
                l10.e(this);
            }
            if (options.getSessionReplay().q()) {
                try {
                    this.f22534a.registerComponentCallbacks(this);
                } catch (Throwable th) {
                    options.getLogger().b(j5.INFO, "ComponentCallbacks is not available, orientation changes won't be handled by Session replay", th);
                }
            }
            io.sentry.util.k.a("Replay");
            h5.c().b("maven:io.sentry:sentry-android-replay", "7.22.4");
            x();
        }
    }

    @Override // io.sentry.android.replay.t
    public void g(Bitmap bitmap) {
        kotlin.jvm.internal.m.e(bitmap, "bitmap");
        final c0 c0Var = new c0();
        o0 o0Var = this.f22540g;
        if (o0Var != null) {
            o0Var.y(new e3() { // from class: io.sentry.android.replay.k
                @Override // io.sentry.e3
                public final void a(u0 u0Var) {
                    ReplayIntegration.o0(c0.this, u0Var);
                }
            });
        }
        io.sentry.android.replay.capture.h hVar = this.f22548o;
        if (hVar != null) {
            hVar.f(bitmap, new d(bitmap, c0Var, this));
        }
    }

    @Override // io.sentry.y2
    public x2 h() {
        return this.f22549p;
    }

    public void k0(File screenshot, long j10) {
        kotlin.jvm.internal.m.e(screenshot, "screenshot");
        io.sentry.android.replay.capture.h hVar = this.f22548o;
        if (hVar != null) {
            h.b.a(hVar, null, new e(screenshot, j10, this), 1, null);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        u b10;
        io.sentry.android.replay.f fVar;
        kotlin.jvm.internal.m.e(newConfig, "newConfig");
        if (this.f22546m.get() && d0()) {
            io.sentry.android.replay.f fVar2 = this.f22541h;
            if (fVar2 != null) {
                fVar2.stop();
            }
            id.l lVar = this.f22537d;
            if (lVar == null || (b10 = (u) lVar.invoke(Boolean.TRUE)) == null) {
                u.a aVar = u.f22792g;
                Context context = this.f22534a;
                s5 s5Var = this.f22539f;
                if (s5Var == null) {
                    kotlin.jvm.internal.m.s("options");
                    s5Var = null;
                }
                u5 sessionReplay = s5Var.getSessionReplay();
                kotlin.jvm.internal.m.d(sessionReplay, "options.sessionReplay");
                b10 = aVar.b(context, sessionReplay);
            }
            io.sentry.android.replay.capture.h hVar = this.f22548o;
            if (hVar != null) {
                hVar.b(b10);
            }
            io.sentry.android.replay.f fVar3 = this.f22541h;
            if (fVar3 != null) {
                fVar3.start(b10);
            }
            if (this.f22553t.a() == m.PAUSED && (fVar = this.f22541h) != null) {
                fVar.pause();
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
    }

    @Override // io.sentry.y2
    public void pause() {
        this.f22547n.set(true);
        q0();
    }

    @Override // io.sentry.y2
    public void resume() {
        this.f22547n.set(false);
        A0();
    }

    @Override // io.sentry.y2
    public synchronized void start() {
        u b10;
        io.sentry.android.replay.capture.h fVar;
        io.sentry.android.replay.capture.h hVar;
        if (!this.f22546m.get()) {
            return;
        }
        l lVar = this.f22553t;
        m mVar = m.STARTED;
        s5 s5Var = null;
        if (!lVar.b(mVar)) {
            s5 s5Var2 = this.f22539f;
            if (s5Var2 == null) {
                kotlin.jvm.internal.m.s("options");
            } else {
                s5Var = s5Var2;
            }
            s5Var.getLogger().c(j5.DEBUG, "Session replay is already being recorded, not starting a new one", new Object[0]);
            return;
        }
        io.sentry.util.t E = E();
        s5 s5Var3 = this.f22539f;
        if (s5Var3 == null) {
            kotlin.jvm.internal.m.s("options");
            s5Var3 = null;
        }
        boolean a10 = io.sentry.android.replay.util.k.a(E, s5Var3.getSessionReplay().k());
        if (!a10) {
            s5 s5Var4 = this.f22539f;
            if (s5Var4 == null) {
                kotlin.jvm.internal.m.s("options");
                s5Var4 = null;
            }
            if (!s5Var4.getSessionReplay().p()) {
                s5 s5Var5 = this.f22539f;
                if (s5Var5 == null) {
                    kotlin.jvm.internal.m.s("options");
                } else {
                    s5Var = s5Var5;
                }
                s5Var.getLogger().c(j5.INFO, "Session replay is not started, full session was not sampled and onErrorSampleRate is not specified", new Object[0]);
                return;
            }
        }
        id.l lVar2 = this.f22537d;
        if (lVar2 == null || (b10 = (u) lVar2.invoke(Boolean.FALSE)) == null) {
            u.a aVar = u.f22792g;
            Context context = this.f22534a;
            s5 s5Var6 = this.f22539f;
            if (s5Var6 == null) {
                kotlin.jvm.internal.m.s("options");
                s5Var6 = null;
            }
            u5 sessionReplay = s5Var6.getSessionReplay();
            kotlin.jvm.internal.m.d(sessionReplay, "options.sessionReplay");
            b10 = aVar.b(context, sessionReplay);
        }
        id.l lVar3 = this.f22550q;
        if (lVar3 == null || (hVar = (io.sentry.android.replay.capture.h) lVar3.invoke(Boolean.valueOf(a10))) == null) {
            if (a10) {
                s5 s5Var7 = this.f22539f;
                if (s5Var7 == null) {
                    kotlin.jvm.internal.m.s("options");
                    s5Var7 = null;
                }
                o0 o0Var = this.f22540g;
                io.sentry.transport.p pVar = this.f22535b;
                ScheduledExecutorService replayExecutor = P();
                kotlin.jvm.internal.m.d(replayExecutor, "replayExecutor");
                fVar = new io.sentry.android.replay.capture.m(s5Var7, o0Var, pVar, replayExecutor, this.f22538e);
            } else {
                s5 s5Var8 = this.f22539f;
                if (s5Var8 == null) {
                    kotlin.jvm.internal.m.s("options");
                    s5Var8 = null;
                }
                o0 o0Var2 = this.f22540g;
                io.sentry.transport.p pVar2 = this.f22535b;
                io.sentry.util.t E2 = E();
                ScheduledExecutorService replayExecutor2 = P();
                kotlin.jvm.internal.m.d(replayExecutor2, "replayExecutor");
                fVar = new io.sentry.android.replay.capture.f(s5Var8, o0Var2, pVar2, E2, replayExecutor2, this.f22538e);
            }
            hVar = fVar;
        }
        this.f22548o = hVar;
        h.b.b(hVar, b10, 0, null, null, 14, null);
        io.sentry.android.replay.f fVar2 = this.f22541h;
        if (fVar2 != null) {
            fVar2.start(b10);
        }
        t0();
        this.f22553t.d(mVar);
    }

    @Override // io.sentry.y2
    public synchronized void stop() {
        if (this.f22546m.get()) {
            l lVar = this.f22553t;
            m mVar = m.STOPPED;
            if (lVar.b(mVar)) {
                J0();
                io.sentry.android.replay.f fVar = this.f22541h;
                if (fVar != null) {
                    fVar.stop();
                }
                io.sentry.android.replay.gestures.a aVar = this.f22542i;
                if (aVar != null) {
                    aVar.c();
                }
                io.sentry.android.replay.capture.h hVar = this.f22548o;
                if (hVar != null) {
                    hVar.stop();
                }
                this.f22548o = null;
                this.f22553t.d(mVar);
            }
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ReplayIntegration(Context context, io.sentry.transport.p dateProvider) {
        this(io.sentry.android.replay.util.c.a(context), dateProvider, null, null, null);
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(dateProvider, "dateProvider");
    }
}
