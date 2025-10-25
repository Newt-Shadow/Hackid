package io.sentry.android.replay;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.PixelCopy;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import io.sentry.android.replay.viewhierarchy.b;
import io.sentry.j5;
import io.sentry.s5;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2.dex */
public final class s implements ViewTreeObserver.OnDrawListener {

    /* renamed from: a  reason: collision with root package name */
    private final u f22772a;

    /* renamed from: b  reason: collision with root package name */
    private final s5 f22773b;

    /* renamed from: c  reason: collision with root package name */
    private final io.sentry.android.replay.util.i f22774c;

    /* renamed from: d  reason: collision with root package name */
    private final ScheduledExecutorService f22775d;

    /* renamed from: e  reason: collision with root package name */
    private final t f22776e;

    /* renamed from: f  reason: collision with root package name */
    private WeakReference f22777f;

    /* renamed from: g  reason: collision with root package name */
    private final xc.d f22778g;

    /* renamed from: h  reason: collision with root package name */
    private final xc.d f22779h;

    /* renamed from: i  reason: collision with root package name */
    private final Bitmap f22780i;

    /* renamed from: j  reason: collision with root package name */
    private final xc.d f22781j;

    /* renamed from: k  reason: collision with root package name */
    private final xc.d f22782k;

    /* renamed from: l  reason: collision with root package name */
    private final AtomicBoolean f22783l;

    /* renamed from: m  reason: collision with root package name */
    private final AtomicBoolean f22784m;

