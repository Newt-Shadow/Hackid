package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.i;
import androidx.lifecycle.x;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public final class ProcessLifecycleOwner implements m {

    /* renamed from: i  reason: collision with root package name */
    public static final b f2918i = new b(null);

    /* renamed from: j  reason: collision with root package name */
    private static final ProcessLifecycleOwner f2919j = new ProcessLifecycleOwner();

    /* renamed from: a  reason: collision with root package name */
    private int f2920a;

    /* renamed from: b  reason: collision with root package name */
    private int f2921b;

    /* renamed from: e  reason: collision with root package name */
    private Handler f2924e;

    /* renamed from: c  reason: collision with root package name */
    private boolean f2922c = true;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2923d = true;

    /* renamed from: f  reason: collision with root package name */
    private final n f2925f = new n(this);

    /* renamed from: g  reason: collision with root package name */
    private final Runnable f2926g = new Runnable() { // from class: androidx.lifecycle.v
        @Override // java.lang.Runnable
        public final void run() {
            ProcessLifecycleOwner.i(ProcessLifecycleOwner.this);
        }
    };

    /* renamed from: h  reason: collision with root package name */
    private final x.a f2927h = new d();

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f2928a = new a();

        private a() {
        }

        public static final void a(Activity activity, Application.ActivityLifecycleCallbacks callback) {
            kotlin.jvm.internal.m.e(activity, "activity");
            kotlin.jvm.internal.m.e(callback, "callback");
            activity.registerActivityLifecycleCallbacks(callback);
        }
    }

    /* loaded from: classes.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final m a() {
            return ProcessLifecycleOwner.f2919j;
        }

        public final void b(Context context) {
            kotlin.jvm.internal.m.e(context, "context");
            ProcessLifecycleOwner.f2919j.h(context);
        }
    }

    /* loaded from: classes.dex */
    public static final class c extends e {

        /* loaded from: classes.dex */
        public static final class a extends e {
            final /* synthetic */ ProcessLifecycleOwner this$0;

            a(ProcessLifecycleOwner processLifecycleOwner) {
                this.this$0 = processLifecycleOwner;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostResumed(Activity activity) {
                kotlin.jvm.internal.m.e(activity, "activity");
                this.this$0.e();
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPostStarted(Activity activity) {
                kotlin.jvm.internal.m.e(activity, "activity");
                this.this$0.f();
            }
        }

        c() {
        }

        @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.m.e(activity, "activity");
            if (Build.VERSION.SDK_INT < 29) {
                x.f3023b.b(activity).e(ProcessLifecycleOwner.this.f2927h);
            }
        }

        @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
            ProcessLifecycleOwner.this.d();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.m.e(activity, "activity");
            a.a(activity, new a(ProcessLifecycleOwner.this));
        }

        @Override // androidx.lifecycle.e, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
            ProcessLifecycleOwner.this.g();
        }
    }

    /* loaded from: classes.dex */
    public static final class d implements x.a {
        d() {
        }

        @Override // androidx.lifecycle.x.a
        public void a() {
            ProcessLifecycleOwner.this.f();
        }

        @Override // androidx.lifecycle.x.a
        public void onCreate() {
        }

        @Override // androidx.lifecycle.x.a
        public void onResume() {
            ProcessLifecycleOwner.this.e();
        }
    }

    private ProcessLifecycleOwner() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ProcessLifecycleOwner this$0) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        this$0.j();
        this$0.k();
    }

    public static final m l() {
        return f2918i.a();
    }

    public final void d() {
        int i10 = this.f2921b - 1;
        this.f2921b = i10;
        if (i10 == 0) {
            Handler handler = this.f2924e;
            kotlin.jvm.internal.m.b(handler);
            handler.postDelayed(this.f2926g, 700L);
        }
    }

    public final void e() {
        int i10 = this.f2921b + 1;
        this.f2921b = i10;
        if (i10 == 1) {
            if (this.f2922c) {
                this.f2925f.h(i.a.ON_RESUME);
                this.f2922c = false;
                return;
            }
            Handler handler = this.f2924e;
            kotlin.jvm.internal.m.b(handler);
            handler.removeCallbacks(this.f2926g);
        }
    }

    public final void f() {
        int i10 = this.f2920a + 1;
        this.f2920a = i10;
        if (i10 == 1 && this.f2923d) {
            this.f2925f.h(i.a.ON_START);
            this.f2923d = false;
        }
    }

    public final void g() {
        this.f2920a--;
        k();
    }

    @Override // androidx.lifecycle.m
    public i getLifecycle() {
        return this.f2925f;
    }

    public final void h(Context context) {
        kotlin.jvm.internal.m.e(context, "context");
        this.f2924e = new Handler();
        this.f2925f.h(i.a.ON_CREATE);
        Context applicationContext = context.getApplicationContext();
        kotlin.jvm.internal.m.c(applicationContext, "null cannot be cast to non-null type android.app.Application");
        ((Application) applicationContext).registerActivityLifecycleCallbacks(new c());
    }

    public final void j() {
        if (this.f2921b == 0) {
            this.f2922c = true;
            this.f2925f.h(i.a.ON_PAUSE);
        }
    }

    public final void k() {
        if (this.f2920a == 0 && this.f2922c) {
            this.f2925f.h(i.a.ON_STOP);
            this.f2923d = true;
        }
    }
}
