package androidx.appcompat.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.util.Property;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.emoji2.text.e;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {
    private static final Property S = new a(Float.class, "thumbPos");
    private static final int[] T = {16842912};
    private int A;
    private int B;
    private int C;
    private int D;
    private int E;
    private int F;
    private int G;
    private boolean H;
    private final TextPaint I;
    private ColorStateList J;
    private Layout K;
    private Layout L;
    private TransformationMethod M;
    ObjectAnimator N;
    private final c0 O;
    private n P;
    private c Q;
    private final Rect R;

    /* renamed from: a  reason: collision with root package name */
    private Drawable f1267a;

    /* renamed from: b  reason: collision with root package name */
    private ColorStateList f1268b;

    /* renamed from: c  reason: collision with root package name */
    private PorterDuff.Mode f1269c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f1270d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f1271e;

    /* renamed from: f  reason: collision with root package name */
    private Drawable f1272f;

    /* renamed from: g  reason: collision with root package name */
    private ColorStateList f1273g;

    /* renamed from: h  reason: collision with root package name */
    private PorterDuff.Mode f1274h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f1275i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f1276j;

    /* renamed from: k  reason: collision with root package name */
    private int f1277k;

    /* renamed from: l  reason: collision with root package name */
    private int f1278l;

    /* renamed from: m  reason: collision with root package name */
    private int f1279m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f1280n;

    /* renamed from: o  reason: collision with root package name */
    private CharSequence f1281o;

    /* renamed from: p  reason: collision with root package name */
    private CharSequence f1282p;

    /* renamed from: q  reason: collision with root package name */
    private CharSequence f1283q;

    /* renamed from: r  reason: collision with root package name */
    private CharSequence f1284r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f1285s;

    /* renamed from: t  reason: collision with root package name */
    private int f1286t;

    /* renamed from: u  reason: collision with root package name */
    private int f1287u;

    /* renamed from: v  reason: collision with root package name */
    private float f1288v;

    /* renamed from: w  reason: collision with root package name */
    private float f1289w;

    /* renamed from: x  reason: collision with root package name */
    private VelocityTracker f1290x;

    /* renamed from: y  reason: collision with root package name */
    private int f1291y;

    /* renamed from: z  reason: collision with root package name */
    float f1292z;

    /* loaded from: classes.dex */
    class a extends Property {
        a(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* renamed from: a */
        public Float get(SwitchCompat switchCompat) {
            return Float.valueOf(switchCompat.f1292z);
        }

        @Override // android.util.Property
        /* renamed from: b */
        public void set(SwitchCompat switchCompat, Float f10) {
            switchCompat.setThumbPosition(f10.floatValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {
        static void a(ObjectAnimator objectAnimator, boolean z10) {
            objectAnimator.setAutoCancel(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class c extends e.AbstractC0038e {

        /* renamed from: a  reason: collision with root package name */
        private final Reference f1293a;

        c(SwitchCompat switchCompat) {
            this.f1293a = new WeakReference(switchCompat);
        }

        @Override // androidx.emoji2.text.e.AbstractC0038e
        public void a(Throwable th) {
            SwitchCompat switchCompat = (SwitchCompat) this.f1293a.get();
            if (switchCompat != null) {
                switchCompat.j();
            }
        }

        @Override // androidx.emoji2.text.e.AbstractC0038e
        public void b() {
            SwitchCompat switchCompat = (SwitchCompat) this.f1293a.get();
            if (switchCompat != null) {
                switchCompat.j();
            }
        }
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, h.a.H);
    }

    private void a(boolean z10) {
        float f10;
        if (z10) {
            f10 = 1.0f;
        } else {
            f10 = 0.0f;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, S, f10);
        this.N = ofFloat;
        ofFloat.setDuration(250L);
        b.a(this.N, true);
        this.N.start();
    }

    private void b() {
        Drawable drawable = this.f1267a;
        if (drawable != null) {
            if (this.f1270d || this.f1271e) {
                Drawable mutate = w.a.j(drawable).mutate();
                this.f1267a = mutate;
                if (this.f1270d) {
                    w.a.g(mutate, this.f1268b);
                }
                if (this.f1271e) {
                    w.a.h(this.f1267a, this.f1269c);
                }
                if (this.f1267a.isStateful()) {
                    this.f1267a.setState(getDrawableState());
                }
            }
        }
    }

    private void c() {
        Drawable drawable = this.f1272f;
        if (drawable != null) {
            if (this.f1275i || this.f1276j) {
                Drawable mutate = w.a.j(drawable).mutate();
                this.f1272f = mutate;
                if (this.f1275i) {
                    w.a.g(mutate, this.f1273g);
                }
                if (this.f1276j) {
                    w.a.h(this.f1272f, this.f1274h);
                }
                if (this.f1272f.isStateful()) {
                    this.f1272f.setState(getDrawableState());
                }
            }
        }
    }

    private void d() {
        ObjectAnimator objectAnimator = this.N;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    private void e(MotionEvent motionEvent) {
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.setAction(3);
        super.onTouchEvent(obtain);
        obtain.recycle();
    }

    private static float f(float f10, float f11, float f12) {
        return f10 < f11 ? f11 : f10 > f12 ? f12 : f10;
    }

    private CharSequence g(CharSequence charSequence) {
        TransformationMethod f10 = getEmojiTextViewHelper().f(this.M);
        if (f10 != null) {
            return f10.getTransformation(charSequence, this);
        }
        return charSequence;
    }

    private n getEmojiTextViewHelper() {
        if (this.P == null) {
            this.P = new n(this);
        }
        return this.P;
    }

    private boolean getTargetCheckedState() {
        if (this.f1292z > 0.5f) {
            return true;
        }
        return false;
    }

    private int getThumbOffset() {
        float f10;
        if (q1.b(this)) {
            f10 = 1.0f - this.f1292z;
        } else {
            f10 = this.f1292z;
        }
        return (int) ((f10 * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Rect rect;
        Drawable drawable = this.f1272f;
        if (drawable != null) {
            Rect rect2 = this.R;
            drawable.getPadding(rect2);
            Drawable drawable2 = this.f1267a;
            if (drawable2 != null) {
                rect = o0.d(drawable2);
            } else {
                rect = o0.f1579c;
            }
            return ((((this.A - this.C) - rect2.left) - rect2.right) - rect.left) - rect.right;
        }
        return 0;
    }

    private boolean h(float f10, float f11) {
        if (this.f1267a == null) {
            return false;
        }
        int thumbOffset = getThumbOffset();
        this.f1267a.getPadding(this.R);
        int i10 = this.E;
        int i11 = this.f1287u;
        int i12 = i10 - i11;
        int i13 = (this.D + thumbOffset) - i11;
        Rect rect = this.R;
        int i14 = this.C + i13 + rect.left + rect.right + i11;
        int i15 = this.G + i11;
        if (f10 <= i13 || f10 >= i14 || f11 <= i12 || f11 >= i15) {
            return false;
        }
        return true;
    }

    private Layout i(CharSequence charSequence) {
        int i10;
        TextPaint textPaint = this.I;
        if (charSequence != null) {
            i10 = (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint));
        } else {
            i10 = 0;
        }
        return new StaticLayout(charSequence, textPaint, i10, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    private void k() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence charSequence = this.f1283q;
            if (charSequence == null) {
                charSequence = getResources().getString(h.h.f16562b);
            }
            d0.p0.j0(this, charSequence);
        }
    }

    private void l() {
        if (Build.VERSION.SDK_INT >= 30) {
            CharSequence charSequence = this.f1281o;
            if (charSequence == null) {
                charSequence = getResources().getString(h.h.f16563c);
            }
            d0.p0.j0(this, charSequence);
        }
    }

    private void o(int i10, int i11) {
        Typeface typeface;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 3) {
                    typeface = null;
                } else {
                    typeface = Typeface.MONOSPACE;
                }
            } else {
                typeface = Typeface.SERIF;
            }
        } else {
            typeface = Typeface.SANS_SERIF;
        }
        n(typeface, i11);
    }

    private void p() {
        if (this.Q == null && this.P.b() && androidx.emoji2.text.e.h()) {
            androidx.emoji2.text.e b10 = androidx.emoji2.text.e.b();
            int d10 = b10.d();
            if (d10 == 3 || d10 == 0) {
                c cVar = new c(this);
                this.Q = cVar;
                b10.s(cVar);
            }
        }
    }

    private void q(MotionEvent motionEvent) {
        boolean z10;
        this.f1286t = 0;
        boolean z11 = true;
        if (motionEvent.getAction() == 1 && isEnabled()) {
            z10 = true;
        } else {
            z10 = false;
        }
        boolean isChecked = isChecked();
        if (z10) {
            this.f1290x.computeCurrentVelocity(1000);
            float xVelocity = this.f1290x.getXVelocity();
            if (Math.abs(xVelocity) > this.f1291y) {
                if (!q1.b(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f) {
                    z11 = false;
                }
            } else {
                z11 = getTargetCheckedState();
            }
        } else {
            z11 = isChecked;
        }
        if (z11 != isChecked) {
            playSoundEffect(0);
        }
        setChecked(z11);
        e(motionEvent);
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f1283q = charSequence;
        this.f1284r = g(charSequence);
        this.L = null;
        if (this.f1285s) {
            p();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f1281o = charSequence;
        this.f1282p = g(charSequence);
        this.K = null;
        if (this.f1285s) {
            p();
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        Rect rect;
        int i10;
        int i11;
        Rect rect2 = this.R;
        int i12 = this.D;
        int i13 = this.E;
        int i14 = this.F;
        int i15 = this.G;
        int thumbOffset = getThumbOffset() + i12;
        Drawable drawable = this.f1267a;
        if (drawable != null) {
            rect = o0.d(drawable);
        } else {
            rect = o0.f1579c;
        }
        Drawable drawable2 = this.f1272f;
        if (drawable2 != null) {
            drawable2.getPadding(rect2);
            int i16 = rect2.left;
            thumbOffset += i16;
            if (rect != null) {
                int i17 = rect.left;
                if (i17 > i16) {
                    i12 += i17 - i16;
                }
                int i18 = rect.top;
                int i19 = rect2.top;
                if (i18 > i19) {
                    i10 = (i18 - i19) + i13;
                } else {
                    i10 = i13;
                }
                int i20 = rect.right;
                int i21 = rect2.right;
                if (i20 > i21) {
                    i14 -= i20 - i21;
                }
                int i22 = rect.bottom;
                int i23 = rect2.bottom;
                if (i22 > i23) {
                    i11 = i15 - (i22 - i23);
                    this.f1272f.setBounds(i12, i10, i14, i11);
                }
            } else {
                i10 = i13;
            }
            i11 = i15;
            this.f1272f.setBounds(i12, i10, i14, i11);
        }
        Drawable drawable3 = this.f1267a;
        if (drawable3 != null) {
            drawable3.getPadding(rect2);
            int i24 = thumbOffset - rect2.left;
            int i25 = thumbOffset + this.C + rect2.right;
            this.f1267a.setBounds(i24, i13, i25, i15);
            Drawable background = getBackground();
            if (background != null) {
                w.a.d(background, i24, i13, i25, i15);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f10, float f11) {
        super.drawableHotspotChanged(f10, f11);
        Drawable drawable = this.f1267a;
        if (drawable != null) {
            w.a.c(drawable, f10, f11);
        }
        Drawable drawable2 = this.f1272f;
        if (drawable2 != null) {
            w.a.c(drawable2, f10, f11);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f1267a;
        boolean z10 = false;
        if (drawable != null && drawable.isStateful()) {
            z10 = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.f1272f;
        if (drawable2 != null && drawable2.isStateful()) {
            z10 |= drawable2.setState(drawableState);
        }
        if (z10) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!q1.b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.A;
        if (!TextUtils.isEmpty(getText())) {
            return compoundPaddingLeft + this.f1279m;
        }
        return compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (q1.b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.A;
        if (!TextUtils.isEmpty(getText())) {
            return compoundPaddingRight + this.f1279m;
        }
        return compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return androidx.core.widget.i.m(super.getCustomSelectionActionModeCallback());
    }

    public boolean getShowText() {
        return this.f1285s;
    }

    public boolean getSplitTrack() {
        return this.f1280n;
    }

    public int getSwitchMinWidth() {
        return this.f1278l;
    }

    public int getSwitchPadding() {
        return this.f1279m;
    }

    public CharSequence getTextOff() {
        return this.f1283q;
    }

    public CharSequence getTextOn() {
        return this.f1281o;
    }

    public Drawable getThumbDrawable() {
        return this.f1267a;
    }

    protected final float getThumbPosition() {
        return this.f1292z;
    }

    public int getThumbTextPadding() {
        return this.f1277k;
    }

    public ColorStateList getThumbTintList() {
        return this.f1268b;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f1269c;
    }

    public Drawable getTrackDrawable() {
        return this.f1272f;
    }

    public ColorStateList getTrackTintList() {
        return this.f1273g;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f1274h;
    }

    void j() {
        setTextOnInternal(this.f1281o);
        setTextOffInternal(this.f1283q);
        requestLayout();
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f1267a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f1272f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        ObjectAnimator objectAnimator = this.N;
        if (objectAnimator != null && objectAnimator.isStarted()) {
            this.N.end();
            this.N = null;
        }
    }

    public void m(Context context, int i10) {
        f1 s10 = f1.s(context, i10, h.j.S2);
        ColorStateList c10 = s10.c(h.j.W2);
        if (c10 != null) {
            this.J = c10;
        } else {
            this.J = getTextColors();
        }
        int e10 = s10.e(h.j.T2, 0);
        if (e10 != 0) {
            float f10 = e10;
            if (f10 != this.I.getTextSize()) {
                this.I.setTextSize(f10);
                requestLayout();
            }
        }
        o(s10.j(h.j.U2, -1), s10.j(h.j.V2, -1));
        if (s10.a(h.j.f16589b3, false)) {
            this.M = new l.a(getContext());
        } else {
            this.M = null;
        }
        setTextOnInternal(this.f1281o);
        setTextOffInternal(this.f1283q);
        s10.v();
    }

    public void n(Typeface typeface, int i10) {
        Typeface create;
        int i11;
        float f10 = 0.0f;
        boolean z10 = false;
        if (i10 > 0) {
            if (typeface == null) {
                create = Typeface.defaultFromStyle(i10);
            } else {
                create = Typeface.create(typeface, i10);
            }
            setSwitchTypeface(create);
            if (create != null) {
                i11 = create.getStyle();
            } else {
                i11 = 0;
            }
            int i12 = (~i11) & i10;
            TextPaint textPaint = this.I;
            if ((i12 & 1) != 0) {
                z10 = true;
            }
            textPaint.setFakeBoldText(z10);
            TextPaint textPaint2 = this.I;
            if ((i12 & 2) != 0) {
                f10 = -0.25f;
            }
            textPaint2.setTextSkewX(f10);
            return;
        }
        this.I.setFakeBoldText(false);
        this.I.setTextSkewX(0.0f);
        setSwitchTypeface(typeface);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, T);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        Layout layout;
        int width;
        super.onDraw(canvas);
        Rect rect = this.R;
        Drawable drawable = this.f1272f;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i10 = this.E;
        int i11 = this.G;
        int i12 = i10 + rect.top;
        int i13 = i11 - rect.bottom;
        Drawable drawable2 = this.f1267a;
        if (drawable != null) {
            if (this.f1280n && drawable2 != null) {
                Rect d10 = o0.d(drawable2);
                drawable2.copyBounds(rect);
                rect.left += d10.left;
                rect.right -= d10.right;
                int save = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(save);
            } else {
                drawable.draw(canvas);
            }
        }
        int save2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        if (getTargetCheckedState()) {
            layout = this.K;
        } else {
            layout = this.L;
        }
        if (layout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.J;
            if (colorStateList != null) {
                this.I.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.I.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i12 + i13) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(save2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        CharSequence charSequence;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        if (Build.VERSION.SDK_INT < 30) {
            if (isChecked()) {
                charSequence = this.f1281o;
            } else {
                charSequence = this.f1283q;
            }
            if (!TextUtils.isEmpty(charSequence)) {
                CharSequence text = accessibilityNodeInfo.getText();
                if (TextUtils.isEmpty(text)) {
                    accessibilityNodeInfo.setText(charSequence);
                    return;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append(text);
                sb2.append(' ');
                sb2.append(charSequence);
                accessibilityNodeInfo.setText(sb2);
            }
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int i14;
        int width;
        int i15;
        int i16;
        int paddingTop;
        int i17;
        super.onLayout(z10, i10, i11, i12, i13);
        int i18 = 0;
        if (this.f1267a != null) {
            Rect rect = this.R;
            Drawable drawable = this.f1272f;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect d10 = o0.d(this.f1267a);
            i14 = Math.max(0, d10.left - rect.left);
            i18 = Math.max(0, d10.right - rect.right);
        } else {
            i14 = 0;
        }
        if (q1.b(this)) {
            i15 = getPaddingLeft() + i14;
            width = ((this.A + i15) - i14) - i18;
        } else {
            width = (getWidth() - getPaddingRight()) - i18;
            i15 = (width - this.A) + i14 + i18;
        }
        int gravity = getGravity() & 112;
        if (gravity != 16) {
            if (gravity != 80) {
                paddingTop = getPaddingTop();
                i16 = this.B;
            } else {
                i17 = getHeight() - getPaddingBottom();
                paddingTop = i17 - this.B;
                this.D = i15;
                this.E = paddingTop;
                this.G = i17;
                this.F = width;
            }
        } else {
            i16 = this.B;
            paddingTop = (((getPaddingTop() + getHeight()) - getPaddingBottom()) / 2) - (i16 / 2);
        }
        i17 = i16 + paddingTop;
        this.D = i15;
        this.E = paddingTop;
        this.G = i17;
        this.F = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        if (this.f1285s) {
            if (this.K == null) {
                this.K = i(this.f1282p);
            }
            if (this.L == null) {
                this.L = i(this.f1284r);
            }
        }
        Rect rect = this.R;
        Drawable drawable = this.f1267a;
        int i16 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            i12 = (this.f1267a.getIntrinsicWidth() - rect.left) - rect.right;
            i13 = this.f1267a.getIntrinsicHeight();
        } else {
            i12 = 0;
            i13 = 0;
        }
        if (this.f1285s) {
            i14 = Math.max(this.K.getWidth(), this.L.getWidth()) + (this.f1277k * 2);
        } else {
            i14 = 0;
        }
        this.C = Math.max(i14, i12);
        Drawable drawable2 = this.f1272f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            i16 = this.f1272f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int i17 = rect.left;
        int i18 = rect.right;
        Drawable drawable3 = this.f1267a;
        if (drawable3 != null) {
            Rect d10 = o0.d(drawable3);
            i17 = Math.max(i17, d10.left);
            i18 = Math.max(i18, d10.right);
        }
        if (this.H) {
            i15 = Math.max(this.f1278l, (this.C * 2) + i17 + i18);
        } else {
            i15 = this.f1278l;
        }
        int max = Math.max(i16, i13);
        this.A = i15;
        this.B = max;
        super.onMeasure(i10, i11);
        if (getMeasuredHeight() < max) {
            setMeasuredDimension(getMeasuredWidthAndState(), max);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        CharSequence charSequence;
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        if (isChecked()) {
            charSequence = this.f1281o;
        } else {
            charSequence = this.f1283q;
        }
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0012, code lost:
        if (r0 != 3) goto L8;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            android.view.VelocityTracker r0 = r6.f1290x
            r0.addMovement(r7)
            int r0 = r7.getActionMasked()
            r1 = 1
            if (r0 == 0) goto L9d
            r2 = 2
            if (r0 == r1) goto L89
            if (r0 == r2) goto L16
            r3 = 3
            if (r0 == r3) goto L89
            goto Lb7
        L16:
            int r0 = r6.f1286t
            if (r0 == r1) goto L55
            if (r0 == r2) goto L1e
            goto Lb7
        L1e:
            float r7 = r7.getX()
            int r0 = r6.getThumbScrollRange()
            float r2 = r6.f1288v
            float r2 = r7 - r2
            r3 = 1065353216(0x3f800000, float:1.0)
            r4 = 0
            if (r0 == 0) goto L32
            float r0 = (float) r0
            float r2 = r2 / r0
            goto L3b
        L32:
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L38
            r2 = r3
            goto L3b
        L38:
            r0 = -1082130432(0xffffffffbf800000, float:-1.0)
            r2 = r0
        L3b:
            boolean r0 = androidx.appcompat.widget.q1.b(r6)
            if (r0 == 0) goto L42
            float r2 = -r2
        L42:
            float r0 = r6.f1292z
            float r0 = r0 + r2
            float r0 = f(r0, r4, r3)
            float r2 = r6.f1292z
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r2 == 0) goto L54
            r6.f1288v = r7
            r6.setThumbPosition(r0)
        L54:
            return r1
        L55:
            float r0 = r7.getX()
            float r3 = r7.getY()
            float r4 = r6.f1288v
            float r4 = r0 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.f1287u
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 > 0) goto L7b
            float r4 = r6.f1289w
            float r4 = r3 - r4
            float r4 = java.lang.Math.abs(r4)
            int r5 = r6.f1287u
            float r5 = (float) r5
            int r4 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
            if (r4 <= 0) goto Lb7
        L7b:
            r6.f1286t = r2
            android.view.ViewParent r7 = r6.getParent()
            r7.requestDisallowInterceptTouchEvent(r1)
            r6.f1288v = r0
            r6.f1289w = r3
            return r1
        L89:
            int r0 = r6.f1286t
            if (r0 != r2) goto L94
            r6.q(r7)
            super.onTouchEvent(r7)
            return r1
        L94:
            r0 = 0
            r6.f1286t = r0
            android.view.VelocityTracker r0 = r6.f1290x
            r0.clear()
            goto Lb7
        L9d:
            float r0 = r7.getX()
            float r2 = r7.getY()
            boolean r3 = r6.isEnabled()
            if (r3 == 0) goto Lb7
            boolean r3 = r6.h(r0, r2)
            if (r3 == 0) goto Lb7
            r6.f1286t = r1
            r6.f1288v = r0
            r6.f1289w = r2
        Lb7:
            boolean r7 = super.onTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z10) {
        super.setAllCaps(z10);
        getEmojiTextViewHelper().d(z10);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z10) {
        float f10;
        super.setChecked(z10);
        boolean isChecked = isChecked();
        if (isChecked) {
            l();
        } else {
            k();
        }
        if (getWindowToken() != null && d0.p0.F(this)) {
            a(isChecked);
            return;
        }
        d();
        if (isChecked) {
            f10 = 1.0f;
        } else {
            f10 = 0.0f;
        }
        setThumbPosition(f10);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(androidx.core.widget.i.n(this, callback));
    }

    public void setEmojiCompatEnabled(boolean z10) {
        getEmojiTextViewHelper().e(z10);
        setTextOnInternal(this.f1281o);
        setTextOffInternal(this.f1283q);
        requestLayout();
    }

    protected final void setEnforceSwitchWidth(boolean z10) {
        this.H = z10;
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setShowText(boolean z10) {
        if (this.f1285s != z10) {
            this.f1285s = z10;
            requestLayout();
            if (z10) {
                p();
            }
        }
    }

    public void setSplitTrack(boolean z10) {
        this.f1280n = z10;
        invalidate();
    }

    public void setSwitchMinWidth(int i10) {
        this.f1278l = i10;
        requestLayout();
    }

    public void setSwitchPadding(int i10) {
        this.f1279m = i10;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        if ((this.I.getTypeface() != null && !this.I.getTypeface().equals(typeface)) || (this.I.getTypeface() == null && typeface != null)) {
            this.I.setTypeface(typeface);
            requestLayout();
            invalidate();
        }
    }

    public void setTextOff(CharSequence charSequence) {
        setTextOffInternal(charSequence);
        requestLayout();
        if (!isChecked()) {
            k();
        }
    }

    public void setTextOn(CharSequence charSequence) {
        setTextOnInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            l();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1267a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1267a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    void setThumbPosition(float f10) {
        this.f1292z = f10;
        invalidate();
    }

    public void setThumbResource(int i10) {
        setThumbDrawable(i.a.b(getContext(), i10));
    }

    public void setThumbTextPadding(int i10) {
        this.f1277k = i10;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f1268b = colorStateList;
        this.f1270d = true;
        b();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f1269c = mode;
        this.f1271e = true;
        b();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f1272f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1272f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i10) {
        setTrackDrawable(i.a.b(getContext(), i10));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f1273g = colorStateList;
        this.f1275i = true;
        c();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f1274h = mode;
        this.f1276j = true;
        c();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        if (!super.verifyDrawable(drawable) && drawable != this.f1267a && drawable != this.f1272f) {
            return false;
        }
        return true;
    }

    public SwitchCompat(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1268b = null;
        this.f1269c = null;
        this.f1270d = false;
        this.f1271e = false;
        this.f1273g = null;
        this.f1274h = null;
        this.f1275i = false;
        this.f1276j = false;
        this.f1290x = VelocityTracker.obtain();
        this.H = true;
        this.R = new Rect();
        b1.a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.I = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        f1 u10 = f1.u(context, attributeSet, h.j.D2, i10, 0);
        d0.p0.S(this, context, h.j.D2, attributeSet, u10.q(), i10, 0);
        Drawable f10 = u10.f(h.j.G2);
        this.f1267a = f10;
        if (f10 != null) {
            f10.setCallback(this);
        }
        Drawable f11 = u10.f(h.j.P2);
        this.f1272f = f11;
        if (f11 != null) {
            f11.setCallback(this);
        }
        setTextOnInternal(u10.o(h.j.E2));
        setTextOffInternal(u10.o(h.j.F2));
        this.f1285s = u10.a(h.j.H2, true);
        this.f1277k = u10.e(h.j.M2, 0);
        this.f1278l = u10.e(h.j.J2, 0);
        this.f1279m = u10.e(h.j.K2, 0);
        this.f1280n = u10.a(h.j.I2, false);
        ColorStateList c10 = u10.c(h.j.N2);
        if (c10 != null) {
            this.f1268b = c10;
            this.f1270d = true;
        }
        PorterDuff.Mode e10 = o0.e(u10.j(h.j.O2, -1), null);
        if (this.f1269c != e10) {
            this.f1269c = e10;
            this.f1271e = true;
        }
        if (this.f1270d || this.f1271e) {
            b();
        }
        ColorStateList c11 = u10.c(h.j.Q2);
        if (c11 != null) {
            this.f1273g = c11;
            this.f1275i = true;
        }
        PorterDuff.Mode e11 = o0.e(u10.j(h.j.R2, -1), null);
        if (this.f1274h != e11) {
            this.f1274h = e11;
            this.f1276j = true;
        }
        if (this.f1275i || this.f1276j) {
            c();
        }
        int m10 = u10.m(h.j.L2, 0);
        if (m10 != 0) {
            m(context, m10);
        }
        c0 c0Var = new c0(this);
        this.O = c0Var;
        c0Var.m(attributeSet, i10);
        u10.v();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f1287u = viewConfiguration.getScaledTouchSlop();
        this.f1291y = viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().c(attributeSet, i10);
        refreshDrawableState();
        setChecked(isChecked());
    }
}
