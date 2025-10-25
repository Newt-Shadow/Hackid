package androidx.lifecycle;

import androidx.lifecycle.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import n.b;
/* loaded from: classes.dex */
public class n extends i {

    /* renamed from: k  reason: collision with root package name */
    public static final a f2996k = new a(null);

    /* renamed from: b  reason: collision with root package name */
    private final boolean f2997b;

    /* renamed from: c  reason: collision with root package name */
    private n.a f2998c;

    /* renamed from: d  reason: collision with root package name */
    private i.b f2999d;

    /* renamed from: e  reason: collision with root package name */
    private final WeakReference f3000e;

    /* renamed from: f  reason: collision with root package name */
    private int f3001f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f3002g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f3003h;

    /* renamed from: i  reason: collision with root package name */
    private ArrayList f3004i;

    /* renamed from: j  reason: collision with root package name */
    private final wd.p f3005j;

    /* loaded from: classes.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i.b a(i.b state1, i.b bVar) {
            kotlin.jvm.internal.m.e(state1, "state1");
            if (bVar != null && bVar.compareTo(state1) < 0) {
                return bVar;
            }
            return state1;
        }
    }

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private i.b f3006a;

        /* renamed from: b  reason: collision with root package name */
        private k f3007b;

        public b(l lVar, i.b initialState) {
            kotlin.jvm.internal.m.e(initialState, "initialState");
            kotlin.jvm.internal.m.b(lVar);
            this.f3007b = p.f(lVar);
            this.f3006a = initialState;
        }

        public final void a(m mVar, i.a event) {
            kotlin.jvm.internal.m.e(event, "event");
            i.b f10 = event.f();
            this.f3006a = n.f2996k.a(this.f3006a, f10);
            k kVar = this.f3007b;
            kotlin.jvm.internal.m.b(mVar);
            kVar.a(mVar, event);
            this.f3006a = f10;
        }

