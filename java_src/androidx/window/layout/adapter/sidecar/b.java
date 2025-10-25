package androidx.window.layout.adapter.sidecar;

import android.app.Activity;
import android.content.Context;
import androidx.window.layout.adapter.sidecar.a;
import androidx.window.layout.adapter.sidecar.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.m;
import q1.k;
import t1.j;
import xc.t;
import yc.o;
/* loaded from: classes.dex */
public final class b implements u1.a {

    /* renamed from: d  reason: collision with root package name */
    private static volatile b f3654d;

    /* renamed from: a  reason: collision with root package name */
    private androidx.window.layout.adapter.sidecar.a f3656a;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList f3657b = new CopyOnWriteArrayList();

    /* renamed from: c  reason: collision with root package name */
    public static final a f3653c = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private static final ReentrantLock f3655e = new ReentrantLock();

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final b a(Context context) {
            m.e(context, "context");
            if (b.f3654d == null) {
                ReentrantLock reentrantLock = b.f3655e;
                reentrantLock.lock();
                try {
                    if (b.f3654d == null) {
                        b.f3654d = new b(b.f3653c.b(context));
                    }
                    t tVar = t.f32733a;
                } finally {
                    reentrantLock.unlock();
                }
            }
            b bVar = b.f3654d;
            m.b(bVar);
            return bVar;
        }

        public final androidx.window.layout.adapter.sidecar.a b(Context context) {
            m.e(context, "context");
            try {
                if (!c(SidecarCompat.f3641f.c())) {
                    return null;
                }
                SidecarCompat sidecarCompat = new SidecarCompat(context);
                if (!sidecarCompat.n()) {
                    return null;
                }
                return sidecarCompat;
            } catch (Throwable unused) {
                return null;
            }
        }

        public final boolean c(k kVar) {
            if (kVar == null || kVar.compareTo(k.f27973f.a()) < 0) {
                return false;
            }
            return true;
        }
    }

    /* renamed from: androidx.window.layout.adapter.sidecar.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public final class C0066b implements a.InterfaceC0065a {
        public C0066b() {
        }

        @Override // androidx.window.layout.adapter.sidecar.a.InterfaceC0065a
        public void a(Activity activity, j newLayout) {
            m.e(activity, "activity");
            m.e(newLayout, "newLayout");
            Iterator it = b.this.g().iterator();
            while (it.hasNext()) {
                c cVar = (c) it.next();
                if (m.a(cVar.d(), activity)) {
                    cVar.b(newLayout);
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final Activity f3659a;

        /* renamed from: b  reason: collision with root package name */
        private final Executor f3660b;

        /* renamed from: c  reason: collision with root package name */
        private final c0.a f3661c;

        /* renamed from: d  reason: collision with root package name */
        private j f3662d;

        public c(Activity activity, Executor executor, c0.a callback) {
            m.e(activity, "activity");
            m.e(executor, "executor");
            m.e(callback, "callback");
            this.f3659a = activity;
            this.f3660b = executor;
            this.f3661c = callback;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(c this$0, j newLayoutInfo) {
            m.e(this$0, "this$0");
            m.e(newLayoutInfo, "$newLayoutInfo");
            this$0.f3661c.accept(newLayoutInfo);
        }

        public final void b(final j newLayoutInfo) {
            m.e(newLayoutInfo, "newLayoutInfo");
            this.f3662d = newLayoutInfo;
            this.f3660b.execute(new Runnable() { // from class: w1.c
                @Override // java.lang.Runnable
                public final void run() {
                    b.c.c(b.c.this, newLayoutInfo);
                }
            });
        }

        public final Activity d() {
            return this.f3659a;
        }

        public final c0.a e() {
            return this.f3661c;
        }

        public final j f() {
            return this.f3662d;
        }
    }

    public b(androidx.window.layout.adapter.sidecar.a aVar) {
        this.f3656a = aVar;
        androidx.window.layout.adapter.sidecar.a aVar2 = this.f3656a;
        if (aVar2 != null) {
            aVar2.a(new C0066b());
        }
    }

    private final void f(Activity activity) {
        androidx.window.layout.adapter.sidecar.a aVar;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f3657b;
        boolean z10 = false;
        if (!(copyOnWriteArrayList instanceof Collection) || !copyOnWriteArrayList.isEmpty()) {
            Iterator it = copyOnWriteArrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (m.a(((c) it.next()).d(), activity)) {
                    z10 = true;
                    break;
                }
            }
        }
        if (!z10 && (aVar = this.f3656a) != null) {
            aVar.c(activity);
        }
    }

    private final boolean h(Activity activity) {
        CopyOnWriteArrayList<c> copyOnWriteArrayList = this.f3657b;
        if ((copyOnWriteArrayList instanceof Collection) && copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        for (c cVar : copyOnWriteArrayList) {
            if (m.a(cVar.d(), activity)) {
                return true;
            }
        }
        return false;
    }

    @Override // u1.a
    public void a(c0.a callback) {
        m.e(callback, "callback");
        synchronized (f3655e) {
            if (this.f3656a == null) {
                return;
            }
            ArrayList<c> arrayList = new ArrayList();
            Iterator it = this.f3657b.iterator();
            while (it.hasNext()) {
                c callbackWrapper = (c) it.next();
                if (callbackWrapper.e() == callback) {
                    m.d(callbackWrapper, "callbackWrapper");
                    arrayList.add(callbackWrapper);
                }
            }
            this.f3657b.removeAll(arrayList);
            for (c cVar : arrayList) {
                f(cVar.d());
            }
            t tVar = t.f32733a;
        }
    }

    @Override // u1.a
    public void b(Context context, Executor executor, c0.a callback) {
        Activity activity;
        List h10;
        Object obj;
        List h11;
        m.e(context, "context");
        m.e(executor, "executor");
        m.e(callback, "callback");
        t tVar = null;
        j jVar = null;
        if (context instanceof Activity) {
            activity = (Activity) context;
        } else {
            activity = null;
        }
        if (activity != null) {
            ReentrantLock reentrantLock = f3655e;
            reentrantLock.lock();
            try {
                androidx.window.layout.adapter.sidecar.a aVar = this.f3656a;
                if (aVar == null) {
                    h11 = o.h();
                    callback.accept(new j(h11));
                    return;
                }
                boolean h12 = h(activity);
                c cVar = new c(activity, executor, callback);
                this.f3657b.add(cVar);
                if (!h12) {
                    aVar.b(activity);
                } else {
                    Iterator it = this.f3657b.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            obj = it.next();
                            if (m.a(activity, ((c) obj).d())) {
                                break;
                            }
                        } else {
                            obj = null;
                            break;
                        }
                    }
                    c cVar2 = (c) obj;
                    if (cVar2 != null) {
                        jVar = cVar2.f();
                    }
                    if (jVar != null) {
                        cVar.b(jVar);
                    }
                }
                t tVar2 = t.f32733a;
                reentrantLock.unlock();
                tVar = t.f32733a;
            } finally {
                reentrantLock.unlock();
            }
        }
        if (tVar == null) {
            h10 = o.h();
            callback.accept(new j(h10));
        }
    }

    public final CopyOnWriteArrayList g() {
        return this.f3657b;
    }
}
