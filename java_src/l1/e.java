package l1;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.t0;
import java.util.ArrayList;
import java.util.List;
import l1.l;
import z.e;
/* loaded from: classes.dex */
public class e extends t0 {

    /* loaded from: classes.dex */
    class a extends l.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Rect f25070a;

        a(Rect rect) {
            this.f25070a = rect;
        }
    }

    /* loaded from: classes.dex */
    class b implements l.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ View f25072a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList f25073b;

        b(View view, ArrayList arrayList) {
            this.f25072a = view;
            this.f25073b = arrayList;
        }

        @Override // l1.l.f
        public void a(l lVar) {
            lVar.S(this);
            lVar.a(this);
        }

        @Override // l1.l.f
        public void b(l lVar) {
        }

        @Override // l1.l.f
        public void c(l lVar) {
        }

        @Override // l1.l.f
        public void d(l lVar) {
        }

        @Override // l1.l.f
        public void e(l lVar) {
            lVar.S(this);
            this.f25072a.setVisibility(8);
            int size = this.f25073b.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((View) this.f25073b.get(i10)).setVisibility(0);
            }
        }
    }

    /* loaded from: classes.dex */
    class c extends m {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Object f25075a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList f25076b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Object f25077c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ArrayList f25078d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ Object f25079e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ ArrayList f25080f;

        c(Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
            this.f25075a = obj;
            this.f25076b = arrayList;
            this.f25077c = obj2;
            this.f25078d = arrayList2;
            this.f25079e = obj3;
            this.f25080f = arrayList3;
        }

        @Override // l1.m, l1.l.f
        public void a(l lVar) {
            Object obj = this.f25075a;
            if (obj != null) {
                e.this.D(obj, this.f25076b, null);
            }
            Object obj2 = this.f25077c;
            if (obj2 != null) {
                e.this.D(obj2, this.f25078d, null);
            }
            Object obj3 = this.f25079e;
            if (obj3 != null) {
                e.this.D(obj3, this.f25080f, null);
            }
        }

        @Override // l1.l.f
        public void e(l lVar) {
            lVar.S(this);
        }
    }

    /* loaded from: classes.dex */
    class d implements e.a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ l f25082a;

        d(l lVar) {
            this.f25082a = lVar;
        }

        @Override // z.e.a
        public void a() {
            this.f25082a.f();
        }
    }

    /* renamed from: l1.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0238e implements l.f {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Runnable f25084a;

        C0238e(Runnable runnable) {
            this.f25084a = runnable;
        }

        @Override // l1.l.f
        public void a(l lVar) {
        }

        @Override // l1.l.f
        public void b(l lVar) {
        }

        @Override // l1.l.f
        public void c(l lVar) {
        }

        @Override // l1.l.f
        public void d(l lVar) {
        }

        @Override // l1.l.f
        public void e(l lVar) {
            this.f25084a.run();
        }
    }

    /* loaded from: classes.dex */
    class f extends l.e {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Rect f25086a;

        f(Rect rect) {
            this.f25086a = rect;
        }
    }

    private static boolean C(l lVar) {
        if (t0.l(lVar.C()) && t0.l(lVar.D()) && t0.l(lVar.E())) {
            return false;
        }
        return true;
    }

    @Override // androidx.fragment.app.t0
    public void A(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        p pVar = (p) obj;
        if (pVar != null) {
            pVar.F().clear();
            pVar.F().addAll(arrayList2);
            D(pVar, arrayList, arrayList2);
        }
    }

    @Override // androidx.fragment.app.t0
    public Object B(Object obj) {
        if (obj == null) {
            return null;
        }
        p pVar = new p();
        pVar.h0((l) obj);
        return pVar;
    }

    public void D(Object obj, ArrayList arrayList, ArrayList arrayList2) {
        int size;
        l lVar = (l) obj;
        int i10 = 0;
        if (lVar instanceof p) {
            p pVar = (p) lVar;
            int k02 = pVar.k0();
            while (i10 < k02) {
                D(pVar.j0(i10), arrayList, arrayList2);
                i10++;
            }
        } else if (!C(lVar)) {
            List F = lVar.F();
            if (F.size() == arrayList.size() && F.containsAll(arrayList)) {
                if (arrayList2 == null) {
                    size = 0;
                } else {
                    size = arrayList2.size();
                }
                while (i10 < size) {
                    lVar.b((View) arrayList2.get(i10));
                    i10++;
                }
                for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
                    lVar.T((View) arrayList.get(size2));
                }
            }
        }
    }

    @Override // androidx.fragment.app.t0
    public void a(Object obj, View view) {
        if (obj != null) {
            ((l) obj).b(view);
        }
    }

    @Override // androidx.fragment.app.t0
    public void b(Object obj, ArrayList arrayList) {
        l lVar = (l) obj;
        if (lVar == null) {
            return;
        }
        int i10 = 0;
        if (lVar instanceof p) {
            p pVar = (p) lVar;
            int k02 = pVar.k0();
            while (i10 < k02) {
                b(pVar.j0(i10), arrayList);
                i10++;
            }
        } else if (!C(lVar) && t0.l(lVar.F())) {
            int size = arrayList.size();
            while (i10 < size) {
                lVar.b((View) arrayList.get(i10));
                i10++;
            }
        }
    }

    @Override // androidx.fragment.app.t0
    public void e(ViewGroup viewGroup, Object obj) {
        n.a(viewGroup, (l) obj);
    }

    @Override // androidx.fragment.app.t0
    public boolean g(Object obj) {
        return obj instanceof l;
    }

    @Override // androidx.fragment.app.t0
    public Object h(Object obj) {
        if (obj != null) {
            return ((l) obj).clone();
        }
        return null;
    }

    @Override // androidx.fragment.app.t0
    public Object o(Object obj, Object obj2, Object obj3) {
        l lVar = (l) obj;
        l lVar2 = (l) obj2;
        l lVar3 = (l) obj3;
        if (lVar != null && lVar2 != null) {
            lVar = new p().h0(lVar).h0(lVar2).r0(1);
        } else if (lVar == null) {
            if (lVar2 != null) {
                lVar = lVar2;
            } else {
                lVar = null;
            }
        }
        if (lVar3 != null) {
            p pVar = new p();
            if (lVar != null) {
                pVar.h0(lVar);
            }
            pVar.h0(lVar3);
            return pVar;
        }
        return lVar;
    }

    @Override // androidx.fragment.app.t0
    public Object p(Object obj, Object obj2, Object obj3) {
        p pVar = new p();
        if (obj != null) {
            pVar.h0((l) obj);
        }
        if (obj2 != null) {
            pVar.h0((l) obj2);
        }
        if (obj3 != null) {
            pVar.h0((l) obj3);
        }
        return pVar;
    }

    @Override // androidx.fragment.app.t0
    public void r(Object obj, View view, ArrayList arrayList) {
        ((l) obj).a(new b(view, arrayList));
    }

    @Override // androidx.fragment.app.t0
    public void s(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3) {
        ((l) obj).a(new c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // androidx.fragment.app.t0
    public void u(Object obj, Rect rect) {
        if (obj != null) {
            ((l) obj).Y(new f(rect));
        }
    }

    @Override // androidx.fragment.app.t0
    public void v(Object obj, View view) {
        if (view != null) {
            Rect rect = new Rect();
            k(view, rect);
            ((l) obj).Y(new a(rect));
        }
    }

    @Override // androidx.fragment.app.t0
    public void w(androidx.fragment.app.p pVar, Object obj, z.e eVar, Runnable runnable) {
        l lVar = (l) obj;
        eVar.b(new d(lVar));
        lVar.a(new C0238e(runnable));
    }

    @Override // androidx.fragment.app.t0
    public void z(Object obj, View view, ArrayList arrayList) {
        p pVar = (p) obj;
        List F = pVar.F();
        F.clear();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            t0.f(F, (View) arrayList.get(i10));
        }
        F.add(view);
        arrayList.add(view);
        b(pVar, arrayList);
    }
}
