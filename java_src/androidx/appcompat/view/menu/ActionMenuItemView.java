package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.d0;
import androidx.appcompat.widget.k1;
import androidx.appcompat.widget.r0;
/* loaded from: classes.dex */
public class ActionMenuItemView extends d0 implements n.a, View.OnClickListener, ActionMenuView.a {

    /* renamed from: h  reason: collision with root package name */
    i f912h;

    /* renamed from: i  reason: collision with root package name */
    private CharSequence f913i;

    /* renamed from: j  reason: collision with root package name */
    private Drawable f914j;

    /* renamed from: k  reason: collision with root package name */
    g.b f915k;

    /* renamed from: l  reason: collision with root package name */
    private r0 f916l;

    /* renamed from: m  reason: collision with root package name */
    b f917m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f918n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f919o;

    /* renamed from: p  reason: collision with root package name */
    private int f920p;

    /* renamed from: q  reason: collision with root package name */
    private int f921q;

    /* renamed from: r  reason: collision with root package name */
    private int f922r;

    /* loaded from: classes.dex */
    private class a extends r0 {
        public a() {
            super(ActionMenuItemView.this);
        }

        @Override // androidx.appcompat.widget.r0
        public p b() {
            b bVar = ActionMenuItemView.this.f917m;
            if (bVar != null) {
                return bVar.a();
            }
            return null;
        }

        @Override // androidx.appcompat.widget.r0
        protected boolean c() {
            p b10;
            ActionMenuItemView actionMenuItemView = ActionMenuItemView.this;
            g.b bVar = actionMenuItemView.f915k;
            if (bVar == null || !bVar.a(actionMenuItemView.f912h) || (b10 = b()) == null || !b10.a()) {
                return false;
            }
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class b {
        public abstract p a();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private boolean s() {
        Configuration configuration = getContext().getResources().getConfiguration();
        int i10 = configuration.screenWidthDp;
        int i11 = configuration.screenHeightDp;
        if (i10 < 480 && ((i10 < 640 || i11 < 480) && configuration.orientation != 2)) {
            return false;
        }
        return true;
    }

    private void t() {
        CharSequence charSequence;
        CharSequence title;
        boolean z10 = true;
        boolean z11 = !TextUtils.isEmpty(this.f913i);
        if (this.f914j != null && (!this.f912h.B() || (!this.f918n && !this.f919o))) {
            z10 = false;
        }
        boolean z12 = z11 & z10;
        CharSequence charSequence2 = null;
        if (z12) {
            charSequence = this.f913i;
        } else {
            charSequence = null;
        }
        setText(charSequence);
        CharSequence contentDescription = this.f912h.getContentDescription();
        if (TextUtils.isEmpty(contentDescription)) {
            if (z12) {
                title = null;
            } else {
                title = this.f912h.getTitle();
            }
            setContentDescription(title);
        } else {
            setContentDescription(contentDescription);
        }
        CharSequence tooltipText = this.f912h.getTooltipText();
        if (TextUtils.isEmpty(tooltipText)) {
            if (!z12) {
                charSequence2 = this.f912h.getTitle();
            }
            k1.a(this, charSequence2);
            return;
        }
        k1.a(this, tooltipText);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean a() {
        return r();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean b() {
        if (r() && this.f912h.getIcon() == null) {
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean c() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void d(i iVar, int i10) {
        int i11;
        this.f912h = iVar;
        setIcon(iVar.getIcon());
        setTitle(iVar.i(this));
        setId(iVar.getItemId());
        if (iVar.isVisible()) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        setVisibility(i11);
        setEnabled(iVar.isEnabled());
        if (iVar.hasSubMenu() && this.f916l == null) {
            this.f916l = new a();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        return Button.class.getName();
    }

    @Override // androidx.appcompat.view.menu.n.a
    public i getItemData() {
        return this.f912h;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        g.b bVar = this.f915k;
        if (bVar != null) {
            bVar.a(this.f912h);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f918n = s();
        t();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.d0, android.widget.TextView, android.view.View
    public void onMeasure(int i10, int i11) {
        int i12;
        int i13;
        boolean r10 = r();
        if (r10 && (i13 = this.f921q) >= 0) {
            super.setPadding(i13, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i10);
        int size = View.MeasureSpec.getSize(i10);
        int measuredWidth = getMeasuredWidth();
        if (mode == Integer.MIN_VALUE) {
            i12 = Math.min(size, this.f920p);
        } else {
            i12 = this.f920p;
        }
        if (mode != 1073741824 && this.f920p > 0 && measuredWidth < i12) {
            super.onMeasure(View.MeasureSpec.makeMeasureSpec(i12, 1073741824), i11);
        }
        if (!r10 && this.f914j != null) {
            super.setPadding((getMeasuredWidth() - this.f914j.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        r0 r0Var;
        if (this.f912h.hasSubMenu() && (r0Var = this.f916l) != null && r0Var.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public boolean r() {
        return !TextUtils.isEmpty(getText());
    }

    public void setCheckable(boolean z10) {
    }

    public void setChecked(boolean z10) {
    }

    public void setExpandedFormat(boolean z10) {
        if (this.f919o != z10) {
            this.f919o = z10;
            i iVar = this.f912h;
            if (iVar != null) {
                iVar.c();
            }
        }
    }

    public void setIcon(Drawable drawable) {
        this.f914j = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i10 = this.f922r;
            if (intrinsicWidth > i10) {
                intrinsicHeight = (int) (intrinsicHeight * (i10 / intrinsicWidth));
                intrinsicWidth = i10;
            }
            if (intrinsicHeight > i10) {
                intrinsicWidth = (int) (intrinsicWidth * (i10 / intrinsicHeight));
            } else {
                i10 = intrinsicHeight;
            }
            drawable.setBounds(0, 0, intrinsicWidth, i10);
        }
        setCompoundDrawables(drawable, null, null, null);
        t();
    }

    public void setItemInvoker(g.b bVar) {
        this.f915k = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        this.f921q = i10;
        super.setPadding(i10, i11, i12, i13);
    }

    public void setPopupCallback(b bVar) {
        this.f917m = bVar;
    }

    public void setTitle(CharSequence charSequence) {
        this.f913i = charSequence;
        t();
    }

    public ActionMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Resources resources = context.getResources();
        this.f918n = s();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, h.j.f16685v, i10, 0);
        this.f920p = obtainStyledAttributes.getDimensionPixelSize(h.j.f16690w, 0);
        obtainStyledAttributes.recycle();
        this.f922r = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.f921q = -1;
        setSaveEnabled(false);
    }
}
