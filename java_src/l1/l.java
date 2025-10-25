package l1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.graphics.Path;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class l implements Cloneable {
    private static final int[] F = {2, 1, 3, 4};
    private static final g G = new a();
    private static ThreadLocal H = new ThreadLocal();
    private e C;
    private r.a D;

    /* renamed from: t  reason: collision with root package name */
    private ArrayList f25114t;

    /* renamed from: u  reason: collision with root package name */
    private ArrayList f25115u;

    /* renamed from: a  reason: collision with root package name */
    private String f25095a = getClass().getName();

    /* renamed from: b  reason: collision with root package name */
    private long f25096b = -1;

    /* renamed from: c  reason: collision with root package name */
    long f25097c = -1;

    /* renamed from: d  reason: collision with root package name */
    private TimeInterpolator f25098d = null;

    /* renamed from: e  reason: collision with root package name */
    ArrayList f25099e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    ArrayList f25100f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private ArrayList f25101g = null;

    /* renamed from: h  reason: collision with root package name */
    private ArrayList f25102h = null;

    /* renamed from: i  reason: collision with root package name */
    private ArrayList f25103i = null;

    /* renamed from: j  reason: collision with root package name */
    private ArrayList f25104j = null;

    /* renamed from: k  reason: collision with root package name */
    private ArrayList f25105k = null;

    /* renamed from: l  reason: collision with root package name */
    private ArrayList f25106l = null;

    /* renamed from: m  reason: collision with root package name */
    private ArrayList f25107m = null;

    /* renamed from: n  reason: collision with root package name */
    private ArrayList f25108n = null;

    /* renamed from: o  reason: collision with root package name */
    private ArrayList f25109o = null;

    /* renamed from: p  reason: collision with root package name */
    private t f25110p = new t();

    /* renamed from: q  reason: collision with root package name */
    private t f25111q = new t();

    /* renamed from: r  reason: collision with root package name */
    p f25112r = null;

    /* renamed from: s  reason: collision with root package name */
    private int[] f25113s = F;

    /* renamed from: v  reason: collision with root package name */
    boolean f25116v = false;

    /* renamed from: w  reason: collision with root package name */
    ArrayList f25117w = new ArrayList();

    /* renamed from: x  reason: collision with root package name */
    private int f25118x = 0;

    /* renamed from: y  reason: collision with root package name */
    private boolean f25119y = false;

    /* renamed from: z  reason: collision with root package name */
    private boolean f25120z = false;
    private ArrayList A = null;
    private ArrayList B = new ArrayList();
    private g E = G;

    /* loaded from: classes.dex */
    class a extends g {
        a() {
        }

        @Override // l1.g
        public Path a(float f10, float f11, float f12, float f13) {
            Path path = new Path();
            path.moveTo(f10, f11);
            path.lineTo(f12, f13);
            return path;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class b extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ r.a f25121a;

        b(r.a aVar) {
            this.f25121a = aVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f25121a.remove(animator);
            l.this.f25117w.remove(animator);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            l.this.f25117w.add(animator);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            l.this.r();
            animator.removeListener(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        View f25124a;

        /* renamed from: b  reason: collision with root package name */
        String f25125b;

        /* renamed from: c  reason: collision with root package name */
        s f25126c;

        /* renamed from: d  reason: collision with root package name */
        p0 f25127d;

        /* renamed from: e  reason: collision with root package name */
        l f25128e;

        d(View view, String str, l lVar, p0 p0Var, s sVar) {
            this.f25124a = view;
            this.f25125b = str;
            this.f25126c = sVar;
            this.f25127d = p0Var;
            this.f25128e = lVar;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class e {
    }

    /* loaded from: classes.dex */
    public interface f {
        void a(l lVar);

        void b(l lVar);

        void c(l lVar);

        void d(l lVar);

        void e(l lVar);
    }

    private static r.a A() {
        r.a aVar = (r.a) H.get();
        if (aVar == null) {
            r.a aVar2 = new r.a();
            H.set(aVar2);
            return aVar2;
        }
        return aVar;
    }

    private static boolean K(s sVar, s sVar2, String str) {
        Object obj = sVar.f25161a.get(str);
        Object obj2 = sVar2.f25161a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return !obj.equals(obj2);
    }

    private void L(r.a aVar, r.a aVar2, SparseArray sparseArray, SparseArray sparseArray2) {
        View view;
        int size = sparseArray.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = (View) sparseArray.valueAt(i10);
            if (view2 != null && J(view2) && (view = (View) sparseArray2.get(sparseArray.keyAt(i10))) != null && J(view)) {
                s sVar = (s) aVar.get(view2);
                s sVar2 = (s) aVar2.get(view);
                if (sVar != null && sVar2 != null) {
                    this.f25114t.add(sVar);
                    this.f25115u.add(sVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void M(r.a aVar, r.a aVar2) {
        s sVar;
        for (int size = aVar.size() - 1; size >= 0; size--) {
            View view = (View) aVar.g(size);
            if (view != null && J(view) && (sVar = (s) aVar2.remove(view)) != null && J(sVar.f25162b)) {
                this.f25114t.add((s) aVar.i(size));
                this.f25115u.add(sVar);
            }
        }
    }

    private void N(r.a aVar, r.a aVar2, r.f fVar, r.f fVar2) {
        View view;
        int j10 = fVar.j();
        for (int i10 = 0; i10 < j10; i10++) {
            View view2 = (View) fVar.k(i10);
            if (view2 != null && J(view2) && (view = (View) fVar2.c(fVar.e(i10))) != null && J(view)) {
                s sVar = (s) aVar.get(view2);
                s sVar2 = (s) aVar2.get(view);
                if (sVar != null && sVar2 != null) {
                    this.f25114t.add(sVar);
                    this.f25115u.add(sVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void O(r.a aVar, r.a aVar2, r.a aVar3, r.a aVar4) {
        View view;
        int size = aVar3.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = (View) aVar3.k(i10);
            if (view2 != null && J(view2) && (view = (View) aVar4.get(aVar3.g(i10))) != null && J(view)) {
                s sVar = (s) aVar.get(view2);
                s sVar2 = (s) aVar2.get(view);
                if (sVar != null && sVar2 != null) {
                    this.f25114t.add(sVar);
                    this.f25115u.add(sVar2);
                    aVar.remove(view2);
                    aVar2.remove(view);
                }
            }
        }
    }

    private void P(t tVar, t tVar2) {
        r.a aVar = new r.a(tVar.f25164a);
        r.a aVar2 = new r.a(tVar2.f25164a);
        int i10 = 0;
        while (true) {
            int[] iArr = this.f25113s;
            if (i10 < iArr.length) {
                int i11 = iArr[i10];
                if (i11 != 1) {
                    if (i11 != 2) {
                        if (i11 != 3) {
                            if (i11 == 4) {
                                N(aVar, aVar2, tVar.f25166c, tVar2.f25166c);
                            }
                        } else {
                            L(aVar, aVar2, tVar.f25165b, tVar2.f25165b);
                        }
                    } else {
                        O(aVar, aVar2, tVar.f25167d, tVar2.f25167d);
                    }
                } else {
                    M(aVar, aVar2);
                }
                i10++;
            } else {
                c(aVar, aVar2);
                return;
            }
        }
    }

    private void V(Animator animator, r.a aVar) {
        if (animator != null) {
            animator.addListener(new b(aVar));
            e(animator);
        }
    }

    private void c(r.a aVar, r.a aVar2) {
        for (int i10 = 0; i10 < aVar.size(); i10++) {
            s sVar = (s) aVar.k(i10);
            if (J(sVar.f25162b)) {
                this.f25114t.add(sVar);
                this.f25115u.add(null);
            }
        }
        for (int i11 = 0; i11 < aVar2.size(); i11++) {
            s sVar2 = (s) aVar2.k(i11);
            if (J(sVar2.f25162b)) {
                this.f25115u.add(sVar2);
                this.f25114t.add(null);
            }
        }
    }

    private static void d(t tVar, View view, s sVar) {
        tVar.f25164a.put(view, sVar);
        int id2 = view.getId();
        if (id2 >= 0) {
            if (tVar.f25165b.indexOfKey(id2) >= 0) {
                tVar.f25165b.put(id2, null);
            } else {
                tVar.f25165b.put(id2, view);
            }
        }
        String z10 = d0.p0.z(view);
        if (z10 != null) {
            if (tVar.f25167d.containsKey(z10)) {
                tVar.f25167d.put(z10, null);
            } else {
                tVar.f25167d.put(z10, view);
            }
        }
        if (view.getParent() instanceof ListView) {
            ListView listView = (ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                if (tVar.f25166c.d(itemIdAtPosition) >= 0) {
                    View view2 = (View) tVar.f25166c.c(itemIdAtPosition);
                    if (view2 != null) {
                        d0.p0.c0(view2, false);
                        tVar.f25166c.f(itemIdAtPosition, null);
                        return;
                    }
                    return;
                }
                d0.p0.c0(view, true);
                tVar.f25166c.f(itemIdAtPosition, view);
            }
        }
    }

    private void j(View view, boolean z10) {
        if (view == null) {
            return;
        }
        int id2 = view.getId();
        ArrayList arrayList = this.f25103i;
        if (arrayList != null && arrayList.contains(Integer.valueOf(id2))) {
            return;
        }
        ArrayList arrayList2 = this.f25104j;
        if (arrayList2 != null && arrayList2.contains(view)) {
            return;
        }
        ArrayList arrayList3 = this.f25105k;
        if (arrayList3 != null) {
            int size = arrayList3.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (((Class) this.f25105k.get(i10)).isInstance(view)) {
                    return;
                }
            }
        }
        if (view.getParent() instanceof ViewGroup) {
            s sVar = new s(view);
            if (z10) {
                l(sVar);
            } else {
                i(sVar);
            }
            sVar.f25163c.add(this);
            k(sVar);
            if (z10) {
                d(this.f25110p, view, sVar);
            } else {
                d(this.f25111q, view, sVar);
            }
        }
        if (view instanceof ViewGroup) {
            ArrayList arrayList4 = this.f25107m;
            if (arrayList4 != null && arrayList4.contains(Integer.valueOf(id2))) {
                return;
            }
            ArrayList arrayList5 = this.f25108n;
            if (arrayList5 != null && arrayList5.contains(view)) {
                return;
            }
            ArrayList arrayList6 = this.f25109o;
            if (arrayList6 != null) {
                int size2 = arrayList6.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    if (((Class) this.f25109o.get(i11)).isInstance(view)) {
                        return;
                    }
                }
            }
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i12 = 0; i12 < viewGroup.getChildCount(); i12++) {
                j(viewGroup.getChildAt(i12), z10);
            }
        }
    }

    public long B() {
        return this.f25096b;
    }

    public List C() {
        return this.f25099e;
    }

    public List D() {
        return this.f25101g;
    }

    public List E() {
        return this.f25102h;
    }

    public List F() {
        return this.f25100f;
    }

    public String[] G() {
        return null;
    }

    public s H(View view, boolean z10) {
        t tVar;
        p pVar = this.f25112r;
        if (pVar != null) {
            return pVar.H(view, z10);
        }
        if (z10) {
            tVar = this.f25110p;
        } else {
            tVar = this.f25111q;
        }
        return (s) tVar.f25164a.get(view);
    }

    public boolean I(s sVar, s sVar2) {
        if (sVar == null || sVar2 == null) {
            return false;
        }
        String[] G2 = G();
        if (G2 != null) {
            for (String str : G2) {
                if (!K(sVar, sVar2, str)) {
                }
            }
            return false;
        }
        for (String str2 : sVar.f25161a.keySet()) {
            if (K(sVar, sVar2, str2)) {
            }
        }
        return false;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean J(View view) {
        ArrayList arrayList;
        ArrayList arrayList2;
        int id2 = view.getId();
        ArrayList arrayList3 = this.f25103i;
        if (arrayList3 != null && arrayList3.contains(Integer.valueOf(id2))) {
            return false;
        }
        ArrayList arrayList4 = this.f25104j;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        ArrayList arrayList5 = this.f25105k;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i10 = 0; i10 < size; i10++) {
                if (((Class) this.f25105k.get(i10)).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.f25106l != null && d0.p0.z(view) != null && this.f25106l.contains(d0.p0.z(view))) {
            return false;
        }
        if ((this.f25099e.size() == 0 && this.f25100f.size() == 0 && (((arrayList = this.f25102h) == null || arrayList.isEmpty()) && ((arrayList2 = this.f25101g) == null || arrayList2.isEmpty()))) || this.f25099e.contains(Integer.valueOf(id2)) || this.f25100f.contains(view)) {
            return true;
        }
        ArrayList arrayList6 = this.f25101g;
        if (arrayList6 != null && arrayList6.contains(d0.p0.z(view))) {
            return true;
        }
        if (this.f25102h != null) {
            for (int i11 = 0; i11 < this.f25102h.size(); i11++) {
                if (((Class) this.f25102h.get(i11)).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void Q(View view) {
        if (!this.f25120z) {
            for (int size = this.f25117w.size() - 1; size >= 0; size--) {
                l1.a.b((Animator) this.f25117w.get(size));
            }
            ArrayList arrayList = this.A;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.A.clone();
                int size2 = arrayList2.size();
                for (int i10 = 0; i10 < size2; i10++) {
                    ((f) arrayList2.get(i10)).d(this);
                }
            }
            this.f25119y = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void R(ViewGroup viewGroup) {
        d dVar;
        boolean z10;
        this.f25114t = new ArrayList();
        this.f25115u = new ArrayList();
        P(this.f25110p, this.f25111q);
        r.a A = A();
        int size = A.size();
        p0 d10 = a0.d(viewGroup);
        for (int i10 = size - 1; i10 >= 0; i10--) {
            Animator animator = (Animator) A.g(i10);
            if (animator != null && (dVar = (d) A.get(animator)) != null && dVar.f25124a != null && d10.equals(dVar.f25127d)) {
                s sVar = dVar.f25126c;
                View view = dVar.f25124a;
                s H2 = H(view, true);
                s w10 = w(view, true);
                if (H2 == null && w10 == null) {
                    w10 = (s) this.f25111q.f25164a.get(view);
                }
                if ((H2 != null || w10 != null) && dVar.f25128e.I(sVar, w10)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    if (!animator.isRunning() && !animator.isStarted()) {
                        A.remove(animator);
                    } else {
                        animator.cancel();
                    }
                }
            }
        }
        q(viewGroup, this.f25110p, this.f25111q, this.f25114t, this.f25115u);
        W();
    }

    public l S(f fVar) {
        ArrayList arrayList = this.A;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(fVar);
        if (this.A.size() == 0) {
            this.A = null;
        }
        return this;
    }

    public l T(View view) {
        this.f25100f.remove(view);
        return this;
    }

    public void U(View view) {
        if (this.f25119y) {
            if (!this.f25120z) {
                for (int size = this.f25117w.size() - 1; size >= 0; size--) {
                    l1.a.c((Animator) this.f25117w.get(size));
                }
                ArrayList arrayList = this.A;
                if (arrayList != null && arrayList.size() > 0) {
                    ArrayList arrayList2 = (ArrayList) this.A.clone();
                    int size2 = arrayList2.size();
                    for (int i10 = 0; i10 < size2; i10++) {
                        ((f) arrayList2.get(i10)).b(this);
                    }
                }
            }
            this.f25119y = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void W() {
        d0();
        r.a A = A();
        Iterator it = this.B.iterator();
        while (it.hasNext()) {
            Animator animator = (Animator) it.next();
            if (A.containsKey(animator)) {
                d0();
                V(animator, A);
            }
        }
        this.B.clear();
        r();
    }

    public l X(long j10) {
        this.f25097c = j10;
        return this;
    }

    public void Y(e eVar) {
        this.C = eVar;
    }

    public l Z(TimeInterpolator timeInterpolator) {
        this.f25098d = timeInterpolator;
        return this;
    }

    public l a(f fVar) {
        if (this.A == null) {
            this.A = new ArrayList();
        }
        this.A.add(fVar);
        return this;
    }

    public void a0(g gVar) {
        if (gVar == null) {
            this.E = G;
        } else {
            this.E = gVar;
        }
    }

    public l b(View view) {
        this.f25100f.add(view);
        return this;
    }

    public void b0(o oVar) {
    }

    public l c0(long j10) {
        this.f25096b = j10;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d0() {
        if (this.f25118x == 0) {
            ArrayList arrayList = this.A;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.A.clone();
                int size = arrayList2.size();
                for (int i10 = 0; i10 < size; i10++) {
                    ((f) arrayList2.get(i10)).a(this);
                }
            }
            this.f25120z = false;
        }
        this.f25118x++;
    }

    protected void e(Animator animator) {
        if (animator == null) {
            r();
            return;
        }
        if (t() >= 0) {
            animator.setDuration(t());
        }
        if (B() >= 0) {
            animator.setStartDelay(B() + animator.getStartDelay());
        }
        if (v() != null) {
            animator.setInterpolator(v());
        }
        animator.addListener(new c());
        animator.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String e0(String str) {
        String str2 = str + getClass().getSimpleName() + "@" + Integer.toHexString(hashCode()) + ": ";
        if (this.f25097c != -1) {
            str2 = str2 + "dur(" + this.f25097c + ") ";
        }
        if (this.f25096b != -1) {
            str2 = str2 + "dly(" + this.f25096b + ") ";
        }
        if (this.f25098d != null) {
            str2 = str2 + "interp(" + this.f25098d + ") ";
        }
        if (this.f25099e.size() > 0 || this.f25100f.size() > 0) {
            String str3 = str2 + "tgts(";
            if (this.f25099e.size() > 0) {
                for (int i10 = 0; i10 < this.f25099e.size(); i10++) {
                    if (i10 > 0) {
                        str3 = str3 + ", ";
                    }
                    str3 = str3 + this.f25099e.get(i10);
                }
            }
            if (this.f25100f.size() > 0) {
                for (int i11 = 0; i11 < this.f25100f.size(); i11++) {
                    if (i11 > 0) {
                        str3 = str3 + ", ";
                    }
                    str3 = str3 + this.f25100f.get(i11);
                }
            }
            return str3 + ")";
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void f() {
        for (int size = this.f25117w.size() - 1; size >= 0; size--) {
            ((Animator) this.f25117w.get(size)).cancel();
        }
        ArrayList arrayList = this.A;
        if (arrayList != null && arrayList.size() > 0) {
            ArrayList arrayList2 = (ArrayList) this.A.clone();
            int size2 = arrayList2.size();
            for (int i10 = 0; i10 < size2; i10++) {
                ((f) arrayList2.get(i10)).c(this);
            }
        }
    }

    public abstract void i(s sVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k(s sVar) {
    }

    public abstract void l(s sVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public void m(ViewGroup viewGroup, boolean z10) {
        ArrayList arrayList;
        ArrayList arrayList2;
        r.a aVar;
        n(z10);
        if ((this.f25099e.size() <= 0 && this.f25100f.size() <= 0) || (((arrayList = this.f25101g) != null && !arrayList.isEmpty()) || ((arrayList2 = this.f25102h) != null && !arrayList2.isEmpty()))) {
            j(viewGroup, z10);
        } else {
            for (int i10 = 0; i10 < this.f25099e.size(); i10++) {
                View findViewById = viewGroup.findViewById(((Integer) this.f25099e.get(i10)).intValue());
                if (findViewById != null) {
                    s sVar = new s(findViewById);
                    if (z10) {
                        l(sVar);
                    } else {
                        i(sVar);
                    }
                    sVar.f25163c.add(this);
                    k(sVar);
                    if (z10) {
                        d(this.f25110p, findViewById, sVar);
                    } else {
                        d(this.f25111q, findViewById, sVar);
                    }
                }
            }
            for (int i11 = 0; i11 < this.f25100f.size(); i11++) {
                View view = (View) this.f25100f.get(i11);
                s sVar2 = new s(view);
                if (z10) {
                    l(sVar2);
                } else {
                    i(sVar2);
                }
                sVar2.f25163c.add(this);
                k(sVar2);
                if (z10) {
                    d(this.f25110p, view, sVar2);
                } else {
                    d(this.f25111q, view, sVar2);
                }
            }
        }
        if (!z10 && (aVar = this.D) != null) {
            int size = aVar.size();
            ArrayList arrayList3 = new ArrayList(size);
            for (int i12 = 0; i12 < size; i12++) {
                arrayList3.add(this.f25110p.f25167d.remove((String) this.D.g(i12)));
            }
            for (int i13 = 0; i13 < size; i13++) {
                View view2 = (View) arrayList3.get(i13);
                if (view2 != null) {
                    this.f25110p.f25167d.put((String) this.D.k(i13), view2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n(boolean z10) {
        if (z10) {
            this.f25110p.f25164a.clear();
            this.f25110p.f25165b.clear();
            this.f25110p.f25166c.a();
            return;
        }
        this.f25111q.f25164a.clear();
        this.f25111q.f25165b.clear();
        this.f25111q.f25166c.a();
    }

    @Override // 
    /* renamed from: o */
    public l clone() {
        try {
            l lVar = (l) super.clone();
            lVar.B = new ArrayList();
            lVar.f25110p = new t();
            lVar.f25111q = new t();
            lVar.f25114t = null;
            lVar.f25115u = null;
            return lVar;
        } catch (CloneNotSupportedException unused) {
            return null;
        }
    }

    public Animator p(ViewGroup viewGroup, s sVar, s sVar2) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void q(ViewGroup viewGroup, t tVar, t tVar2, ArrayList arrayList, ArrayList arrayList2) {
        boolean z10;
        View view;
        Animator animator;
        s sVar;
        int i10;
        Animator animator2;
        s sVar2;
        r.a A = A();
        SparseIntArray sparseIntArray = new SparseIntArray();
        int size = arrayList.size();
        int i11 = 0;
        while (i11 < size) {
            s sVar3 = (s) arrayList.get(i11);
            s sVar4 = (s) arrayList2.get(i11);
            if (sVar3 != null && !sVar3.f25163c.contains(this)) {
                sVar3 = null;
            }
            if (sVar4 != null && !sVar4.f25163c.contains(this)) {
                sVar4 = null;
            }
            if (sVar3 != null || sVar4 != null) {
                if (sVar3 != null && sVar4 != null && !I(sVar3, sVar4)) {
                    z10 = false;
                } else {
                    z10 = true;
                }
                if (z10) {
                    Animator p10 = p(viewGroup, sVar3, sVar4);
                    if (p10 != null) {
                        if (sVar4 != null) {
                            View view2 = sVar4.f25162b;
                            String[] G2 = G();
                            if (G2 != null && G2.length > 0) {
                                sVar2 = new s(view2);
                                s sVar5 = (s) tVar2.f25164a.get(view2);
                                if (sVar5 != null) {
                                    int i12 = 0;
                                    while (i12 < G2.length) {
                                        Map map = sVar2.f25161a;
                                        Animator animator3 = p10;
                                        String str = G2[i12];
                                        map.put(str, sVar5.f25161a.get(str));
                                        i12++;
                                        p10 = animator3;
                                        G2 = G2;
                                    }
                                }
                                Animator animator4 = p10;
                                int size2 = A.size();
                                int i13 = 0;
                                while (true) {
                                    if (i13 < size2) {
                                        d dVar = (d) A.get((Animator) A.g(i13));
                                        if (dVar.f25126c != null && dVar.f25124a == view2 && dVar.f25125b.equals(x()) && dVar.f25126c.equals(sVar2)) {
                                            animator2 = null;
                                            break;
                                        }
                                        i13++;
                                    } else {
                                        animator2 = animator4;
                                        break;
                                    }
                                }
                            } else {
                                animator2 = p10;
                                sVar2 = null;
                            }
                            view = view2;
                            animator = animator2;
                            sVar = sVar2;
                        } else {
                            view = sVar3.f25162b;
                            animator = p10;
                            sVar = null;
                        }
                        if (animator != null) {
                            i10 = size;
                            A.put(animator, new d(view, x(), this, a0.d(viewGroup), sVar));
                            this.B.add(animator);
                            i11++;
                            size = i10;
                        }
                        i10 = size;
                        i11++;
                        size = i10;
                    }
                    i10 = size;
                    i11++;
                    size = i10;
                }
            }
            i10 = size;
            i11++;
            size = i10;
        }
        if (sparseIntArray.size() != 0) {
            for (int i14 = 0; i14 < sparseIntArray.size(); i14++) {
                Animator animator5 = (Animator) this.B.get(sparseIntArray.keyAt(i14));
                animator5.setStartDelay((sparseIntArray.valueAt(i14) - Long.MAX_VALUE) + animator5.getStartDelay());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void r() {
        int i10 = this.f25118x - 1;
        this.f25118x = i10;
        if (i10 == 0) {
            ArrayList arrayList = this.A;
            if (arrayList != null && arrayList.size() > 0) {
                ArrayList arrayList2 = (ArrayList) this.A.clone();
                int size = arrayList2.size();
                for (int i11 = 0; i11 < size; i11++) {
                    ((f) arrayList2.get(i11)).e(this);
                }
            }
            for (int i12 = 0; i12 < this.f25110p.f25166c.j(); i12++) {
                View view = (View) this.f25110p.f25166c.k(i12);
                if (view != null) {
                    d0.p0.c0(view, false);
                }
            }
            for (int i13 = 0; i13 < this.f25111q.f25166c.j(); i13++) {
                View view2 = (View) this.f25111q.f25166c.k(i13);
                if (view2 != null) {
                    d0.p0.c0(view2, false);
                }
            }
            this.f25120z = true;
        }
    }

    public long t() {
        return this.f25097c;
    }

    public String toString() {
        return e0("");
    }

    public e u() {
        return this.C;
    }

    public TimeInterpolator v() {
        return this.f25098d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public s w(View view, boolean z10) {
        ArrayList arrayList;
        ArrayList arrayList2;
        p pVar = this.f25112r;
        if (pVar != null) {
            return pVar.w(view, z10);
        }
        if (z10) {
            arrayList = this.f25114t;
        } else {
            arrayList = this.f25115u;
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        int i10 = 0;
        while (true) {
            if (i10 < size) {
                s sVar = (s) arrayList.get(i10);
                if (sVar == null) {
                    return null;
                }
                if (sVar.f25162b == view) {
                    break;
                }
                i10++;
            } else {
                i10 = -1;
                break;
            }
        }
        if (i10 < 0) {
            return null;
        }
        if (z10) {
            arrayList2 = this.f25115u;
        } else {
            arrayList2 = this.f25114t;
        }
        return (s) arrayList2.get(i10);
    }

    public String x() {
        return this.f25095a;
    }

    public g y() {
        return this.E;
    }

    public o z() {
        return null;
    }
}
