package androidx.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.j;
import androidx.lifecycle.d0;
import androidx.lifecycle.g0;
import androidx.lifecycle.i;
import androidx.lifecycle.k0;
import androidx.lifecycle.l0;
import androidx.lifecycle.m0;
import androidx.lifecycle.n0;
import androidx.lifecycle.o0;
import g.a;
import h1.d;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.DefaultConstructorMarker;
import x0.a;
/* loaded from: classes.dex */
public abstract class j extends androidx.core.app.g implements m0, androidx.lifecycle.g, h1.f, y, f.f, androidx.core.content.c, androidx.core.content.d, androidx.core.app.q, androidx.core.app.r, d0.w, u {
    private static final String ACTIVITY_RESULT_TAG = "android:support:activity-result";
    private static final c Companion = new c(null);
    private l0 _viewModelStore;
    private final f.e activityResultRegistry;
    private int contentLayoutId;
    private final xc.d defaultViewModelProviderFactory$delegate;
    private boolean dispatchingOnMultiWindowModeChanged;
    private boolean dispatchingOnPictureInPictureModeChanged;
    private final xc.d fullyDrawnReporter$delegate;
    private final AtomicInteger nextLocalRequestCode;
    private final xc.d onBackPressedDispatcher$delegate;
    private final CopyOnWriteArrayList<c0.a> onConfigurationChangedListeners;
    private final CopyOnWriteArrayList<c0.a> onMultiWindowModeChangedListeners;
    private final CopyOnWriteArrayList<c0.a> onNewIntentListeners;
    private final CopyOnWriteArrayList<c0.a> onPictureInPictureModeChangedListeners;
    private final CopyOnWriteArrayList<c0.a> onTrimMemoryListeners;
    private final CopyOnWriteArrayList<Runnable> onUserLeaveHintListeners;
    private final e reportFullyDrawnExecutor;
    private final h1.e savedStateRegistryController;
    private final e.a contextAwareHelper = new e.a();
    private final d0.z menuHostHelper = new d0.z(new Runnable() { // from class: androidx.activity.e
        @Override // java.lang.Runnable
        public final void run() {
            j.p(j.this);
        }
    });

    /* loaded from: classes.dex */
    public static final class a implements androidx.lifecycle.k {
        a() {
        }

