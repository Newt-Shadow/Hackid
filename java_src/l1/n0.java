package l1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import l1.l;
/* loaded from: classes.dex */
public abstract class n0 extends l {
    private static final String[] J = {"android:visibility:visibility", "android:visibility:parent"};
    private int I = 3;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a extends m {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ViewGroup f25138a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ View f25139b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ View f25140c;

        a(ViewGroup viewGroup, View view, View view2) {
            this.f25138a = viewGroup;
            this.f25139b = view;
            this.f25140c = view2;
        }

        @Override // l1.m, l1.l.f
        public void b(l lVar) {
            if (this.f25139b.getParent() == null) {
                x.a(this.f25138a).c(this.f25139b);
            } else {
                n0.this.f();
            }
        }

        @Override // l1.m, l1.l.f
        public void d(l lVar) {
            x.a(this.f25138a).d(this.f25139b);
        }

        @Override // l1.l.f
        public void e(l lVar) {
            this.f25140c.setTag(i.f25090a, null);
            x.a(this.f25138a).d(this.f25139b);
            lVar.S(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class b extends AnimatorListenerAdapter implements l.f {

        /* renamed from: a  reason: collision with root package name */
        private final View f25142a;

        /* renamed from: b  reason: collision with root package name */
        private final int f25143b;

        /* renamed from: c  reason: collision with root package name */
        private final ViewGroup f25144c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f25145d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f25146e;

        /* renamed from: f  reason: collision with root package name */
        boolean f25147f = false;

        b(View view, int i10, boolean z10) {
            this.f25142a = view;
            this.f25143b = i10;
            this.f25144c = (ViewGroup) view.getParent();
            this.f25145d = z10;
            g(true);
        }

        private void f() {
            if (!this.f25147f) {
                a0.h(this.f25142a, this.f25143b);
                ViewGroup viewGroup = this.f25144c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            g(false);
        }

        private void g(boolean z10) {
            ViewGroup viewGroup;
            if (this.f25145d && this.f25146e != z10 && (viewGroup = this.f25144c) != null) {
                this.f25146e = z10;
                x.c(viewGroup, z10);
            }
        }

        @Override // l1.l.f
        public void a(l lVar) {
        }

        @Override // l1.l.f
        public void b(l lVar) {
            g(true);
        }

        @Override // l1.l.f
        public void c(l lVar) {
        }

        @Override // l1.l.f
        public void d(l lVar) {
            g(false);
        }

        @Override // l1.l.f
        public void e(l lVar) {
            f();
            lVar.S(this);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f25147f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            if (!this.f25147f) {
                a0.h(this.f25142a, this.f25143b);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            if (!this.f25147f) {
                a0.h(this.f25142a, 0);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        boolean f25148a;

        /* renamed from: b  reason: collision with root package name */
        boolean f25149b;

        /* renamed from: c  reason: collision with root package name */
        int f25150c;

        /* renamed from: d  reason: collision with root package name */
        int f25151d;

        /* renamed from: e  reason: collision with root package name */
        ViewGroup f25152e;

        /* renamed from: f  reason: collision with root package name */
        ViewGroup f25153f;

        c() {
        }
    }

    private void f0(s sVar) {
        sVar.f25161a.put("android:visibility:visibility", Integer.valueOf(sVar.f25162b.getVisibility()));
        sVar.f25161a.put("android:visibility:parent", sVar.f25162b.getParent());
        int[] iArr = new int[2];
        sVar.f25162b.getLocationOnScreen(iArr);
        sVar.f25161a.put("android:visibility:screenLocation", iArr);
    }

    private c g0(s sVar, s sVar2) {
        c cVar = new c();
        cVar.f25148a = false;
        cVar.f25149b = false;
        if (sVar != null && sVar.f25161a.containsKey("android:visibility:visibility")) {
            cVar.f25150c = ((Integer) sVar.f25161a.get("android:visibility:visibility")).intValue();
            cVar.f25152e = (ViewGroup) sVar.f25161a.get("android:visibility:parent");
        } else {
            cVar.f25150c = -1;
            cVar.f25152e = null;
        }
        if (sVar2 != null && sVar2.f25161a.containsKey("android:visibility:visibility")) {
            cVar.f25151d = ((Integer) sVar2.f25161a.get("android:visibility:visibility")).intValue();
            cVar.f25153f = (ViewGroup) sVar2.f25161a.get("android:visibility:parent");
        } else {
            cVar.f25151d = -1;
            cVar.f25153f = null;
        }
        if (sVar != null && sVar2 != null) {
            int i10 = cVar.f25150c;
            int i11 = cVar.f25151d;
            if (i10 == i11 && cVar.f25152e == cVar.f25153f) {
                return cVar;
            }
            if (i10 != i11) {
                if (i10 == 0) {
                    cVar.f25149b = false;
                    cVar.f25148a = true;
                } else if (i11 == 0) {
                    cVar.f25149b = true;
                    cVar.f25148a = true;
                }
            } else if (cVar.f25153f == null) {
                cVar.f25149b = false;
                cVar.f25148a = true;
            } else if (cVar.f25152e == null) {
                cVar.f25149b = true;
                cVar.f25148a = true;
            }
        } else if (sVar == null && cVar.f25151d == 0) {
            cVar.f25149b = true;
            cVar.f25148a = true;
        } else if (sVar2 == null && cVar.f25150c == 0) {
            cVar.f25149b = false;
            cVar.f25148a = true;
        }
        return cVar;
    }

    @Override // l1.l
    public String[] G() {
        return J;
    }

    @Override // l1.l
    public boolean I(s sVar, s sVar2) {
        if (sVar == null && sVar2 == null) {
            return false;
        }
        if (sVar != null && sVar2 != null && sVar2.f25161a.containsKey("android:visibility:visibility") != sVar.f25161a.containsKey("android:visibility:visibility")) {
            return false;
        }
        c g02 = g0(sVar, sVar2);
        if (!g02.f25148a) {
            return false;
        }
        if (g02.f25150c != 0 && g02.f25151d != 0) {
            return false;
        }
        return true;
    }

    public abstract Animator h0(ViewGroup viewGroup, View view, s sVar, s sVar2);

    @Override // l1.l
    public void i(s sVar) {
        f0(sVar);
    }

    public Animator i0(ViewGroup viewGroup, s sVar, int i10, s sVar2, int i11) {
        if ((this.I & 1) != 1 || sVar2 == null) {
            return null;
        }
        if (sVar == null) {
            View view = (View) sVar2.f25162b.getParent();
            if (g0(w(view, false), H(view, false)).f25148a) {
                return null;
            }
        }
        return h0(viewGroup, sVar2.f25162b, sVar, sVar2);
    }

    public abstract Animator j0(ViewGroup viewGroup, View view, s sVar, s sVar2);

    /* JADX WARN: Code restructure failed: missing block: B:42:0x007f, code lost:
        if (r10.f25116v != false) goto L52;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator k0(android.view.ViewGroup r11, l1.s r12, int r13, l1.s r14, int r15) {
        /*
            Method dump skipped, instructions count: 254
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l1.n0.k0(android.view.ViewGroup, l1.s, int, l1.s, int):android.animation.Animator");
    }

    @Override // l1.l
    public void l(s sVar) {
        f0(sVar);
    }

    public void l0(int i10) {
        if ((i10 & (-4)) == 0) {
            this.I = i10;
            return;
        }
        throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
    }

    @Override // l1.l
    public Animator p(ViewGroup viewGroup, s sVar, s sVar2) {
        c g02 = g0(sVar, sVar2);
        if (g02.f25148a) {
            if (g02.f25152e != null || g02.f25153f != null) {
                if (g02.f25149b) {
                    return i0(viewGroup, sVar, g02.f25150c, sVar2, g02.f25151d);
                }
                return k0(viewGroup, sVar, g02.f25150c, sVar2, g02.f25151d);
            }
            return null;
        }
        return null;
    }
}
