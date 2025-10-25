package androidx.window.layout.adapter.sidecar;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.window.layout.adapter.sidecar.SidecarCompat;
import androidx.window.layout.adapter.sidecar.a;
import androidx.window.sidecar.SidecarDeviceState;
import androidx.window.sidecar.SidecarDisplayFeature;
import androidx.window.sidecar.SidecarInterface;
import androidx.window.sidecar.SidecarProvider;
import androidx.window.sidecar.SidecarWindowLayoutInfo;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import q1.k;
import t1.j;
import xc.t;
import yc.o;
/* loaded from: classes.dex */
public final class SidecarCompat implements androidx.window.layout.adapter.sidecar.a {

    /* renamed from: f  reason: collision with root package name */
    public static final a f3641f = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final SidecarInterface f3642a;

    /* renamed from: b  reason: collision with root package name */
    private final w1.a f3643b;

    /* renamed from: c  reason: collision with root package name */
    private final Map f3644c;

    /* renamed from: d  reason: collision with root package name */
    private final Map f3645d;

    /* renamed from: e  reason: collision with root package name */
    private b f3646e;

    /* loaded from: classes.dex */
    public final class TranslatingCallback implements SidecarInterface.SidecarCallback {
        public TranslatingCallback() {
        }

        public void onDeviceStateChanged(SidecarDeviceState newDeviceState) {
            SidecarInterface h10;
            m.e(newDeviceState, "newDeviceState");
            SidecarCompat sidecarCompat = SidecarCompat.this;
            for (Activity activity : SidecarCompat.this.f3644c.values()) {
                IBinder a10 = SidecarCompat.f3641f.a(activity);
                SidecarWindowLayoutInfo sidecarWindowLayoutInfo = null;
                if (a10 != null && (h10 = sidecarCompat.h()) != null) {
                    sidecarWindowLayoutInfo = h10.getWindowLayoutInfo(a10);
                }
                b bVar = sidecarCompat.f3646e;
                if (bVar != null) {
                    bVar.a(activity, sidecarCompat.f3643b.f(sidecarWindowLayoutInfo, newDeviceState));
                }
            }
        }

        public void onWindowLayoutChanged(IBinder windowToken, SidecarWindowLayoutInfo newLayout) {
            SidecarDeviceState sidecarDeviceState;
            m.e(windowToken, "windowToken");
            m.e(newLayout, "newLayout");
            Activity activity = (Activity) SidecarCompat.this.f3644c.get(windowToken);
            if (activity != null) {
                w1.a aVar = SidecarCompat.this.f3643b;
                SidecarInterface h10 = SidecarCompat.this.h();
                if (h10 == null || (sidecarDeviceState = h10.getDeviceState()) == null) {
                    sidecarDeviceState = new SidecarDeviceState();
                }
                j f10 = aVar.f(newLayout, sidecarDeviceState);
                b bVar = SidecarCompat.this.f3646e;
                if (bVar != null) {
                    bVar.a(activity, f10);
                    return;
                }
                return;
            }
            Log.w("SidecarCompat", "Unable to resolve activity from window token. Missing a call to #onWindowLayoutChangeListenerAdded()?");
        }
    }

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final IBinder a(Activity activity) {
            Window window;
            WindowManager.LayoutParams attributes;
            if (activity != null && (window = activity.getWindow()) != null && (attributes = window.getAttributes()) != null) {
                return attributes.token;
            }
            return null;
        }

        public final SidecarInterface b(Context context) {
            m.e(context, "context");
            return SidecarProvider.getSidecarImpl(context.getApplicationContext());
        }

