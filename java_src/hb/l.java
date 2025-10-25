package hb;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.animation.Animation;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.compose.ui.node.RootForTest;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsOwner;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import com.arthenica.ffmpegkit.StreamInformation;
import com.posthog.internal.replay.PostHogSessionReplayHandler;
import com.posthog.internal.replay.RRCustomEvent;
import com.posthog.internal.replay.RRIncrementalMouseInteractionData;
import com.posthog.internal.replay.RRIncrementalMouseInteractionEvent;
import com.posthog.internal.replay.RRMouseInteraction;
import com.posthog.internal.replay.RRUtilsKt;
import com.posthog.internal.replay.RRWireframe;
import d0.c1;
import d0.p0;
import gb.o;
import hb.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import kotlin.KotlinVersion;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.f0;
import kotlin.jvm.internal.z;
import lb.d0;
import rd.b0;
import rd.y;
import xc.t;
/* loaded from: classes.dex */
public final class l implements eb.g, PostHogSessionReplayHandler {

    /* renamed from: o  reason: collision with root package name */
    public static final a f16995o = new a(null);

    /* renamed from: p  reason: collision with root package name */
    private static volatile boolean f16996p;

    /* renamed from: a  reason: collision with root package name */
    private final Context f16997a;

    /* renamed from: b  reason: collision with root package name */
    private final fb.b f16998b;

    /* renamed from: c  reason: collision with root package name */
    private final gb.b f16999c;

    /* renamed from: d  reason: collision with root package name */
    private final WeakHashMap f17000d;

    /* renamed from: e  reason: collision with root package name */
    private final List f17001e;

    /* renamed from: f  reason: collision with root package name */
    private final xc.d f17002f;

    /* renamed from: g  reason: collision with root package name */
    private final xc.d f17003g;

    /* renamed from: h  reason: collision with root package name */
    private final Paint f17004h;

    /* renamed from: i  reason: collision with root package name */
    private volatile boolean f17005i;

    /* renamed from: j  reason: collision with root package name */
    private eb.h f17006j;

    /* renamed from: k  reason: collision with root package name */
    private volatile boolean f17007k;

    /* renamed from: l  reason: collision with root package name */
    private final gc.d f17008l;

    /* renamed from: m  reason: collision with root package name */
    private final gc.e f17009m;

