package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.view.animation.Animation;
import android.widget.ImageView;
import d0.p0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class a extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private Animation.AnimationListener f3474a;

    /* renamed from: b  reason: collision with root package name */
    private int f3475b;

    /* renamed from: c  reason: collision with root package name */
    private int f3476c;

    /* renamed from: androidx.swiperefreshlayout.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0060a extends OvalShape {

        /* renamed from: a  reason: collision with root package name */
        private Paint f3477a = new Paint();

        /* renamed from: b  reason: collision with root package name */
        private int f3478b;

        /* renamed from: c  reason: collision with root package name */
        private a f3479c;

        C0060a(a aVar, int i10) {
            this.f3479c = aVar;
            this.f3478b = i10;
            a((int) rect().width());
        }

        private void a(int i10) {
            float f10 = i10 / 2;
            this.f3477a.setShader(new RadialGradient(f10, f10, this.f3478b, new int[]{1023410176, 0}, (float[]) null, Shader.TileMode.CLAMP));
        }

        @Override // android.graphics.drawable.shapes.OvalShape, android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        public void draw(Canvas canvas, Paint paint) {
            int width;
            float width2 = this.f3479c.getWidth() / 2;
            float height = this.f3479c.getHeight() / 2;
            canvas.drawCircle(width2, height, width2, this.f3477a);
            canvas.drawCircle(width2, height, width - this.f3478b, paint);
        }

        @Override // android.graphics.drawable.shapes.RectShape, android.graphics.drawable.shapes.Shape
        protected void onResize(float f10, float f11) {
            super.onResize(f10, f11);
            a((int) f10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context) {
        super(context);
        ShapeDrawable shapeDrawable;
        float f10 = getContext().getResources().getDisplayMetrics().density;
        int i10 = (int) (1.75f * f10);
        int i11 = (int) (0.0f * f10);
        this.f3475b = (int) (3.5f * f10);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(j1.a.f24290f);
        this.f3476c = obtainStyledAttributes.getColor(j1.a.f24291g, -328966);
        obtainStyledAttributes.recycle();
        if (a()) {
            shapeDrawable = new ShapeDrawable(new OvalShape());
            p0.b0(this, f10 * 4.0f);
        } else {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new C0060a(this, this.f3475b));
            setLayerType(1, shapeDrawable2.getPaint());
            shapeDrawable2.getPaint().setShadowLayer(this.f3475b, i11, i10, 503316480);
            int i12 = this.f3475b;
            setPadding(i12, i12, i12, i12);
            shapeDrawable = shapeDrawable2;
        }
        shapeDrawable.getPaint().setColor(this.f3476c);
        p0.X(this, shapeDrawable);
    }

    private boolean a() {
        return true;
    }

    public void b(Animation.AnimationListener animationListener) {
        this.f3474a = animationListener;
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        Animation.AnimationListener animationListener = this.f3474a;
        if (animationListener != null) {
            animationListener.onAnimationEnd(getAnimation());
        }
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        Animation.AnimationListener animationListener = this.f3474a;
        if (animationListener != null) {
            animationListener.onAnimationStart(getAnimation());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (!a()) {
            setMeasuredDimension(getMeasuredWidth() + (this.f3475b * 2), getMeasuredHeight() + (this.f3475b * 2));
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        if (getBackground() instanceof ShapeDrawable) {
            ((ShapeDrawable) getBackground()).getPaint().setColor(i10);
            this.f3476c = i10;
        }
    }
}
