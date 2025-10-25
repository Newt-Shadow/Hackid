package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    protected static final Class f1858a;

    /* renamed from: b  reason: collision with root package name */
    protected static final Field f1859b;

    /* renamed from: c  reason: collision with root package name */
    protected static final Field f1860c;

    /* renamed from: d  reason: collision with root package name */
    protected static final Method f1861d;

    /* renamed from: e  reason: collision with root package name */
    protected static final Method f1862e;

    /* renamed from: f  reason: collision with root package name */
    protected static final Method f1863f;

    /* renamed from: g  reason: collision with root package name */
    private static final Handler f1864g = new Handler(Looper.getMainLooper());

    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0027d f1865a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f1866b;

        a(C0027d c0027d, Object obj) {
            this.f1865a = c0027d;
            this.f1866b = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1865a.f1871a = this.f1866b;
        }
    }

    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Application f1867a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ C0027d f1868b;

        b(Application application, C0027d c0027d) {
            this.f1867a = application;
            this.f1868b = c0027d;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1867a.unregisterActivityLifecycleCallbacks(this.f1868b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f1869a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Object f1870b;

        c(Object obj, Object obj2) {
            this.f1869a = obj;
            this.f1870b = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Method method = d.f1861d;
                if (method != null) {
                    method.invoke(this.f1869a, this.f1870b, Boolean.FALSE, "AppCompat recreation");
                } else {
                    d.f1862e.invoke(this.f1869a, this.f1870b, Boolean.FALSE);
                }
            } catch (RuntimeException e10) {
                if (e10.getClass() == RuntimeException.class && e10.getMessage() != null && e10.getMessage().startsWith("Unable to stop")) {
                    throw e10;
                }
            } catch (Throwable th) {
                Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
            }
        }
    }

    /* renamed from: androidx.core.app.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0027d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a  reason: collision with root package name */
        Object f1871a;

        /* renamed from: b  reason: collision with root package name */
        private Activity f1872b;

        /* renamed from: c  reason: collision with root package name */
        private final int f1873c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f1874d = false;

        /* renamed from: e  reason: collision with root package name */
        private boolean f1875e = false;

        /* renamed from: f  reason: collision with root package name */
        private boolean f1876f = false;

        C0027d(Activity activity) {
            this.f1872b = activity;
            this.f1873c = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f1872b == activity) {
                this.f1872b = null;
                this.f1875e = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (this.f1875e && !this.f1876f && !this.f1874d && d.h(this.f1871a, this.f1873c, activity)) {
                this.f1876f = true;
                this.f1871a = null;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f1872b == activity) {
                this.f1874d = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class a10 = a();
        f1858a = a10;
        f1859b = b();
        f1860c = f();
        f1861d = d(a10);
        f1862e = c(a10);
        f1863f = e(a10);
    }

    private static Class a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Field b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method c(Class cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method d(Class cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method e(Class cls) {
        if (g() && cls != null) {
            try {
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls2, Configuration.class, Configuration.class, cls2, cls2);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static Field f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean g() {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 != 26 && i10 != 27) {
            return false;
        }
        return true;
    }

    protected static boolean h(Object obj, int i10, Activity activity) {
        try {
            Object obj2 = f1860c.get(activity);
            if (obj2 == obj && activity.hashCode() == i10) {
                f1864g.postAtFrontOfQueue(new c(f1859b.get(activity), obj2));
                return true;
            }
            return false;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (g() && f1863f == null) {
            return false;
        } else {
            if (f1862e == null && f1861d == null) {
                return false;
            }
            try {
                Object obj2 = f1860c.get(activity);
                if (obj2 == null || (obj = f1859b.get(activity)) == null) {
                    return false;
                }
                Application application = activity.getApplication();
                C0027d c0027d = new C0027d(activity);
                application.registerActivityLifecycleCallbacks(c0027d);
                Handler handler = f1864g;
                handler.post(new a(c0027d, obj2));
                if (g()) {
                    Method method = f1863f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                handler.post(new b(application, c0027d));
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
    }
}