    /* renamed from: n  reason: collision with root package name */
    private final xc.d f17010n;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ Window f17012f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public /* synthetic */ class a extends kotlin.jvm.internal.k implements id.a {
            a(Object obj) {
                super(0, obj, l.class, "onDrawCallback", "onDrawCallback()V", 0);
            }

            public final void f() {
                ((l) this.receiver).b0();
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                f();
                return t.f32733a;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: hb.l$b$b  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C0184b extends kotlin.jvm.internal.n implements id.a {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ l f17013e;

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ View f17014f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ Window f17015g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0184b(l lVar, View view, Window window) {
                super(0);
                this.f17013e = lVar;
                this.f17014f = view;
                this.f17015g = window;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void d(l this$0, View decorView, Window window) {
                kotlin.jvm.internal.m.e(this$0, "this$0");
                kotlin.jvm.internal.m.e(decorView, "$decorView");
                kotlin.jvm.internal.m.e(window, "$window");
                try {
                    this$0.G(new WeakReference(decorView), new WeakReference(window));
                } catch (Throwable th) {
                    lb.i o10 = this$0.f16998b.o();
                    o10.a("Session Replay generateSnapshot failed: " + th + '.');
                }
            }

            public final void b() {
                if (this.f17013e.isActive() && this.f17013e.T()) {
                    ScheduledExecutorService I = this.f17013e.I();
                    final l lVar = this.f17013e;
                    final View view = this.f17014f;
                    final Window window = this.f17015g;
                    I.submit(new Runnable() { // from class: hb.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            l.b.C0184b.d(l.this, view, window);
                        }
                    });
                }
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                b();
                return t.f32733a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(Window window) {
            super(1);
            this.f17012f = window;
        }

        public final void a(View decorView) {
            kotlin.jvm.internal.m.e(decorView, "decorView");
            try {
                l.this.f17000d.put(decorView, new ib.j(ib.d.f17375e.a(decorView, l.this.f16999c, l.this.f16998b.f(), l.this.f16998b.j0().f(), new a(l.this), new C0184b(l.this, decorView, this.f17012f)), false, false, false, null, 30, null));
            } catch (Throwable th) {
                lb.i o10 = l.this.f16998b.o();
                o10.a("Session Replay onDecorViewReady failed: " + th + '.');
            }
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((View) obj);
            return t.f32733a;
        }
    }

    /* loaded from: classes.dex */
    static final class c extends kotlin.jvm.internal.n implements id.a {
        c() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final DisplayMetrics invoke() {
            return o.g(l.this.f16997a);
        }
    }

    /* loaded from: classes.dex */
    static final class d extends kotlin.jvm.internal.n implements id.a {

        /* renamed from: e  reason: collision with root package name */
        public static final d f17017e = new d();

        d() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final ScheduledExecutorService invoke() {
            return Executors.newSingleThreadScheduledExecutor(new d0("PostHogReplayThread"));
        }
    }

    /* loaded from: classes.dex */
    static final class e extends kotlin.jvm.internal.n implements id.a {
        e() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Boolean invoke() {
            boolean z10;
            try {
                Class.forName("androidx.compose.ui.platform.AndroidComposeView");
                z10 = true;
            } catch (Throwable th) {
                lb.i o10 = l.this.f16998b.o();
                o10.a("Compose not available: " + th + '.');
                z10 = false;
            }
            return Boolean.valueOf(z10);
        }
    }

    public l(Context context, fb.b config, gb.b mainHandler) {
        List k10;
        xc.d a10;
        xc.d a11;
        xc.d b10;
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(config, "config");
        kotlin.jvm.internal.m.e(mainHandler, "mainHandler");
        this.f16997a = context;
        this.f16998b = config;
        this.f16999c = mainHandler;
        this.f17000d = new WeakHashMap();
        k10 = yc.o.k(128, 144, 224, 16);
        this.f17001e = k10;
        a10 = xc.f.a(d.f17017e);
        this.f17002f = a10;
        a11 = xc.f.a(new c());
        this.f17003g = a11;
        Paint paint = new Paint();
        paint.setColor(-16777216);
        this.f17004h = paint;
        this.f17008l = new gc.d() { // from class: hb.f
            @Override // gc.d
            public final void a(View view, boolean z10) {
                l.c0(l.this, view, z10);
            }
        };
        this.f17009m = new gc.e() { // from class: hb.g
            @Override // gc.e
            public final gc.b a(MotionEvent motionEvent, id.l lVar) {
                gc.b d02;
                d02 = l.d0(l.this, motionEvent, lVar);
                return d02;
            }
        };
        b10 = xc.f.b(xc.h.f32712b, new e());
        this.f17010n = b10;
    }

    private final void A(final View view, final List list) {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f16999c.a().post(new Runnable() { // from class: hb.k
            @Override // java.lang.Runnable
            public final void run() {
                l.B(view, this, countDownLatch, list);
            }
        });
        try {
            countDownLatch.await(1000L, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            lb.i o10 = this.f16998b.o();
            o10.a("Session Replay findMaskableComposeWidgets failed: " + th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B(View view, l this$0, CountDownLatch latch, List maskableWidgets) {
        RootForTest rootForTest;
        SemanticsOwner semanticsOwner;
        boolean z10;
        kotlin.jvm.internal.m.e(view, "$view");
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(latch, "$latch");
        kotlin.jvm.internal.m.e(maskableWidgets, "$maskableWidgets");
        try {
            if (view instanceof RootForTest) {
                rootForTest = (RootForTest) view;
            } else {
                rootForTest = null;
            }
        } finally {
            try {
                return;
            } finally {
            }
        }
        if (rootForTest != null && (semanticsOwner = rootForTest.getSemanticsOwner()) != null) {
            for (SemanticsNode semanticsNode : SemanticsOwnerKt.getAllSemanticsNodes(semanticsOwner, true)) {
                boolean contains = semanticsNode.getConfig().contains(SemanticsProperties.INSTANCE.getText());
                boolean contains2 = semanticsNode.getConfig().contains(SemanticsProperties.INSTANCE.getEditableText());
                boolean contains3 = semanticsNode.getConfig().contains(SemanticsProperties.INSTANCE.getPassword());
                boolean contains4 = semanticsNode.getConfig().contains(SemanticsProperties.INSTANCE.getContentDescription());
                SemanticsConfiguration config = semanticsNode.getConfig();
                hb.b bVar = hb.b.f16976a;
                boolean contains5 = config.contains(bVar.a());
                if (contains5 && ((Boolean) semanticsNode.getConfig().get(bVar.a())).booleanValue()) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    maskableWidgets.add(this$0.r0(semanticsNode.getBoundsInWindow()));
                } else if (!contains5) {
                    if ((!contains && !contains2) || (!this$0.f16998b.j0().d() && !contains3)) {
                        if (contains4 && this$0.f16998b.j0().c()) {
                            maskableWidgets.add(this$0.r0(semanticsNode.getBoundsInWindow()));
                        }
                    }
                    maskableWidgets.add(this$0.r0(semanticsNode.getBoundsInWindow()));
                }
            }
            return;
        }
        this$0.f16998b.o().a("View is not a RootForTest: " + view);
    }

    private final boolean C(View view, List list, Set set) {
        Rect N;
        Rect N2;
        Rect N3;
        String str;
        boolean z10;
        boolean z11;
        String str2;
        Rect N4;
        int identityHashCode = System.identityHashCode(view);
        if (set.contains(Integer.valueOf(identityHashCode))) {
            return true;
        }
        set.add(Integer.valueOf(identityHashCode));
        if (R(view)) {
            A(view, list);
        } else {
            boolean z12 = false;
            if (V(this, view, false, 1, null)) {
                Rect N5 = N(this, view, null, 1, null);
                if (N5 != null) {
                    list.add(N5);
                }
            } else if (view instanceof TextView) {
                TextView textView = (TextView) view;
                CharSequence text = textView.getText();
                if (text != null) {
                    str = text.toString();
                } else {
                    str = null;
                }
                if (str != null && str.length() != 0) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (!z10) {
                    z11 = m0(textView);
                } else {
                    z11 = false;
                }
                CharSequence hint = textView.getHint();
                if (hint != null) {
                    str2 = hint.toString();
                } else {
                    str2 = null;
                }
                if (!z11) {
                    if (!((str2 == null || str2.length() == 0) ? true : true)) {
                        z11 = m0(textView);
                    }
                }
                if (z11 && (N4 = N(this, view, null, 1, null)) != null) {
                    list.add(N4);
                }
            } else if (view instanceof Spinner) {
                if (l0((Spinner) view) && (N3 = N(this, view, null, 1, null)) != null) {
                    list.add(N3);
                }
            } else if (view instanceof ImageView) {
                if (k0((ImageView) view) && (N2 = N(this, view, null, 1, null)) != null) {
                    list.add(N2);
                }
            } else if (view instanceof WebView) {
                if (P(view) && (N = N(this, view, null, 1, null)) != null) {
                    list.add(N);
                }
            } else if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (viewGroup.getChildCount() > 0) {
                    int childCount = viewGroup.getChildCount();
                    for (int i10 = 0; i10 < childCount; i10++) {
                        if (this.f17007k) {
                            this.f16998b.o().a("Session Replay screenshot discarded due to screen changes.");
                            return false;
                        }
                        View childAt = viewGroup.getChildAt(i10);
                        if (childAt != null && Z(childAt) && !C(childAt, list, set)) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    static /* synthetic */ boolean D(l lVar, View view, List list, Set set, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            set = new LinkedHashSet();
        }
        return lVar.C(view, list, set);
    }

    private final List E(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            RRWireframe rRWireframe = (RRWireframe) it.next();
            arrayList.add(rRWireframe);
            List<RRWireframe> childWireframes = rRWireframe.getChildWireframes();
            if (childWireframes != null) {
                arrayList.addAll(E(childWireframes));
            }
        }
        return arrayList;
    }

    private final void F(long j10, MotionEvent motionEvent, RRMouseInteraction rRMouseInteraction) {
        ArrayList arrayList = new ArrayList();
        int pointerCount = motionEvent.getPointerCount();
        for (int i10 = 0; i10 < pointerCount; i10++) {
            try {
                try {
                    arrayList.add(new RRIncrementalMouseInteractionEvent(new RRIncrementalMouseInteractionData(motionEvent.getPointerId(i10), rRMouseInteraction, o.f((int) K(motionEvent, i10), H().density), o.f((int) L(motionEvent, i10), H().density), null, 0, null, 112, null), j10));
                } catch (Throwable th) {
                    th = th;
                    this.f16998b.o().a("Reading MotionEvent pointers failed: " + th + '.');
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
        if (!arrayList.isEmpty()) {
            RRUtilsKt.capture(arrayList, this.f17006j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009a, code lost:
        r5 = rd.b0.G0(r5, "/", null, 2, null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(java.lang.ref.WeakReference r23, java.lang.ref.WeakReference r24) {
        /*
            Method dump skipped, instructions count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: hb.l.G(java.lang.ref.WeakReference, java.lang.ref.WeakReference):void");
    }

    private final DisplayMetrics H() {
        return (DisplayMetrics) this.f17003g.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ScheduledExecutorService I() {
        return (ScheduledExecutorService) this.f17002f.getValue();
    }

    private final Drawable J(LayerDrawable layerDrawable) {
        int numberOfLayers = layerDrawable.getNumberOfLayers();
        for (int i10 = 0; i10 < numberOfLayers; i10++) {
            Drawable drawable = layerDrawable.getDrawable(i10);
            if (drawable != null) {
                return drawable;
            }
        }
        return null;
    }

    private final float K(MotionEvent motionEvent, int i10) {
        float rawX;
        if (i10 >= 0 && i10 < motionEvent.getPointerCount()) {
            if (Build.VERSION.SDK_INT >= 29) {
                rawX = motionEvent.getRawX(i10);
                return rawX;
            }
            return motionEvent.getRawX();
        }
        return motionEvent.getRawX();
    }

    private final float L(MotionEvent motionEvent, int i10) {
        float rawY;
        if (i10 >= 0 && i10 < motionEvent.getPointerCount()) {
            if (Build.VERSION.SDK_INT >= 29) {
                rawY = motionEvent.getRawY(i10);
                return rawY;
            }
            return motionEvent.getRawY();
        }
        return motionEvent.getRawY();
    }

    private final Rect M(View view, Point point) {
        if (Y(view)) {
            Rect rect = new Rect();
            view.getGlobalVisibleRect(rect, point);
            return rect;
        }
        return null;
    }

    static /* synthetic */ Rect N(l lVar, View view, Point point, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            point = null;
        }
        return lVar.M(view, point);
    }

    private final boolean O(View view) {
        boolean z10;
        boolean z11;
        Animation animation = view.getAnimation();
        if (animation != null && animation.hasStarted()) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10) {
            Animation animation2 = view.getAnimation();
            if (animation2 != null && animation2.hasEnded()) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (!z11) {
                return true;
            }
        }
        return false;
    }

    private final boolean P(View view) {
        if (!X(view) && !this.f16998b.j0().c()) {
            return false;
        }
        return true;
    }

    private final boolean Q() {
        return ((Boolean) this.f17010n.getValue()).booleanValue();
    }

    private final boolean R(View view) {
        boolean N;
        if (!Q()) {
            return false;
        }
        String name = view.getClass().getName();
        kotlin.jvm.internal.m.d(name, "this.javaClass.name");
        N = b0.N(name, "AndroidComposeView", false, 2, null);
        if (!N) {
            return false;
        }
        return true;
    }

    private final boolean S(View view) {
        ViewGroup viewGroup;
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            viewGroup = (ViewGroup) parent;
        } else {
            viewGroup = null;
        }
        if (viewGroup == null || !viewGroup.isInLayout()) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean T() {
        return !kotlin.jvm.internal.m.a(this.f16998b.B(), "posthog-flutter");
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean U(android.view.View r8, boolean r9) {
        /*
            r7 = this;
            r0 = 1
            if (r9 != 0) goto L52
            java.lang.Object r9 = r8.getTag()
            boolean r1 = r9 instanceof java.lang.String
            r2 = 0
            if (r1 == 0) goto Lf
            java.lang.String r9 = (java.lang.String) r9
            goto L10
        Lf:
            r9 = r2
        L10:
            r1 = 2
            java.lang.String r3 = "ph-no-capture"
            java.lang.String r4 = "this as java.lang.String).toLowerCase(Locale.ROOT)"
            r5 = 0
            if (r9 == 0) goto L2b
            java.util.Locale r6 = java.util.Locale.ROOT
            java.lang.String r9 = r9.toLowerCase(r6)
            kotlin.jvm.internal.m.d(r9, r4)
            if (r9 == 0) goto L2b
            boolean r9 = rd.n.N(r9, r3, r5, r1, r2)
            if (r9 != r0) goto L2b
            r9 = r0
            goto L2c
        L2b:
            r9 = r5
        L2c:
            if (r9 != 0) goto L52
            java.lang.CharSequence r8 = r8.getContentDescription()
            if (r8 == 0) goto L4d
            java.lang.String r8 = r8.toString()
            if (r8 == 0) goto L4d
            java.util.Locale r9 = java.util.Locale.ROOT
            java.lang.String r8 = r8.toLowerCase(r9)
            kotlin.jvm.internal.m.d(r8, r4)
            if (r8 == 0) goto L4d
            boolean r8 = rd.n.N(r8, r3, r5, r1, r2)
            if (r8 != r0) goto L4d
            r8 = r0
            goto L4e
        L4d:
            r8 = r5
        L4e:
            if (r8 == 0) goto L51
            goto L52
        L51:
            r0 = r5
        L52:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: hb.l.U(android.view.View, boolean):boolean");
    }

    static /* synthetic */ boolean V(l lVar, View view, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        return lVar.U(view, z10);
    }

    private final boolean W() {
        if (Build.VERSION.SDK_INT >= 26) {
            return true;
        }
        return false;
    }

    private final boolean X(View view) {
        return U(view, this.f16998b.j0().d());
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean Y(android.view.View r5) {
        /*
            r4 = this;
            r0 = 0
            boolean r1 = r5.isAttachedToWindow()     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L65
            boolean r1 = r5.isLaidOut()     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L65
            int r1 = r5.getWidth()     // Catch: java.lang.Throwable -> L45
            if (r1 <= 0) goto L65
            int r1 = r5.getHeight()     // Catch: java.lang.Throwable -> L45
            if (r1 <= 0) goto L65
            boolean r1 = r5.isInLayout()     // Catch: java.lang.Throwable -> L45
            if (r1 != 0) goto L65
            boolean r1 = r5.hasTransientState()     // Catch: java.lang.Throwable -> L45
            if (r1 != 0) goto L65
            boolean r1 = r4.O(r5)     // Catch: java.lang.Throwable -> L45
            if (r1 != 0) goto L65
            boolean r1 = r4.S(r5)     // Catch: java.lang.Throwable -> L45
            if (r1 != 0) goto L65
            android.view.View r5 = r5.getRootView()     // Catch: java.lang.Throwable -> L45
            r1 = 1
            if (r5 == 0) goto L40
            boolean r5 = r5.isAttachedToWindow()     // Catch: java.lang.Throwable -> L45
            if (r5 != r1) goto L40
            r5 = r1
            goto L41
        L40:
            r5 = r0
        L41:
            if (r5 == 0) goto L65
            r0 = r1
            goto L65
        L45:
            r5 = move-exception
            fb.b r1 = r4.f16998b
            lb.i r1 = r1.o()
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Session Replay view state check failed: "
            r2.append(r3)
            r2.append(r5)
            r5 = 46
            r2.append(r5)
            java.lang.String r5 = r2.toString()
            r1.a(r5)
        L65:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: hb.l.Y(android.view.View):boolean");
    }

    private final boolean Z(View view) {
        float f10;
        try {
            if (!view.isAttachedToWindow() || view.getWindowVisibility() != 0) {
                return false;
            }
            for (ViewParent viewParent = view; viewParent instanceof View; viewParent = viewParent.getParent()) {
                if (Build.VERSION.SDK_INT >= 29) {
                    f10 = viewParent.getTransitionAlpha();
                } else {
                    f10 = 1.0f;
                }
                if (viewParent.getAlpha() > 0.0f && f10 > 0.0f && viewParent.getVisibility() == 0) {
                }
                return false;
            }
            if (M(view, new Point()) != null) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            lb.i o10 = this.f16998b.o();
            o10.a("Session Replay isVisible failed: " + th + '.');
            return true;
        }
    }

    private final String a0(String str) {
        String z10;
        z10 = y.z("*", str.length());
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b0() {
        this.f17007k = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c0(l this$0, View view, boolean z10) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(view, "view");
        this$0.q(view, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final gc.b d0(final l this$0, MotionEvent motionEvent, id.l dispatch) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(motionEvent, "motionEvent");
        kotlin.jvm.internal.m.e(dispatch, "dispatch");
        final long currentTimeMillis = this$0.f16998b.f().currentTimeMillis();
        try {
            gc.b bVar = (gc.b) dispatch.invoke(motionEvent);
            try {
                final MotionEvent obtain = MotionEvent.obtain(motionEvent);
                this$0.I().submit(new Runnable() { // from class: hb.i
                    @Override // java.lang.Runnable
                    public final void run() {
                        l.e0(l.this, obtain, currentTimeMillis);
                    }
                });
            } catch (Throwable unused) {
            }
            return bVar;
        } catch (Throwable th) {
            lb.i o10 = this$0.f16998b.o();
            o10.a("TouchEventInterceptor " + motionEvent + " failed: " + th + '.');
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(l this$0, MotionEvent safeMotionEvent, long j10) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        try {
        } finally {
            try {
            } finally {
            }
        }
        if (!this$0.isActive()) {
            return;
        }
        int action = safeMotionEvent.getAction() & KotlinVersion.MAX_COMPONENT_VALUE;
        if (action != 0) {
            if (action == 1) {
                kotlin.jvm.internal.m.d(safeMotionEvent, "safeMotionEvent");
                this$0.F(j10, safeMotionEvent, RRMouseInteraction.TouchEnd);
            }
        } else {
            kotlin.jvm.internal.m.d(safeMotionEvent, "safeMotionEvent");
            this$0.F(j10, safeMotionEvent, RRMouseInteraction.TouchStart);
        }
    }

    private final void f0(Bitmap bitmap, String str) {
        bitmap.recycle();
        this.f16998b.o().a(str);
    }

    static /* synthetic */ void g0(l lVar, Bitmap bitmap, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = "Session Replay screenshot discarded due to screen changes.";
        }
        lVar.f0(bitmap, str);
    }

    private final void h0(ib.j jVar) {
        jVar.h(false);
        jVar.i(false);
        jVar.f(false);
        jVar.g(null);
    }

    private final Bitmap i0(Drawable drawable) {
        this.f16998b.j0().b();
        return null;
    }

    private final boolean j0(Drawable drawable) {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        if (drawable instanceof InsetDrawable) {
            z10 = true;
        } else {
            z10 = drawable instanceof ColorDrawable;
        }
        if (z10) {
            z11 = true;
        } else {
            z11 = drawable instanceof VectorDrawable;
        }
        if (z11) {
            z12 = true;
        } else {
            z12 = drawable instanceof GradientDrawable;
        }
        if (z12) {
            z13 = true;
        } else {
            z13 = drawable instanceof LayerDrawable;
        }
        if (z13) {
            return false;
        }
        if (!(drawable instanceof BitmapDrawable)) {
            return true;
        }
        Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
        kotlin.jvm.internal.m.d(bitmap, "bitmap");
        return o.n(bitmap);
    }

    private final boolean k0(ImageView imageView) {
        boolean z10;
        if (!U(imageView, this.f16998b.j0().c())) {
            return false;
        }
        Drawable drawable = imageView.getDrawable();
        if (drawable != null && j0(drawable)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            return false;
        }
        return true;
    }

    private final boolean l0(Spinner spinner) {
        return X(spinner);
    }

    private final boolean m0(TextView textView) {
        if (X(textView) || this.f17001e.contains(Integer.valueOf(textView.getInputType() - 1))) {
            return true;
        }
        return false;
    }

    private final Bitmap n0(Drawable drawable, int i10, int i11) {
        Bitmap bitmap = Bitmap.createBitmap(H(), i10, i11, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        canvas.drawColor(0, PorterDuff.Mode.MULTIPLY);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        kotlin.jvm.internal.m.d(bitmap, "bitmap");
        return bitmap;
    }

    private final String o0(int i10) {
        f0 f0Var = f0.f24982a;
        String format = String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(i10 & 16777215)}, 1));
        kotlin.jvm.internal.m.d(format, "format(format, *args)");
        return format;
    }

    private final String p0(Resources.Theme theme) {
        Integer num;
        TypedValue typedValue = new TypedValue();
        theme.resolveAttribute(16842836, typedValue, true);
        int i10 = typedValue.type;
        if (i10 >= 28 && i10 <= 31) {
            num = Integer.valueOf(typedValue.data);
        } else {
            num = null;
        }
        if (num == null) {
            return null;
        }
        return o0(num.intValue());
    }

    private final void q(View view, boolean z10) {
        try {
            Window a10 = gc.f.a(view);
            if (a10 != null) {
                View peekDecorView = a10.peekDecorView();
                boolean z11 = false;
                if (peekDecorView != null) {
                    kotlin.jvm.internal.m.d(peekDecorView, "peekDecorView()");
                    if (this.f17000d.get(peekDecorView) != null) {
                        z11 = true;
                    }
                }
                if (z10) {
                    if (gc.f.c(view) != 0 && z11) {
                        this.f16998b.o().a("Session Replay already has onDecorViewReady.");
                        return;
                    }
                    gc.f.d(a10, new b(a10));
                    gc.f.b(a10).add(this.f17009m);
                    return;
                }
                View peekDecorView2 = a10.peekDecorView();
                if (peekDecorView2 != null) {
                    kotlin.jvm.internal.m.d(peekDecorView2, "peekDecorView()");
                    ib.j status = (ib.j) this.f17000d.get(peekDecorView2);
                    if (status != null) {
                        kotlin.jvm.internal.m.d(status, "status");
                        v(peekDecorView2, status);
                    }
                }
            }
        } catch (Throwable th) {
            this.f16998b.o().a("Session Replay OnRootViewsChangedListener failed: " + th + '.');
        }
    }

    private final String q0(Drawable drawable) {
        boolean z10;
        if (drawable instanceof ColorDrawable) {
            return o0(((ColorDrawable) drawable).getColor());
        }
        if (drawable instanceof RippleDrawable) {
            try {
                Drawable J = J((LayerDrawable) drawable);
                if (J == null) {
                    return null;
                }
                return q0(J);
            } catch (Throwable unused) {
            }
        } else if (drawable instanceof InsetDrawable) {
            Drawable drawable2 = ((InsetDrawable) drawable).getDrawable();
            if (drawable2 == null) {
                return null;
            }
            return q0(drawable2);
        } else if (drawable instanceof GradientDrawable) {
            GradientDrawable gradientDrawable = (GradientDrawable) drawable;
            int[] colors = gradientDrawable.getColors();
            if (colors != null) {
                if (colors.length == 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10) {
                    int i10 = colors[0];
                    return o0(Color.rgb(Color.red(i10), Color.green(i10), Color.blue(i10)));
                }
            }
            ColorStateList color = gradientDrawable.getColor();
            if (color != null && color.getDefaultColor() != -1) {
                return o0(color.getDefaultColor());
            }
        }
        return null;
    }

    static /* synthetic */ void r(l lVar, View view, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = true;
        }
        lVar.q(view, z10);
    }

    private final Rect r0(androidx.compose.ui.geometry.Rect rect) {
        return new Rect((int) rect.getLeft(), (int) rect.getTop(), (int) rect.getRight(), (int) rect.getBottom());
    }

    private final String s(Drawable drawable, int i10, int i11, boolean z10) {
        Drawable drawable2;
        Bitmap i02 = i0(drawable);
        if (i02 != null) {
            return o.t(i02, 0, 1, null);
        }
        if (!z10 && (drawable = x(drawable)) == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            try {
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                kotlin.jvm.internal.m.d(bitmap, "clonedDrawable.bitmap");
                return o.t(bitmap, 0, 1, null);
            } catch (Throwable unused) {
            }
        } else if (drawable instanceof LayerDrawable) {
            Drawable J = J((LayerDrawable) drawable);
            if (J != null) {
                return t(this, J, i10, i11, false, 4, null);
            }
        } else if ((drawable instanceof InsetDrawable) && (drawable2 = ((InsetDrawable) drawable).getDrawable()) != null) {
            return t(this, drawable2, i10, i11, false, 4, null);
        }
        try {
            Bitmap n02 = n0(drawable, i10, i11);
            String t10 = o.t(n02, 0, 1, null);
            n02.recycle();
            return t10;
        } catch (Throwable unused2) {
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00e8 A[Catch: all -> 0x0102, TRY_LEAVE, TryCatch #0 {all -> 0x0102, blocks: (B:19:0x00db, B:21:0x00e8), top: B:38:0x00db }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.posthog.internal.replay.RRWireframe s0(final android.view.View r45, android.view.Window r46) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: hb.l.s0(android.view.View, android.view.Window):com.posthog.internal.replay.RRWireframe");
    }

    static /* synthetic */ String t(l lVar, Drawable drawable, int i10, int i11, boolean z10, int i12, Object obj) {
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        return lVar.s(drawable, i10, i11, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t0(l this$0, Bitmap bitmap, z success, View view, CountDownLatch latch, int i10) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(success, "$success");
        kotlin.jvm.internal.m.e(view, "$view");
        kotlin.jvm.internal.m.e(latch, "$latch");
        try {
            if (i10 != 0) {
                kotlin.jvm.internal.m.d(bitmap, "bitmap");
                this$0.f0(bitmap, "Session Replay PixelCopy failed: " + i10 + '.');
                success.f24987a = false;
            } else if (!this$0.f17007k) {
                ArrayList<Rect> arrayList = new ArrayList();
                if (D(this$0, view, arrayList, null, 4, null)) {
                    kotlin.jvm.internal.m.d(bitmap, "bitmap");
                    if (!o.n(bitmap)) {
                        this$0.f0(bitmap, "Session Replay Bitmap is invalid.");
                        success.f24987a = false;
                        return;
                    }
                    Canvas canvas = new Canvas(bitmap);
                    for (Rect rect : arrayList) {
                        if (this$0.f17007k) {
                            g0(this$0, bitmap, null, 2, null);
                            success.f24987a = false;
                        } else {
                            canvas.drawRoundRect(new RectF(rect), 10.0f, 10.0f, this$0.f17004h);
                        }
                    }
                } else {
                    kotlin.jvm.internal.m.d(bitmap, "bitmap");
                    g0(this$0, bitmap, null, 2, null);
                    success.f24987a = false;
                }
            } else {
                kotlin.jvm.internal.m.d(bitmap, "bitmap");
                g0(this$0, bitmap, null, 2, null);
                success.f24987a = false;
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    private final void u() {
        Set<Map.Entry> entrySet = this.f17000d.entrySet();
        kotlin.jvm.internal.m.d(entrySet, "decorViews.entries");
        for (Map.Entry entry : entrySet) {
            Object value = entry.getValue();
            kotlin.jvm.internal.m.d(value, "it.value");
            h0((ib.j) value);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x01fc, code lost:
        if (r0 == 8388613) goto L200;
     */
    /* JADX WARN: Removed duplicated region for block: B:106:0x020e A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0341  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x03dc  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0408  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0429  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x043f  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x044b  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:217:0x0485  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00d4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final com.posthog.internal.replay.RRWireframe u0(android.view.View r43, java.lang.Integer r44) {
        /*
            Method dump skipped, instructions count: 1222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: hb.l.u0(android.view.View, java.lang.Integer):com.posthog.internal.replay.RRWireframe");
    }

    private final void v(final View view, final ib.j jVar) {
        if (ib.e.b(view)) {
            this.f16999c.a().post(new Runnable() { // from class: hb.h
                @Override // java.lang.Runnable
                public final void run() {
                    l.w(view, jVar, this);
                }
            });
        }
        Window a10 = gc.f.a(view);
        if (a10 != null) {
            gc.f.b(a10).remove(this.f17009m);
        }
        this.f17000d.remove(view);
    }

    static /* synthetic */ RRWireframe v0(l lVar, View view, Integer num, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = null;
        }
        return lVar.u0(view, num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(View view, ib.j status, l this$0) {
        kotlin.jvm.internal.m.e(view, "$view");
        kotlin.jvm.internal.m.e(status, "$status");
        kotlin.jvm.internal.m.e(this$0, "this$0");
        if (ib.e.b(view)) {
            try {
                ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
                if (viewTreeObserver != null) {
                    viewTreeObserver.removeOnDrawListener(status.c());
                }
            } catch (Throwable th) {
                lb.i o10 = this$0.f16998b.o();
                o10.a("Removing the viewTreeObserver failed: " + th + '.');
            }
        }
    }

    private final Drawable x(Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState != null) {
            return constantState.newDrawable();
        }
        return null;
    }

    private final xc.k y(View view, boolean z10) {
        c1 x10 = p0.x(view);
        if (x10 == null) {
            return new xc.k(Boolean.valueOf(z10), null);
        }
        boolean o10 = x10.o(c1.l.c());
        if (z10 == o10) {
            return new xc.k(Boolean.valueOf(z10), null);
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (o10) {
            int i10 = x10.f(c1.l.c()).f31130d;
            linkedHashMap.put("open", Boolean.TRUE);
            linkedHashMap.put(StreamInformation.KEY_HEIGHT, Integer.valueOf(o.f(i10, H().density)));
        } else {
            linkedHashMap.put("open", Boolean.FALSE);
        }
        return new xc.k(Boolean.valueOf(o10), new RRCustomEvent("keyboard", linkedHashMap, this.f16998b.f().currentTimeMillis()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0136, code lost:
        r6 = r8.copy((r36 & 1) != 0 ? r8.f9480id : 0, (r36 & 2) != 0 ? r8.f9481x : 0, (r36 & 4) != 0 ? r8.f9482y : 0, (r36 & 8) != 0 ? r8.width : 0, (r36 & 16) != 0 ? r8.height : 0, (r36 & 32) != 0 ? r8.childWireframes : null, (r36 & 64) != 0 ? r8.type : null, (r36 & 128) != 0 ? r8.inputType : null, (r36 & 256) != 0 ? r8.text : null, (r36 & 512) != 0 ? r8.label : null, (r36 & 1024) != 0 ? r8.value : null, (r36 & 2048) != 0 ? r8.base64 : null, (r36 & io.appmetrica.analytics.coreutils.internal.io.Base64Utils.IO_BUFFER_SIZE) != 0 ? r8.style : null, (r36 & 8192) != 0 ? r8.disabled : null, (r36 & 16384) != 0 ? r8.checked : null, (r36 & 32768) != 0 ? r8.options : null, (r36 & 65536) != 0 ? r8.parentId : null, (r36 & 131072) != 0 ? r8.max : null);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final xc.p z(java.util.List r30, java.util.List r31) {
        /*
            Method dump skipped, instructions count: 415
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: hb.l.z(java.util.List, java.util.List):xc.p");
    }

    @Override // eb.g
    public void b() {
        try {
            f16996p = false;
            this.f17006j = null;
            gc.a.a().remove(this.f17008l);
            Set<Map.Entry> entrySet = this.f17000d.entrySet();
            kotlin.jvm.internal.m.d(entrySet, "decorViews.entries");
            for (Map.Entry entry : entrySet) {
                Object key = entry.getKey();
                kotlin.jvm.internal.m.d(key, "it.key");
                Object value = entry.getValue();
                kotlin.jvm.internal.m.d(value, "it.value");
                v((View) key, (ib.j) value);
            }
            this.f17005i = false;
            this.f17007k = false;
            u();
            this.f17000d.clear();
        } catch (Throwable th) {
            lb.i o10 = this.f16998b.o();
            o10.a("Session Replay uninstall failed: " + th + '.');
        }
    }

    @Override // eb.g
    public void c(eb.h postHog) {
        kotlin.jvm.internal.m.e(postHog, "postHog");
        if (!f16996p && W()) {
            f16996p = true;
            this.f17006j = postHog;
            for (View view : gc.a.b()) {
                r(this, view, false, 2, null);
            }
            try {
                gc.a.a().add(this.f17008l);
            } catch (Throwable th) {
                lb.i o10 = this.f16998b.o();
                o10.a("Session Replay setup failed: " + th + '.');
            }
        }
    }

    @Override // com.posthog.internal.replay.PostHogSessionReplayHandler
    public boolean isActive() {
        return this.f17005i;
    }

    @Override // com.posthog.internal.replay.PostHogSessionReplayHandler
    public void start(boolean z10) {
        if (!z10) {
            u();
        }
        this.f17005i = true;
    }

    @Override // com.posthog.internal.replay.PostHogSessionReplayHandler
    public void stop() {
        this.f17005i = false;
        this.f17007k = false;
    }
}