        @Override // androidx.lifecycle.k
        public void a(androidx.lifecycle.m source, i.a event) {
            kotlin.jvm.internal.m.e(source, "source");
            kotlin.jvm.internal.m.e(event, "event");
            j.this.o();
            j.this.getLifecycle().c(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public static final b f537a = new b();

        private b() {
        }

        public final OnBackInvokedDispatcher a(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
            OnBackInvokedDispatcher onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
            kotlin.jvm.internal.m.d(onBackInvokedDispatcher, "activity.getOnBackInvokedDispatcher()");
            return onBackInvokedDispatcher;
        }
    }

    /* loaded from: classes.dex */
    private static final class c {
        private c() {
        }

        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private Object f538a;

        /* renamed from: b  reason: collision with root package name */
        private l0 f539b;

        public final Object a() {
            return this.f538a;
        }

        public final l0 b() {
            return this.f539b;
        }

        public final void c(Object obj) {
            this.f538a = obj;
        }

        public final void d(l0 l0Var) {
            this.f539b = l0Var;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public interface e extends Executor {
        void f();

        void z(View view);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class f implements e, ViewTreeObserver.OnDrawListener, Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final long f540a = SystemClock.uptimeMillis() + 10000;

        /* renamed from: b  reason: collision with root package name */
        private Runnable f541b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f542c;

        public f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(f fVar) {
            Runnable runnable = fVar.f541b;
            if (runnable != null) {
                kotlin.jvm.internal.m.b(runnable);
                runnable.run();
                fVar.f541b = null;
            }
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            kotlin.jvm.internal.m.e(runnable, "runnable");
            this.f541b = runnable;
            View decorView = j.this.getWindow().getDecorView();
            kotlin.jvm.internal.m.d(decorView, "window.decorView");
            if (this.f542c) {
                if (kotlin.jvm.internal.m.a(Looper.myLooper(), Looper.getMainLooper())) {
                    decorView.invalidate();
                    return;
                } else {
                    decorView.postInvalidate();
                    return;
                }
            }
            decorView.postOnAnimation(new Runnable() { // from class: androidx.activity.k
                @Override // java.lang.Runnable
                public final void run() {
                    j.f.b(j.f.this);
                }
            });
        }

        @Override // androidx.activity.j.e
        public void f() {
            j.this.getWindow().getDecorView().removeCallbacks(this);
            j.this.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnDrawListener
        public void onDraw() {
            Runnable runnable = this.f541b;
            if (runnable != null) {
                runnable.run();
                this.f541b = null;
                if (j.this.getFullyDrawnReporter().c()) {
                    this.f542c = false;
                    j.this.getWindow().getDecorView().post(this);
                }
            } else if (SystemClock.uptimeMillis() > this.f540a) {
                this.f542c = false;
                j.this.getWindow().getDecorView().post(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
        }

        @Override // androidx.activity.j.e
        public void z(View view) {
            kotlin.jvm.internal.m.e(view, "view");
            if (!this.f542c) {
                this.f542c = true;
                view.getViewTreeObserver().addOnDrawListener(this);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class g extends f.e {
        g() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void s(g gVar, int i10, a.C0170a c0170a) {
            gVar.f(i10, c0170a.a());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void t(g gVar, int i10, IntentSender.SendIntentException sendIntentException) {
            gVar.e(i10, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", sendIntentException));
        }

        @Override // f.e
        public void i(final int i10, g.a contract, Object obj, androidx.core.app.c cVar) {
            Bundle bundle;
            Bundle bundle2;
            kotlin.jvm.internal.m.e(contract, "contract");
            j jVar = j.this;
            final a.C0170a b10 = contract.b(jVar, obj);
            if (b10 != null) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        j.g.s(j.g.this, i10, b10);
                    }
                });
                return;
            }
            Intent a10 = contract.a(jVar, obj);
            if (a10.getExtras() != null) {
                Bundle extras = a10.getExtras();
                kotlin.jvm.internal.m.b(extras);
                if (extras.getClassLoader() == null) {
                    a10.setExtrasClassLoader(jVar.getClassLoader());
                }
            }
            if (a10.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                Bundle bundleExtra = a10.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                a10.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                bundle2 = bundleExtra;
            } else {
                if (cVar != null) {
                    bundle = cVar.b();
                } else {
                    bundle = null;
                }
                bundle2 = bundle;
            }
            if (kotlin.jvm.internal.m.a("androidx.activity.result.contract.action.REQUEST_PERMISSIONS", a10.getAction())) {
                String[] stringArrayExtra = a10.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                if (stringArrayExtra == null) {
                    stringArrayExtra = new String[0];
                }
                androidx.core.app.b.v(jVar, stringArrayExtra, i10);
            } else if (kotlin.jvm.internal.m.a("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST", a10.getAction())) {
                f.g gVar = (f.g) a10.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
                try {
                    kotlin.jvm.internal.m.b(gVar);
                    androidx.core.app.b.A(jVar, gVar.d(), i10, gVar.a(), gVar.b(), gVar.c(), 0, bundle2);
                } catch (IntentSender.SendIntentException e10) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            j.g.t(j.g.this, i10, e10);
                        }
                    });
                }
            } else {
                androidx.core.app.b.z(jVar, a10, i10, bundle2);
            }
        }
    }

    /* loaded from: classes.dex */
    static final class h extends kotlin.jvm.internal.n implements id.a {
        h() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final g0 invoke() {
            Bundle bundle;
            Application application = j.this.getApplication();
            j jVar = j.this;
            if (jVar.getIntent() != null) {
                bundle = j.this.getIntent().getExtras();
            } else {
                bundle = null;
            }
            return new g0(application, jVar, bundle);
        }
    }

    /* loaded from: classes.dex */
    static final class i extends kotlin.jvm.internal.n implements id.a {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes.dex */
        public static final class a extends kotlin.jvm.internal.n implements id.a {

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ j f547e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(j jVar) {
                super(0);
                this.f547e = jVar;
            }

            public final void b() {
                this.f547e.reportFullyDrawn();
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                b();
                return xc.t.f32733a;
            }
        }

        i() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final t invoke() {
            return new t(j.this.reportFullyDrawnExecutor, new a(j.this));
        }
    }

    /* renamed from: androidx.activity.j$j  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static final class C0011j extends kotlin.jvm.internal.n implements id.a {
        C0011j() {
            super(0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void f(j jVar) {
            try {
                j.super.onBackPressed();
            } catch (IllegalStateException e10) {
                if (kotlin.jvm.internal.m.a(e10.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                    return;
                }
                throw e10;
            } catch (NullPointerException e11) {
                if (!kotlin.jvm.internal.m.a(e11.getMessage(), "Attempt to invoke virtual method 'android.os.Handler android.app.FragmentHostCallback.getHandler()' on a null object reference")) {
                    throw e11;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void g(j jVar, w wVar) {
            jVar.l(wVar);
        }

        @Override // id.a
        /* renamed from: d */
        public final w invoke() {
            final j jVar = j.this;
            final w wVar = new w(new Runnable() { // from class: androidx.activity.n
                @Override // java.lang.Runnable
                public final void run() {
                    j.C0011j.f(j.this);
                }
            });
            final j jVar2 = j.this;
            if (Build.VERSION.SDK_INT >= 33) {
                if (kotlin.jvm.internal.m.a(Looper.myLooper(), Looper.getMainLooper())) {
                    jVar2.l(wVar);
                } else {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: androidx.activity.o
                        @Override // java.lang.Runnable
                        public final void run() {
                            j.C0011j.g(j.this, wVar);
                        }
                    });
                }
            }
            return wVar;
        }
    }