    /* renamed from: n  reason: collision with root package name */
    private final AtomicBoolean f22785n;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static final class a extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Canvas f22787f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Canvas canvas) {
            super(1);
            this.f22787f = canvas;
        }

        @Override // id.l
        /* renamed from: a */
        public final Boolean invoke(io.sentry.android.replay.viewhierarchy.b node) {
            List b10;
            xc.k a10;
            Integer i10;
            List b11;
            kotlin.jvm.internal.m.e(node, "node");
            if (node.c() && node.e() > 0 && node.b() > 0) {
                if (node.d() == null) {
                    return Boolean.FALSE;
                }
                if (node instanceof b.c) {
                    b11 = yc.n.b(node.d());
                    s sVar = s.this;
                    a10 = xc.q.a(b11, Integer.valueOf(sVar.n(sVar.f22780i, node.d())));
                } else {
                    int i11 = -16777216;
                    if (!(node instanceof b.d)) {
                        b10 = yc.n.b(node.d());
                        a10 = xc.q.a(b10, -16777216);
                    } else {
                        b.d dVar = (b.d) node;
                        io.sentry.android.replay.util.m j10 = dVar.j();
                        if ((j10 != null && (i10 = j10.f()) != null) || (i10 = dVar.i()) != null) {
                            i11 = i10.intValue();
                        }
                        a10 = xc.q.a(io.sentry.android.replay.util.n.c(dVar.j(), node.d(), dVar.k(), dVar.l()), Integer.valueOf(i11));
                    }
                }
                s.this.p().setColor(((Number) a10.b()).intValue());
                Canvas canvas = this.f22787f;
                s sVar2 = s.this;
                for (Rect rect : (List) a10.a()) {
                    canvas.drawRoundRect(new RectF(rect), 10.0f, 10.0f, sVar2.p());
                }
            }
            return Boolean.TRUE;
        }
    }

    /* loaded from: classes2.dex */
    static final class b extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final b f22788e = new b();

        b() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Paint invoke() {
            return new Paint();
        }
    }

    /* loaded from: classes2.dex */
    static final class c extends kotlin.jvm.internal.n implements id.a {
        c() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Matrix invoke() {
            Matrix matrix = new Matrix();
            s sVar = s.this;
            matrix.preScale(sVar.o().e(), sVar.o().f());
            return matrix;
        }
    }

    /* loaded from: classes2.dex */
    static final class d extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final d f22790e = new d();

        d() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Bitmap invoke() {
            Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.RGB_565);
            kotlin.jvm.internal.m.d(createBitmap, "createBitmap(\n          ….Config.RGB_565\n        )");
            return createBitmap;
        }
    }

    /* loaded from: classes2.dex */
    static final class e extends kotlin.jvm.internal.n implements id.a {
        e() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Canvas invoke() {
            return new Canvas(s.this.r());
        }
    }

    public s(u config, s5 options, io.sentry.android.replay.util.i mainLooperHandler, ScheduledExecutorService recorder, t tVar) {
        xc.d b10;
        xc.d b11;
        xc.d b12;
        xc.d b13;
        kotlin.jvm.internal.m.e(config, "config");
        kotlin.jvm.internal.m.e(options, "options");
        kotlin.jvm.internal.m.e(mainLooperHandler, "mainLooperHandler");
        kotlin.jvm.internal.m.e(recorder, "recorder");
        this.f22772a = config;
        this.f22773b = options;
        this.f22774c = mainLooperHandler;
        this.f22775d = recorder;
        this.f22776e = tVar;
        xc.h hVar = xc.h.f32713c;
        b10 = xc.f.b(hVar, b.f22788e);
        this.f22778g = b10;
        b11 = xc.f.b(hVar, d.f22790e);
        this.f22779h = b11;
        Bitmap createBitmap = Bitmap.createBitmap(config.d(), config.c(), Bitmap.Config.RGB_565);
        kotlin.jvm.internal.m.d(createBitmap, "createBitmap(\n        co…tmap.Config.RGB_565\n    )");
        this.f22780i = createBitmap;
        b12 = xc.f.b(hVar, new e());
        this.f22781j = b12;
        b13 = xc.f.b(hVar, new c());
        this.f22782k = b13;
        this.f22783l = new AtomicBoolean(false);
        this.f22784m = new AtomicBoolean(true);
        this.f22785n = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(final s this$0, Window window, final View view) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        try {
            this$0.f22783l.set(false);
            PixelCopy.request(window, this$0.f22780i, new PixelCopy.OnPixelCopyFinishedListener() { // from class: io.sentry.android.replay.q
                @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                public final void onPixelCopyFinished(int i10) {
                    s.k(s.this, view, i10);
                }
            }, this$0.f22774c.a());
        } catch (Throwable th) {
            this$0.f22773b.getLogger().b(j5.WARNING, "Failed to capture replay recording", th);
            this$0.f22785n.set(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(final s this$0, View view, int i10) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        if (i10 != 0) {
            this$0.f22773b.getLogger().c(j5.INFO, "Failed to capture replay recording: %d", Integer.valueOf(i10));
            this$0.f22785n.set(false);
        } else if (this$0.f22783l.get()) {
            this$0.f22773b.getLogger().c(j5.INFO, "Failed to determine view hierarchy, not capturing", new Object[0]);
            this$0.f22785n.set(false);
        } else {
            final io.sentry.android.replay.viewhierarchy.b a10 = io.sentry.android.replay.viewhierarchy.b.f22844m.a(view, null, 0, this$0.f22773b);
            io.sentry.android.replay.util.n.h(view, a10, this$0.f22773b);
            io.sentry.android.replay.util.g.h(this$0.f22775d, this$0.f22773b, "screenshot_recorder.mask", new Runnable() { // from class: io.sentry.android.replay.r
                @Override // java.lang.Runnable
                public final void run() {
                    s.l(s.this, a10);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(s this$0, io.sentry.android.replay.viewhierarchy.b viewHierarchy) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(viewHierarchy, "$viewHierarchy");
        Canvas canvas = new Canvas(this$0.f22780i);
        canvas.setMatrix(this$0.q());
        viewHierarchy.h(new a(canvas));
        t tVar = this$0.f22776e;
        if (tVar != null) {
            tVar.g(this$0.f22780i);
        }
        this$0.f22785n.set(true);
        this$0.f22783l.set(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int n(Bitmap bitmap, Rect rect) {
        Rect rect2 = new Rect(rect);
        RectF rectF = new RectF(rect2);
        q().mapRect(rectF);
        rectF.round(rect2);
        s().drawBitmap(bitmap, rect2, new Rect(0, 0, 1, 1), (Paint) null);
        return r().getPixel(0, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Paint p() {
        return (Paint) this.f22778g.getValue();
    }

    private final Matrix q() {
        return (Matrix) this.f22782k.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Bitmap r() {
        return (Bitmap) this.f22779h.getValue();
    }

    private final Canvas s() {
        return (Canvas) this.f22781j.getValue();
    }

    public final void h(View root) {
        View view;
        kotlin.jvm.internal.m.e(root, "root");
        WeakReference weakReference = this.f22777f;
        if (weakReference != null) {
            view = (View) weakReference.get();
        } else {
            view = null;
        }
        v(view);
        WeakReference weakReference2 = this.f22777f;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        this.f22777f = new WeakReference(root);
        io.sentry.android.replay.util.n.a(root, this);
        this.f22783l.set(true);
    }

    public final void i() {
        final View view;
        if (!this.f22784m.get()) {
            this.f22773b.getLogger().c(j5.DEBUG, "ScreenshotRecorder is paused, not capturing screenshot", new Object[0]);
        } else if (!this.f22783l.get() && this.f22785n.get()) {
            this.f22773b.getLogger().c(j5.DEBUG, "Content hasn't changed, repeating last known frame", new Object[0]);
            t tVar = this.f22776e;
            if (tVar != null) {
                tVar.g(this.f22780i);
            }
        } else {
            WeakReference weakReference = this.f22777f;
            if (weakReference != null) {
                view = (View) weakReference.get();
            } else {
                view = null;
            }
            if (view != null && view.getWidth() > 0 && view.getHeight() > 0 && view.isShown()) {
                final Window a10 = a0.a(view);
                if (a10 == null) {
                    this.f22773b.getLogger().c(j5.DEBUG, "Window is invalid, not capturing screenshot", new Object[0]);
                    return;
                } else {
                    this.f22774c.b(new Runnable() { // from class: io.sentry.android.replay.p
                        @Override // java.lang.Runnable
                        public final void run() {
                            s.j(s.this, a10, view);
                        }
                    });
                    return;
                }
            }
            this.f22773b.getLogger().c(j5.DEBUG, "Root view is invalid, not capturing screenshot", new Object[0]);
        }
    }

    public final void m() {
        View view;
        WeakReference weakReference = this.f22777f;
        if (weakReference != null) {
            view = (View) weakReference.get();
        } else {
            view = null;
        }
        v(view);
        WeakReference weakReference2 = this.f22777f;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        this.f22780i.recycle();
        this.f22784m.set(false);
    }

    public final u o() {
        return this.f22772a;
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        View view;
        WeakReference weakReference = this.f22777f;
        if (weakReference != null) {
            view = (View) weakReference.get();
        } else {
            view = null;
        }
        if (view != null && view.getWidth() > 0 && view.getHeight() > 0 && view.isShown()) {
            this.f22783l.set(true);
        } else {
            this.f22773b.getLogger().c(j5.DEBUG, "Root view is invalid, not capturing screenshot", new Object[0]);
        }
    }

    public final void t() {
        View view;
        this.f22784m.set(false);
        WeakReference weakReference = this.f22777f;
        if (weakReference != null) {
            view = (View) weakReference.get();
        } else {
            view = null;
        }
        v(view);
    }

    public final void u() {
        View view;
        WeakReference weakReference = this.f22777f;
        if (weakReference != null && (view = (View) weakReference.get()) != null) {
            io.sentry.android.replay.util.n.a(view, this);
        }
        this.f22784m.set(true);
    }

    public final void v(View view) {
        if (view != null) {
            io.sentry.android.replay.util.n.f(view, this);
        }
    }
}
