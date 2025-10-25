package io.sentry.android.core.internal.gestures;

import android.app.Activity;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import io.sentry.ILogger;
import io.sentry.a1;
import io.sentry.a7;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.c0;
import io.sentry.d3;
import io.sentry.e3;
import io.sentry.internal.gestures.b;
import io.sentry.j5;
import io.sentry.o0;
import io.sentry.p6;
import io.sentry.protocol.a0;
import io.sentry.u0;
import io.sentry.y6;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes2.dex */
public final class g implements GestureDetector.OnGestureListener {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference f22292a;

    /* renamed from: b  reason: collision with root package name */
    private final o0 f22293b;

    /* renamed from: c  reason: collision with root package name */
    private final SentryAndroidOptions f22294c;

    /* renamed from: d  reason: collision with root package name */
    private io.sentry.internal.gestures.b f22295d = null;

    /* renamed from: e  reason: collision with root package name */
    private a1 f22296e = null;

    /* renamed from: f  reason: collision with root package name */
    private b f22297f = b.Unknown;

    /* renamed from: g  reason: collision with root package name */
    private final c f22298g = new c(null);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f22299a;

        static {
            int[] iArr = new int[b.values().length];
            f22299a = iArr;
            try {
                iArr[b.Click.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22299a[b.Scroll.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22299a[b.Swipe.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f22299a[b.Unknown.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum b {
        Click,
        Scroll,
        Swipe,
        Unknown
    }

    public g(Activity activity, o0 o0Var, SentryAndroidOptions sentryAndroidOptions) {
        this.f22292a = new WeakReference(activity);
        this.f22293b = o0Var;
        this.f22294c = sentryAndroidOptions;
    }

    private void e(io.sentry.internal.gestures.b bVar, b bVar2, Map map, MotionEvent motionEvent) {
        if (!this.f22294c.isEnableUserInteractionBreadcrumbs()) {
            return;
        }
        String j10 = j(bVar2);
        c0 c0Var = new c0();
        c0Var.k("android:motionEvent", motionEvent);
        c0Var.k("android:view", bVar.f());
        this.f22293b.p(io.sentry.e.t(j10, bVar.d(), bVar.a(), bVar.e(), map), c0Var);
    }

    private View h(String str) {
        Activity activity = (Activity) this.f22292a.get();
        if (activity == null) {
            ILogger logger = this.f22294c.getLogger();
            j5 j5Var = j5.DEBUG;
            logger.c(j5Var, "Activity is null in " + str + ". No breadcrumb captured.", new Object[0]);
            return null;
        }
        Window window = activity.getWindow();
        if (window == null) {
            ILogger logger2 = this.f22294c.getLogger();
            j5 j5Var2 = j5.DEBUG;
            logger2.c(j5Var2, "Window is null in " + str + ". No breadcrumb captured.", new Object[0]);
            return null;
        }
        View decorView = window.getDecorView();
        if (decorView == null) {
            ILogger logger3 = this.f22294c.getLogger();
            j5 j5Var3 = j5.DEBUG;
            logger3.c(j5Var3, "DecorView is null in " + str + ". No breadcrumb captured.", new Object[0]);
            return null;
        }
        return decorView;
    }

    private String i(Activity activity) {
        return activity.getClass().getSimpleName();
    }

    private static String j(b bVar) {
        int i10 = a.f22299a[bVar.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    return CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE;
                }
                return "swipe";
            }
            return "scroll";
        }
        return "click";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void k(u0 u0Var, a1 a1Var, a1 a1Var2) {
        if (a1Var2 == null) {
            u0Var.E(a1Var);
        } else {
            this.f22294c.getLogger().c(j5.DEBUG, "Transaction '%s' won't be bound to the Scope since there's one already in there.", a1Var.getName());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(u0 u0Var, a1 a1Var) {
        if (a1Var == this.f22296e) {
            u0Var.h();
        }
    }

    private void p(io.sentry.internal.gestures.b bVar, b bVar2) {
        boolean z10;
        boolean z11;
        boolean z12;
        Activity activity;
        if (bVar2 == this.f22297f && bVar.equals(this.f22295d)) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (bVar2 == b.Click) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (!z11 && z10) {
            z12 = false;
        } else {
            z12 = true;
        }
        if (this.f22294c.isTracingEnabled() && this.f22294c.isEnableUserInteractionTracing()) {
            if (((Activity) this.f22292a.get()) == null) {
                this.f22294c.getLogger().c(j5.DEBUG, "Activity is null, no transaction captured.", new Object[0]);
                return;
            }
            String b10 = bVar.b();
            a1 a1Var = this.f22296e;
            if (a1Var != null) {
                if (!z12 && !a1Var.c()) {
                    this.f22294c.getLogger().c(j5.DEBUG, "The view with id: " + b10 + " already has an ongoing transaction assigned. Rescheduling finish", new Object[0]);
                    if (this.f22294c.getIdleTimeout() != null) {
                        this.f22296e.n();
                        return;
                    }
                    return;
                }
                q(p6.OK);
            }
            a7 a7Var = new a7();
            a7Var.r(true);
            a7Var.n(30000L);
            a7Var.o(this.f22294c.getIdleTimeout());
            a7Var.d(true);
            final a1 w10 = this.f22293b.w(new y6(i(activity) + "." + b10, a0.COMPONENT, "ui.action." + j(bVar2)), a7Var);
            w10.o().m("auto.ui.gesture_listener." + bVar.c());
            this.f22293b.y(new e3() { // from class: io.sentry.android.core.internal.gestures.d
                @Override // io.sentry.e3
                public final void a(u0 u0Var) {
                    g.this.m(w10, u0Var);
                }
            });
            this.f22296e = w10;
            this.f22295d = bVar;
            this.f22297f = bVar2;
        } else if (z12) {
            io.sentry.util.a0.h(this.f22293b);
            this.f22295d = bVar;
            this.f22297f = bVar2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public void m(final u0 u0Var, final a1 a1Var) {
        u0Var.D(new d3.c() { // from class: io.sentry.android.core.internal.gestures.e
            @Override // io.sentry.d3.c
            public final void a(a1 a1Var2) {
                g.this.k(u0Var, a1Var, a1Var2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void n(final u0 u0Var) {
        u0Var.D(new d3.c() { // from class: io.sentry.android.core.internal.gestures.f
            @Override // io.sentry.d3.c
            public final void a(a1 a1Var) {
                g.this.l(u0Var, a1Var);
            }
        });
    }

    public void o(MotionEvent motionEvent) {
        View h10 = h("onUp");
        io.sentry.internal.gestures.b bVar = this.f22298g.f22301b;
        if (h10 != null && bVar != null) {
            if (this.f22298g.f22300a != b.Unknown) {
                e(bVar, this.f22298g.f22300a, Collections.singletonMap("direction", this.f22298g.i(motionEvent)), motionEvent);
                p(bVar, this.f22298g.f22300a);
                this.f22298g.j();
                return;
            }
            this.f22294c.getLogger().c(j5.DEBUG, "Unable to define scroll type. No breadcrumb captured.", new Object[0]);
        }
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        if (motionEvent == null) {
            return false;
        }
        this.f22298g.j();
        this.f22298g.f22302c = motionEvent.getX();
        this.f22298g.f22303d = motionEvent.getY();
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        this.f22298g.f22300a = b.Swipe;
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
        View h10 = h("onScroll");
        if (h10 != null && motionEvent != null && this.f22298g.f22300a == b.Unknown) {
            io.sentry.internal.gestures.b a10 = i.a(this.f22294c, h10, motionEvent.getX(), motionEvent.getY(), b.a.SCROLLABLE);
            if (a10 == null) {
                this.f22294c.getLogger().c(j5.DEBUG, "Unable to find scroll target. No breadcrumb captured.", new Object[0]);
                return false;
            }
            ILogger logger = this.f22294c.getLogger();
            j5 j5Var = j5.DEBUG;
            logger.c(j5Var, "Scroll target found: " + a10.b(), new Object[0]);
            this.f22298g.k(a10);
            this.f22298g.f22300a = b.Scroll;
        }
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        View h10 = h("onSingleTapUp");
        if (h10 != null && motionEvent != null) {
            io.sentry.internal.gestures.b a10 = i.a(this.f22294c, h10, motionEvent.getX(), motionEvent.getY(), b.a.CLICKABLE);
            if (a10 == null) {
                this.f22294c.getLogger().c(j5.DEBUG, "Unable to find click target. No breadcrumb captured.", new Object[0]);
                return false;
            }
            b bVar = b.Click;
            e(a10, bVar, Collections.emptyMap(), motionEvent);
            p(a10, bVar);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(p6 p6Var) {
        a1 a1Var = this.f22296e;
        if (a1Var != null) {
            if (a1Var.d() == null) {
                this.f22296e.g(p6Var);
            } else {
                this.f22296e.i();
            }
        }
        this.f22293b.y(new e3() { // from class: io.sentry.android.core.internal.gestures.c
            @Override // io.sentry.e3
            public final void a(u0 u0Var) {
                g.this.n(u0Var);
            }
        });
        this.f22296e = null;
        if (this.f22295d != null) {
            this.f22295d = null;
        }
        this.f22297f = b.Unknown;
    }

    /* loaded from: classes2.dex */
    private static final class c {

        /* renamed from: a  reason: collision with root package name */
        private b f22300a;

        /* renamed from: b  reason: collision with root package name */
        private io.sentry.internal.gestures.b f22301b;

        /* renamed from: c  reason: collision with root package name */
        private float f22302c;

        /* renamed from: d  reason: collision with root package name */
        private float f22303d;

        private c() {
            this.f22300a = b.Unknown;
            this.f22302c = 0.0f;
            this.f22303d = 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String i(MotionEvent motionEvent) {
            float x10 = motionEvent.getX() - this.f22302c;
            float y10 = motionEvent.getY() - this.f22303d;
            if (Math.abs(x10) > Math.abs(y10)) {
                if (x10 > 0.0f) {
                    return "right";
                }
                return "left";
            } else if (y10 > 0.0f) {
                return "down";
            } else {
                return "up";
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void j() {
            this.f22301b = null;
            this.f22300a = b.Unknown;
            this.f22302c = 0.0f;
            this.f22303d = 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void k(io.sentry.internal.gestures.b bVar) {
            this.f22301b = bVar;
        }

        /* synthetic */ c(a aVar) {
            this();
        }
    }
}
