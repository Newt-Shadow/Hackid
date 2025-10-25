package androidx.fragment.app;

import android.view.View;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public final class r0 {

    /* renamed from: a  reason: collision with root package name */
    public static final r0 f2831a;

    /* renamed from: b  reason: collision with root package name */
    public static final t0 f2832b;

    /* renamed from: c  reason: collision with root package name */
    public static final t0 f2833c;

    static {
        r0 r0Var = new r0();
        f2831a = r0Var;
        f2832b = new s0();
        f2833c = r0Var.b();
    }

    private r0() {
    }

    public static final void a(p inFragment, p outFragment, boolean z10, r.a sharedElements, boolean z11) {
        kotlin.jvm.internal.m.e(inFragment, "inFragment");
        kotlin.jvm.internal.m.e(outFragment, "outFragment");
        kotlin.jvm.internal.m.e(sharedElements, "sharedElements");
        if (z10) {
            outFragment.getEnterTransitionCallback();
        } else {
            inFragment.getEnterTransitionCallback();
        }
    }

    private final t0 b() {
        try {
            kotlin.jvm.internal.m.c(l1.e.class, "null cannot be cast to non-null type java.lang.Class<androidx.fragment.app.FragmentTransitionImpl>");
            return (t0) l1.e.class.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    public static final void c(r.a aVar, r.a namedViews) {
        kotlin.jvm.internal.m.e(aVar, "<this>");
        kotlin.jvm.internal.m.e(namedViews, "namedViews");
        int size = aVar.size();
        while (true) {
            size--;
            if (-1 < size) {
                if (!namedViews.containsKey((String) aVar.k(size))) {
                    aVar.i(size);
                }
            } else {
                return;
            }
        }
    }

    public static final void d(List views, int i10) {
        kotlin.jvm.internal.m.e(views, "views");
        Iterator it = views.iterator();
        while (it.hasNext()) {
            ((View) it.next()).setVisibility(i10);
        }
    }
}
