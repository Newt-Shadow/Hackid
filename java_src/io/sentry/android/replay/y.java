package io.sentry.android.replay;

import android.view.View;
import io.sentry.s5;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes2.dex */
public final class y implements f, io.sentry.android.replay.d {

    /* renamed from: k  reason: collision with root package name */
    public static final a f22870k = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final s5 f22871a;

    /* renamed from: b  reason: collision with root package name */
    private final t f22872b;

    /* renamed from: c  reason: collision with root package name */
    private final io.sentry.android.replay.util.i f22873c;

    /* renamed from: d  reason: collision with root package name */
    private final ScheduledExecutorService f22874d;

    /* renamed from: e  reason: collision with root package name */
    private final AtomicBoolean f22875e;

    /* renamed from: f  reason: collision with root package name */
    private final ArrayList f22876f;

    /* renamed from: g  reason: collision with root package name */
    private final Object f22877g;

    /* renamed from: h  reason: collision with root package name */
    private s f22878h;

    /* renamed from: i  reason: collision with root package name */
    private ScheduledFuture f22879i;

    /* renamed from: j  reason: collision with root package name */
    private final xc.d f22880j;

    /* loaded from: classes2.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        private int f22881a;

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable r10) {
            kotlin.jvm.internal.m.e(r10, "r");
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SentryWindowRecorder-");
            int i10 = this.f22881a;
            this.f22881a = i10 + 1;
            sb2.append(i10);
            Thread thread = new Thread(r10, sb2.toString());
            thread.setDaemon(true);
            return thread;
        }
    }

    /* loaded from: classes2.dex */
    static final class c extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final c f22882e = new c();

        c() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final ScheduledExecutorService invoke() {
            return Executors.newSingleThreadScheduledExecutor(new b());
        }
    }

    /* loaded from: classes2.dex */
    static final class d extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ View f22883e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(View view) {
            super(1);
            this.f22883e = view;
        }

        @Override // id.l
        /* renamed from: a */
        public final Boolean invoke(WeakReference it) {
            kotlin.jvm.internal.m.e(it, "it");
            return Boolean.valueOf(kotlin.jvm.internal.m.a(it.get(), this.f22883e));
        }
    }

    public y(s5 options, t tVar, io.sentry.android.replay.util.i mainLooperHandler, ScheduledExecutorService replayExecutor) {
        xc.d a10;
        kotlin.jvm.internal.m.e(options, "options");
        kotlin.jvm.internal.m.e(mainLooperHandler, "mainLooperHandler");
        kotlin.jvm.internal.m.e(replayExecutor, "replayExecutor");
        this.f22871a = options;
        this.f22872b = tVar;
        this.f22873c = mainLooperHandler;
        this.f22874d = replayExecutor;
        this.f22875e = new AtomicBoolean(false);
        this.f22876f = new ArrayList();
        this.f22877g = new Object();
        a10 = xc.f.a(c.f22882e);
        this.f22880j = a10;
    }

    private final ScheduledExecutorService c() {
        return (ScheduledExecutorService) this.f22880j.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(y this$0) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        s sVar = this$0.f22878h;
        if (sVar != null) {
            sVar.i();
        }
    }

    @Override // io.sentry.android.replay.d
    public void a(View root, boolean z10) {
        Object a02;
        View view;
        kotlin.jvm.internal.m.e(root, "root");
        synchronized (this.f22877g) {
            if (z10) {
                this.f22876f.add(new WeakReference(root));
                s sVar = this.f22878h;
                if (sVar != null) {
                    sVar.h(root);
                    xc.t tVar = xc.t.f32733a;
                }
            } else {
                s sVar2 = this.f22878h;
                if (sVar2 != null) {
                    sVar2.v(root);
                }
                yc.t.A(this.f22876f, new d(root));
                a02 = yc.w.a0(this.f22876f);
                WeakReference weakReference = (WeakReference) a02;
                if (weakReference != null) {
                    view = (View) weakReference.get();
                } else {
                    view = null;
                }
                if (view != null && !kotlin.jvm.internal.m.a(root, view)) {
                    s sVar3 = this.f22878h;
                    if (sVar3 != null) {
                        sVar3.h(view);
                        xc.t tVar2 = xc.t.f32733a;
                    }
                } else {
                    xc.t tVar3 = xc.t.f32733a;
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        stop();
        ScheduledExecutorService capturer = c();
        kotlin.jvm.internal.m.d(capturer, "capturer");
        io.sentry.android.replay.util.g.d(capturer, this.f22871a);
    }

    @Override // io.sentry.android.replay.f
    public void pause() {
        s sVar = this.f22878h;
        if (sVar != null) {
            sVar.t();
        }
    }

    @Override // io.sentry.android.replay.f
    public void resume() {
        s sVar = this.f22878h;
        if (sVar != null) {
            sVar.u();
        }
    }

    @Override // io.sentry.android.replay.f
    public void start(u recorderConfig) {
        kotlin.jvm.internal.m.e(recorderConfig, "recorderConfig");
        if (this.f22875e.getAndSet(true)) {
            return;
        }
        this.f22878h = new s(recorderConfig, this.f22871a, this.f22873c, this.f22874d, this.f22872b);
        ScheduledExecutorService capturer = c();
        kotlin.jvm.internal.m.d(capturer, "capturer");
        this.f22879i = io.sentry.android.replay.util.g.e(capturer, this.f22871a, "WindowRecorder.capture", 100L, 1000 / recorderConfig.b(), TimeUnit.MILLISECONDS, new Runnable() { // from class: io.sentry.android.replay.x
            @Override // java.lang.Runnable
            public final void run() {
                y.e(y.this);
            }
        });
    }

    @Override // io.sentry.android.replay.f
    public void stop() {
        synchronized (this.f22877g) {
            for (WeakReference weakReference : this.f22876f) {
                s sVar = this.f22878h;
                if (sVar != null) {
                    sVar.v((View) weakReference.get());
                }
            }
            this.f22876f.clear();
            xc.t tVar = xc.t.f32733a;
        }
        s sVar2 = this.f22878h;
        if (sVar2 != null) {
            sVar2.m();
        }
        this.f22878h = null;
        ScheduledFuture scheduledFuture = this.f22879i;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f22879i = null;
        this.f22875e.set(false);
    }
}
