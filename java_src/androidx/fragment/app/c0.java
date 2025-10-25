package androidx.fragment.app;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.i0;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    private final i0 f2580a;

    /* renamed from: b  reason: collision with root package name */
    private final CopyOnWriteArrayList f2581b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final i0.k f2582a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f2583b;

        public a(i0.k callback, boolean z10) {
            kotlin.jvm.internal.m.e(callback, "callback");
            this.f2582a = callback;
            this.f2583b = z10;
        }

        public final i0.k a() {
            return this.f2582a;
        }

        public final boolean b() {
            return this.f2583b;
        }
    }

    public c0(i0 fragmentManager) {
        kotlin.jvm.internal.m.e(fragmentManager, "fragmentManager");
        this.f2580a = fragmentManager;
        this.f2581b = new CopyOnWriteArrayList();
    }

    public final void a(p f10, Bundle bundle, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().a(f10, bundle, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentActivityCreated(this.f2580a, f10, bundle);
            }
        }
    }

    public final void b(p f10, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        Context f11 = this.f2580a.w0().f();
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().b(f10, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentAttached(this.f2580a, f10, f11);
            }
        }
    }

    public final void c(p f10, Bundle bundle, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().c(f10, bundle, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentCreated(this.f2580a, f10, bundle);
            }
        }
    }

    public final void d(p f10, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().d(f10, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentDestroyed(this.f2580a, f10);
            }
        }
    }

    public final void e(p f10, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().e(f10, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentDetached(this.f2580a, f10);
            }
        }
    }

    public final void f(p f10, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().f(f10, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentPaused(this.f2580a, f10);
            }
        }
    }

    public final void g(p f10, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        Context f11 = this.f2580a.w0().f();
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().g(f10, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentPreAttached(this.f2580a, f10, f11);
            }
        }
    }

    public final void h(p f10, Bundle bundle, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().h(f10, bundle, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentPreCreated(this.f2580a, f10, bundle);
            }
        }
    }

    public final void i(p f10, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().i(f10, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentResumed(this.f2580a, f10);
            }
        }
    }

    public final void j(p f10, Bundle outState, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        kotlin.jvm.internal.m.e(outState, "outState");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().j(f10, outState, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentSaveInstanceState(this.f2580a, f10, outState);
            }
        }
    }

    public final void k(p f10, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().k(f10, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentStarted(this.f2580a, f10);
            }
        }
    }

    public final void l(p f10, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().l(f10, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentStopped(this.f2580a, f10);
            }
        }
    }

    public final void m(p f10, View v10, Bundle bundle, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        kotlin.jvm.internal.m.e(v10, "v");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().m(f10, v10, bundle, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentViewCreated(this.f2580a, f10, v10, bundle);
            }
        }
    }

    public final void n(p f10, boolean z10) {
        kotlin.jvm.internal.m.e(f10, "f");
        p z02 = this.f2580a.z0();
        if (z02 != null) {
            i0 parentFragmentManager = z02.getParentFragmentManager();
            kotlin.jvm.internal.m.d(parentFragmentManager, "parent.getParentFragmentManager()");
            parentFragmentManager.y0().n(f10, true);
        }
        Iterator it = this.f2581b.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!z10 || aVar.b()) {
                aVar.a().onFragmentViewDestroyed(this.f2580a, f10);
            }
        }
    }

    public final void o(i0.k cb2, boolean z10) {
        kotlin.jvm.internal.m.e(cb2, "cb");
        this.f2581b.add(new a(cb2, z10));
    }

    public final void p(i0.k cb2) {
        kotlin.jvm.internal.m.e(cb2, "cb");
        synchronized (this.f2581b) {
            int size = this.f2581b.size();
            int i10 = 0;
            while (true) {
                if (i10 >= size) {
                    break;
                } else if (((a) this.f2581b.get(i10)).a() == cb2) {
                    this.f2581b.remove(i10);
                    break;
                } else {
                    i10++;
                }
            }
            xc.t tVar = xc.t.f32733a;
        }
    }
}
