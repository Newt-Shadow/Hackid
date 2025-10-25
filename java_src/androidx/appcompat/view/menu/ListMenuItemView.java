package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.f1;
import d0.p0;
/* loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements n.a, AbsListView.SelectionBoundsAdjuster {

    /* renamed from: a  reason: collision with root package name */
    private i f927a;

    /* renamed from: b  reason: collision with root package name */
    private ImageView f928b;

    /* renamed from: c  reason: collision with root package name */
    private RadioButton f929c;

    /* renamed from: d  reason: collision with root package name */
    private TextView f930d;

    /* renamed from: e  reason: collision with root package name */
    private CheckBox f931e;

    /* renamed from: f  reason: collision with root package name */
    private TextView f932f;

    /* renamed from: g  reason: collision with root package name */
    private ImageView f933g;

    /* renamed from: h  reason: collision with root package name */
    private ImageView f934h;

    /* renamed from: i  reason: collision with root package name */
    private LinearLayout f935i;

    /* renamed from: j  reason: collision with root package name */
    private Drawable f936j;

    /* renamed from: k  reason: collision with root package name */
    private int f937k;

    /* renamed from: l  reason: collision with root package name */
    private Context f938l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f939m;

    /* renamed from: n  reason: collision with root package name */
    private Drawable f940n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f941o;

    /* renamed from: p  reason: collision with root package name */
    private LayoutInflater f942p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f943q;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, h.a.A);
    }

    private void a(View view) {
        b(view, -1);
    }

    private void b(View view, int i10) {
        LinearLayout linearLayout = this.f935i;
        if (linearLayout != null) {
            linearLayout.addView(view, i10);
        } else {
            addView(view, i10);
        }
    }

    private void e() {
        CheckBox checkBox = (CheckBox) getInflater().inflate(h.g.f16548h, (ViewGroup) this, false);
        this.f931e = checkBox;
        a(checkBox);
    }

    private void f() {
        ImageView imageView = (ImageView) getInflater().inflate(h.g.f16549i, (ViewGroup) this, false);
        this.f928b = imageView;
        b(imageView, 0);
    }

    private void g() {
        RadioButton radioButton = (RadioButton) getInflater().inflate(h.g.f16551k, (ViewGroup) this, false);
        this.f929c = radioButton;
        a(radioButton);
    }

    private LayoutInflater getInflater() {
        if (this.f942p == null) {
            this.f942p = LayoutInflater.from(getContext());
        }
        return this.f942p;
    }

    private void setSubMenuArrowVisible(boolean z10) {
        int i10;
        ImageView imageView = this.f933g;
        if (imageView != null) {
            if (z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            imageView.setVisibility(i10);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f934h;
        if (imageView != null && imageView.getVisibility() == 0) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f934h.getLayoutParams();
            rect.top += this.f934h.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
        }
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean c() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void d(i iVar, int i10) {
        int i11;
        this.f927a = iVar;
        if (iVar.isVisible()) {
            i11 = 0;
        } else {
            i11 = 8;
        }
        setVisibility(i11);
        setTitle(iVar.i(this));
        setCheckable(iVar.isCheckable());
        h(iVar.A(), iVar.g());
        setIcon(iVar.getIcon());
        setEnabled(iVar.isEnabled());
        setSubMenuArrowVisible(iVar.hasSubMenu());
        setContentDescription(iVar.getContentDescription());
    }

    @Override // androidx.appcompat.view.menu.n.a
    public i getItemData() {
        return this.f927a;
    }

    public void h(boolean z10, char c10) {
        int i10;
        if (z10 && this.f927a.A()) {
            i10 = 0;
        } else {
            i10 = 8;
        }
        if (i10 == 0) {
            this.f932f.setText(this.f927a.h());
        }
        if (this.f932f.getVisibility() != i10) {
            this.f932f.setVisibility(i10);
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        p0.X(this, this.f936j);
        TextView textView = (TextView) findViewById(h.f.M);
        this.f930d = textView;
        int i10 = this.f937k;
        if (i10 != -1) {
            textView.setTextAppearance(this.f938l, i10);
        }
        this.f932f = (TextView) findViewById(h.f.F);
        ImageView imageView = (ImageView) findViewById(h.f.I);
        this.f933g = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f940n);
        }
        this.f934h = (ImageView) findViewById(h.f.f16532r);
        this.f935i = (LinearLayout) findViewById(h.f.f16526l);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        if (this.f928b != null && this.f939m) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f928b.getLayoutParams();
            int i12 = layoutParams.height;
            if (i12 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i12;
            }
        }
        super.onMeasure(i10, i11);
    }

    public void setCheckable(boolean z10) {
        CompoundButton compoundButton;
        View view;
        if (!z10 && this.f929c == null && this.f931e == null) {
            return;
        }
        if (this.f927a.m()) {
            if (this.f929c == null) {
                g();
            }
            compoundButton = this.f929c;
            view = this.f931e;
        } else {
            if (this.f931e == null) {
                e();
            }
            compoundButton = this.f931e;
            view = this.f929c;
        }
        if (z10) {
            compoundButton.setChecked(this.f927a.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view != null && view.getVisibility() != 8) {
                view.setVisibility(8);
                return;
            }
            return;
        }
        CheckBox checkBox = this.f931e;
        if (checkBox != null) {
            checkBox.setVisibility(8);
        }
        RadioButton radioButton = this.f929c;
        if (radioButton != null) {
            radioButton.setVisibility(8);
        }
    }

    public void setChecked(boolean z10) {
        CompoundButton compoundButton;
        if (this.f927a.m()) {
            if (this.f929c == null) {
                g();
            }
            compoundButton = this.f929c;
        } else {
            if (this.f931e == null) {
                e();
            }
            compoundButton = this.f931e;
        }
        compoundButton.setChecked(z10);
    }

    public void setForceShowIcon(boolean z10) {
        this.f943q = z10;
        this.f939m = z10;
    }

    public void setGroupDividerEnabled(boolean z10) {
        int i10;
        ImageView imageView = this.f934h;
        if (imageView != null) {
            if (!this.f941o && z10) {
                i10 = 0;
            } else {
                i10 = 8;
            }
            imageView.setVisibility(i10);
        }
    }

    public void setIcon(Drawable drawable) {
        boolean z10;
        if (!this.f927a.z() && !this.f943q) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (!z10 && !this.f939m) {
            return;
        }
        ImageView imageView = this.f928b;
        if (imageView == null && drawable == null && !this.f939m) {
            return;
        }
        if (imageView == null) {
            f();
        }
        if (drawable == null && !this.f939m) {
            this.f928b.setVisibility(8);
            return;
        }
        ImageView imageView2 = this.f928b;
        if (!z10) {
            drawable = null;
        }
        imageView2.setImageDrawable(drawable);
        if (this.f928b.getVisibility() != 0) {
            this.f928b.setVisibility(0);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence != null) {
            this.f930d.setText(charSequence);
            if (this.f930d.getVisibility() != 0) {
                this.f930d.setVisibility(0);
            }
        } else if (this.f930d.getVisibility() != 8) {
            this.f930d.setVisibility(8);
        }
    }

    public ListMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet);
        f1 u10 = f1.u(getContext(), attributeSet, h.j.T1, i10, 0);
        this.f936j = u10.f(h.j.V1);
        this.f937k = u10.m(h.j.U1, -1);
        this.f939m = u10.a(h.j.W1, false);
        this.f938l = context;
        this.f940n = u10.f(h.j.X1);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{16843049}, h.a.f16464x, 0);
        this.f941o = obtainStyledAttributes.hasValue(0);
        u10.v();
        obtainStyledAttributes.recycle();
    }
}
