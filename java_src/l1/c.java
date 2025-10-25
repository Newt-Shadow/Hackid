package l1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import java.util.Map;
/* loaded from: classes.dex */
public class c extends l {
    private static final String[] L = {"android:changeBounds:bounds", "android:changeBounds:clip", "android:changeBounds:parent", "android:changeBounds:windowX", "android:changeBounds:windowY"};
    private static final Property M = new b(PointF.class, "boundsOrigin");
    private static final Property N = new C0237c(PointF.class, "topLeft");
    private static final Property O = new d(PointF.class, "bottomRight");
    private static final Property P = new e(PointF.class, "bottomRight");
    private static final Property Q = new f(PointF.class, "topLeft");
    private static final Property R = new g(PointF.class, "position");
    private static l1.j S = new l1.j();
    private int[] I = new int[2];
    private boolean J = false;
    private boolean K = false;

    /* loaded from: classes.dex */
    class a extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f25039a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ BitmapDrawable f25040b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f25041c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ float f25042d;

        a(ViewGroup viewGroup, BitmapDrawable bitmapDrawable, View view, float f10) {
            this.f25039a = viewGroup;
            this.f25040b = bitmapDrawable;
            this.f25041c = view;
            this.f25042d = f10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a0.b(this.f25039a).b(this.f25040b);
            a0.g(this.f25041c, this.f25042d);
        }
    }

    /* loaded from: classes.dex */
    class b extends Property {

        /* renamed from: a  reason: collision with root package name */
        private Rect f25044a;

        b(Class cls, String str) {
            super(cls, str);
            this.f25044a = new Rect();
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(Drawable drawable) {
            drawable.copyBounds(this.f25044a);
            Rect rect = this.f25044a;
            return new PointF(rect.left, rect.top);
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(Drawable drawable, PointF pointF) {
            drawable.copyBounds(this.f25044a);
            this.f25044a.offsetTo(Math.round(pointF.x), Math.round(pointF.y));
            drawable.setBounds(this.f25044a);
        }
    }

    /* renamed from: l1.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class C0237c extends Property {
        C0237c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(k kVar, PointF pointF) {
            kVar.c(pointF);
        }
    }

    /* loaded from: classes.dex */
    class d extends Property {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(k kVar) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(k kVar, PointF pointF) {
            kVar.a(pointF);
        }
    }

    /* loaded from: classes.dex */
    class e extends Property {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(View view, PointF pointF) {
            a0.f(view, view.getLeft(), view.getTop(), Math.round(pointF.x), Math.round(pointF.y));
        }
    }

    /* loaded from: classes.dex */
    class f extends Property {
        f(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(View view, PointF pointF) {
            a0.f(view, Math.round(pointF.x), Math.round(pointF.y), view.getRight(), view.getBottom());
        }
    }

    /* loaded from: classes.dex */
    class g extends Property {
        g(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public PointF get(View view) {
            return null;
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(View view, PointF pointF) {
            int round = Math.round(pointF.x);
            int round2 = Math.round(pointF.y);
            a0.f(view, round, round2, view.getWidth() + round, view.getHeight() + round2);
        }
    }

    /* loaded from: classes.dex */
    class h extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ k f25045a;
        private k mViewBounds;

        h(k kVar) {
            this.f25045a = kVar;
            this.mViewBounds = kVar;
        }
    }

    /* loaded from: classes.dex */
    class i extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private boolean f25047a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f25048b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Rect f25049c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ int f25050d;

        /* renamed from: e  reason: collision with root package name */
        final /* synthetic */ int f25051e;

        /* renamed from: f  reason: collision with root package name */
        final /* synthetic */ int f25052f;

        /* renamed from: g  reason: collision with root package name */
        final /* synthetic */ int f25053g;

        i(View view, Rect rect, int i10, int i11, int i12, int i13) {
            this.f25048b = view;
            this.f25049c = rect;
            this.f25050d = i10;
            this.f25051e = i11;
            this.f25052f = i12;
            this.f25053g = i13;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f25047a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (!this.f25047a) {
                d0.p0.a0(this.f25048b, this.f25049c);
                a0.f(this.f25048b, this.f25050d, this.f25051e, this.f25052f, this.f25053g);
            }
        }
    }

    /* loaded from: classes.dex */
    class j extends m {

        /* renamed from: a  reason: collision with root package name */
        boolean f25055a = false;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ViewGroup f25056b;

        j(ViewGroup viewGroup) {
            this.f25056b = viewGroup;
        }

        @Override // l1.m, l1.l.f
        public void b(l lVar) {
            x.c(this.f25056b, true);
        }

        @Override // l1.m, l1.l.f
        public void c(l lVar) {
            x.c(this.f25056b, false);
            this.f25055a = true;
        }

        @Override // l1.m, l1.l.f
        public void d(l lVar) {
            x.c(this.f25056b, false);
        }

        @Override // l1.l.f
        public void e(l lVar) {
            if (!this.f25055a) {
                x.c(this.f25056b, false);
            }
            lVar.S(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class k {

        /* renamed from: a  reason: collision with root package name */
        private int f25058a;

        /* renamed from: b  reason: collision with root package name */
        private int f25059b;

        /* renamed from: c  reason: collision with root package name */
        private int f25060c;

        /* renamed from: d  reason: collision with root package name */
        private int f25061d;

        /* renamed from: e  reason: collision with root package name */
        private View f25062e;

        /* renamed from: f  reason: collision with root package name */
        private int f25063f;

        /* renamed from: g  reason: collision with root package name */
        private int f25064g;

        k(View view) {
            this.f25062e = view;
        }

        private void b() {
            a0.f(this.f25062e, this.f25058a, this.f25059b, this.f25060c, this.f25061d);
            this.f25063f = 0;
            this.f25064g = 0;
        }

        void a(PointF pointF) {
            this.f25060c = Math.round(pointF.x);
            this.f25061d = Math.round(pointF.y);
            int i10 = this.f25064g + 1;
            this.f25064g = i10;
            if (this.f25063f == i10) {
                b();
            }
        }

        void c(PointF pointF) {
            this.f25058a = Math.round(pointF.x);
            this.f25059b = Math.round(pointF.y);
            int i10 = this.f25063f + 1;
            this.f25063f = i10;
            if (i10 == this.f25064g) {
                b();
            }
        }
    }

    private void f0(s sVar) {
        View view = sVar.f25162b;
        if (d0.p0.F(view) || view.getWidth() != 0 || view.getHeight() != 0) {
            sVar.f25161a.put("android:changeBounds:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
            sVar.f25161a.put("android:changeBounds:parent", sVar.f25162b.getParent());
            if (this.K) {
                sVar.f25162b.getLocationInWindow(this.I);
                sVar.f25161a.put("android:changeBounds:windowX", Integer.valueOf(this.I[0]));
                sVar.f25161a.put("android:changeBounds:windowY", Integer.valueOf(this.I[1]));
            }
            if (this.J) {
                sVar.f25161a.put("android:changeBounds:clip", d0.p0.o(view));
            }
        }
    }

    private boolean g0(View view, View view2) {
        if (!this.K) {
            return true;
        }
        s w10 = w(view, true);
        if (w10 == null) {
            if (view == view2) {
                return true;
            }
        } else if (view2 == w10.f25162b) {
            return true;
        }
        return false;
    }

    @Override // l1.l
    public String[] G() {
        return L;
    }

    @Override // l1.l
    public void i(s sVar) {
        f0(sVar);
    }

    @Override // l1.l
    public void l(s sVar) {
        f0(sVar);
    }

    @Override // l1.l
    public Animator p(ViewGroup viewGroup, s sVar, s sVar2) {
        int i10;
        View view;
        ObjectAnimator a10;
        int i11;
        Rect rect;
        ObjectAnimator objectAnimator;
        Animator c10;
        if (sVar != null && sVar2 != null) {
            Map map = sVar.f25161a;
            Map map2 = sVar2.f25161a;
            ViewGroup viewGroup2 = (ViewGroup) map.get("android:changeBounds:parent");
            ViewGroup viewGroup3 = (ViewGroup) map2.get("android:changeBounds:parent");
            if (viewGroup2 != null && viewGroup3 != null) {
                View view2 = sVar2.f25162b;
                if (g0(viewGroup2, viewGroup3)) {
                    Rect rect2 = (Rect) sVar.f25161a.get("android:changeBounds:bounds");
                    Rect rect3 = (Rect) sVar2.f25161a.get("android:changeBounds:bounds");
                    int i12 = rect2.left;
                    int i13 = rect3.left;
                    int i14 = rect2.top;
                    int i15 = rect3.top;
                    int i16 = rect2.right;
                    int i17 = rect3.right;
                    int i18 = rect2.bottom;
                    int i19 = rect3.bottom;
                    int i20 = i16 - i12;
                    int i21 = i18 - i14;
                    int i22 = i17 - i13;
                    int i23 = i19 - i15;
                    Rect rect4 = (Rect) sVar.f25161a.get("android:changeBounds:clip");
                    Rect rect5 = (Rect) sVar2.f25161a.get("android:changeBounds:clip");
                    if ((i20 != 0 && i21 != 0) || (i22 != 0 && i23 != 0)) {
                        if (i12 == i13 && i14 == i15) {
                            i10 = 0;
                        } else {
                            i10 = 1;
                        }
                        if (i16 != i17 || i18 != i19) {
                            i10++;
                        }
                    } else {
                        i10 = 0;
                    }
                    if ((rect4 != null && !rect4.equals(rect5)) || (rect4 == null && rect5 != null)) {
                        i10++;
                    }
                    if (i10 > 0) {
                        if (!this.J) {
                            view = view2;
                            a0.f(view, i12, i14, i16, i18);
                            if (i10 == 2) {
                                if (i20 == i22 && i21 == i23) {
                                    c10 = l1.f.a(view, R, y().a(i12, i14, i13, i15));
                                } else {
                                    k kVar = new k(view);
                                    ObjectAnimator a11 = l1.f.a(kVar, N, y().a(i12, i14, i13, i15));
                                    ObjectAnimator a12 = l1.f.a(kVar, O, y().a(i16, i18, i17, i19));
                                    AnimatorSet animatorSet = new AnimatorSet();
                                    animatorSet.playTogether(a11, a12);
                                    animatorSet.addListener(new h(kVar));
                                    c10 = animatorSet;
                                }
                            } else if (i12 == i13 && i14 == i15) {
                                c10 = l1.f.a(view, P, y().a(i16, i18, i17, i19));
                            } else {
                                c10 = l1.f.a(view, Q, y().a(i12, i14, i13, i15));
                            }
                        } else {
                            view = view2;
                            a0.f(view, i12, i14, Math.max(i20, i22) + i12, Math.max(i21, i23) + i14);
                            if (i12 == i13 && i14 == i15) {
                                a10 = null;
                            } else {
                                a10 = l1.f.a(view, R, y().a(i12, i14, i13, i15));
                            }
                            if (rect4 == null) {
                                i11 = 0;
                                rect4 = new Rect(0, 0, i20, i21);
                            } else {
                                i11 = 0;
                            }
                            if (rect5 == null) {
                                rect = new Rect(i11, i11, i22, i23);
                            } else {
                                rect = rect5;
                            }
                            if (!rect4.equals(rect)) {
                                d0.p0.a0(view, rect4);
                                ObjectAnimator ofObject = ObjectAnimator.ofObject(view, "clipBounds", S, rect4, rect);
                                ofObject.addListener(new i(view, rect5, i13, i15, i17, i19));
                                objectAnimator = ofObject;
                            } else {
                                objectAnimator = null;
                            }
                            c10 = r.c(a10, objectAnimator);
                        }
                        if (view.getParent() instanceof ViewGroup) {
                            ViewGroup viewGroup4 = (ViewGroup) view.getParent();
                            x.c(viewGroup4, true);
                            a(new j(viewGroup4));
                        }
                        return c10;
                    }
                    return null;
                }
                int intValue = ((Integer) sVar.f25161a.get("android:changeBounds:windowX")).intValue();
                int intValue2 = ((Integer) sVar.f25161a.get("android:changeBounds:windowY")).intValue();
                int intValue3 = ((Integer) sVar2.f25161a.get("android:changeBounds:windowX")).intValue();
                int intValue4 = ((Integer) sVar2.f25161a.get("android:changeBounds:windowY")).intValue();
                if (intValue == intValue3 && intValue2 == intValue4) {
                    return null;
                }
                viewGroup.getLocationInWindow(this.I);
                Bitmap createBitmap = Bitmap.createBitmap(view2.getWidth(), view2.getHeight(), Bitmap.Config.ARGB_8888);
                view2.draw(new Canvas(createBitmap));
                BitmapDrawable bitmapDrawable = new BitmapDrawable(createBitmap);
                float c11 = a0.c(view2);
                a0.g(view2, 0.0f);
                a0.b(viewGroup).a(bitmapDrawable);
                l1.g y10 = y();
                int[] iArr = this.I;
                int i24 = iArr[0];
                int i25 = iArr[1];
                ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(bitmapDrawable, l1.h.a(M, y10.a(intValue - i24, intValue2 - i25, intValue3 - i24, intValue4 - i25)));
                ofPropertyValuesHolder.addListener(new a(viewGroup, bitmapDrawable, view2, c11));
                return ofPropertyValuesHolder;
            }
            return null;
        }
        return null;
    }
}
