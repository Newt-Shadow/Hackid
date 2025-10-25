package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import c0.f;
import kotlin.KotlinVersion;
/* loaded from: classes.dex */
public class b extends Drawable implements Animatable {

    /* renamed from: g  reason: collision with root package name */
    private static final Interpolator f3480g = new LinearInterpolator();

    /* renamed from: h  reason: collision with root package name */
    private static final Interpolator f3481h = new u0.a();

    /* renamed from: i  reason: collision with root package name */
    private static final int[] f3482i = {-16777216};

    /* renamed from: a  reason: collision with root package name */
    private final c f3483a;

    /* renamed from: b  reason: collision with root package name */
    private float f3484b;

    /* renamed from: c  reason: collision with root package name */
    private Resources f3485c;

    /* renamed from: d  reason: collision with root package name */
    private Animator f3486d;

    /* renamed from: e  reason: collision with root package name */
    float f3487e;

    /* renamed from: f  reason: collision with root package name */
    boolean f3488f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f3489a;

        a(c cVar) {
            this.f3489a = cVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            b.this.n(floatValue, this.f3489a);
            b.this.b(floatValue, this.f3489a, false);
            b.this.invalidateSelf();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.swiperefreshlayout.widget.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0061b implements Animator.AnimatorListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ c f3491a;

        C0061b(c cVar) {
            this.f3491a = cVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            b.this.b(1.0f, this.f3491a, true);
            this.f3491a.A();
            this.f3491a.l();
            b bVar = b.this;
            if (bVar.f3488f) {
                bVar.f3488f = false;
                animator.cancel();
                animator.setDuration(1332L);
                animator.start();
                this.f3491a.x(false);
                return;
            }
            bVar.f3487e += 1.0f;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            b.this.f3487e = 0.0f;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        final RectF f3493a = new RectF();

        /* renamed from: b  reason: collision with root package name */
        final Paint f3494b;

        /* renamed from: c  reason: collision with root package name */
        final Paint f3495c;

        /* renamed from: d  reason: collision with root package name */
        final Paint f3496d;

        /* renamed from: e  reason: collision with root package name */
        float f3497e;

        /* renamed from: f  reason: collision with root package name */
        float f3498f;

        /* renamed from: g  reason: collision with root package name */
        float f3499g;

        /* renamed from: h  reason: collision with root package name */
        float f3500h;

        /* renamed from: i  reason: collision with root package name */
        int[] f3501i;

        /* renamed from: j  reason: collision with root package name */
        int f3502j;

        /* renamed from: k  reason: collision with root package name */
        float f3503k;

        /* renamed from: l  reason: collision with root package name */
        float f3504l;

        /* renamed from: m  reason: collision with root package name */
        float f3505m;

        /* renamed from: n  reason: collision with root package name */
        boolean f3506n;

        /* renamed from: o  reason: collision with root package name */
        Path f3507o;

        /* renamed from: p  reason: collision with root package name */
        float f3508p;

        /* renamed from: q  reason: collision with root package name */
        float f3509q;

        /* renamed from: r  reason: collision with root package name */
        int f3510r;

        /* renamed from: s  reason: collision with root package name */
        int f3511s;

        /* renamed from: t  reason: collision with root package name */
        int f3512t;

        /* renamed from: u  reason: collision with root package name */
        int f3513u;

        c() {
            Paint paint = new Paint();
            this.f3494b = paint;
            Paint paint2 = new Paint();
            this.f3495c = paint2;
            Paint paint3 = new Paint();
            this.f3496d = paint3;
            this.f3497e = 0.0f;
            this.f3498f = 0.0f;
            this.f3499g = 0.0f;
            this.f3500h = 5.0f;
            this.f3508p = 1.0f;
            this.f3512t = KotlinVersion.MAX_COMPONENT_VALUE;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        void A() {
            this.f3503k = this.f3497e;
            this.f3504l = this.f3498f;
            this.f3505m = this.f3499g;
        }

        void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f3493a;
            float f10 = this.f3509q;
            float f11 = (this.f3500h / 2.0f) + f10;
            if (f10 <= 0.0f) {
                f11 = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f3510r * this.f3508p) / 2.0f, this.f3500h / 2.0f);
            }
            rectF.set(rect.centerX() - f11, rect.centerY() - f11, rect.centerX() + f11, rect.centerY() + f11);
            float f12 = this.f3497e;
            float f13 = this.f3499g;
            float f14 = (f12 + f13) * 360.0f;
            float f15 = ((this.f3498f + f13) * 360.0f) - f14;
            this.f3494b.setColor(this.f3513u);
            this.f3494b.setAlpha(this.f3512t);
            float f16 = this.f3500h / 2.0f;
            rectF.inset(f16, f16);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f3496d);
            float f17 = -f16;
            rectF.inset(f17, f17);
            canvas.drawArc(rectF, f14, f15, false, this.f3494b);
            b(canvas, f14, f15, rectF);
        }

        void b(Canvas canvas, float f10, float f11, RectF rectF) {
            if (this.f3506n) {
                Path path = this.f3507o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f3507o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                this.f3507o.moveTo(0.0f, 0.0f);
                this.f3507o.lineTo(this.f3510r * this.f3508p, 0.0f);
                Path path3 = this.f3507o;
                float f12 = this.f3508p;
                path3.lineTo((this.f3510r * f12) / 2.0f, this.f3511s * f12);
                this.f3507o.offset(((Math.min(rectF.width(), rectF.height()) / 2.0f) + rectF.centerX()) - ((this.f3510r * this.f3508p) / 2.0f), rectF.centerY() + (this.f3500h / 2.0f));
                this.f3507o.close();
                this.f3495c.setColor(this.f3513u);
                this.f3495c.setAlpha(this.f3512t);
                canvas.save();
                canvas.rotate(f10 + f11, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f3507o, this.f3495c);
                canvas.restore();
            }
        }

        int c() {
            return this.f3512t;
        }

        float d() {
            return this.f3498f;
        }

        int e() {
            return this.f3501i[f()];
        }

        int f() {
            return (this.f3502j + 1) % this.f3501i.length;
        }

        float g() {
            return this.f3497e;
        }

        int h() {
            return this.f3501i[this.f3502j];
        }

        float i() {
            return this.f3504l;
        }

        float j() {
            return this.f3505m;
        }

        float k() {
            return this.f3503k;
        }

        void l() {
            t(f());
        }

        void m() {
            this.f3503k = 0.0f;
            this.f3504l = 0.0f;
            this.f3505m = 0.0f;
            y(0.0f);
            v(0.0f);
            w(0.0f);
        }

        void n(int i10) {
            this.f3512t = i10;
        }

        void o(float f10, float f11) {
            this.f3510r = (int) f10;
            this.f3511s = (int) f11;
        }

        void p(float f10) {
            if (f10 != this.f3508p) {
                this.f3508p = f10;
            }
        }

        void q(float f10) {
            this.f3509q = f10;
        }

        void r(int i10) {
            this.f3513u = i10;
        }

        void s(ColorFilter colorFilter) {
            this.f3494b.setColorFilter(colorFilter);
        }

        void t(int i10) {
            this.f3502j = i10;
            this.f3513u = this.f3501i[i10];
        }

        void u(int[] iArr) {
            this.f3501i = iArr;
            t(0);
        }

        void v(float f10) {
            this.f3498f = f10;
        }

        void w(float f10) {
            this.f3499g = f10;
        }

        void x(boolean z10) {
            if (this.f3506n != z10) {
                this.f3506n = z10;
            }
        }

        void y(float f10) {
            this.f3497e = f10;
        }

        void z(float f10) {
            this.f3500h = f10;
            this.f3494b.setStrokeWidth(f10);
        }
    }

    public b(Context context) {
        this.f3485c = ((Context) f.g(context)).getResources();
        c cVar = new c();
        this.f3483a = cVar;
        cVar.u(f3482i);
        k(2.5f);
        m();
    }

    private void a(float f10, c cVar) {
        n(f10, cVar);
        cVar.y(cVar.k() + (((cVar.i() - 0.01f) - cVar.k()) * f10));
        cVar.v(cVar.i());
        cVar.w(cVar.j() + ((((float) (Math.floor(cVar.j() / 0.8f) + 1.0d)) - cVar.j()) * f10));
    }

    private int c(float f10, int i10, int i11) {
        int i12 = (i10 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE;
        int i13 = (i10 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE;
        int i14 = (i10 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE;
        int i15 = i10 & KotlinVersion.MAX_COMPONENT_VALUE;
        return ((i12 + ((int) ((((i11 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE) - i12) * f10))) << 24) | ((i13 + ((int) ((((i11 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE) - i13) * f10))) << 16) | ((i14 + ((int) ((((i11 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE) - i14) * f10))) << 8) | (i15 + ((int) (f10 * ((i11 & KotlinVersion.MAX_COMPONENT_VALUE) - i15))));
    }

    private void h(float f10) {
        this.f3484b = f10;
    }

    private void i(float f10, float f11, float f12, float f13) {
        c cVar = this.f3483a;
        float f14 = this.f3485c.getDisplayMetrics().density;
        cVar.z(f11 * f14);
        cVar.q(f10 * f14);
        cVar.t(0);
        cVar.o(f12 * f14, f13 * f14);
    }

    private void m() {
        c cVar = this.f3483a;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new a(cVar));
        ofFloat.setRepeatCount(-1);
        ofFloat.setRepeatMode(1);
        ofFloat.setInterpolator(f3480g);
        ofFloat.addListener(new C0061b(cVar));
        this.f3486d = ofFloat;
    }

    void b(float f10, c cVar, boolean z10) {
        float interpolation;
        float f11;
        if (this.f3488f) {
            a(f10, cVar);
        } else if (f10 != 1.0f || z10) {
            float j10 = cVar.j();
            if (f10 < 0.5f) {
                interpolation = cVar.k();
                f11 = (f3481h.getInterpolation(f10 / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float k10 = cVar.k() + 0.79f;
                interpolation = k10 - (((1.0f - f3481h.getInterpolation((f10 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                f11 = k10;
            }
            cVar.y(interpolation);
            cVar.v(f11);
            cVar.w(j10 + (0.20999998f * f10));
            h((f10 + this.f3487e) * 216.0f);
        }
    }

    public void d(boolean z10) {
        this.f3483a.x(z10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f3484b, bounds.exactCenterX(), bounds.exactCenterY());
        this.f3483a.a(canvas, bounds);
        canvas.restore();
    }

    public void e(float f10) {
        this.f3483a.p(f10);
        invalidateSelf();
    }

    public void f(int... iArr) {
        this.f3483a.u(iArr);
        this.f3483a.t(0);
        invalidateSelf();
    }

    public void g(float f10) {
        this.f3483a.w(f10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3483a.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f3486d.isRunning();
    }

    public void j(float f10, float f11) {
        this.f3483a.y(f10);
        this.f3483a.v(f11);
        invalidateSelf();
    }

    public void k(float f10) {
        this.f3483a.z(f10);
        invalidateSelf();
    }

    public void l(int i10) {
        if (i10 == 0) {
            i(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            i(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    void n(float f10, c cVar) {
        if (f10 > 0.75f) {
            cVar.r(c((f10 - 0.75f) / 0.25f, cVar.h(), cVar.e()));
        } else {
            cVar.r(cVar.h());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f3483a.n(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3483a.s(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f3486d.cancel();
        this.f3483a.A();
        if (this.f3483a.d() != this.f3483a.g()) {
            this.f3488f = true;
            this.f3486d.setDuration(666L);
            this.f3486d.start();
            return;
        }
        this.f3483a.t(0);
        this.f3483a.m();
        this.f3486d.setDuration(1332L);
        this.f3486d.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f3486d.cancel();
        h(0.0f);
        this.f3483a.x(false);
        this.f3483a.t(0);
        this.f3483a.m();
        invalidateSelf();
    }
}
