package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import android.os.Bundle;
import androidx.lifecycle.i;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public class x extends Fragment {

    /* renamed from: b  reason: collision with root package name */
    public static final b f3023b = new b(null);

    /* renamed from: a  reason: collision with root package name */
    private a f3024a;

    /* loaded from: classes.dex */
    public interface a {
        void a();

        void onCreate();

        void onResume();
    }

    /* loaded from: classes.dex */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Activity activity, i.a event) {
            kotlin.jvm.internal.m.e(activity, "activity");
            kotlin.jvm.internal.m.e(event, "event");
            if (activity instanceof m) {
                i lifecycle = ((m) activity).getLifecycle();
                if (lifecycle instanceof n) {
                    ((n) lifecycle).h(event);
                }
            }
        }

        public final x b(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "<this>");
            Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
            kotlin.jvm.internal.m.c(findFragmentByTag, "null cannot be cast to non-null type androidx.lifecycle.ReportFragment");
            return (x) findFragmentByTag;
        }

        public final void c(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
            if (Build.VERSION.SDK_INT >= 29) {
                c.Companion.a(activity);
            }
            FragmentManager fragmentManager = activity.getFragmentManager();
            if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
                fragmentManager.beginTransaction().add(new x(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
                fragmentManager.executePendingTransactions();
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class c implements Application.ActivityLifecycleCallbacks {
        public static final a Companion = new a(null);

        /* loaded from: classes.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final void a(Activity activity) {
                kotlin.jvm.internal.m.e(activity, "activity");
                activity.registerActivityLifecycleCallbacks(new c());
            }
        }

        public static final void registerIn(Activity activity) {
            Companion.a(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.m.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostCreated(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.m.e(activity, "activity");
            x.f3023b.a(activity, i.a.ON_CREATE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
            x.f3023b.a(activity, i.a.ON_RESUME);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
            x.f3023b.a(activity, i.a.ON_START);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreDestroyed(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
            x.f3023b.a(activity, i.a.ON_DESTROY);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPrePaused(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
            x.f3023b.a(activity, i.a.ON_PAUSE);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPreStopped(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
            x.f3023b.a(activity, i.a.ON_STOP);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            kotlin.jvm.internal.m.e(activity, "activity");
            kotlin.jvm.internal.m.e(bundle, "bundle");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            kotlin.jvm.internal.m.e(activity, "activity");
        }
    }

    private final void a(i.a aVar) {
        if (Build.VERSION.SDK_INT < 29) {
            b bVar = f3023b;
            Activity activity = getActivity();
            kotlin.jvm.internal.m.d(activity, "activity");
            bVar.a(activity, aVar);
        }
    }

    private final void b(a aVar) {
        if (aVar != null) {
            aVar.onCreate();
        }
    }

    private final void c(a aVar) {
        if (aVar != null) {
            aVar.onResume();
        }
    }

    private final void d(a aVar) {
        if (aVar != null) {
            aVar.a();
        }
    }

    public final void e(a aVar) {
        this.f3024a = aVar;
    }

    @Override // android.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        b(this.f3024a);
        a(i.a.ON_CREATE);
    }

    @Override // android.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        a(i.a.ON_DESTROY);
        this.f3024a = null;
    }

    @Override // android.app.Fragment
    public void onPause() {
        super.onPause();
        a(i.a.ON_PAUSE);
    }

    @Override // android.app.Fragment
    public void onResume() {
        super.onResume();
        c(this.f3024a);
        a(i.a.ON_RESUME);
    }

    @Override // android.app.Fragment
    public void onStart() {
        super.onStart();
        d(this.f3024a);
        a(i.a.ON_START);
    }

    @Override // android.app.Fragment
    public void onStop() {
        super.onStop();
        a(i.a.ON_STOP);
    }
}
