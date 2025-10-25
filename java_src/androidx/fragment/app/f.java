package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.fragment.app.f;
import androidx.fragment.app.v;
import androidx.fragment.app.y0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class f extends y0 {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class a extends y0.b {

        /* renamed from: d  reason: collision with root package name */
        private final b f2591d;

        /* renamed from: androidx.fragment.app.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class animation.Animation$AnimationListenerC0041a implements Animation.AnimationListener {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ y0.d f2592a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ ViewGroup f2593b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ View f2594c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ a f2595d;

            animation.Animation$AnimationListenerC0041a(y0.d dVar, ViewGroup viewGroup, View view, a aVar) {
                this.f2592a = dVar;
                this.f2593b = viewGroup;
                this.f2594c = view;
                this.f2595d = aVar;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static final void b(ViewGroup container, View view, a this$0) {
                kotlin.jvm.internal.m.e(container, "$container");
                kotlin.jvm.internal.m.e(this$0, "this$0");
                container.endViewTransition(view);
                this$0.h().a().f(this$0);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                kotlin.jvm.internal.m.e(animation, "animation");
                final ViewGroup viewGroup = this.f2593b;
                final View view = this.f2594c;
                final a aVar = this.f2595d;
                viewGroup.post(new Runnable() { // from class: androidx.fragment.app.e
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.a.animation.Animation$AnimationListenerC0041a.b(viewGroup, view, aVar);
                    }
                });
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Animation from operation " + this.f2592a + " has ended.");
                }
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
                kotlin.jvm.internal.m.e(animation, "animation");
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
                kotlin.jvm.internal.m.e(animation, "animation");
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Animation from operation " + this.f2592a + " has reached onAnimationStart.");
                }
            }
        }

        public a(b animationInfo) {
            kotlin.jvm.internal.m.e(animationInfo, "animationInfo");
            this.f2591d = animationInfo;
        }

        @Override // androidx.fragment.app.y0.b
        public void c(ViewGroup container) {
            kotlin.jvm.internal.m.e(container, "container");
            y0.d a10 = this.f2591d.a();
            View view = a10.i().mView;
            view.clearAnimation();
            container.endViewTransition(view);
            this.f2591d.a().f(this);
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Animation from operation " + a10 + " has been cancelled.");
            }
        }

        @Override // androidx.fragment.app.y0.b
        public void d(ViewGroup container) {
            kotlin.jvm.internal.m.e(container, "container");
            if (this.f2591d.b()) {
                this.f2591d.a().f(this);
                return;
            }
            Context context = container.getContext();
            y0.d a10 = this.f2591d.a();
            View view = a10.i().mView;
            b bVar = this.f2591d;
            kotlin.jvm.internal.m.d(context, "context");
            v.a c10 = bVar.c(context);
            if (c10 != null) {
                Animation animation = c10.f2864a;
                if (animation != null) {
                    if (a10.h() != y0.d.b.REMOVED) {
                        view.startAnimation(animation);
                        this.f2591d.a().f(this);
                        return;
                    }
                    container.startViewTransition(view);
                    v.b bVar2 = new v.b(animation, container, view);
                    bVar2.setAnimationListener(new animation.Animation$AnimationListenerC0041a(a10, container, view, this));
                    view.startAnimation(bVar2);
                    if (i0.J0(2)) {
                        Log.v("FragmentManager", "Animation from operation " + a10 + " has started.");
                        return;
                    }
                    return;
                }
                throw new IllegalStateException("Required value was null.".toString());
            }
            throw new IllegalStateException("Required value was null.".toString());
        }

        public final b h() {
            return this.f2591d;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class b extends C0042f {

        /* renamed from: b  reason: collision with root package name */
        private final boolean f2596b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f2597c;

        /* renamed from: d  reason: collision with root package name */
        private v.a f2598d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(y0.d operation, boolean z10) {
            super(operation);
            kotlin.jvm.internal.m.e(operation, "operation");
            this.f2596b = z10;
        }

        public final v.a c(Context context) {
            boolean z10;
            kotlin.jvm.internal.m.e(context, "context");
            if (this.f2597c) {
                return this.f2598d;
            }
            p i10 = a().i();
            if (a().h() == y0.d.b.VISIBLE) {
                z10 = true;
            } else {
                z10 = false;
            }
            v.a b10 = v.b(context, i10, z10, this.f2596b);
            this.f2598d = b10;
            this.f2597c = true;
            return b10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c extends y0.b {

        /* renamed from: d  reason: collision with root package name */
        private final b f2599d;

        /* renamed from: e  reason: collision with root package name */
        private AnimatorSet f2600e;

        /* loaded from: classes.dex */
        public static final class a extends AnimatorListenerAdapter {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ ViewGroup f2601a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ View f2602b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ boolean f2603c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ y0.d f2604d;

            /* renamed from: e  reason: collision with root package name */
            final /* synthetic */ c f2605e;

            a(ViewGroup viewGroup, View view, boolean z10, y0.d dVar, c cVar) {
                this.f2601a = viewGroup;
                this.f2602b = view;
                this.f2603c = z10;
                this.f2604d = dVar;
                this.f2605e = cVar;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator anim) {
                kotlin.jvm.internal.m.e(anim, "anim");
                this.f2601a.endViewTransition(this.f2602b);
                if (this.f2603c) {
                    y0.d.b h10 = this.f2604d.h();
                    View viewToAnimate = this.f2602b;
                    kotlin.jvm.internal.m.d(viewToAnimate, "viewToAnimate");
                    h10.b(viewToAnimate, this.f2601a);
                }
                this.f2605e.h().a().f(this.f2605e);
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Animator from operation " + this.f2604d + " has ended.");
                }
            }
        }

        public c(b animatorInfo) {
            kotlin.jvm.internal.m.e(animatorInfo, "animatorInfo");
            this.f2599d = animatorInfo;
        }

        @Override // androidx.fragment.app.y0.b
        public boolean b() {
            return true;
        }

        @Override // androidx.fragment.app.y0.b
        public void c(ViewGroup container) {
            String str;
            kotlin.jvm.internal.m.e(container, "container");
            AnimatorSet animatorSet = this.f2600e;
            if (animatorSet == null) {
                this.f2599d.a().f(this);
                return;
            }
            y0.d a10 = this.f2599d.a();
            if (a10.n()) {
                if (Build.VERSION.SDK_INT >= 26) {
                    e.f2607a.a(animatorSet);
                }
            } else {
                animatorSet.end();
            }
            if (i0.J0(2)) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Animator from operation ");
                sb2.append(a10);
                sb2.append(" has been canceled");
                if (a10.n()) {
                    str = " with seeking.";
                } else {
                    str = ".";
                }
                sb2.append(str);
                sb2.append(' ');
                Log.v("FragmentManager", sb2.toString());
            }
        }

        @Override // androidx.fragment.app.y0.b
        public void d(ViewGroup container) {
            kotlin.jvm.internal.m.e(container, "container");
            y0.d a10 = this.f2599d.a();
            AnimatorSet animatorSet = this.f2600e;
            if (animatorSet == null) {
                this.f2599d.a().f(this);
                return;
            }
            animatorSet.start();
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Animator from operation " + a10 + " has started.");
            }
        }

        @Override // androidx.fragment.app.y0.b
        public void e(androidx.activity.b backEvent, ViewGroup container) {
            kotlin.jvm.internal.m.e(backEvent, "backEvent");
            kotlin.jvm.internal.m.e(container, "container");
            y0.d a10 = this.f2599d.a();
            AnimatorSet animatorSet = this.f2600e;
            if (animatorSet == null) {
                this.f2599d.a().f(this);
            } else if (Build.VERSION.SDK_INT >= 34 && a10.i().mTransitioning) {
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Adding BackProgressCallbacks for Animators to operation " + a10);
                }
                long a11 = d.f2606a.a(animatorSet);
                long a12 = backEvent.a() * ((float) a11);
                if (a12 == 0) {
                    a12 = 1;
                }
                if (a12 == a11) {
                    a12 = a11 - 1;
                }
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Setting currentPlayTime to " + a12 + " for Animator " + animatorSet + " on operation " + a10);
                }
                e.f2607a.b(animatorSet, a12);
            }
        }

        @Override // androidx.fragment.app.y0.b
        public void f(ViewGroup container) {
            AnimatorSet animatorSet;
            boolean z10;
            kotlin.jvm.internal.m.e(container, "container");
            if (this.f2599d.b()) {
                return;
            }
            Context context = container.getContext();
            b bVar = this.f2599d;
            kotlin.jvm.internal.m.d(context, "context");
            v.a c10 = bVar.c(context);
            if (c10 != null) {
                animatorSet = c10.f2865b;
            } else {
                animatorSet = null;
            }
            this.f2600e = animatorSet;
            y0.d a10 = this.f2599d.a();
            p i10 = a10.i();
            if (a10.h() == y0.d.b.GONE) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean z11 = z10;
            View view = i10.mView;
            container.startViewTransition(view);
            AnimatorSet animatorSet2 = this.f2600e;
            if (animatorSet2 != null) {
                animatorSet2.addListener(new a(container, view, z11, a10, this));
            }
            AnimatorSet animatorSet3 = this.f2600e;
            if (animatorSet3 != null) {
                animatorSet3.setTarget(view);
            }
        }

        public final b h() {
            return this.f2599d;
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public static final d f2606a = new d();

        private d() {
        }

        public final long a(AnimatorSet animatorSet) {
            kotlin.jvm.internal.m.e(animatorSet, "animatorSet");
            return animatorSet.getTotalDuration();
        }
    }

    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        public static final e f2607a = new e();

        private e() {
        }

        public final void a(AnimatorSet animatorSet) {
            kotlin.jvm.internal.m.e(animatorSet, "animatorSet");
            animatorSet.reverse();
        }

        public final void b(AnimatorSet animatorSet, long j10) {
            kotlin.jvm.internal.m.e(animatorSet, "animatorSet");
            animatorSet.setCurrentPlayTime(j10);
        }
    }

    /* renamed from: androidx.fragment.app.f$f  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0042f {

        /* renamed from: a  reason: collision with root package name */
        private final y0.d f2608a;

        public C0042f(y0.d operation) {
            kotlin.jvm.internal.m.e(operation, "operation");
            this.f2608a = operation;
        }

        public final y0.d a() {
            return this.f2608a;
        }

        public final boolean b() {
            y0.d.b bVar;
            y0.d.b bVar2;
            View view = this.f2608a.i().mView;
            if (view != null) {
                bVar = y0.d.b.f2908a.a(view);
            } else {
                bVar = null;
            }
            y0.d.b h10 = this.f2608a.h();
            if (bVar != h10 && (bVar == (bVar2 = y0.d.b.VISIBLE) || h10 == bVar2)) {
                return false;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class g extends y0.b {

        /* renamed from: d  reason: collision with root package name */
        private final List f2609d;

        /* renamed from: e  reason: collision with root package name */
        private final y0.d f2610e;

        /* renamed from: f  reason: collision with root package name */
        private final y0.d f2611f;

        /* renamed from: g  reason: collision with root package name */
        private final t0 f2612g;

        /* renamed from: h  reason: collision with root package name */
        private final Object f2613h;

        /* renamed from: i  reason: collision with root package name */
        private final ArrayList f2614i;

        /* renamed from: j  reason: collision with root package name */
        private final ArrayList f2615j;

        /* renamed from: k  reason: collision with root package name */
        private final r.a f2616k;

        /* renamed from: l  reason: collision with root package name */
        private final ArrayList f2617l;

        /* renamed from: m  reason: collision with root package name */
        private final ArrayList f2618m;

        /* renamed from: n  reason: collision with root package name */
        private final r.a f2619n;

        /* renamed from: o  reason: collision with root package name */
        private final r.a f2620o;

        /* renamed from: p  reason: collision with root package name */
        private final boolean f2621p;

        /* renamed from: q  reason: collision with root package name */
        private final z.e f2622q;

        /* renamed from: r  reason: collision with root package name */
        private Object f2623r;

        /* loaded from: classes.dex */
        static final class a extends kotlin.jvm.internal.n implements id.a {

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ ViewGroup f2625f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ Object f2626g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(ViewGroup viewGroup, Object obj) {
                super(0);
                this.f2625f = viewGroup;
                this.f2626g = obj;
            }

            public final void b() {
                g.this.v().e(this.f2625f, this.f2626g);
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                b();
                return xc.t.f32733a;
            }
        }

        /* loaded from: classes.dex */
        static final class b extends kotlin.jvm.internal.n implements id.a {

            /* renamed from: f  reason: collision with root package name */
            final /* synthetic */ ViewGroup f2628f;

            /* renamed from: g  reason: collision with root package name */
            final /* synthetic */ Object f2629g;

            /* renamed from: h  reason: collision with root package name */
            final /* synthetic */ kotlin.jvm.internal.c0 f2630h;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* loaded from: classes.dex */
            public static final class a extends kotlin.jvm.internal.n implements id.a {

                /* renamed from: e  reason: collision with root package name */
                final /* synthetic */ g f2631e;

                /* renamed from: f  reason: collision with root package name */
                final /* synthetic */ ViewGroup f2632f;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                a(g gVar, ViewGroup viewGroup) {
                    super(0);
                    this.f2631e = gVar;
                    this.f2632f = viewGroup;
                }

                /* JADX INFO: Access modifiers changed from: private */
                public static final void d(g this$0, ViewGroup container) {
                    kotlin.jvm.internal.m.e(this$0, "this$0");
                    kotlin.jvm.internal.m.e(container, "$container");
                    for (h hVar : this$0.w()) {
                        y0.d a10 = hVar.a();
                        View view = a10.i().getView();
                        if (view != null) {
                            a10.h().b(view, container);
                        }
                    }
                }

                public final void b() {
                    if (i0.J0(2)) {
                        Log.v("FragmentManager", "Animating to start");
                    }
                    t0 v10 = this.f2631e.v();
                    Object s10 = this.f2631e.s();
                    kotlin.jvm.internal.m.b(s10);
                    final g gVar = this.f2631e;
                    final ViewGroup viewGroup = this.f2632f;
                    v10.d(s10, new Runnable() { // from class: androidx.fragment.app.m
                        @Override // java.lang.Runnable
                        public final void run() {
                            f.g.b.a.d(f.g.this, viewGroup);
                        }
                    });
                }

                @Override // id.a
                public /* bridge */ /* synthetic */ Object invoke() {
                    b();
                    return xc.t.f32733a;
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(ViewGroup viewGroup, Object obj, kotlin.jvm.internal.c0 c0Var) {
                super(0);
                this.f2628f = viewGroup;
                this.f2629g = obj;
                this.f2630h = c0Var;
            }

            public final void b() {
                boolean z10;
                g gVar = g.this;
                gVar.C(gVar.v().j(this.f2628f, this.f2629g));
                if (g.this.s() != null) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                Object obj = this.f2629g;
                ViewGroup viewGroup = this.f2628f;
                if (z10) {
                    this.f2630h.f24971a = new a(g.this, viewGroup);
                    if (i0.J0(2)) {
                        Log.v("FragmentManager", "Started executing operations from " + g.this.t() + " to " + g.this.u());
                        return;
                    }
                    return;
                }
                throw new IllegalStateException(("Unable to start transition " + obj + " for container " + viewGroup + '.').toString());
            }

            @Override // id.a
            public /* bridge */ /* synthetic */ Object invoke() {
                b();
                return xc.t.f32733a;
            }
        }

        public g(List transitionInfos, y0.d dVar, y0.d dVar2, t0 transitionImpl, Object obj, ArrayList sharedElementFirstOutViews, ArrayList sharedElementLastInViews, r.a sharedElementNameMapping, ArrayList enteringNames, ArrayList exitingNames, r.a firstOutViews, r.a lastInViews, boolean z10) {
            kotlin.jvm.internal.m.e(transitionInfos, "transitionInfos");
            kotlin.jvm.internal.m.e(transitionImpl, "transitionImpl");
            kotlin.jvm.internal.m.e(sharedElementFirstOutViews, "sharedElementFirstOutViews");
            kotlin.jvm.internal.m.e(sharedElementLastInViews, "sharedElementLastInViews");
            kotlin.jvm.internal.m.e(sharedElementNameMapping, "sharedElementNameMapping");
            kotlin.jvm.internal.m.e(enteringNames, "enteringNames");
            kotlin.jvm.internal.m.e(exitingNames, "exitingNames");
            kotlin.jvm.internal.m.e(firstOutViews, "firstOutViews");
            kotlin.jvm.internal.m.e(lastInViews, "lastInViews");
            this.f2609d = transitionInfos;
            this.f2610e = dVar;
            this.f2611f = dVar2;
            this.f2612g = transitionImpl;
            this.f2613h = obj;
            this.f2614i = sharedElementFirstOutViews;
            this.f2615j = sharedElementLastInViews;
            this.f2616k = sharedElementNameMapping;
            this.f2617l = enteringNames;
            this.f2618m = exitingNames;
            this.f2619n = firstOutViews;
            this.f2620o = lastInViews;
            this.f2621p = z10;
            this.f2622q = new z.e();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void A(y0.d operation, g this$0) {
            kotlin.jvm.internal.m.e(operation, "$operation");
            kotlin.jvm.internal.m.e(this$0, "this$0");
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Transition for operation " + operation + " has completed");
            }
            operation.f(this$0);
        }

        private final void B(ArrayList arrayList, ViewGroup viewGroup, id.a aVar) {
            r0.d(arrayList, 4);
            ArrayList q10 = this.f2612g.q(this.f2615j);
            if (i0.J0(2)) {
                Log.v("FragmentManager", ">>>>> Beginning transition <<<<<");
                Log.v("FragmentManager", ">>>>> SharedElementFirstOutViews <<<<<");
                Iterator it = this.f2614i.iterator();
                while (it.hasNext()) {
                    Object sharedElementFirstOutViews = it.next();
                    kotlin.jvm.internal.m.d(sharedElementFirstOutViews, "sharedElementFirstOutViews");
                    View view = (View) sharedElementFirstOutViews;
                    Log.v("FragmentManager", "View: " + view + " Name: " + d0.p0.z(view));
                }
                Log.v("FragmentManager", ">>>>> SharedElementLastInViews <<<<<");
                Iterator it2 = this.f2615j.iterator();
                while (it2.hasNext()) {
                    Object sharedElementLastInViews = it2.next();
                    kotlin.jvm.internal.m.d(sharedElementLastInViews, "sharedElementLastInViews");
                    View view2 = (View) sharedElementLastInViews;
                    Log.v("FragmentManager", "View: " + view2 + " Name: " + d0.p0.z(view2));
                }
            }
            aVar.invoke();
            this.f2612g.y(viewGroup, this.f2614i, this.f2615j, q10, this.f2616k);
            r0.d(arrayList, 0);
            this.f2612g.A(this.f2613h, this.f2614i, this.f2615j);
        }

        private final void n(ArrayList arrayList, View view) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (d0.t0.a(viewGroup)) {
                    if (!arrayList.contains(view)) {
                        arrayList.add(view);
                        return;
                    }
                    return;
                }
                int childCount = viewGroup.getChildCount();
                for (int i10 = 0; i10 < childCount; i10++) {
                    View child = viewGroup.getChildAt(i10);
                    if (child.getVisibility() == 0) {
                        kotlin.jvm.internal.m.d(child, "child");
                        n(arrayList, child);
                    }
                }
            } else if (!arrayList.contains(view)) {
                arrayList.add(view);
            }
        }

        private final xc.k o(ViewGroup viewGroup, y0.d dVar, final y0.d dVar2) {
            Set o02;
            Set o03;
            final y0.d dVar3 = dVar;
            View view = new View(viewGroup.getContext());
            final Rect rect = new Rect();
            boolean z10 = false;
            View view2 = null;
            for (h hVar : this.f2609d) {
                if (hVar.g() && dVar2 != null && dVar3 != null && (!this.f2616k.isEmpty()) && this.f2613h != null) {
                    r0.a(dVar.i(), dVar2.i(), this.f2621p, this.f2619n, true);
                    d0.k0.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.j
                        @Override // java.lang.Runnable
                        public final void run() {
                            f.g.p(y0.d.this, dVar2, this);
                        }
                    });
                    this.f2614i.addAll(this.f2619n.values());
                    if (!this.f2618m.isEmpty()) {
                        Object obj = this.f2618m.get(0);
                        kotlin.jvm.internal.m.d(obj, "exitingNames[0]");
                        view2 = (View) this.f2619n.get((String) obj);
                        this.f2612g.v(this.f2613h, view2);
                    }
                    this.f2615j.addAll(this.f2620o.values());
                    if (!this.f2617l.isEmpty()) {
                        Object obj2 = this.f2617l.get(0);
                        kotlin.jvm.internal.m.d(obj2, "enteringNames[0]");
                        final View view3 = (View) this.f2620o.get((String) obj2);
                        if (view3 != null) {
                            final t0 t0Var = this.f2612g;
                            d0.k0.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.k
                                @Override // java.lang.Runnable
                                public final void run() {
                                    f.g.q(t0.this, view3, rect);
                                }
                            });
                            z10 = true;
                        }
                    }
                    this.f2612g.z(this.f2613h, view, this.f2614i);
                    t0 t0Var2 = this.f2612g;
                    Object obj3 = this.f2613h;
                    t0Var2.s(obj3, null, null, null, null, obj3, this.f2615j);
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it = this.f2609d.iterator();
            Object obj4 = null;
            Object obj5 = null;
            while (it.hasNext()) {
                h hVar2 = (h) it.next();
                y0.d a10 = hVar2.a();
                Iterator it2 = it;
                Object h10 = this.f2612g.h(hVar2.f());
                if (h10 != null) {
                    final ArrayList arrayList2 = new ArrayList();
                    Object obj6 = obj5;
                    View view4 = a10.i().mView;
                    Object obj7 = obj4;
                    kotlin.jvm.internal.m.d(view4, "operation.fragment.mView");
                    n(arrayList2, view4);
                    if (this.f2613h != null && (a10 == dVar2 || a10 == dVar3)) {
                        if (a10 == dVar2) {
                            o03 = yc.w.o0(this.f2614i);
                            arrayList2.removeAll(o03);
                        } else {
                            o02 = yc.w.o0(this.f2615j);
                            arrayList2.removeAll(o02);
                        }
                    }
                    if (arrayList2.isEmpty()) {
                        this.f2612g.a(h10, view);
                    } else {
                        this.f2612g.b(h10, arrayList2);
                        this.f2612g.s(h10, h10, arrayList2, null, null, null, null);
                        if (a10.h() == y0.d.b.GONE) {
                            a10.r(false);
                            ArrayList arrayList3 = new ArrayList(arrayList2);
                            arrayList3.remove(a10.i().mView);
                            this.f2612g.r(h10, a10.i().mView, arrayList3);
                            d0.k0.a(viewGroup, new Runnable() { // from class: androidx.fragment.app.l
                                @Override // java.lang.Runnable
                                public final void run() {
                                    f.g.r(arrayList2);
                                }
                            });
                        }
                    }
                    if (a10.h() == y0.d.b.VISIBLE) {
                        arrayList.addAll(arrayList2);
                        if (z10) {
                            this.f2612g.u(h10, rect);
                        }
                        if (i0.J0(2)) {
                            Log.v("FragmentManager", "Entering Transition: " + h10);
                            Log.v("FragmentManager", ">>>>> EnteringViews <<<<<");
                            Iterator it3 = arrayList2.iterator();
                            while (it3.hasNext()) {
                                Object transitioningViews = it3.next();
                                kotlin.jvm.internal.m.d(transitioningViews, "transitioningViews");
                                Log.v("FragmentManager", "View: " + ((View) transitioningViews));
                            }
                        }
                    } else {
                        this.f2612g.v(h10, view2);
                        if (i0.J0(2)) {
                            Log.v("FragmentManager", "Exiting Transition: " + h10);
                            Log.v("FragmentManager", ">>>>> ExitingViews <<<<<");
                            Iterator it4 = arrayList2.iterator();
                            while (it4.hasNext()) {
                                Object transitioningViews2 = it4.next();
                                kotlin.jvm.internal.m.d(transitioningViews2, "transitioningViews");
                                Log.v("FragmentManager", "View: " + ((View) transitioningViews2));
                            }
                        }
                    }
                    if (hVar2.h()) {
                        obj4 = this.f2612g.p(obj7, h10, null);
                        dVar3 = dVar;
                        it = it2;
                        obj5 = obj6;
                    } else {
                        obj5 = this.f2612g.p(obj6, h10, null);
                        dVar3 = dVar;
                        obj4 = obj7;
                        it = it2;
                    }
                } else {
                    dVar3 = dVar;
                    it = it2;
                    obj4 = obj4;
                }
            }
            Object o10 = this.f2612g.o(obj4, obj5, this.f2613h);
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Final merged transition: " + o10);
            }
            return new xc.k(arrayList, o10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void p(y0.d dVar, y0.d dVar2, g this$0) {
            kotlin.jvm.internal.m.e(this$0, "this$0");
            r0.a(dVar.i(), dVar2.i(), this$0.f2621p, this$0.f2620o, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void q(t0 impl, View view, Rect lastInEpicenterRect) {
            kotlin.jvm.internal.m.e(impl, "$impl");
            kotlin.jvm.internal.m.e(lastInEpicenterRect, "$lastInEpicenterRect");
            impl.k(view, lastInEpicenterRect);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void r(ArrayList transitioningViews) {
            kotlin.jvm.internal.m.e(transitioningViews, "$transitioningViews");
            r0.d(transitioningViews, 4);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void y(y0.d operation, g this$0) {
            kotlin.jvm.internal.m.e(operation, "$operation");
            kotlin.jvm.internal.m.e(this$0, "this$0");
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Transition for operation " + operation + " has completed");
            }
            operation.f(this$0);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void z(kotlin.jvm.internal.c0 seekCancelLambda) {
            kotlin.jvm.internal.m.e(seekCancelLambda, "$seekCancelLambda");
            id.a aVar = (id.a) seekCancelLambda.f24971a;
            if (aVar != null) {
                aVar.invoke();
            }
        }

        public final void C(Object obj) {
            this.f2623r = obj;
        }

        @Override // androidx.fragment.app.y0.b
        public boolean b() {
            boolean z10;
            boolean z11;
            if (!this.f2612g.m()) {
                return false;
            }
            List<h> list = this.f2609d;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                for (h hVar : list) {
                    if (Build.VERSION.SDK_INT >= 34 && hVar.f() != null && this.f2612g.n(hVar.f())) {
                        z10 = true;
                        continue;
                    } else {
                        z10 = false;
                        continue;
                    }
                    if (!z10) {
                        z11 = false;
                        break;
                    }
                }
            }
            z11 = true;
            if (!z11) {
                return false;
            }
            Object obj = this.f2613h;
            if (obj != null && !this.f2612g.n(obj)) {
                return false;
            }
            return true;
        }

        @Override // androidx.fragment.app.y0.b
        public void c(ViewGroup container) {
            kotlin.jvm.internal.m.e(container, "container");
            this.f2622q.a();
        }

        @Override // androidx.fragment.app.y0.b
        public void d(ViewGroup container) {
            int r10;
            kotlin.jvm.internal.m.e(container, "container");
            if (!container.isLaidOut()) {
                for (h hVar : this.f2609d) {
                    y0.d a10 = hVar.a();
                    if (i0.J0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Container " + container + " has not been laid out. Completing operation " + a10);
                    }
                    hVar.a().f(this);
                }
                return;
            }
            Object obj = this.f2623r;
            if (obj != null) {
                t0 t0Var = this.f2612g;
                kotlin.jvm.internal.m.b(obj);
                t0Var.c(obj);
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Ending execution of operations from " + this.f2610e + " to " + this.f2611f);
                    return;
                }
                return;
            }
            xc.k o10 = o(container, this.f2611f, this.f2610e);
            ArrayList arrayList = (ArrayList) o10.a();
            Object b10 = o10.b();
            List<h> list = this.f2609d;
            r10 = yc.p.r(list, 10);
            ArrayList<y0.d> arrayList2 = new ArrayList(r10);
            for (h hVar2 : list) {
                arrayList2.add(hVar2.a());
            }
            for (final y0.d dVar : arrayList2) {
                this.f2612g.w(dVar.i(), b10, this.f2622q, new Runnable() { // from class: androidx.fragment.app.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        f.g.y(y0.d.this, this);
                    }
                });
            }
            B(arrayList, container, new a(container, b10));
            if (i0.J0(2)) {
                Log.v("FragmentManager", "Completed executing operations from " + this.f2610e + " to " + this.f2611f);
            }
        }

        @Override // androidx.fragment.app.y0.b
        public void e(androidx.activity.b backEvent, ViewGroup container) {
            kotlin.jvm.internal.m.e(backEvent, "backEvent");
            kotlin.jvm.internal.m.e(container, "container");
            Object obj = this.f2623r;
            if (obj != null) {
                this.f2612g.t(obj, backEvent.a());
            }
        }

        @Override // androidx.fragment.app.y0.b
        public void f(ViewGroup container) {
            int r10;
            kotlin.jvm.internal.m.e(container, "container");
            if (!container.isLaidOut()) {
                for (h hVar : this.f2609d) {
                    y0.d a10 = hVar.a();
                    if (i0.J0(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Container " + container + " has not been laid out. Skipping onStart for operation " + a10);
                    }
                }
                return;
            }
            if (x() && this.f2613h != null && !b()) {
                Log.i("FragmentManager", "Ignoring shared elements transition " + this.f2613h + " between " + this.f2610e + " and " + this.f2611f + " as neither fragment has set a Transition. In order to run a SharedElementTransition, you must also set either an enter or exit transition on a fragment involved in the transaction. The sharedElementTransition will run after the back gesture has been committed.");
            }
            if (b() && x()) {
                final kotlin.jvm.internal.c0 c0Var = new kotlin.jvm.internal.c0();
                xc.k o10 = o(container, this.f2611f, this.f2610e);
                ArrayList arrayList = (ArrayList) o10.a();
                Object b10 = o10.b();
                List<h> list = this.f2609d;
                r10 = yc.p.r(list, 10);
                ArrayList<y0.d> arrayList2 = new ArrayList(r10);
                for (h hVar2 : list) {
                    arrayList2.add(hVar2.a());
                }
                for (final y0.d dVar : arrayList2) {
                    this.f2612g.x(dVar.i(), b10, this.f2622q, new Runnable() { // from class: androidx.fragment.app.h
                        @Override // java.lang.Runnable
                        public final void run() {
                            f.g.z(kotlin.jvm.internal.c0.this);
                        }
                    }, new Runnable() { // from class: androidx.fragment.app.i
                        @Override // java.lang.Runnable
                        public final void run() {
                            f.g.A(y0.d.this, this);
                        }
                    });
                }
                B(arrayList, container, new b(container, b10, c0Var));
            }
        }

        public final Object s() {
            return this.f2623r;
        }

        public final y0.d t() {
            return this.f2610e;
        }

        public final y0.d u() {
            return this.f2611f;
        }

        public final t0 v() {
            return this.f2612g;
        }

        public final List w() {
            return this.f2609d;
        }

        public final boolean x() {
            List<h> list = this.f2609d;
            if ((list instanceof Collection) && list.isEmpty()) {
                return true;
            }
            for (h hVar : list) {
                if (!hVar.a().i().mTransitioning) {
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class h extends C0042f {

        /* renamed from: b  reason: collision with root package name */
        private final Object f2633b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f2634c;

        /* renamed from: d  reason: collision with root package name */
        private final Object f2635d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public h(y0.d operation, boolean z10, boolean z11) {
            super(operation);
            Object exitTransition;
            boolean z12;
            Object obj;
            kotlin.jvm.internal.m.e(operation, "operation");
            y0.d.b h10 = operation.h();
            y0.d.b bVar = y0.d.b.VISIBLE;
            if (h10 == bVar) {
                p i10 = operation.i();
                if (z10) {
                    exitTransition = i10.getReenterTransition();
                } else {
                    exitTransition = i10.getEnterTransition();
                }
            } else {
                p i11 = operation.i();
                if (z10) {
                    exitTransition = i11.getReturnTransition();
                } else {
                    exitTransition = i11.getExitTransition();
                }
            }
            this.f2633b = exitTransition;
            if (operation.h() == bVar) {
                if (z10) {
                    z12 = operation.i().getAllowReturnTransitionOverlap();
                } else {
                    z12 = operation.i().getAllowEnterTransitionOverlap();
                }
            } else {
                z12 = true;
            }
            this.f2634c = z12;
            if (z11) {
                if (z10) {
                    obj = operation.i().getSharedElementReturnTransition();
                } else {
                    obj = operation.i().getSharedElementEnterTransition();
                }
            } else {
                obj = null;
            }
            this.f2635d = obj;
        }

        private final t0 d(Object obj) {
            if (obj == null) {
                return null;
            }
            t0 t0Var = r0.f2832b;
            if (t0Var != null && t0Var.g(obj)) {
                return t0Var;
            }
            t0 t0Var2 = r0.f2833c;
            if (t0Var2 != null && t0Var2.g(obj)) {
                return t0Var2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + a().i() + " is not a valid framework Transition or AndroidX Transition");
        }

        public final t0 c() {
            boolean z10;
            t0 d10 = d(this.f2633b);
            t0 d11 = d(this.f2635d);
            if (d10 != null && d11 != null && d10 != d11) {
                z10 = false;
            } else {
                z10 = true;
            }
            if (z10) {
                if (d10 == null) {
                    return d11;
                }
                return d10;
            }
            throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + a().i() + " returned Transition " + this.f2633b + " which uses a different Transition  type than its shared element transition " + this.f2635d).toString());
        }

        public final Object e() {
            return this.f2635d;
        }

        public final Object f() {
            return this.f2633b;
        }

        public final boolean g() {
            if (this.f2635d != null) {
                return true;
            }
            return false;
        }

        public final boolean h() {
            return this.f2634c;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class i extends kotlin.jvm.internal.n implements id.l {

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Collection f2636e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(Collection collection) {
            super(1);
            this.f2636e = collection;
        }

        @Override // id.l
        /* renamed from: a */
        public final Boolean invoke(Map.Entry entry) {
            boolean I;
            kotlin.jvm.internal.m.e(entry, "entry");
            I = yc.w.I(this.f2636e, d0.p0.z((View) entry.getValue()));
            return Boolean.valueOf(I);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(ViewGroup container) {
        super(container);
        kotlin.jvm.internal.m.e(container, "container");
    }

    private final void D(List list) {
        boolean z10;
        ArrayList<b> arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            yc.t.v(arrayList2, ((b) it.next()).a().g());
        }
        boolean z11 = !arrayList2.isEmpty();
        Iterator it2 = list.iterator();
        boolean z12 = false;
        while (it2.hasNext()) {
            b bVar = (b) it2.next();
            Context context = t().getContext();
            y0.d a10 = bVar.a();
            kotlin.jvm.internal.m.d(context, "context");
            v.a c10 = bVar.c(context);
            if (c10 != null) {
                if (c10.f2865b == null) {
                    arrayList.add(bVar);
                } else {
                    p i10 = a10.i();
                    if (!a10.g().isEmpty()) {
                        if (i0.J0(2)) {
                            Log.v("FragmentManager", "Ignoring Animator set on " + i10 + " as this Fragment was involved in a Transition.");
                        }
                    } else {
                        if (a10.h() == y0.d.b.GONE) {
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (z10) {
                            a10.r(false);
                        }
                        a10.b(new c(bVar));
                        z12 = true;
                    }
                }
            }
        }
        for (b bVar2 : arrayList) {
            y0.d a11 = bVar2.a();
            p i11 = a11.i();
            if (z11) {
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + i11 + " as Animations cannot run alongside Transitions.");
                }
            } else if (z12) {
                if (i0.J0(2)) {
                    Log.v("FragmentManager", "Ignoring Animation set on " + i11 + " as Animations cannot run alongside Animators.");
                }
            } else {
                a11.b(new a(bVar2));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(f this$0, y0.d operation) {
        kotlin.jvm.internal.m.e(this$0, "this$0");
        kotlin.jvm.internal.m.e(operation, "$operation");
        this$0.c(operation);
    }

    private final void F(List list, boolean z10, y0.d dVar, y0.d dVar2) {
        Object obj;
        boolean z11;
        boolean z12;
        t0 t0Var;
        Iterator it;
        ArrayList<String> sharedElementSourceNames;
        ArrayList<String> sharedElementTargetNames;
        xc.k a10;
        boolean z13;
        boolean z14;
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : list) {
            if (!((h) obj2).b()) {
                arrayList.add(obj2);
            }
        }
        ArrayList<h> arrayList2 = new ArrayList();
        for (Object obj3 : arrayList) {
            if (((h) obj3).c() != null) {
                z14 = true;
            } else {
                z14 = false;
            }
            if (z14) {
                arrayList2.add(obj3);
            }
        }
        t0 t0Var2 = null;
        for (h hVar : arrayList2) {
            t0 c10 = hVar.c();
            if (t0Var2 != null && c10 != t0Var2) {
                z13 = false;
            } else {
                z13 = true;
            }
            if (z13) {
                t0Var2 = c10;
            } else {
                throw new IllegalArgumentException(("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + hVar.a().i() + " returned Transition " + hVar.f() + " which uses a different Transition type than other Fragments.").toString());
            }
        }
        if (t0Var2 == null) {
            return;
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        r.a aVar = new r.a();
        ArrayList<String> arrayList5 = new ArrayList<>();
        ArrayList<String> arrayList6 = new ArrayList<>();
        r.a aVar2 = new r.a();
        r.a aVar3 = new r.a();
        Iterator it2 = arrayList2.iterator();
        ArrayList<String> arrayList7 = arrayList5;
        ArrayList<String> arrayList8 = arrayList6;
        loop3: while (true) {
            obj = null;
            while (it2.hasNext()) {
                h hVar2 = (h) it2.next();
                if (hVar2.g() && dVar != null && dVar2 != null) {
                    obj = t0Var2.B(t0Var2.h(hVar2.e()));
                    sharedElementSourceNames = dVar2.i().getSharedElementSourceNames();
                    kotlin.jvm.internal.m.d(sharedElementSourceNames, "lastIn.fragment.sharedElementSourceNames");
                    ArrayList<String> sharedElementSourceNames2 = dVar.i().getSharedElementSourceNames();
                    kotlin.jvm.internal.m.d(sharedElementSourceNames2, "firstOut.fragment.sharedElementSourceNames");
                    ArrayList<String> sharedElementTargetNames2 = dVar.i().getSharedElementTargetNames();
                    kotlin.jvm.internal.m.d(sharedElementTargetNames2, "firstOut.fragment.sharedElementTargetNames");
                    int size = sharedElementTargetNames2.size();
                    it = it2;
                    int i10 = 0;
                    while (i10 < size) {
                        int i11 = size;
                        int indexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames2.get(i10));
                        ArrayList<String> arrayList9 = sharedElementTargetNames2;
                        if (indexOf != -1) {
                            sharedElementSourceNames.set(indexOf, sharedElementSourceNames2.get(i10));
                        }
                        i10++;
                        size = i11;
                        sharedElementTargetNames2 = arrayList9;
                    }
                    sharedElementTargetNames = dVar2.i().getSharedElementTargetNames();
                    kotlin.jvm.internal.m.d(sharedElementTargetNames, "lastIn.fragment.sharedElementTargetNames");
                    if (!z10) {
                        dVar.i().getExitTransitionCallback();
                        dVar2.i().getEnterTransitionCallback();
                        a10 = xc.q.a(null, null);
                    } else {
                        dVar.i().getEnterTransitionCallback();
                        dVar2.i().getExitTransitionCallback();
                        a10 = xc.q.a(null, null);
                    }
                    android.support.v4.media.session.b.a(a10.a());
                    android.support.v4.media.session.b.a(a10.b());
                    int size2 = sharedElementSourceNames.size();
                    int i12 = 0;
                    while (i12 < size2) {
                        String str = sharedElementSourceNames.get(i12);
                        int i13 = size2;
                        kotlin.jvm.internal.m.d(str, "exitingNames[i]");
                        String str2 = sharedElementTargetNames.get(i12);
                        kotlin.jvm.internal.m.d(str2, "enteringNames[i]");
                        aVar.put(str, str2);
                        i12++;
                        size2 = i13;
                        t0Var2 = t0Var2;
                    }
                    t0Var = t0Var2;
                    if (i0.J0(2)) {
                        Log.v("FragmentManager", ">>> entering view names <<<");
                        Iterator<String> it3 = sharedElementTargetNames.iterator();
                        while (it3.hasNext()) {
                            Iterator<String> it4 = it3;
                            Log.v("FragmentManager", "Name: " + it3.next());
                            it3 = it4;
                        }
                        Log.v("FragmentManager", ">>> exiting view names <<<");
                        Iterator<String> it5 = sharedElementSourceNames.iterator();
                        while (it5.hasNext()) {
                            Iterator<String> it6 = it5;
                            Log.v("FragmentManager", "Name: " + it5.next());
                            it5 = it6;
                        }
                    }
                    View view = dVar.i().mView;
                    kotlin.jvm.internal.m.d(view, "firstOut.fragment.mView");
                    G(aVar2, view);
                    aVar2.o(sharedElementSourceNames);
                    aVar.o(aVar2.keySet());
                    View view2 = dVar2.i().mView;
                    kotlin.jvm.internal.m.d(view2, "lastIn.fragment.mView");
                    G(aVar3, view2);
                    aVar3.o(sharedElementTargetNames);
                    aVar3.o(aVar.values());
                    r0.c(aVar, aVar3);
                    Collection keySet = aVar.keySet();
                    kotlin.jvm.internal.m.d(keySet, "sharedElementNameMapping.keys");
                    H(aVar2, keySet);
                    Collection values = aVar.values();
                    kotlin.jvm.internal.m.d(values, "sharedElementNameMapping.values");
                    H(aVar3, values);
                    if (aVar.isEmpty()) {
                        break;
                    }
                    arrayList8 = sharedElementSourceNames;
                    arrayList7 = sharedElementTargetNames;
                } else {
                    t0Var = t0Var2;
                    it = it2;
                }
                it2 = it;
                t0Var2 = t0Var;
            }
            Log.i("FragmentManager", "Ignoring shared elements transition " + obj + " between " + dVar + " and " + dVar2 + " as there are no matching elements in both the entering and exiting fragment. In order to run a SharedElementTransition, both fragments involved must have the element.");
            arrayList3.clear();
            arrayList4.clear();
            arrayList8 = sharedElementSourceNames;
            arrayList7 = sharedElementTargetNames;
            it2 = it;
            t0Var2 = t0Var;
        }
        t0 t0Var3 = t0Var2;
        if (obj == null) {
            if (!arrayList2.isEmpty()) {
                for (h hVar3 : arrayList2) {
                    if (hVar3.f() == null) {
                        z11 = true;
                        continue;
                    } else {
                        z11 = false;
                        continue;
                    }
                    if (!z11) {
                        z12 = false;
                        break;
                    }
                }
            }
            z12 = true;
            if (z12) {
                return;
            }
        }
        g gVar = new g(arrayList2, dVar, dVar2, t0Var3, obj, arrayList3, arrayList4, aVar, arrayList7, arrayList8, aVar2, aVar3, z10);
        for (h hVar4 : arrayList2) {
            hVar4.a().b(gVar);
        }
    }

    private final void G(Map map, View view) {
        String z10 = d0.p0.z(view);
        if (z10 != null) {
            map.put(z10, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View child = viewGroup.getChildAt(i10);
                if (child.getVisibility() == 0) {
                    kotlin.jvm.internal.m.d(child, "child");
                    G(map, child);
                }
            }
        }
    }

    private final void H(r.a aVar, Collection collection) {
        Set entries = aVar.entrySet();
        kotlin.jvm.internal.m.d(entries, "entries");
        yc.t.F(entries, new i(collection));
    }

    private final void I(List list) {
        Object Z;
        Z = yc.w.Z(list);
        p i10 = ((y0.d) Z).i();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            y0.d dVar = (y0.d) it.next();
            dVar.i().mAnimationInfo.f2778c = i10.mAnimationInfo.f2778c;
            dVar.i().mAnimationInfo.f2779d = i10.mAnimationInfo.f2779d;
            dVar.i().mAnimationInfo.f2780e = i10.mAnimationInfo.f2780e;
            dVar.i().mAnimationInfo.f2781f = i10.mAnimationInfo.f2781f;
        }
    }

    @Override // androidx.fragment.app.y0
    public void d(List operations, boolean z10) {
        Object obj;
        Object obj2;
        boolean z11;
        boolean z12;
        boolean z13;
        kotlin.jvm.internal.m.e(operations, "operations");
        Iterator it = operations.iterator();
        while (true) {
            obj = null;
            if (it.hasNext()) {
                obj2 = it.next();
                y0.d dVar = (y0.d) obj2;
                y0.d.b.a aVar = y0.d.b.f2908a;
                View view = dVar.i().mView;
                kotlin.jvm.internal.m.d(view, "operation.fragment.mView");
                y0.d.b a10 = aVar.a(view);
                y0.d.b bVar = y0.d.b.VISIBLE;
                if (a10 == bVar && dVar.h() != bVar) {
                    z13 = true;
                    continue;
                } else {
                    z13 = false;
                    continue;
                }
                if (z13) {
                    break;
                }
            } else {
                obj2 = null;
                break;
            }
        }
        y0.d dVar2 = (y0.d) obj2;
        ListIterator listIterator = operations.listIterator(operations.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                break;
            }
            Object previous = listIterator.previous();
            y0.d dVar3 = (y0.d) previous;
            y0.d.b.a aVar2 = y0.d.b.f2908a;
            View view2 = dVar3.i().mView;
            kotlin.jvm.internal.m.d(view2, "operation.fragment.mView");
            y0.d.b a11 = aVar2.a(view2);
            y0.d.b bVar2 = y0.d.b.VISIBLE;
            if (a11 != bVar2 && dVar3.h() == bVar2) {
                z12 = true;
                continue;
            } else {
                z12 = false;
                continue;
            }
            if (z12) {
                obj = previous;
                break;
            }
        }
        y0.d dVar4 = (y0.d) obj;
        if (i0.J0(2)) {
            Log.v("FragmentManager", "Executing operations from " + dVar2 + " to " + dVar4);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        I(operations);
        Iterator it2 = operations.iterator();
        while (it2.hasNext()) {
            final y0.d dVar5 = (y0.d) it2.next();
            arrayList.add(new b(dVar5, z10));
            if (!z10 ? dVar5 == dVar4 : dVar5 == dVar2) {
                z11 = true;
            } else {
                z11 = false;
            }
            arrayList2.add(new h(dVar5, z10, z11));
            dVar5.a(new Runnable() { // from class: androidx.fragment.app.d
                @Override // java.lang.Runnable
                public final void run() {
                    f.E(f.this, dVar5);
                }
            });
        }
        F(arrayList2, z10, dVar2, dVar4);
        D(arrayList);
    }
}
