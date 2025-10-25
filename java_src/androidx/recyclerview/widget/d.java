package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.recyclerview.widget.RecyclerView;
import d0.p0;
import kotlin.KotlinVersion;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d extends RecyclerView.m implements RecyclerView.q {
    private static final int[] D = {16842919};
    private static final int[] E = new int[0];
    int A;
    private final Runnable B;
    private final RecyclerView.r C;

    /* renamed from: a  reason: collision with root package name */
    private final int f3360a;

    /* renamed from: b  reason: collision with root package name */
    private final int f3361b;

    /* renamed from: c  reason: collision with root package name */
    final StateListDrawable f3362c;

    /* renamed from: d  reason: collision with root package name */
    final Drawable f3363d;

    /* renamed from: e  reason: collision with root package name */
    private final int f3364e;

    /* renamed from: f  reason: collision with root package name */
    private final int f3365f;

    /* renamed from: g  reason: collision with root package name */
    private final StateListDrawable f3366g;

    /* renamed from: h  reason: collision with root package name */
    private final Drawable f3367h;

    /* renamed from: i  reason: collision with root package name */
    private final int f3368i;

    /* renamed from: j  reason: collision with root package name */
    private final int f3369j;

    /* renamed from: k  reason: collision with root package name */
    int f3370k;

    /* renamed from: l  reason: collision with root package name */
    int f3371l;

    /* renamed from: m  reason: collision with root package name */
    float f3372m;

    /* renamed from: n  reason: collision with root package name */
    int f3373n;

    /* renamed from: o  reason: collision with root package name */
    int f3374o;

    /* renamed from: p  reason: collision with root package name */
    float f3375p;

    /* renamed from: s  reason: collision with root package name */
    private RecyclerView f3378s;

    /* renamed from: z  reason: collision with root package name */
    final ValueAnimator f3385z;

    /* renamed from: q  reason: collision with root package name */
    private int f3376q = 0;

    /* renamed from: r  reason: collision with root package name */
    private int f3377r = 0;

    /* renamed from: t  reason: collision with root package name */
    private boolean f3379t = false;

    /* renamed from: u  reason: collision with root package name */
    private boolean f3380u = false;

    /* renamed from: v  reason: collision with root package name */
    private int f3381v = 0;

    /* renamed from: w  reason: collision with root package name */
    private int f3382w = 0;

    /* renamed from: x  reason: collision with root package name */
    private final int[] f3383x = new int[2];

    /* renamed from: y  reason: collision with root package name */
    private final int[] f3384y = new int[2];

    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.n(500);
        }
    }

    /* loaded from: classes.dex */
    class b extends RecyclerView.r {
        b() {
        }
    }

    /* loaded from: classes.dex */
    private class c extends AnimatorListenerAdapter {

        /* renamed from: a  reason: collision with root package name */
        private boolean f3388a = false;

        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3388a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f3388a) {
                this.f3388a = false;
            } else if (((Float) d.this.f3385z.getAnimatedValue()).floatValue() == 0.0f) {
                d dVar = d.this;
                dVar.A = 0;
                dVar.v(0);
            } else {
                d dVar2 = d.this;
                dVar2.A = 2;
                dVar2.s();
            }
        }
    }

    /* renamed from: androidx.recyclerview.widget.d$d  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private class C0056d implements ValueAnimator.AnimatorUpdateListener {
        C0056d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int floatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            d.this.f3362c.setAlpha(floatValue);
            d.this.f3363d.setAlpha(floatValue);
            d.this.s();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i10, int i11, int i12) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f3385z = ofFloat;
        this.A = 0;
        this.B = new a();
        this.C = new b();
        this.f3362c = stateListDrawable;
        this.f3363d = drawable;
        this.f3366g = stateListDrawable2;
        this.f3367h = drawable2;
        this.f3364e = Math.max(i10, stateListDrawable.getIntrinsicWidth());
        this.f3365f = Math.max(i10, drawable.getIntrinsicWidth());
        this.f3368i = Math.max(i10, stateListDrawable2.getIntrinsicWidth());
        this.f3369j = Math.max(i10, drawable2.getIntrinsicWidth());
        this.f3360a = i11;
        this.f3361b = i12;
        stateListDrawable.setAlpha(KotlinVersion.MAX_COMPONENT_VALUE);
        drawable.setAlpha(KotlinVersion.MAX_COMPONENT_VALUE);
        ofFloat.addListener(new c());
        ofFloat.addUpdateListener(new C0056d());
        g(recyclerView);
    }

    private void h() {
        this.f3378s.removeCallbacks(this.B);
    }

    private void i() {
        this.f3378s.j0(this);
        this.f3378s.k0(this);
        this.f3378s.l0(this.C);
        h();
    }

    private void j(Canvas canvas) {
        int i10 = this.f3377r;
        int i11 = this.f3368i;
        int i12 = i10 - i11;
        int i13 = this.f3374o;
        int i14 = this.f3373n;
        int i15 = i13 - (i14 / 2);
        this.f3366g.setBounds(0, 0, i14, i11);
        this.f3367h.setBounds(0, 0, this.f3376q, this.f3369j);
        canvas.translate(0.0f, i12);
        this.f3367h.draw(canvas);
        canvas.translate(i15, 0.0f);
        this.f3366g.draw(canvas);
        canvas.translate(-i15, -i12);
    }

    private void k(Canvas canvas) {
        int i10 = this.f3376q;
        int i11 = this.f3364e;
        int i12 = i10 - i11;
        int i13 = this.f3371l;
        int i14 = this.f3370k;
        int i15 = i13 - (i14 / 2);
        this.f3362c.setBounds(0, 0, i11, i14);
        this.f3363d.setBounds(0, 0, this.f3365f, this.f3377r);
        if (p()) {
            this.f3363d.draw(canvas);
            canvas.translate(this.f3364e, i15);
            canvas.scale(-1.0f, 1.0f);
            this.f3362c.draw(canvas);
            canvas.scale(1.0f, 1.0f);
            canvas.translate(-this.f3364e, -i15);
            return;
        }
        canvas.translate(i12, 0.0f);
        this.f3363d.draw(canvas);
        canvas.translate(0.0f, i15);
        this.f3362c.draw(canvas);
        canvas.translate(-i12, -i15);
    }

    private int[] l() {
        int[] iArr = this.f3384y;
        int i10 = this.f3361b;
        iArr[0] = i10;
        iArr[1] = this.f3376q - i10;
        return iArr;
    }

    private int[] m() {
        int[] iArr = this.f3383x;
        int i10 = this.f3361b;
        iArr[0] = i10;
        iArr[1] = this.f3377r - i10;
        return iArr;
    }

    private void o(float f10) {
        int[] l10 = l();
        float max = Math.max(l10[0], Math.min(l10[1], f10));
        if (Math.abs(this.f3374o - max) < 2.0f) {
            return;
        }
        int u10 = u(this.f3375p, max, l10, this.f3378s.computeHorizontalScrollRange(), this.f3378s.computeHorizontalScrollOffset(), this.f3376q);
        if (u10 != 0) {
            this.f3378s.scrollBy(u10, 0);
        }
        this.f3375p = max;
    }

    private boolean p() {
        if (p0.t(this.f3378s) == 1) {
            return true;
        }
        return false;
    }

    private void t(int i10) {
        h();
        this.f3378s.postDelayed(this.B, i10);
    }

    private int u(float f10, float f11, int[] iArr, int i10, int i11, int i12) {
        int i13 = iArr[1] - iArr[0];
        if (i13 == 0) {
            return 0;
        }
        int i14 = i10 - i12;
        int i15 = (int) (((f11 - f10) / i13) * i14);
        int i16 = i11 + i15;
        if (i16 >= i14 || i16 < 0) {
            return 0;
        }
        return i15;
    }

    private void w() {
        this.f3378s.c(this);
        this.f3378s.e(this);
        this.f3378s.f(this.C);
    }

    private void y(float f10) {
        int[] m10 = m();
        float max = Math.max(m10[0], Math.min(m10[1], f10));
        if (Math.abs(this.f3371l - max) < 2.0f) {
            return;
        }
        int u10 = u(this.f3372m, max, m10, this.f3378s.computeVerticalScrollRange(), this.f3378s.computeVerticalScrollOffset(), this.f3377r);
        if (u10 != 0) {
            this.f3378s.scrollBy(0, u10);
        }
        this.f3372m = max;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public void a(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f3381v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean r10 = r(motionEvent.getX(), motionEvent.getY());
            boolean q10 = q(motionEvent.getX(), motionEvent.getY());
            if (r10 || q10) {
                if (q10) {
                    this.f3382w = 1;
                    this.f3375p = (int) motionEvent.getX();
                } else if (r10) {
                    this.f3382w = 2;
                    this.f3372m = (int) motionEvent.getY();
                }
                v(2);
            }
        } else if (motionEvent.getAction() == 1 && this.f3381v == 2) {
            this.f3372m = 0.0f;
            this.f3375p = 0.0f;
            v(1);
            this.f3382w = 0;
        } else if (motionEvent.getAction() == 2 && this.f3381v == 2) {
            x();
            if (this.f3382w == 1) {
                o(motionEvent.getX());
            }
            if (this.f3382w == 2) {
                y(motionEvent.getY());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public boolean b(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i10 = this.f3381v;
        if (i10 == 1) {
            boolean r10 = r(motionEvent.getX(), motionEvent.getY());
            boolean q10 = q(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!r10 && !q10) {
                return false;
            }
            if (q10) {
                this.f3382w = 1;
                this.f3375p = (int) motionEvent.getX();
            } else if (r10) {
                this.f3382w = 2;
                this.f3372m = (int) motionEvent.getY();
            }
            v(2);
        } else if (i10 != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.q
    public void c(boolean z10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.m
    public void f(Canvas canvas, RecyclerView recyclerView, RecyclerView.x xVar) {
        if (this.f3376q == this.f3378s.getWidth() && this.f3377r == this.f3378s.getHeight()) {
            if (this.A != 0) {
                if (this.f3379t) {
                    k(canvas);
                }
                if (this.f3380u) {
                    j(canvas);
                    return;
                }
                return;
            }
            return;
        }
        this.f3376q = this.f3378s.getWidth();
        this.f3377r = this.f3378s.getHeight();
        v(0);
    }

    public void g(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f3378s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            i();
        }
        this.f3378s = recyclerView;
        if (recyclerView != null) {
            w();
        }
    }

    void n(int i10) {
        int i11 = this.A;
        if (i11 != 1) {
            if (i11 != 2) {
                return;
            }
        } else {
            this.f3385z.cancel();
        }
        this.A = 3;
        ValueAnimator valueAnimator = this.f3385z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.f3385z.setDuration(i10);
        this.f3385z.start();
    }

    boolean q(float f10, float f11) {
        if (f11 >= this.f3377r - this.f3368i) {
            int i10 = this.f3374o;
            int i11 = this.f3373n;
            if (f10 >= i10 - (i11 / 2) && f10 <= i10 + (i11 / 2)) {
                return true;
            }
        }
        return false;
    }

    boolean r(float f10, float f11) {
        if (!p() ? f10 >= this.f3376q - this.f3364e : f10 <= this.f3364e / 2) {
            int i10 = this.f3371l;
            int i11 = this.f3370k;
            if (f11 >= i10 - (i11 / 2) && f11 <= i10 + (i11 / 2)) {
                return true;
            }
        }
        return false;
    }

    void s() {
        this.f3378s.invalidate();
    }

    void v(int i10) {
        if (i10 == 2 && this.f3381v != 2) {
            this.f3362c.setState(D);
            h();
        }
        if (i10 == 0) {
            s();
        } else {
            x();
        }
        if (this.f3381v == 2 && i10 != 2) {
            this.f3362c.setState(E);
            t(1200);
        } else if (i10 == 1) {
            t(1500);
        }
        this.f3381v = i10;
    }

    public void x() {
        int i10 = this.A;
        if (i10 != 0) {
            if (i10 == 3) {
                this.f3385z.cancel();
            } else {
                return;
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.f3385z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f3385z.setDuration(500L);
        this.f3385z.setStartDelay(0L);
        this.f3385z.start();
    }
}