        public final i.b b() {
            return this.f3006a;
        }
    }

    private n(m mVar, boolean z10) {
        this.f2997b = z10;
        this.f2998c = new n.a();
        i.b bVar = i.b.INITIALIZED;
        this.f2999d = bVar;
        this.f3004i = new ArrayList();
        this.f3000e = new WeakReference(mVar);
        this.f3005j = wd.w.a(bVar);
    }

    private final void d(m mVar) {
        Iterator descendingIterator = this.f2998c.descendingIterator();
        kotlin.jvm.internal.m.d(descendingIterator, "observerMap.descendingIterator()");
        while (descendingIterator.hasNext() && !this.f3003h) {
            Map.Entry entry = (Map.Entry) descendingIterator.next();
            kotlin.jvm.internal.m.d(entry, "next()");
            l lVar = (l) entry.getKey();
            b bVar = (b) entry.getValue();
            while (bVar.b().compareTo(this.f2999d) > 0 && !this.f3003h && this.f2998c.contains(lVar)) {
                i.a a10 = i.a.Companion.a(bVar.b());
                if (a10 != null) {
                    l(a10.f());
                    bVar.a(mVar, a10);
                    k();
                } else {
                    throw new IllegalStateException("no event down from " + bVar.b());
                }
            }
        }
    }

    private final i.b e(l lVar) {
        i.b bVar;
        ArrayList arrayList;
        b bVar2;
        Map.Entry p10 = this.f2998c.p(lVar);
        i.b bVar3 = null;
        if (p10 != null && (bVar2 = (b) p10.getValue()) != null) {
            bVar = bVar2.b();
        } else {
            bVar = null;
        }
        if (!this.f3004i.isEmpty()) {
            bVar3 = (i.b) this.f3004i.get(arrayList.size() - 1);
        }
        a aVar = f2996k;
        return aVar.a(aVar.a(this.f2999d, bVar), bVar3);
    }

    private final void f(String str) {
        if (this.f2997b && !o.a()) {
            throw new IllegalStateException(("Method " + str + " must be called on the main thread").toString());
        }
    }

    private final void g(m mVar) {
        b.d i10 = this.f2998c.i();
        kotlin.jvm.internal.m.d(i10, "observerMap.iteratorWithAdditions()");
        while (i10.hasNext() && !this.f3003h) {
            Map.Entry entry = (Map.Entry) i10.next();
            l lVar = (l) entry.getKey();
            b bVar = (b) entry.getValue();
            while (bVar.b().compareTo(this.f2999d) < 0 && !this.f3003h && this.f2998c.contains(lVar)) {
                l(bVar.b());
                i.a b10 = i.a.Companion.b(bVar.b());
                if (b10 != null) {
                    bVar.a(mVar, b10);
                    k();
                } else {
                    throw new IllegalStateException("no event up from " + bVar.b());
                }
            }
        }
    }

    private final boolean i() {
        if (this.f2998c.size() == 0) {
            return true;
        }
        Map.Entry d10 = this.f2998c.d();
        kotlin.jvm.internal.m.b(d10);
        i.b b10 = ((b) d10.getValue()).b();
        Map.Entry l10 = this.f2998c.l();
        kotlin.jvm.internal.m.b(l10);
        i.b b11 = ((b) l10.getValue()).b();
        if (b10 == b11 && this.f2999d == b11) {
            return true;
        }
        return false;
    }

    private final void j(i.b bVar) {
        boolean z10;
        i.b bVar2 = this.f2999d;
        if (bVar2 == bVar) {
            return;
        }
        if (bVar2 == i.b.INITIALIZED && bVar == i.b.DESTROYED) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            this.f2999d = bVar;
            if (!this.f3002g && this.f3001f == 0) {
                this.f3002g = true;
                n();
                this.f3002g = false;
                if (this.f2999d == i.b.DESTROYED) {
                    this.f2998c = new n.a();
                    return;
                }
                return;
            }
            this.f3003h = true;
            return;
        }
        throw new IllegalStateException(("State must be at least CREATED to move to " + bVar + ", but was " + this.f2999d + " in component " + this.f3000e.get()).toString());
    }

    private final void k() {
        ArrayList arrayList = this.f3004i;
        arrayList.remove(arrayList.size() - 1);
    }

    private final void l(i.b bVar) {
        this.f3004i.add(bVar);
    }

    private final void n() {
        m mVar = (m) this.f3000e.get();
        if (mVar != null) {
            while (!i()) {
                this.f3003h = false;
                i.b bVar = this.f2999d;
                Map.Entry d10 = this.f2998c.d();
                kotlin.jvm.internal.m.b(d10);
                if (bVar.compareTo(((b) d10.getValue()).b()) < 0) {
                    d(mVar);
                }
                Map.Entry l10 = this.f2998c.l();
                if (!this.f3003h && l10 != null && this.f2999d.compareTo(((b) l10.getValue()).b()) > 0) {
                    g(mVar);
                }
            }
            this.f3003h = false;
            this.f3005j.setValue(b());
            return;
        }
        throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
    }

    @Override // androidx.lifecycle.i
    public void a(l observer) {
        m mVar;
        boolean z10;
        kotlin.jvm.internal.m.e(observer, "observer");
        f("addObserver");
        i.b bVar = this.f2999d;
        i.b bVar2 = i.b.DESTROYED;
        if (bVar != bVar2) {
            bVar2 = i.b.INITIALIZED;
        }
        b bVar3 = new b(observer, bVar2);
        if (((b) this.f2998c.n(observer, bVar3)) != null || (mVar = (m) this.f3000e.get()) == null) {
            return;
        }
        if (this.f3001f == 0 && !this.f3002g) {
            z10 = false;
        } else {
            z10 = true;
        }
        i.b e10 = e(observer);
        this.f3001f++;
        while (bVar3.b().compareTo(e10) < 0 && this.f2998c.contains(observer)) {
            l(bVar3.b());
            i.a b10 = i.a.Companion.b(bVar3.b());
            if (b10 != null) {
                bVar3.a(mVar, b10);
                k();
                e10 = e(observer);
            } else {
                throw new IllegalStateException("no event up from " + bVar3.b());
            }
        }
        if (!z10) {
            n();
        }
        this.f3001f--;
    }

    @Override // androidx.lifecycle.i
    public i.b b() {
        return this.f2999d;
    }

    @Override // androidx.lifecycle.i
    public void c(l observer) {
        kotlin.jvm.internal.m.e(observer, "observer");
        f("removeObserver");
        this.f2998c.o(observer);
    }

    public void h(i.a event) {
        kotlin.jvm.internal.m.e(event, "event");
        f("handleLifecycleEvent");
        j(event.f());
    }

    public void m(i.b state) {
        kotlin.jvm.internal.m.e(state, "state");
        f("setCurrentState");
        j(state);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public n(m provider) {
        this(provider, true);
        kotlin.jvm.internal.m.e(provider, "provider");
    }
}
