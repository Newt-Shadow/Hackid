package l1;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes.dex */
public abstract class n {

    /* renamed from: a  reason: collision with root package name */
    private static l f25131a = new b();

    /* renamed from: b  reason: collision with root package name */
    private static ThreadLocal f25132b = new ThreadLocal();

    /* renamed from: c  reason: collision with root package name */
    static ArrayList f25133c = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class a implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

        /* renamed from: a  reason: collision with root package name */
        l f25134a;

        /* renamed from: b  reason: collision with root package name */
        ViewGroup f25135b;

        /* renamed from: l1.n$a$a  reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class C0239a extends m {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ r.a f25136a;

            C0239a(r.a aVar) {
                this.f25136a = aVar;
            }

            @Override // l1.l.f
            public void e(l lVar) {
                ((ArrayList) this.f25136a.get(a.this.f25135b)).remove(lVar);
                lVar.S(this);
            }
        }

        a(l lVar, ViewGroup viewGroup) {
            this.f25134a = lVar;
            this.f25135b = viewGroup;
        }

        private void a() {
            this.f25135b.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f25135b.removeOnAttachStateChangeListener(this);
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            a();
            if (!n.f25133c.remove(this.f25135b)) {
                return true;
            }
            r.a b10 = n.b();
            ArrayList arrayList = (ArrayList) b10.get(this.f25135b);
            ArrayList arrayList2 = null;
            if (arrayList == null) {
                arrayList = new ArrayList();
                b10.put(this.f25135b, arrayList);
            } else if (arrayList.size() > 0) {
                arrayList2 = new ArrayList(arrayList);
            }
            arrayList.add(this.f25134a);
            this.f25134a.a(new C0239a(b10));
            this.f25134a.m(this.f25135b, false);
            if (arrayList2 != null) {
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    ((l) it.next()).U(this.f25135b);
                }
            }
            this.f25134a.R(this.f25135b);
            return true;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a();
            n.f25133c.remove(this.f25135b);
            ArrayList arrayList = (ArrayList) n.b().get(this.f25135b);
            if (arrayList != null && arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((l) it.next()).U(this.f25135b);
                }
            }
            this.f25134a.n(true);
        }
    }

    public static void a(ViewGroup viewGroup, l lVar) {
        if (!f25133c.contains(viewGroup) && d0.p0.F(viewGroup)) {
            f25133c.add(viewGroup);
            if (lVar == null) {
                lVar = f25131a;
            }
            l clone = lVar.clone();
            d(viewGroup, clone);
            k.b(viewGroup, null);
            c(viewGroup, clone);
        }
    }

    static r.a b() {
        r.a aVar;
        WeakReference weakReference = (WeakReference) f25132b.get();
        if (weakReference != null && (aVar = (r.a) weakReference.get()) != null) {
            return aVar;
        }
        r.a aVar2 = new r.a();
        f25132b.set(new WeakReference(aVar2));
        return aVar2;
    }

    private static void c(ViewGroup viewGroup, l lVar) {
        if (lVar != null && viewGroup != null) {
            a aVar = new a(lVar, viewGroup);
            viewGroup.addOnAttachStateChangeListener(aVar);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
        }
    }

    private static void d(ViewGroup viewGroup, l lVar) {
        ArrayList arrayList = (ArrayList) b().get(viewGroup);
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((l) it.next()).Q(viewGroup);
            }
        }
        if (lVar != null) {
            lVar.m(viewGroup, true);
        }
        k.a(viewGroup);
    }
}