    public j() {
        xc.d a10;
        xc.d a11;
        xc.d a12;
        h1.e a13 = h1.e.f16724d.a(this);
        this.savedStateRegistryController = a13;
        this.reportFullyDrawnExecutor = n();
        a10 = xc.f.a(new i());
        this.fullyDrawnReporter$delegate = a10;
        this.nextLocalRequestCode = new AtomicInteger();
        this.activityResultRegistry = new g();
        this.onConfigurationChangedListeners = new CopyOnWriteArrayList<>();
        this.onTrimMemoryListeners = new CopyOnWriteArrayList<>();
        this.onNewIntentListeners = new CopyOnWriteArrayList<>();
        this.onMultiWindowModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onPictureInPictureModeChangedListeners = new CopyOnWriteArrayList<>();
        this.onUserLeaveHintListeners = new CopyOnWriteArrayList<>();
        if (getLifecycle() != null) {
            getLifecycle().a(new androidx.lifecycle.k() { // from class: androidx.activity.f
                @Override // androidx.lifecycle.k
                public final void a(androidx.lifecycle.m mVar, i.a aVar) {
                    j.h(j.this, mVar, aVar);
                }
            });
            getLifecycle().a(new androidx.lifecycle.k() { // from class: androidx.activity.g
                @Override // androidx.lifecycle.k
                public final void a(androidx.lifecycle.m mVar, i.a aVar) {
                    j.i(j.this, mVar, aVar);
                }
            });
            getLifecycle().a(new a());
            a13.c();
            d0.c(this);
            getSavedStateRegistry().h(ACTIVITY_RESULT_TAG, new d.c() { // from class: androidx.activity.h
                @Override // h1.d.c
                public final Bundle a() {
                    Bundle j10;
                    j10 = j.j(j.this);
                    return j10;
                }
            });
            addOnContextAvailableListener(new e.b() { // from class: androidx.activity.i
                @Override // e.b
                public final void a(Context context) {
                    j.k(j.this, context);
                }
            });
            a11 = xc.f.a(new h());
            this.defaultViewModelProviderFactory$delegate = a11;
            a12 = xc.f.a(new C0011j());
            this.onBackPressedDispatcher$delegate = a12;
            return;
        }
        throw new IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.".toString());
    }

