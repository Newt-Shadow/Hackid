package com.yandex.metrica.impl.ob;

import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.GridView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TableLayout;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeSet;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class Rk {

    /* renamed from: l  reason: collision with root package name */
    private static final List<Class> f11223l;

    /* renamed from: m  reason: collision with root package name */
    private static final List<Class> f11224m;

    /* renamed from: a  reason: collision with root package name */
    private final TreeSet<Float> f11225a = new TreeSet<>();

    /* renamed from: b  reason: collision with root package name */
    private final List<C0441bl> f11226b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    private final Ak f11227c;

    /* renamed from: d  reason: collision with root package name */
    private final List<InterfaceC0466cl> f11228d;

    /* renamed from: e  reason: collision with root package name */
    private final List<InterfaceC0813qk> f11229e;

    /* renamed from: f  reason: collision with root package name */
    private final Fl f11230f;

    /* renamed from: g  reason: collision with root package name */
    private final C0860sk f11231g;

    /* renamed from: h  reason: collision with root package name */
    private final C0957wl f11232h;

    /* renamed from: i  reason: collision with root package name */
    private final C1005yl f11233i;

    /* renamed from: j  reason: collision with root package name */
    private final C0861sl f11234j;

    /* renamed from: k  reason: collision with root package name */
    private final Hl f11235k;

    static {
        ArrayList arrayList = new ArrayList();
        f11223l = arrayList;
        ArrayList arrayList2 = new ArrayList();
        f11224m = arrayList2;
        arrayList.add(ListView.class);
        arrayList.add(GridView.class);
        a(arrayList, "androidx.recyclerview.widget.RecyclerView");
        a(arrayList, "androidx.viewpager.widget.ViewPager");
        a(arrayList, "androidx.viewpager2.widget.ViewPager2");
        a(arrayList2, "androidx.coordinatorlayout.widget.CoordinatorLayout");
        a(arrayList2, "androidx.drawerlayout.widget.DrawerLayout");
        a(arrayList2, "androidx.slidingpanelayout.widget.SlidingPaneLayout");
        a(arrayList2, "androidx.swiperefreshlayout.widget.SwipeRefreshLayout");
        a(arrayList2, "androidx.core.widget.NestedScrollView");
        a(arrayList2, "androidx.constraintlayout.widget.ConstraintLayout");
        a(arrayList2, "androidx.appcompat.widget.ContentFrameLayout");
        arrayList2.add(AbsoluteLayout.class);
        arrayList2.add(FrameLayout.class);
        arrayList2.add(LinearLayout.class);
        arrayList2.add(RelativeLayout.class);
        arrayList2.add(TableLayout.class);
        arrayList2.add(ScrollView.class);
        arrayList2.add(GridLayout.class);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Rk(C0957wl c0957wl, Fl fl, C0860sk c0860sk, Ak ak, List<InterfaceC0466cl> list, List<InterfaceC0813qk> list2, C1005yl c1005yl, C0861sl c0861sl, Hl hl) {
        this.f11232h = c0957wl;
        this.f11230f = fl;
        this.f11231g = c0860sk;
        this.f11227c = ak;
        this.f11228d = list;
        this.f11229e = list2;
        this.f11233i = c1005yl;
        this.f11234j = c0861sl;
        this.f11235k = hl;
    }

    /* JADX WARN: Code restructure failed: missing block: B:56:0x00bb, code lost:
        r1 = r1.a();
     */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.yandex.metrica.impl.ob.Pk a(com.yandex.metrica.impl.ob.C0837rl r22, android.view.View r23, int r24) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Rk.a(com.yandex.metrica.impl.ob.rl, android.view.View, int):com.yandex.metrica.impl.ob.Pk");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Pk b(C0837rl c0837rl, View view, int i10) {
        try {
            if (this.f11234j.a(view)) {
                return null;
            }
            return a(c0837rl, view, i10);
        } catch (Throwable th) {
            this.f11233i.a("ui_parsing_view", th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final List<C0441bl> b() {
        return this.f11226b;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00e3 A[LOOP:0: B:49:0x00dd->B:51:0x00e3, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.yandex.metrica.impl.ob.C0837rl a(android.widget.TextView r20, java.lang.String r21, java.lang.String r22, int r23, boolean r24, com.yandex.metrica.impl.ob.C0837rl.a r25) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.Rk.a(android.widget.TextView, java.lang.String, java.lang.String, int, boolean, com.yandex.metrica.impl.ob.rl$a):com.yandex.metrica.impl.ob.rl");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TreeSet<Float> a() {
        return this.f11225a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<View> a(View view, int i10) {
        ArrayList arrayList = new ArrayList();
        try {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                int min = Math.min(this.f11231g.a(i10), viewGroup.getChildCount());
                for (int i11 = 0; i11 < min; i11++) {
                    arrayList.add(viewGroup.getChildAt(i11));
                }
            }
        } catch (Throwable th) {
            this.f11233i.a("ui_parsing_children", th);
        }
        return arrayList;
    }

    private boolean a(List<Class> list, View view) {
        for (Class cls : list) {
            if (cls.isInstance(view)) {
                return true;
            }
        }
        return false;
    }

    private static void a(List<Class> list, String str) {
        Class b10 = C0572h2.b(str);
        if (b10 != null) {
            list.add(b10);
        }
    }
}
