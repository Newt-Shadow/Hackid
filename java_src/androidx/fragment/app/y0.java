package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
/* loaded from: classes.dex */
public abstract class y0 {

    /* renamed from: f  reason: collision with root package name */
    public static final a f2883f = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final ViewGroup f2884a;

    /* renamed from: b  reason: collision with root package name */
    private final List f2885b;

    /* renamed from: c  reason: collision with root package name */
    private final List f2886c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f2887d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f2888e;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final y0 a(ViewGroup container, i0 fragmentManager) {
            kotlin.jvm.internal.m.e(container, "container");
            kotlin.jvm.internal.m.e(fragmentManager, "fragmentManager");
            z0 B0 = fragmentManager.B0();
            kotlin.jvm.internal.m.d(B0, "fragmentManager.specialEffectsControllerFactory");
            return b(container, B0);
        }

        public final y0 b(ViewGroup container, z0 factory) {
            kotlin.jvm.internal.m.e(container, "container");
            kotlin.jvm.internal.m.e(factory, "factory");
            Object tag = container.getTag(s0.b.f29227b);
            if (tag instanceof y0) {
                return (y0) tag;
            }
            y0 a10 = factory.a(container);
            kotlin.jvm.internal.m.d(a10, "factory.createController(container)");
            container.setTag(s0.b.f29227b, a10);
            return a10;
        }
    }

    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f2889a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f2890b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f2891c;

        public final void a(ViewGroup container) {
            kotlin.jvm.internal.m.e(container, "container");
            if (!this.f2891c) {
                c(container);
            }
            this.f2891c = true;
        }

        public boolean b() {
            return this.f2889a;
        }

        public abstract void c(ViewGroup viewGroup);

        public abstract void d(ViewGroup viewGroup);

        public void e(androidx.activity.b backEvent, ViewGroup container) {
            kotlin.jvm.internal.m.e(backEvent, "backEvent");
            kotlin.jvm.internal.m.e(container, "container");
        }

        public void f(ViewGroup container) {
            kotlin.jvm.internal.m.e(container, "container");
        }

        public final void g(ViewGroup container) {
            kotlin.jvm.internal.m.e(container, "container");
            if (!this.f2890b) {
                f(container);
            }
            this.f2890b = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c extends d {

        /* renamed from: l  reason: collision with root package name */
        private final o0 f2892l;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public c(androidx.fragment.app.y0.d.b r3, androidx.fragment.app.y0.d.a r4, androidx.fragment.app.o0 r5) {
            /*
                r2 = this;
                java.lang.String r0 = "finalState"
                kotlin.jvm.internal.m.e(r3, r0)
                java.lang.String r0 = "lifecycleImpact"
                kotlin.jvm.internal.m.e(r4, r0)
                java.lang.String r0 = "fragmentStateManager"
                kotlin.jvm.internal.m.e(r5, r0)
                androidx.fragment.app.p r0 = r5.k()
                java.lang.String r1 = "fragmentStateManager.fragment"
                kotlin.jvm.internal.m.d(r0, r1)
                r2.<init>(r3, r4, r0)
                r2.f2892l = r5
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.y0.c.<init>(androidx.fragment.app.y0$d$b, androidx.fragment.app.y0$d$a, androidx.fragment.app.o0):void");
        }

        @Override // androidx.fragment.app.y0.d
        public void e() {
            super.e();
            i().mTransitioning = false;
            this.f2892l.m();
        }

        @Override // androidx.fragment.app.y0.d
        public void q() {
            boolean z10;
            if (o()) {
                return;
            }
            super.q();
            if (j() == d.a.ADDING) {
                p k10 = this.f2892l.k();
                kotlin.jvm.internal.m.d(k10, "fragmentStateManager.fragment");
                View findFocus = k10.mView.findFocus();
                if (findFocus != null) {
                    k10.setFocusedView(findFocus);
                    if (i0.J0(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + k10);
                    }
                }
                View requireView = i().requireView();
                kotlin.jvm.internal.m.d(requireView, "this.fragment.requireView()");
                if (requireView.getParent() == null) {
                    this.f2892l.b();
                    requireView.setAlpha(0.0f);
                }
                if (requireView.getAlpha() == 0.0f) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10 && requireView.getVisibility() == 0) {
                    requireView.setVisibility(4);
                }
                requireView.setAlpha(k10.getPostOnViewCreatedAlpha());
            } else if (j() == d.a.REMOVING) {
                p k11 = this.f2892l.k();
                kotlin.jvm.internal.m.d(k11, "fragmentStateManager.fragment");
                View requireView2 = k11.requireView();
                kotlin.jvm.internal.m.d(requireView2, "fragment.requireView()");
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Clearing focus " + requireView2.findFocus() + " on view " + requireView2 + " for Fragment " + k11);
                }
                requireView2.clearFocus();
            }
        }
    }

    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        private b f2893a;

        /* renamed from: b  reason: collision with root package name */
        private a f2894b;

        /* renamed from: c  reason: collision with root package name */
        private final p f2895c;

        /* renamed from: d  reason: collision with root package name */
        private final List f2896d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f2897e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f2898f;

        /* renamed from: g  reason: collision with root package name */
        private boolean f2899g;

        /* renamed from: h  reason: collision with root package name */
        private boolean f2900h;

        /* renamed from: i  reason: collision with root package name */
        private boolean f2901i;

        /* renamed from: j  reason: collision with root package name */
        private final List f2902j;

        /* renamed from: k  reason: collision with root package name */
        private final List f2903k;

        /* loaded from: classes.dex */
        public enum a {
            NONE,
            ADDING,
            REMOVING
        }

        /* loaded from: classes.dex */
        public enum b {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;
            

            /* renamed from: a  reason: collision with root package name */
            public static final a f2908a = new a(null);

            /* loaded from: classes.dex */
            public static final class a {
                private a() {
                }

                public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final b a(View view) {
                    boolean z10;
                    kotlin.jvm.internal.m.e(view, "<this>");
                    if (view.getAlpha() == 0.0f) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (z10 && view.getVisibility() == 0) {
                        return b.INVISIBLE;
                    }
                    return b(view.getVisibility());
                }

                public final b b(int i10) {
                    if (i10 != 0) {
                        if (i10 != 4) {
                            if (i10 == 8) {
                                return b.GONE;
                            }
                            throw new IllegalArgumentException("Unknown visibility " + i10);
                        }
                        return b.INVISIBLE;
                    }
                    return b.VISIBLE;
                }
            }

            /* renamed from: androidx.fragment.app.y0$d$b$b  reason: collision with other inner class name */
            /* loaded from: classes.dex */
            public /* synthetic */ class C0043b {

                /* renamed from: a  reason: collision with root package name */
                public static final /* synthetic */ int[] f2914a;

                static {
                    int[] iArr = new int[b.values().length];
                    try {
                        iArr[b.REMOVED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[b.VISIBLE.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[b.GONE.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[b.INVISIBLE.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    f2914a = iArr;
                }
            }

            public static final b f(int i10) {
                return f2908a.b(i10);
            }

            public final void b(View view, ViewGroup container) {
                kotlin.jvm.internal.m.e(view, "view");
                kotlin.jvm.internal.m.e(container, "container");
                int i10 = C0043b.f2914a[ordinal()];
                ViewGroup viewGroup = null;
                if (i10 != 1) {
                    if (i10 != 2) {
                        if (i10 != 3) {
                            if (i10 == 4) {
                                if (i0.J0(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                                }
                                view.setVisibility(4);
                                return;
                            }
                            return;
                        }
                        if (i0.J0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                        }
                        view.setVisibility(8);
                        return;
                    }
                    if (i0.J0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    ViewParent parent = view.getParent();
                    if (parent instanceof ViewGroup) {
                        viewGroup = (ViewGroup) parent;
                    }
                    if (viewGroup == null) {
                        if (i0.J0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: Adding view " + view + " to Container " + container);
                        }
                        container.addView(view);
                    }
                    view.setVisibility(0);
                    return;
                }
                ViewParent parent2 = view.getParent();
                if (parent2 instanceof ViewGroup) {
                    viewGroup = (ViewGroup) parent2;
                }
                if (viewGroup != null) {
                    if (i0.J0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                    }
                    viewGroup.removeView(view);
                }
            }
        }

        /* loaded from: classes.dex */
        public /* synthetic */ class c {

            /* renamed from: a  reason: collision with root package name */
            public static final /* synthetic */ int[] f2915a;

            static {
                int[] iArr = new int[a.values().length];
                try {
                    iArr[a.ADDING.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[a.REMOVING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[a.NONE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                f2915a = iArr;
            }
        }

        public d(b finalState, a lifecycleImpact, p fragment) {
            kotlin.jvm.internal.m.e(finalState, "finalState");
            kotlin.jvm.internal.m.e(lifecycleImpact, "lifecycleImpact");
            kotlin.jvm.internal.m.e(fragment, "fragment");
            this.f2893a = finalState;
            this.f2894b = lifecycleImpact;
            this.f2895c = fragment;
            this.f2896d = new ArrayList();
            this.f2901i = true;
            ArrayList arrayList = new ArrayList();
            this.f2902j = arrayList;
            this.f2903k = arrayList;
        }

        public final void a(Runnable listener) {
            kotlin.jvm.internal.m.e(listener, "listener");
            this.f2896d.add(listener);
        }

        public final void b(b effect) {
            kotlin.jvm.internal.m.e(effect, "effect");
            this.f2902j.add(effect);
        }

        public final void c(ViewGroup container) {
            List<b> k02;
            kotlin.jvm.internal.m.e(container, "container");
            this.f2900h = false;
            if (this.f2897e) {
                return;
            }
            this.f2897e = true;
            if (!this.f2902j.isEmpty()) {
                k02 = yc.w.k0(this.f2903k);
                for (b bVar : k02) {
                    bVar.a(container);
                }
                return;
            }
            e();
        }

        public final void d(ViewGroup container, boolean z10) {
            kotlin.jvm.internal.m.e(container, "container");
            if (this.f2897e) {
                return;
            }
            if (z10) {
                this.f2899g = true;
            }
            c(container);
        }

        public void e() {
            this.f2900h = false;
            if (this.f2898f) {
                return;
            }
            if (i0.J0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f2898f = true;
            for (Runnable runnable : this.f2896d) {
                runnable.run();
            }
        }

        public final void f(b effect) {
            kotlin.jvm.internal.m.e(effect, "effect");
            if (this.f2902j.remove(effect) && this.f2902j.isEmpty()) {
                e();
            }
        }

        public final List g() {
            return this.f2903k;
        }

        public final b h() {
            return this.f2893a;
        }

        public final p i() {
            return this.f2895c;
        }

        public final a j() {
            return this.f2894b;
        }

        public final boolean k() {
            return this.f2901i;
        }

        public final boolean l() {
            return this.f2897e;
        }

        public final boolean m() {
            return this.f2898f;
        }

        public final boolean n() {
            return this.f2899g;
        }

        public final boolean o() {
            return this.f2900h;
        }

        public final void p(b finalState, a lifecycleImpact) {
            kotlin.jvm.internal.m.e(finalState, "finalState");
            kotlin.jvm.internal.m.e(lifecycleImpact, "lifecycleImpact");
            int i10 = c.f2915a[lifecycleImpact.ordinal()];
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3 && this.f2893a != b.REMOVED) {
                        if (i0.J0(2)) {
                            Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f2895c + " mFinalState = " + this.f2893a + " -> " + finalState + '.');
                        }
                        this.f2893a = finalState;
                        return;
                    }
                    return;
                }
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f2895c + " mFinalState = " + this.f2893a + " -> REMOVED. mLifecycleImpact  = " + this.f2894b + " to REMOVING.");
                }
                this.f2893a = b.REMOVED;
                this.f2894b = a.REMOVING;
                this.f2901i = true;
            } else if (this.f2893a == b.REMOVED) {
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + this.f2895c + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + this.f2894b + " to ADDING.");
                }
                this.f2893a = b.VISIBLE;
                this.f2894b = a.ADDING;
                this.f2901i = true;
            }
        }

        public void q() {
            this.f2900h = true;
        }

        public final void r(boolean z10) {
            this.f2901i = z10;
        }

        public String toString() {
            String hexString = Integer.toHexString(System.identityHashCode(this));
            return "Operation {" + hexString + "} {finalState = " + this.f2893a + " lifecycleImpact = " + this.f2894b + " fragment = " + this.f2895c + '}';
        }
    }

    /* loaded from: classes.dex */
    public /* synthetic */ class e {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f2916a;

        static {
            int[] iArr = new int[d.a.values().length];
            try {
                iArr[d.a.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            f2916a = iArr;
        }
    }

    public y0(ViewGroup container) {
        kotlin.jvm.internal.m.e(container, "container");
        this.f2884a = container;
        this.f2885b = new ArrayList();
        this.f2886c = new ArrayList();
    }

    private final void A() {
        for (d dVar : this.f2885b) {
            if (dVar.j() == d.a.ADDING) {
                View requireView = dVar.i().requireView();
                kotlin.jvm.internal.m.d(requireView, "fragment.requireView()");
                dVar.p(d.b.f2908a.b(requireView.getVisibility()), d.a.NONE);
            }
        }
    }

    private final void g(d.b bVar, d.a aVar, o0 o0Var) {
        synchronized (this.f2885b) {
            p k10 = o0Var.k();
            kotlin.jvm.internal.m.d(k10, "fragmentStateManager.fragment");
            d o10 = o(k10);
            if (o10 == null) {
                if (o0Var.k().mTransitioning) {
                    p k11 = o0Var.k();
                    kotlin.jvm.internal.m.d(k11, "fragmentStateManager.fragment");
                    o10 = p(k11);
                } else {
                    o10 = null;
                }
            }
            if (o10 != null) {
                o10.p(bVar, aVar);
                return;
            }
            final c cVar = new c(bVar, aVar, o0Var);
            this.f2885b.add(cVar);
            cVar.a(new Runnable() { // from class: androidx.fragment.app.w0
                @Override // java.lang.Runnable
                public final void run() {
                    y0.h(y0.this, cVar);
                }
            });
            cVar.a(new Runnable() { // from class: androidx.fragment.app.x0
                @Override // java.lang.Runnable
                public final void run() {
                    y0.i(y0.this, cVar);
                }
            });
            xc.t tVar = xc.t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(y0 this$0, c operation) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(operation, "$operation");
        if (this$0.f2885b.contains(operation)) {
            d.b h10 = operation.h();
            View view = operation.i().mView;
            kotlin.jvm.internal.m.d(view, "operation.fragment.mView");
            h10.b(view, this$0.f2884a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(y0 this$0, c operation) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(operation, "$operation");
        this$0.f2885b.remove(operation);
        this$0.f2886c.remove(operation);
    }

    private final d o(p pVar) {
        Object obj;
        boolean z10;
        Iterator it = this.f2885b.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                d dVar = (d) obj;
                if (kotlin.jvm.internal.m.a(dVar.i(), pVar) && !dVar.l()) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (z10) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        return (d) obj;
    }

    private final d p(p pVar) {
        Object obj;
        boolean z10;
        Iterator it = this.f2886c.iterator();
        while (true) {
            if (it.hasNext()) {
                obj = it.next();
                d dVar = (d) obj;
                if (kotlin.jvm.internal.m.a(dVar.i(), pVar) && !dVar.l()) {
                    z10 = true;
                    continue;
                } else {
                    z10 = false;
                    continue;
                }
                if (z10) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        return (d) obj;
    }

    public static final y0 u(ViewGroup viewGroup, i0 i0Var) {
        return f2883f.a(viewGroup, i0Var);
    }

    public static final y0 v(ViewGroup viewGroup, z0 z0Var) {
        return f2883f.b(viewGroup, z0Var);
    }

    private final void z(List list) {
        Set o02;
        List k02;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((d) list.get(i10)).q();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            yc.t.v(arrayList, ((d) it.next()).g());
        }
        o02 = yc.w.o0(arrayList);
        k02 = yc.w.k0(o02);
        int size2 = k02.size();
        for (int i11 = 0; i11 < size2; i11++) {
            ((b) k02.get(i11)).g(this.f2884a);
        }
    }

    public final void B(boolean z10) {
        this.f2887d = z10;
    }

    public final void c(d operation) {
        kotlin.jvm.internal.m.e(operation, "operation");
        if (operation.k()) {
            d.b h10 = operation.h();
            View requireView = operation.i().requireView();
            kotlin.jvm.internal.m.d(requireView, "operation.fragment.requireView()");
            h10.b(requireView, this.f2884a);
            operation.r(false);
        }
    }

    public abstract void d(List list, boolean z10);

    public void e(List operations) {
        Set o02;
        List k02;
        List k03;
        kotlin.jvm.internal.m.e(operations, "operations");
        ArrayList arrayList = new ArrayList();
        Iterator it = operations.iterator();
        while (it.hasNext()) {
            yc.t.v(arrayList, ((d) it.next()).g());
        }
        o02 = yc.w.o0(arrayList);
        k02 = yc.w.k0(o02);
        int size = k02.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((b) k02.get(i10)).d(this.f2884a);
        }
        int size2 = operations.size();
        for (int i11 = 0; i11 < size2; i11++) {
            c((d) operations.get(i11));
        }
        k03 = yc.w.k0(operations);
        int size3 = k03.size();
        for (int i12 = 0; i12 < size3; i12++) {
            d dVar = (d) k03.get(i12);
            if (dVar.g().isEmpty()) {
                dVar.e();
            }
        }
    }

    public final void f() {
        if (i0.J0(3)) {
            Log.d("FragmentManager", "SpecialEffectsController: Completing Back ");
        }
        z(this.f2886c);
        e(this.f2886c);
    }

    public final void j(d.b finalState, o0 fragmentStateManager) {
        kotlin.jvm.internal.m.e(finalState, "finalState");
        kotlin.jvm.internal.m.e(fragmentStateManager, "fragmentStateManager");
        if (i0.J0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + fragmentStateManager.k());
        }
        g(finalState, d.a.ADDING, fragmentStateManager);
    }

    public final void k(o0 fragmentStateManager) {
        kotlin.jvm.internal.m.e(fragmentStateManager, "fragmentStateManager");
        if (i0.J0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + fragmentStateManager.k());
        }
        g(d.b.GONE, d.a.NONE, fragmentStateManager);
    }

    public final void l(o0 fragmentStateManager) {
        kotlin.jvm.internal.m.e(fragmentStateManager, "fragmentStateManager");
        if (i0.J0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + fragmentStateManager.k());
        }
        g(d.b.REMOVED, d.a.REMOVING, fragmentStateManager);
    }

    public final void m(o0 fragmentStateManager) {
        kotlin.jvm.internal.m.e(fragmentStateManager, "fragmentStateManager");
        if (i0.J0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + fragmentStateManager.k());
        }
        g(d.b.VISIBLE, d.a.NONE, fragmentStateManager);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0101 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x018a A[Catch: all -> 0x01bc, TryCatch #0 {, blocks: (B:11:0x0017, B:13:0x0020, B:14:0x0031, B:16:0x0037, B:18:0x0043, B:19:0x005e, B:21:0x0069, B:80:0x01b8, B:22:0x006f, B:23:0x0080, B:25:0x0086, B:27:0x0092, B:28:0x00a8, B:30:0x00b9, B:31:0x00bf, B:35:0x00d2, B:37:0x00e5, B:38:0x00ec, B:39:0x0101, B:41:0x0107, B:43:0x011a, B:45:0x0124, B:57:0x014b, B:48:0x012f, B:49:0x0133, B:51:0x0139, B:60:0x0157, B:62:0x015b, B:63:0x0167, B:65:0x016d, B:66:0x017d, B:70:0x0186, B:72:0x018a, B:77:0x01a9, B:79:0x01b1, B:74:0x0193, B:76:0x019d), top: B:86:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01b1 A[Catch: all -> 0x01bc, TryCatch #0 {, blocks: (B:11:0x0017, B:13:0x0020, B:14:0x0031, B:16:0x0037, B:18:0x0043, B:19:0x005e, B:21:0x0069, B:80:0x01b8, B:22:0x006f, B:23:0x0080, B:25:0x0086, B:27:0x0092, B:28:0x00a8, B:30:0x00b9, B:31:0x00bf, B:35:0x00d2, B:37:0x00e5, B:38:0x00ec, B:39:0x0101, B:41:0x0107, B:43:0x011a, B:45:0x0124, B:57:0x014b, B:48:0x012f, B:49:0x0133, B:51:0x0139, B:60:0x0157, B:62:0x015b, B:63:0x0167, B:65:0x016d, B:66:0x017d, B:70:0x0186, B:72:0x018a, B:77:0x01a9, B:79:0x01b1, B:74:0x0193, B:76:0x019d), top: B:86:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0155 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n() {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.y0.n():void");
    }

    public final void q() {
        List<d> m02;
        List<d> m03;
        String str;
        String str2;
        if (i0.J0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        boolean isAttachedToWindow = this.f2884a.isAttachedToWindow();
        synchronized (this.f2885b) {
            A();
            z(this.f2885b);
            m02 = yc.w.m0(this.f2886c);
            for (d dVar : m02) {
                if (i0.J0(2)) {
                    if (isAttachedToWindow) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.f2884a + " is not attached to window. ";
                    }
                    Log.v("FragmentManager", "SpecialEffectsController: " + str2 + "Cancelling running operation " + dVar);
                }
                dVar.c(this.f2884a);
            }
            m03 = yc.w.m0(this.f2885b);
            for (d dVar2 : m03) {
                if (i0.J0(2)) {
                    if (isAttachedToWindow) {
                        str = "";
                    } else {
                        str = "Container " + this.f2884a + " is not attached to window. ";
                    }
                    Log.v("FragmentManager", "SpecialEffectsController: " + str + "Cancelling pending operation " + dVar2);
                }
                dVar2.c(this.f2884a);
            }
            xc.t tVar = xc.t.f32733a;
        }
    }

    public final void r() {
        if (this.f2888e) {
            if (i0.J0(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Forcing postponed operations");
            }
            this.f2888e = false;
            n();
        }
    }

    public final d.a s(o0 fragmentStateManager) {
        d.a aVar;
        int i10;
        kotlin.jvm.internal.m.e(fragmentStateManager, "fragmentStateManager");
        p k10 = fragmentStateManager.k();
        kotlin.jvm.internal.m.d(k10, "fragmentStateManager.fragment");
        d o10 = o(k10);
        d.a aVar2 = null;
        if (o10 != null) {
            aVar = o10.j();
        } else {
            aVar = null;
        }
        d p10 = p(k10);
        if (p10 != null) {
            aVar2 = p10.j();
        }
        if (aVar == null) {
            i10 = -1;
        } else {
            i10 = e.f2916a[aVar.ordinal()];
        }
        if (i10 == -1 || i10 == 1) {
            return aVar2;
        }
        return aVar;
    }

    public final ViewGroup t() {
        return this.f2884a;
    }

    public final boolean w() {
        return !this.f2885b.isEmpty();
    }

    public final void x() {
        boolean z10;
        p pVar;
        Object obj;
        boolean z11;
        synchronized (this.f2885b) {
            A();
            List list = this.f2885b;
            ListIterator listIterator = list.listIterator(list.size());
            while (true) {
                z10 = false;
                pVar = null;
                if (listIterator.hasPrevious()) {
                    obj = listIterator.previous();
                    d dVar = (d) obj;
                    d.b.a aVar = d.b.f2908a;
                    View view = dVar.i().mView;
                    kotlin.jvm.internal.m.d(view, "operation.fragment.mView");
                    d.b a10 = aVar.a(view);
                    d.b h10 = dVar.h();
                    d.b bVar = d.b.VISIBLE;
                    if (h10 == bVar && a10 != bVar) {
                        z11 = true;
                        continue;
                    } else {
                        z11 = false;
                        continue;
                    }
                    if (z11) {
                        break;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            d dVar2 = (d) obj;
            if (dVar2 != null) {
                pVar = dVar2.i();
            }
            if (pVar != null) {
                z10 = pVar.isPostponed();
            }
            this.f2888e = z10;
            xc.t tVar = xc.t.f32733a;
        }
    }

    public final void y(androidx.activity.b backEvent) {
        Set o02;
        List k02;
        kotlin.jvm.internal.m.e(backEvent, "backEvent");
        if (i0.J0(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Processing Progress " + backEvent.a());
        }
        ArrayList arrayList = new ArrayList();
        for (d dVar : this.f2886c) {
            yc.t.v(arrayList, dVar.g());
        }
        o02 = yc.w.o0(arrayList);
        k02 = yc.w.k0(o02);
        int size = k02.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((b) k02.get(i10)).e(backEvent, this.f2884a);
        }
    }
}