        public final k c() {
            try {
                String apiVersion = SidecarProvider.getApiVersion();
                if (TextUtils.isEmpty(apiVersion)) {
                    return null;
                }
                return k.f27973f.b(apiVersion);
            } catch (NoClassDefFoundError | UnsupportedOperationException unused) {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b implements a.InterfaceC0065a {

        /* renamed from: a  reason: collision with root package name */
        private final a.InterfaceC0065a f3648a;

        /* renamed from: b  reason: collision with root package name */
        private final ReentrantLock f3649b;

        /* renamed from: c  reason: collision with root package name */
        private final WeakHashMap f3650c;

        public b(a.InterfaceC0065a callbackInterface) {
            m.e(callbackInterface, "callbackInterface");
            this.f3648a = callbackInterface;
            this.f3649b = new ReentrantLock();
            this.f3650c = new WeakHashMap();
        }

        @Override // androidx.window.layout.adapter.sidecar.a.InterfaceC0065a
        public void a(Activity activity, j newLayout) {
            m.e(activity, "activity");
            m.e(newLayout, "newLayout");
            ReentrantLock reentrantLock = this.f3649b;
            reentrantLock.lock();
            try {
                if (m.a(newLayout, (j) this.f3650c.get(activity))) {
                    return;
                }
                j jVar = (j) this.f3650c.put(activity, newLayout);
                reentrantLock.unlock();
                this.f3648a.a(activity, newLayout);
            } finally {
                reentrantLock.unlock();
            }
        }

        public final void b(Activity activity) {
            m.e(activity, "activity");
            ReentrantLock reentrantLock = this.f3649b;
            reentrantLock.lock();
            try {
                this.f3650c.put(activity, null);
                t tVar = t.f32733a;
            } finally {
                reentrantLock.unlock();
            }
        }
    }

    /* loaded from: classes.dex */
    private static final class c implements View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        private final SidecarCompat f3651a;

        /* renamed from: b  reason: collision with root package name */
        private final WeakReference f3652b;

        public c(SidecarCompat sidecarCompat, Activity activity) {
            m.e(sidecarCompat, "sidecarCompat");
            m.e(activity, "activity");
            this.f3651a = sidecarCompat;
            this.f3652b = new WeakReference(activity);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            m.e(view, "view");
            view.removeOnAttachStateChangeListener(this);
            Activity activity = (Activity) this.f3652b.get();
            IBinder a10 = SidecarCompat.f3641f.a(activity);
            if (activity == null || a10 == null) {
                return;
            }
            this.f3651a.j(a10, activity);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            m.e(view, "view");
        }
    }

    public SidecarCompat(SidecarInterface sidecarInterface, w1.a sidecarAdapter) {
        m.e(sidecarAdapter, "sidecarAdapter");
        this.f3642a = sidecarInterface;
        this.f3643b = sidecarAdapter;
        this.f3644c = new LinkedHashMap();
        this.f3645d = new LinkedHashMap();
    }

    private final void k(final Activity activity) {
        if (this.f3645d.get(activity) == null && (activity instanceof androidx.core.content.c)) {
            c0.a aVar = new c0.a() { // from class: w1.b
                @Override // c0.a
                public final void accept(Object obj) {
                    SidecarCompat.l(SidecarCompat.this, activity, (Configuration) obj);
                }
            };
            this.f3645d.put(activity, aVar);
            ((androidx.core.content.c) activity).addOnConfigurationChangedListener(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(SidecarCompat this$0, Activity activity, Configuration configuration) {
        m.e(this$0, "this$0");
        m.e(activity, "$activity");
        b bVar = this$0.f3646e;
        if (bVar != null) {
            bVar.a(activity, this$0.i(activity));
        }
    }

    private final void m(Activity activity) {
        c0.a aVar = (c0.a) this.f3645d.get(activity);
        if (aVar == null) {
            return;
        }
        if (activity instanceof androidx.core.content.c) {
            ((androidx.core.content.c) activity).removeOnConfigurationChangedListener(aVar);
        }
        this.f3645d.remove(activity);
    }

    @Override // androidx.window.layout.adapter.sidecar.a
    public void a(a.InterfaceC0065a extensionCallback) {
        m.e(extensionCallback, "extensionCallback");
        this.f3646e = new b(extensionCallback);
        SidecarInterface sidecarInterface = this.f3642a;
        if (sidecarInterface != null) {
            sidecarInterface.setSidecarCallback(new DistinctElementSidecarCallback(this.f3643b, new TranslatingCallback()));
        }
    }

    @Override // androidx.window.layout.adapter.sidecar.a
    public void b(Activity activity) {
        m.e(activity, "activity");
        IBinder a10 = f3641f.a(activity);
        if (a10 != null) {
            j(a10, activity);
            return;
        }
        activity.getWindow().getDecorView().addOnAttachStateChangeListener(new c(this, activity));
    }

    @Override // androidx.window.layout.adapter.sidecar.a
    public void c(Activity activity) {
        boolean z10;
        SidecarInterface sidecarInterface;
        m.e(activity, "activity");
        IBinder a10 = f3641f.a(activity);
        if (a10 == null) {
            return;
        }
        SidecarInterface sidecarInterface2 = this.f3642a;
        if (sidecarInterface2 != null) {
            sidecarInterface2.onWindowLayoutChangeListenerRemoved(a10);
        }
        m(activity);
        b bVar = this.f3646e;
        if (bVar != null) {
            bVar.b(activity);
        }
        if (this.f3644c.size() == 1) {
            z10 = true;
        } else {
            z10 = false;
        }
        this.f3644c.remove(a10);
        if (z10 && (sidecarInterface = this.f3642a) != null) {
            sidecarInterface.onDeviceStateListenersChanged(true);
        }
    }

    public final SidecarInterface h() {
        return this.f3642a;
    }

    public final j i(Activity activity) {
        SidecarWindowLayoutInfo sidecarWindowLayoutInfo;
        SidecarDeviceState sidecarDeviceState;
        List h10;
        m.e(activity, "activity");
        IBinder a10 = f3641f.a(activity);
        if (a10 == null) {
            h10 = o.h();
            return new j(h10);
        }
        SidecarInterface sidecarInterface = this.f3642a;
        if (sidecarInterface != null) {
            sidecarWindowLayoutInfo = sidecarInterface.getWindowLayoutInfo(a10);
        } else {
            sidecarWindowLayoutInfo = null;
        }
        w1.a aVar = this.f3643b;
        SidecarInterface sidecarInterface2 = this.f3642a;
        if (sidecarInterface2 == null || (sidecarDeviceState = sidecarInterface2.getDeviceState()) == null) {
            sidecarDeviceState = new SidecarDeviceState();
        }
        return aVar.f(sidecarWindowLayoutInfo, sidecarDeviceState);
    }

    public final void j(IBinder windowToken, Activity activity) {
        SidecarInterface sidecarInterface;
        m.e(windowToken, "windowToken");
        m.e(activity, "activity");
        this.f3644c.put(windowToken, activity);
        SidecarInterface sidecarInterface2 = this.f3642a;
        if (sidecarInterface2 != null) {
            sidecarInterface2.onWindowLayoutChangeListenerAdded(windowToken);
        }
        if (this.f3644c.size() == 1 && (sidecarInterface = this.f3642a) != null) {
            sidecarInterface.onDeviceStateListenersChanged(false);
        }
        b bVar = this.f3646e;
        if (bVar != null) {
            bVar.a(activity, i(activity));
        }
        k(activity);
    }

    public boolean n() {
        Method method;
        Class<?> cls;
        Method method2;
        Class<?> cls2;
        Method method3;
        Class<?> cls3;
        Method method4;
        Class<?> cls4;
        Class<?> cls5;
        Class<?> cls6;
        Class<?> cls7;
        try {
            SidecarInterface sidecarInterface = this.f3642a;
            Class<?> cls8 = null;
            if (sidecarInterface != null && (cls7 = sidecarInterface.getClass()) != null) {
                method = cls7.getMethod("setSidecarCallback", SidecarInterface.SidecarCallback.class);
            } else {
                method = null;
            }
            if (method != null) {
                cls = method.getReturnType();
            } else {
                cls = null;
            }
            if (m.a(cls, Void.TYPE)) {
                SidecarInterface sidecarInterface2 = this.f3642a;
                if (sidecarInterface2 != null) {
                    sidecarInterface2.getDeviceState();
                }
                SidecarInterface sidecarInterface3 = this.f3642a;
                if (sidecarInterface3 != null) {
                    sidecarInterface3.onDeviceStateListenersChanged(true);
                }
                SidecarInterface sidecarInterface4 = this.f3642a;
                if (sidecarInterface4 != null && (cls6 = sidecarInterface4.getClass()) != null) {
                    method2 = cls6.getMethod("getWindowLayoutInfo", IBinder.class);
                } else {
                    method2 = null;
                }
                if (method2 != null) {
                    cls2 = method2.getReturnType();
                } else {
                    cls2 = null;
                }
                if (m.a(cls2, SidecarWindowLayoutInfo.class)) {
                    SidecarInterface sidecarInterface5 = this.f3642a;
                    if (sidecarInterface5 != null && (cls5 = sidecarInterface5.getClass()) != null) {
                        method3 = cls5.getMethod("onWindowLayoutChangeListenerAdded", IBinder.class);
                    } else {
                        method3 = null;
                    }
                    if (method3 != null) {
                        cls3 = method3.getReturnType();
                    } else {
                        cls3 = null;
                    }
                    if (m.a(cls3, Void.TYPE)) {
                        SidecarInterface sidecarInterface6 = this.f3642a;
                        if (sidecarInterface6 != null && (cls4 = sidecarInterface6.getClass()) != null) {
                            method4 = cls4.getMethod("onWindowLayoutChangeListenerRemoved", IBinder.class);
                        } else {
                            method4 = null;
                        }
                        if (method4 != null) {
                            cls8 = method4.getReturnType();
                        }
                        if (m.a(cls8, Void.TYPE)) {
                            SidecarDeviceState sidecarDeviceState = new SidecarDeviceState();
                            try {
                                sidecarDeviceState.posture = 3;
                            } catch (NoSuchFieldError unused) {
                                SidecarDeviceState.class.getMethod("setPosture", Integer.TYPE).invoke(sidecarDeviceState, 3);
                                Object invoke = SidecarDeviceState.class.getMethod("getPosture", new Class[0]).invoke(sidecarDeviceState, new Object[0]);
                                m.c(invoke, "null cannot be cast to non-null type kotlin.Int");
                                if (((Integer) invoke).intValue() != 3) {
                                    throw new Exception("Invalid device posture getter/setter");
                                }
                            }
                            SidecarDisplayFeature sidecarDisplayFeature = new SidecarDisplayFeature();
                            Rect rect = sidecarDisplayFeature.getRect();
                            m.d(rect, "displayFeature.rect");
                            sidecarDisplayFeature.setRect(rect);
                            sidecarDisplayFeature.getType();
                            sidecarDisplayFeature.setType(1);
                            SidecarWindowLayoutInfo sidecarWindowLayoutInfo = new SidecarWindowLayoutInfo();
                            try {
                                List list = sidecarWindowLayoutInfo.displayFeatures;
                            } catch (NoSuchFieldError unused2) {
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(sidecarDisplayFeature);
                                SidecarWindowLayoutInfo.class.getMethod("setDisplayFeatures", List.class).invoke(sidecarWindowLayoutInfo, arrayList);
                                Object invoke2 = SidecarWindowLayoutInfo.class.getMethod("getDisplayFeatures", new Class[0]).invoke(sidecarWindowLayoutInfo, new Object[0]);
                                m.c(invoke2, "null cannot be cast to non-null type kotlin.collections.List<androidx.window.sidecar.SidecarDisplayFeature>");
                                if (!m.a(arrayList, (List) invoke2)) {
                                    throw new Exception("Invalid display feature getter/setter");
                                }
                            }
                            return true;
                        }
                        throw new NoSuchMethodException("Illegal return type for 'onWindowLayoutChangeListenerRemoved': " + cls8);
                    }
                    throw new NoSuchMethodException("Illegal return type for 'onWindowLayoutChangeListenerAdded': " + cls3);
                }
                throw new NoSuchMethodException("Illegal return type for 'getWindowLayoutInfo': " + cls2);
            }
            throw new NoSuchMethodException("Illegal return type for 'setSidecarCallback': " + cls);
        } catch (Throwable unused3) {
            return false;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SidecarCompat(Context context) {
        this(f3641f.b(context), new w1.a(null, 1, null));
        m.e(context, "context");
    }
}
