package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import b1.c;
import b1.g;
import u.i;
/* loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {
    private final a I;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements CompoundButton.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (!CheckBoxPreference.this.a(Boolean.valueOf(z10))) {
                compoundButton.setChecked(!z10);
            } else {
                CheckBoxPreference.this.M(z10);
            }
        }
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    private void R(View view) {
        boolean z10 = view instanceof CompoundButton;
        if (z10) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.D);
        }
        if (z10) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.I);
        }
    }

    private void S(View view) {
        if (!((AccessibilityManager) f().getSystemService("accessibility")).isEnabled()) {
            return;
        }
        R(view.findViewById(16908289));
        Q(view.findViewById(16908304));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    public void E(View view) {
        super.E(view);
        S(view);
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.I = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.f3696b, i10, i11);
        P(i.f(obtainStyledAttributes, g.f3712h, g.f3699c));
        O(i.f(obtainStyledAttributes, g.f3710g, g.f3702d));
        N(i.b(obtainStyledAttributes, g.f3708f, g.f3705e, false));
        obtainStyledAttributes.recycle();
    }

    public CheckBoxPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, c.f3680a, 16842895));
    }
}
