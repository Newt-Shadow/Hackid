package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class a extends ViewGroup {

    /* renamed from: a  reason: collision with root package name */
    protected final C0016a f1334a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f1335b;

    /* renamed from: c  reason: collision with root package name */
    protected ActionMenuView f1336c;

    /* renamed from: d  reason: collision with root package name */
    protected c f1337d;

    /* renamed from: e  reason: collision with root package name */
    protected int f1338e;

    /* renamed from: f  reason: collision with root package name */
    protected d0.w0 f1339f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f1340g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f1341h;

    /* renamed from: androidx.appcompat.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    protected class C0016a implements d0.x0 {

        /* renamed from: a  reason: collision with root package name */
        private boolean f1342a = false;

        /* renamed from: b  reason: collision with root package name */
        int f1343b;

        protected C0016a() {
        }

        @Override // d0.x0
        public void a(View view) {
            this.f1342a = true;
        }

        @Override // d0.x0
        public void b(View view) {
            if (this.f1342a) {
                return;
            }
            a aVar = a.this;
            aVar.f1339f = null;
            a.super.setVisibility(this.f1343b);
        }

        @Override // d0.x0
        public void c(View view) {
            a.super.setVisibility(0);
            this.f1342a = false;
        }

        public C0016a d(d0.w0 w0Var, int i10) {
            a.this.f1339f = w0Var;
            this.f1343b = i10;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1334a = new C0016a();
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(h.a.f16441a, typedValue, true) && typedValue.resourceId != 0) {
            this.f1335b = new ContextThemeWrapper(context, typedValue.resourceId);
        } else {
            this.f1335b = context;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int d(int i10, int i11, boolean z10) {
        return z10 ? i10 - i11 : i10 + i11;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int c(View view, int i10, int i11, int i12) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE), i11);
        return Math.max(0, (i10 - view.getMeasuredWidth()) - i12);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int e(View view, int i10, int i11, int i12, boolean z10) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i13 = i11 + ((i12 - measuredHeight) / 2);
        if (z10) {
            view.layout(i10 - measuredWidth, i13, i10, measuredHeight + i13);
        } else {
            view.layout(i10, i13, i10 + measuredWidth, measuredHeight + i13);
        }
        if (z10) {
            return -measuredWidth;
        }
        return measuredWidth;
    }

    public d0.w0 f(int i10, long j10) {
        d0.w0 w0Var = this.f1339f;
        if (w0Var != null) {
            w0Var.c();
        }
        if (i10 == 0) {
            if (getVisibility() != 0) {
                setAlpha(0.0f);
            }
            d0.w0 b10 = d0.p0.c(this).b(1.0f);
            b10.f(j10);
            b10.h(this.f1334a.d(b10, i10));
            return b10;
        }
        d0.w0 b11 = d0.p0.c(this).b(0.0f);
        b11.f(j10);
        b11.h(this.f1334a.d(b11, i10));
        return b11;
    }

    public int getAnimatedVisibility() {
        if (this.f1339f != null) {
            return this.f1334a.f1343b;
        }
        return getVisibility();
    }

    public int getContentHeight() {
        return this.f1338e;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(null, h.j.f16580a, h.a.f16443c, 0);
        setContentHeight(obtainStyledAttributes.getLayoutDimension(h.j.f16625j, 0));
        obtainStyledAttributes.recycle();
        c cVar = this.f1337d;
        if (cVar != null) {
            cVar.F(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f1341h = false;
        }
        if (!this.f1341h) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.f1341h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f1341h = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1340g = false;
        }
        if (!this.f1340g) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.f1340g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1340g = false;
        }
        return true;
    }

    public abstract void setContentHeight(int i10);

    @Override // android.view.View
    public void setVisibility(int i10) {
        if (i10 != getVisibility()) {
            d0.w0 w0Var = this.f1339f;
            if (w0Var != null) {
                w0Var.c();
            }
            super.setVisibility(i10);
        }
    }
}