    public static /* synthetic */ void getOnBackPressedDispatcher$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(j jVar, androidx.lifecycle.m mVar, i.a event) {
        Window window;
        View peekDecorView;
        kotlin.jvm.internal.m.e(mVar, "<anonymous parameter 0>");
        kotlin.jvm.internal.m.e(event, "event");
        if (event == i.a.ON_STOP && (window = jVar.getWindow()) != null && (peekDecorView = window.peekDecorView()) != null) {
            peekDecorView.cancelPendingInputEvents();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(j jVar, androidx.lifecycle.m mVar, i.a event) {
        kotlin.jvm.internal.m.e(mVar, "<anonymous parameter 0>");
        kotlin.jvm.internal.m.e(event, "event");
        if (event == i.a.ON_DESTROY) {
            jVar.contextAwareHelper.b();
            if (!jVar.isChangingConfigurations()) {
                jVar.getViewModelStore().a();
            }
            jVar.reportFullyDrawnExecutor.f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Bundle j(j jVar) {
        Bundle bundle = new Bundle();
        jVar.activityResultRegistry.k(bundle);
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(j jVar, Context it) {
        kotlin.jvm.internal.m.e(it, "it");
        Bundle b10 = jVar.getSavedStateRegistry().b(ACTIVITY_RESULT_TAG);
        if (b10 != null) {
            jVar.activityResultRegistry.j(b10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(final w wVar) {
        getLifecycle().a(new androidx.lifecycle.k() { // from class: androidx.activity.d
            @Override // androidx.lifecycle.k
            public final void a(androidx.lifecycle.m mVar, i.a aVar) {
                j.m(w.this, this, mVar, aVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(w wVar, j jVar, androidx.lifecycle.m mVar, i.a event) {
        kotlin.jvm.internal.m.e(mVar, "<anonymous parameter 0>");
        kotlin.jvm.internal.m.e(event, "event");
        if (event == i.a.ON_CREATE) {
            wVar.n(b.f537a.a(jVar));
        }
    }

    private final e n() {
        return new f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o() {
        if (this._viewModelStore == null) {
            d dVar = (d) getLastNonConfigurationInstance();
            if (dVar != null) {
                this._viewModelStore = dVar.b();
            }
            if (this._viewModelStore == null) {
                this._viewModelStore = new l0();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(j jVar) {
        jVar.invalidateMenu();
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.m.d(decorView, "window.decorView");
        eVar.z(decorView);
        super.addContentView(view, layoutParams);
    }

    @Override // d0.w
    public void addMenuProvider(d0.b0 provider) {
        kotlin.jvm.internal.m.e(provider, "provider");
        this.menuHostHelper.c(provider);
    }

    @Override // androidx.core.content.c
    public final void addOnConfigurationChangedListener(c0.a listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onConfigurationChangedListeners.add(listener);
    }

    public final void addOnContextAvailableListener(e.b listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.contextAwareHelper.a(listener);
    }

    @Override // androidx.core.app.q
    public final void addOnMultiWindowModeChangedListener(c0.a listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onMultiWindowModeChangedListeners.add(listener);
    }

    public final void addOnNewIntentListener(c0.a listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onNewIntentListeners.add(listener);
    }

    @Override // androidx.core.app.r
    public final void addOnPictureInPictureModeChangedListener(c0.a listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onPictureInPictureModeChangedListeners.add(listener);
    }

    @Override // androidx.core.content.d
    public final void addOnTrimMemoryListener(c0.a listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onTrimMemoryListeners.add(listener);
    }

    public final void addOnUserLeaveHintListener(Runnable listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onUserLeaveHintListeners.add(listener);
    }

    @Override // f.f
    public final f.e getActivityResultRegistry() {
        return this.activityResultRegistry;
    }

    @Override // androidx.lifecycle.g
    public x0.a getDefaultViewModelCreationExtras() {
        Bundle bundle = null;
        x0.b bVar = new x0.b(null, 1, null);
        if (getApplication() != null) {
            a.b bVar2 = k0.a.f2988h;
            Application application = getApplication();
            kotlin.jvm.internal.m.d(application, "application");
            bVar.c(bVar2, application);
        }
        bVar.c(d0.f2952a, this);
        bVar.c(d0.f2953b, this);
        Intent intent = getIntent();
        if (intent != null) {
            bundle = intent.getExtras();
        }
        if (bundle != null) {
            bVar.c(d0.f2954c, bundle);
        }
        return bVar;
    }

    public k0.c getDefaultViewModelProviderFactory() {
        return (k0.c) this.defaultViewModelProviderFactory$delegate.getValue();
    }

    public t getFullyDrawnReporter() {
        return (t) this.fullyDrawnReporter$delegate.getValue();
    }

    public Object getLastCustomNonConfigurationInstance() {
        d dVar = (d) getLastNonConfigurationInstance();
        if (dVar != null) {
            return dVar.a();
        }
        return null;
    }

    @Override // androidx.core.app.g, androidx.lifecycle.m
    public androidx.lifecycle.i getLifecycle() {
        return super.getLifecycle();
    }

    @Override // androidx.activity.y
    public final w getOnBackPressedDispatcher() {
        return (w) this.onBackPressedDispatcher$delegate.getValue();
    }

    @Override // h1.f
    public final h1.d getSavedStateRegistry() {
        return this.savedStateRegistryController.b();
    }

    @Override // androidx.lifecycle.m0
    public l0 getViewModelStore() {
        if (getApplication() != null) {
            o();
            l0 l0Var = this._viewModelStore;
            kotlin.jvm.internal.m.b(l0Var);
            return l0Var;
        }
        throw new IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.".toString());
    }

    public void initializeViewTreeOwners() {
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.m.d(decorView, "window.decorView");
        n0.a(decorView, this);
        View decorView2 = getWindow().getDecorView();
        kotlin.jvm.internal.m.d(decorView2, "window.decorView");
        o0.a(decorView2, this);
        View decorView3 = getWindow().getDecorView();
        kotlin.jvm.internal.m.d(decorView3, "window.decorView");
        h1.g.a(decorView3, this);
        View decorView4 = getWindow().getDecorView();
        kotlin.jvm.internal.m.d(decorView4, "window.decorView");
        b0.a(decorView4, this);
        View decorView5 = getWindow().getDecorView();
        kotlin.jvm.internal.m.d(decorView5, "window.decorView");
        a0.a(decorView5, this);
    }

    public void invalidateMenu() {
        invalidateOptionsMenu();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (!this.activityResultRegistry.e(i10, i11, intent)) {
            super.onActivityResult(i10, i11, intent);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        getOnBackPressedDispatcher().k();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        kotlin.jvm.internal.m.e(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        Iterator<c0.a> it = this.onConfigurationChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(newConfig);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.app.g, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.savedStateRegistryController.d(bundle);
        this.contextAwareHelper.c(this);
        super.onCreate(bundle);
        androidx.lifecycle.x.f3023b.c(this);
        int i10 = this.contentLayoutId;
        if (i10 != 0) {
            setContentView(i10);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i10, Menu menu) {
        kotlin.jvm.internal.m.e(menu, "menu");
        if (i10 == 0) {
            super.onCreatePanelMenu(i10, menu);
            this.menuHostHelper.h(menu, getMenuInflater());
            return true;
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i10, MenuItem item) {
        kotlin.jvm.internal.m.e(item, "item");
        if (super.onMenuItemSelected(i10, item)) {
            return true;
        }
        if (i10 == 0) {
            return this.menuHostHelper.j(item);
        }
        return false;
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z10) {
        if (this.dispatchingOnMultiWindowModeChanged) {
            return;
        }
        Iterator<c0.a> it = this.onMultiWindowModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new androidx.core.app.h(z10));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        kotlin.jvm.internal.m.e(intent, "intent");
        super.onNewIntent(intent);
        Iterator<c0.a> it = this.onNewIntentListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i10, Menu menu) {
        kotlin.jvm.internal.m.e(menu, "menu");
        this.menuHostHelper.i(menu);
        super.onPanelClosed(i10, menu);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z10) {
        if (this.dispatchingOnPictureInPictureModeChanged) {
            return;
        }
        Iterator<c0.a> it = this.onPictureInPictureModeChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(new androidx.core.app.u(z10));
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i10, View view, Menu menu) {
        kotlin.jvm.internal.m.e(menu, "menu");
        if (i10 == 0) {
            super.onPreparePanel(i10, view, menu);
            this.menuHostHelper.k(menu);
            return true;
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i10, String[] permissions, int[] grantResults) {
        kotlin.jvm.internal.m.e(permissions, "permissions");
        kotlin.jvm.internal.m.e(grantResults, "grantResults");
        if (!this.activityResultRegistry.e(i10, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", permissions).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", grantResults))) {
            super.onRequestPermissionsResult(i10, permissions, grantResults);
        }
    }

    public Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        d dVar;
        Object onRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        l0 l0Var = this._viewModelStore;
        if (l0Var == null && (dVar = (d) getLastNonConfigurationInstance()) != null) {
            l0Var = dVar.b();
        }
        if (l0Var == null && onRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        d dVar2 = new d();
        dVar2.c(onRetainCustomNonConfigurationInstance);
        dVar2.d(l0Var);
        return dVar2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.core.app.g, android.app.Activity
    public void onSaveInstanceState(Bundle outState) {
        kotlin.jvm.internal.m.e(outState, "outState");
        if (getLifecycle() instanceof androidx.lifecycle.n) {
            androidx.lifecycle.i lifecycle = getLifecycle();
            kotlin.jvm.internal.m.c(lifecycle, "null cannot be cast to non-null type androidx.lifecycle.LifecycleRegistry");
            ((androidx.lifecycle.n) lifecycle).m(i.b.CREATED);
        }
        super.onSaveInstanceState(outState);
        this.savedStateRegistryController.e(outState);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public void onTrimMemory(int i10) {
        super.onTrimMemory(i10);
        Iterator<c0.a> it = this.onTrimMemoryListeners.iterator();
        while (it.hasNext()) {
            it.next().accept(Integer.valueOf(i10));
        }
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        super.onUserLeaveHint();
        Iterator<Runnable> it = this.onUserLeaveHintListeners.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
    }

    public Context peekAvailableContext() {
        return this.contextAwareHelper.d();
    }

    public final <I, O> f.c registerForActivityResult(g.a contract, f.e registry, f.b callback) {
        kotlin.jvm.internal.m.e(contract, "contract");
        kotlin.jvm.internal.m.e(registry, "registry");
        kotlin.jvm.internal.m.e(callback, "callback");
        return registry.l("activity_rq#" + this.nextLocalRequestCode.getAndIncrement(), this, contract, callback);
    }

    @Override // d0.w
    public void removeMenuProvider(d0.b0 provider) {
        kotlin.jvm.internal.m.e(provider, "provider");
        this.menuHostHelper.l(provider);
    }

    @Override // androidx.core.content.c
    public final void removeOnConfigurationChangedListener(c0.a listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onConfigurationChangedListeners.remove(listener);
    }

    public final void removeOnContextAvailableListener(e.b listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.contextAwareHelper.e(listener);
    }

    @Override // androidx.core.app.q
    public final void removeOnMultiWindowModeChangedListener(c0.a listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onMultiWindowModeChangedListeners.remove(listener);
    }

    public final void removeOnNewIntentListener(c0.a listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onNewIntentListeners.remove(listener);
    }

    @Override // androidx.core.app.r
    public final void removeOnPictureInPictureModeChangedListener(c0.a listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onPictureInPictureModeChangedListeners.remove(listener);
    }

    @Override // androidx.core.content.d
    public final void removeOnTrimMemoryListener(c0.a listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onTrimMemoryListeners.remove(listener);
    }

    public final void removeOnUserLeaveHintListener(Runnable listener) {
        kotlin.jvm.internal.m.e(listener, "listener");
        this.onUserLeaveHintListeners.remove(listener);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (k1.a.h()) {
                k1.a.c("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            getFullyDrawnReporter().b();
        } finally {
            k1.a.f();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i10) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.m.d(decorView, "window.decorView");
        eVar.z(decorView);
        super.setContentView(i10);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i10) {
        kotlin.jvm.internal.m.e(intent, "intent");
        super.startActivityForResult(intent, i10);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intent, int i10, Intent intent2, int i11, int i12, int i13) {
        kotlin.jvm.internal.m.e(intent, "intent");
        super.startIntentSenderForResult(intent, i10, intent2, i11, i12, i13);
    }

    public void addMenuProvider(d0.b0 provider, androidx.lifecycle.m owner) {
        kotlin.jvm.internal.m.e(provider, "provider");
        kotlin.jvm.internal.m.e(owner, "owner");
        this.menuHostHelper.d(provider, owner);
    }

    @Override // android.app.Activity
    public void startActivityForResult(Intent intent, int i10, Bundle bundle) {
        kotlin.jvm.internal.m.e(intent, "intent");
        super.startActivityForResult(intent, i10, bundle);
    }

    @Override // android.app.Activity
    public void startIntentSenderForResult(IntentSender intent, int i10, Intent intent2, int i11, int i12, int i13, Bundle bundle) {
        kotlin.jvm.internal.m.e(intent, "intent");
        super.startIntentSenderForResult(intent, i10, intent2, i11, i12, i13, bundle);
    }

    @SuppressLint({"LambdaLast"})
    public void addMenuProvider(d0.b0 provider, androidx.lifecycle.m owner, i.b state) {
        kotlin.jvm.internal.m.e(provider, "provider");
        kotlin.jvm.internal.m.e(owner, "owner");
        kotlin.jvm.internal.m.e(state, "state");
        this.menuHostHelper.e(provider, owner, state);
    }

    public final <I, O> f.c registerForActivityResult(g.a contract, f.b callback) {
        kotlin.jvm.internal.m.e(contract, "contract");
        kotlin.jvm.internal.m.e(callback, "callback");
        return registerForActivityResult(contract, this.activityResultRegistry, callback);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z10, Configuration newConfig) {
        kotlin.jvm.internal.m.e(newConfig, "newConfig");
        this.dispatchingOnMultiWindowModeChanged = true;
        try {
            super.onMultiWindowModeChanged(z10, newConfig);
            this.dispatchingOnMultiWindowModeChanged = false;
            Iterator<c0.a> it = this.onMultiWindowModeChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().accept(new androidx.core.app.h(z10, newConfig));
            }
        } catch (Throwable th) {
            this.dispatchingOnMultiWindowModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z10, Configuration newConfig) {
        kotlin.jvm.internal.m.e(newConfig, "newConfig");
        this.dispatchingOnPictureInPictureModeChanged = true;
        try {
            super.onPictureInPictureModeChanged(z10, newConfig);
            this.dispatchingOnPictureInPictureModeChanged = false;
            Iterator<c0.a> it = this.onPictureInPictureModeChangedListeners.iterator();
            while (it.hasNext()) {
                it.next().accept(new androidx.core.app.u(z10, newConfig));
            }
        } catch (Throwable th) {
            this.dispatchingOnPictureInPictureModeChanged = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.m.d(decorView, "window.decorView");
        eVar.z(decorView);
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        initializeViewTreeOwners();
        e eVar = this.reportFullyDrawnExecutor;
        View decorView = getWindow().getDecorView();
        kotlin.jvm.internal.m.d(decorView, "window.decorView");
        eVar.z(decorView);
        super.setContentView(view, layoutParams);
    }
}
