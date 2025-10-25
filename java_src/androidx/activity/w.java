package androidx.activity;

import android.os.Build;
import android.window.BackEvent;
import android.window.OnBackAnimationCallback;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.w;
import androidx.lifecycle.i;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
/* loaded from: classes.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private final Runnable f572a;

    /* renamed from: b  reason: collision with root package name */
    private final c0.a f573b;

    /* renamed from: c  reason: collision with root package name */
    private final yc.f f574c;

    /* renamed from: d  reason: collision with root package name */
    private v f575d;

    /* renamed from: e  reason: collision with root package name */
    private OnBackInvokedCallback f576e;

    /* renamed from: f  reason: collision with root package name */
    private OnBackInvokedDispatcher f577f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f578g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f579h;

    /* loaded from: classes.dex */
    static final class a extends kotlin.jvm.internal.n implements id.l {
        a() {
            super(1);
        }

        public final void a(androidx.activity.b backEvent) {
            kotlin.jvm.internal.m.e(backEvent, "backEvent");
            w.this.m(backEvent);
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((androidx.activity.b) obj);
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes.dex */
    static final class b extends kotlin.jvm.internal.n implements id.l {
        b() {
            super(1);
        }

        public final void a(androidx.activity.b backEvent) {
            kotlin.jvm.internal.m.e(backEvent, "backEvent");
            w.this.l(backEvent);
        }

        @Override // id.l
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((androidx.activity.b) obj);
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes.dex */
    static final class c extends kotlin.jvm.internal.n implements id.a {
        c() {
            super(0);
        }

        public final void b() {
            w.this.k();
        }

        @Override // id.a
        public /* bridge */ /* synthetic */ Object invoke() {
            b();
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes.dex */
    static final class d extends kotlin.jvm.internal.n implements id.a {
        d() {
            super(0);
        }

        public final void b() {
            w.this.j();
        }

        @Override // id.a
        public /* bridge */ /* synthetic */ Object invoke() {
            b();
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes.dex */
    static final class e extends kotlin.jvm.internal.n implements id.a {
        e() {
            super(0);
        }

        public final void b() {
            w.this.k();
        }

        @Override // id.a
        public /* bridge */ /* synthetic */ Object invoke() {
            b();
            return xc.t.f32733a;
        }
    }

    /* loaded from: classes.dex */
    public static final class f {

        /* renamed from: a  reason: collision with root package name */
        public static final f f585a = new f();

        private f() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(id.a aVar) {
            aVar.invoke();
        }

        public final OnBackInvokedCallback b(final id.a onBackInvoked) {
            kotlin.jvm.internal.m.e(onBackInvoked, "onBackInvoked");
            return new OnBackInvokedCallback() { // from class: androidx.activity.x
                public final void onBackInvoked() {
                    w.f.c(id.a.this);
                }
            };
        }

        public final void d(Object dispatcher, int i10, Object callback) {
            kotlin.jvm.internal.m.e(dispatcher, "dispatcher");
            kotlin.jvm.internal.m.e(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).registerOnBackInvokedCallback(i10, (OnBackInvokedCallback) callback);
        }

        public final void e(Object dispatcher, Object callback) {
            kotlin.jvm.internal.m.e(dispatcher, "dispatcher");
            kotlin.jvm.internal.m.e(callback, "callback");
            ((OnBackInvokedDispatcher) dispatcher).unregisterOnBackInvokedCallback((OnBackInvokedCallback) callback);
        }
    }

    /* loaded from: classes.dex */
    public static final class g {

        /* renamed from: a  reason: collision with root package name */
        public static final g f586a = new g();

        /* loaded from: classes.dex */
        public static final class a implements OnBackAnimationCallback {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ id.l f587a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ id.l f588b;

            /* renamed from: c  reason: collision with root package name */
            final /* synthetic */ id.a f589c;

            /* renamed from: d  reason: collision with root package name */
            final /* synthetic */ id.a f590d;

            a(id.l lVar, id.l lVar2, id.a aVar, id.a aVar2) {
                this.f587a = lVar;
                this.f588b = lVar2;
                this.f589c = aVar;
                this.f590d = aVar2;
            }

            public void onBackCancelled() {
                this.f590d.invoke();
            }

            public void onBackInvoked() {
                this.f589c.invoke();
            }

            public void onBackProgressed(BackEvent backEvent) {
                kotlin.jvm.internal.m.e(backEvent, "backEvent");
                this.f588b.invoke(new androidx.activity.b(backEvent));
            }

            public void onBackStarted(BackEvent backEvent) {
                kotlin.jvm.internal.m.e(backEvent, "backEvent");
                this.f587a.invoke(new androidx.activity.b(backEvent));
            }
        }

        private g() {
        }

        public final OnBackInvokedCallback a(id.l onBackStarted, id.l onBackProgressed, id.a onBackInvoked, id.a onBackCancelled) {
            kotlin.jvm.internal.m.e(onBackStarted, "onBackStarted");
            kotlin.jvm.internal.m.e(onBackProgressed, "onBackProgressed");
            kotlin.jvm.internal.m.e(onBackInvoked, "onBackInvoked");
            kotlin.jvm.internal.m.e(onBackCancelled, "onBackCancelled");
            return new a(onBackStarted, onBackProgressed, onBackInvoked, onBackCancelled);
        }
    }

    /* loaded from: classes.dex */
    private final class h implements androidx.lifecycle.k, androidx.activity.c {

        /* renamed from: a  reason: collision with root package name */
        private final androidx.lifecycle.i f591a;

        /* renamed from: b  reason: collision with root package name */
        private final v f592b;

        /* renamed from: c  reason: collision with root package name */
        private androidx.activity.c f593c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ w f594d;

        public h(w wVar, androidx.lifecycle.i lifecycle, v onBackPressedCallback) {
            kotlin.jvm.internal.m.e(lifecycle, "lifecycle");
            kotlin.jvm.internal.m.e(onBackPressedCallback, "onBackPressedCallback");
            this.f594d = wVar;
            this.f591a = lifecycle;
            this.f592b = onBackPressedCallback;
            lifecycle.a(this);
        }

        @Override // androidx.lifecycle.k
        public void a(androidx.lifecycle.m source, i.a event) {
            kotlin.jvm.internal.m.e(source, "source");
            kotlin.jvm.internal.m.e(event, "event");
            if (event == i.a.ON_START) {
                this.f593c = this.f594d.i(this.f592b);
            } else if (event == i.a.ON_STOP) {
                androidx.activity.c cVar = this.f593c;
                if (cVar != null) {
                    cVar.cancel();
                }
            } else if (event == i.a.ON_DESTROY) {
                cancel();
            }
        }

        @Override // androidx.activity.c
        public void cancel() {
            this.f591a.c(this);
            this.f592b.removeCancellable(this);
            androidx.activity.c cVar = this.f593c;
            if (cVar != null) {
                cVar.cancel();
            }
            this.f593c = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class i implements androidx.activity.c {

        /* renamed from: a  reason: collision with root package name */
        private final v f595a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ w f596b;

        public i(w wVar, v onBackPressedCallback) {
            kotlin.jvm.internal.m.e(onBackPressedCallback, "onBackPressedCallback");
            this.f596b = wVar;
            this.f595a = onBackPressedCallback;
        }

        @Override // androidx.activity.c
        public void cancel() {
            this.f596b.f574c.remove(this.f595a);
            if (kotlin.jvm.internal.m.a(this.f596b.f575d, this.f595a)) {
                this.f595a.handleOnBackCancelled();
                this.f596b.f575d = null;
            }
            this.f595a.removeCancellable(this);
            id.a enabledChangedCallback$activity_release = this.f595a.getEnabledChangedCallback$activity_release();
            if (enabledChangedCallback$activity_release != null) {
                enabledChangedCallback$activity_release.invoke();
            }
            this.f595a.setEnabledChangedCallback$activity_release(null);
        }
    }

    /* loaded from: classes.dex */
    /* synthetic */ class j extends kotlin.jvm.internal.k implements id.a {
        j(Object obj) {
            super(0, obj, w.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0);
        }

        public final void f() {
            ((w) this.receiver).p();
        }

        @Override // id.a
        public /* bridge */ /* synthetic */ Object invoke() {
            f();
            return xc.t.f32733a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public /* synthetic */ class k extends kotlin.jvm.internal.k implements id.a {
        k(Object obj) {
            super(0, obj, w.class, "updateEnabledCallbacks", "updateEnabledCallbacks()V", 0);
        }

        public final void f() {
            ((w) this.receiver).p();
        }

        @Override // id.a
        public /* bridge */ /* synthetic */ Object invoke() {
            f();
            return xc.t.f32733a;
        }
    }

    public w(Runnable runnable, c0.a aVar) {
        OnBackInvokedCallback b10;
        this.f572a = runnable;
        this.f573b = aVar;
        this.f574c = new yc.f();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33) {
            if (i10 >= 34) {
                b10 = g.f586a.a(new a(), new b(), new c(), new d());
            } else {
                b10 = f.f585a.b(new e());
            }
            this.f576e = b10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object] */
    public final void j() {
        ?? r22;
        v vVar = this.f575d;
        if (vVar == null) {
            yc.f fVar = this.f574c;
            ListIterator listIterator = fVar.listIterator(fVar.size());
            while (true) {
                if (listIterator.hasPrevious()) {
                    r22 = listIterator.previous();
                    if (((v) r22).isEnabled()) {
                        break;
                    }
                } else {
                    r22 = 0;
                    break;
                }
            }
            vVar = r22;
        }
        this.f575d = null;
        if (vVar != null) {
            vVar.handleOnBackCancelled();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object] */
    public final void l(androidx.activity.b bVar) {
        ?? r12;
        v vVar = this.f575d;
        if (vVar == null) {
            yc.f fVar = this.f574c;
            ListIterator listIterator = fVar.listIterator(fVar.size());
            while (true) {
                if (listIterator.hasPrevious()) {
                    r12 = listIterator.previous();
                    if (((v) r12).isEnabled()) {
                        break;
                    }
                } else {
                    r12 = 0;
                    break;
                }
            }
            vVar = r12;
        }
        if (vVar != null) {
            vVar.handleOnBackProgressed(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(androidx.activity.b bVar) {
        Object obj;
        yc.f fVar = this.f574c;
        ListIterator<E> listIterator = fVar.listIterator(fVar.size());
        while (true) {
            if (listIterator.hasPrevious()) {
                obj = listIterator.previous();
                if (((v) obj).isEnabled()) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        v vVar = (v) obj;
        if (this.f575d != null) {
            j();
        }
        this.f575d = vVar;
        if (vVar != null) {
            vVar.handleOnBackStarted(bVar);
        }
    }

    private final void o(boolean z10) {
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f577f;
        OnBackInvokedCallback onBackInvokedCallback = this.f576e;
        if (onBackInvokedDispatcher != null && onBackInvokedCallback != null) {
            if (z10 && !this.f578g) {
                f.f585a.d(onBackInvokedDispatcher, 0, onBackInvokedCallback);
                this.f578g = true;
            } else if (!z10 && this.f578g) {
                f.f585a.e(onBackInvokedDispatcher, onBackInvokedCallback);
                this.f578g = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void p() {
        boolean z10 = this.f579h;
        yc.f fVar = this.f574c;
        boolean z11 = false;
        if (!(fVar instanceof Collection) || !fVar.isEmpty()) {
            Iterator<E> it = fVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                } else if (((v) it.next()).isEnabled()) {
                    z11 = true;
                    break;
                }
            }
        }
        this.f579h = z11;
        if (z11 != z10) {
            c0.a aVar = this.f573b;
            if (aVar != null) {
                aVar.accept(Boolean.valueOf(z11));
            }
            if (Build.VERSION.SDK_INT >= 33) {
                o(z11);
            }
        }
    }

    public final void h(androidx.lifecycle.m owner, v onBackPressedCallback) {
        kotlin.jvm.internal.m.e(owner, "owner");
        kotlin.jvm.internal.m.e(onBackPressedCallback, "onBackPressedCallback");
        androidx.lifecycle.i lifecycle = owner.getLifecycle();
        if (lifecycle.b() == i.b.DESTROYED) {
            return;
        }
        onBackPressedCallback.addCancellable(new h(this, lifecycle, onBackPressedCallback));
        p();
        onBackPressedCallback.setEnabledChangedCallback$activity_release(new j(this));
    }

    public final androidx.activity.c i(v onBackPressedCallback) {
        kotlin.jvm.internal.m.e(onBackPressedCallback, "onBackPressedCallback");
        this.f574c.add(onBackPressedCallback);
        i iVar = new i(this, onBackPressedCallback);
        onBackPressedCallback.addCancellable(iVar);
        p();
        onBackPressedCallback.setEnabledChangedCallback$activity_release(new k(this));
        return iVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object] */
    public final void k() {
        ?? r22;
        v vVar = this.f575d;
        if (vVar == null) {
            yc.f fVar = this.f574c;
            ListIterator listIterator = fVar.listIterator(fVar.size());
            while (true) {
                if (listIterator.hasPrevious()) {
                    r22 = listIterator.previous();
                    if (((v) r22).isEnabled()) {
                        break;
                    }
                } else {
                    r22 = 0;
                    break;
                }
            }
            vVar = r22;
        }
        this.f575d = null;
        if (vVar != null) {
            vVar.handleOnBackPressed();
            return;
        }
        Runnable runnable = this.f572a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void n(OnBackInvokedDispatcher invoker) {
        kotlin.jvm.internal.m.e(invoker, "invoker");
        this.f577f = invoker;
        o(this.f579h);
    }

    public w(Runnable runnable) {
        this(runnable, null);
    }
}
