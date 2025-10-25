package androidx.fragment.app;

import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class t0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f2852a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList f2853b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ ArrayList f2854c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ ArrayList f2855d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ ArrayList f2856e;

        a(int i10, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, ArrayList arrayList4) {
            this.f2852a = i10;
            this.f2853b = arrayList;
            this.f2854c = arrayList2;
            this.f2855d = arrayList3;
            this.f2856e = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i10 = 0; i10 < this.f2852a; i10++) {
                d0.p0.k0((View) this.f2853b.get(i10), (String) this.f2854c.get(i10));
                d0.p0.k0((View) this.f2855d.get(i10), (String) this.f2856e.get(i10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void f(List list, View view) {
        int size = list.size();
        if (i(list, view, size)) {
            return;
        }
        if (d0.p0.z(view) != null) {
            list.add(view);
        }
        for (int i10 = size; i10 < list.size(); i10++) {
            View view2 = (View) list.get(i10);
            if (view2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i11 = 0; i11 < childCount; i11++) {
                    View childAt = viewGroup.getChildAt(i11);
                    if (!i(list, childAt, size) && d0.p0.z(childAt) != null) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    private static boolean i(List list, View view, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            if (list.get(i11) == view) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static boolean l(List list) {
        if (list != null && !list.isEmpty()) {
            return false;
        }
        return true;
    }

    public abstract void A(Object obj, ArrayList arrayList, ArrayList arrayList2);

    public abstract Object B(Object obj);

    public abstract void a(Object obj, View view);

    public abstract void b(Object obj, ArrayList arrayList);

    public void c(Object obj) {
    }

    public void d(Object obj, Runnable runnable) {
    }

    public abstract void e(ViewGroup viewGroup, Object obj);

    public abstract boolean g(Object obj);

    public abstract Object h(Object obj);

    public Object j(ViewGroup viewGroup, Object obj) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k(View view, Rect rect) {
        if (!view.isAttachedToWindow()) {
            return;
        }
        RectF rectF = new RectF();
        rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
        view.getMatrix().mapRect(rectF);
        rectF.offset(view.getLeft(), view.getTop());
        ViewParent parent = view.getParent();
        while (parent instanceof View) {
            View view2 = (View) parent;
            rectF.offset(-view2.getScrollX(), -view2.getScrollY());
            view2.getMatrix().mapRect(rectF);
            rectF.offset(view2.getLeft(), view2.getTop());
            parent = view2.getParent();
        }
        int[] iArr = new int[2];
        view.getRootView().getLocationOnScreen(iArr);
        rectF.offset(iArr[0], iArr[1]);
        rect.set(Math.round(rectF.left), Math.round(rectF.top), Math.round(rectF.right), Math.round(rectF.bottom));
    }

    public boolean m() {
        if (i0.J0(4)) {
            Log.i("FragmentManager", "Older versions of AndroidX Transition do not support seeking. Add dependency on AndroidX Transition 1.5.0 or higher to enable seeking.");
            return false;
        }
        return false;
    }

    public boolean n(Object obj) {
        return false;
    }

    public abstract Object o(Object obj, Object obj2, Object obj3);

    public abstract Object p(Object obj, Object obj2, Object obj3);

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList q(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view = (View) arrayList.get(i10);
            arrayList2.add(d0.p0.z(view));
            d0.p0.k0(view, null);
        }
        return arrayList2;
    }

    public abstract void r(Object obj, View view, ArrayList arrayList);

    public abstract void s(Object obj, Object obj2, ArrayList arrayList, Object obj3, ArrayList arrayList2, Object obj4, ArrayList arrayList3);

    public void t(Object obj, float f10) {
    }

    public abstract void u(Object obj, Rect rect);

    public abstract void v(Object obj, View view);

    public abstract void w(p pVar, Object obj, z.e eVar, Runnable runnable);

    public void x(p pVar, Object obj, z.e eVar, Runnable runnable, Runnable runnable2) {
        runnable2.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void y(View view, ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, Map map) {
        int size = arrayList2.size();
        ArrayList arrayList4 = new ArrayList();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = (View) arrayList.get(i10);
            String z10 = d0.p0.z(view2);
            arrayList4.add(z10);
            if (z10 != null) {
                d0.p0.k0(view2, null);
                String str = (String) map.get(z10);
                int i11 = 0;
                while (true) {
                    if (i11 >= size) {
                        break;
                    } else if (str.equals(arrayList3.get(i11))) {
                        d0.p0.k0((View) arrayList2.get(i11), z10);
                        break;
                    } else {
                        i11++;
                    }
                }
            }
        }
        d0.k0.a(view, new a(size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    public abstract void z(Object obj, View view, ArrayList arrayList);
}
