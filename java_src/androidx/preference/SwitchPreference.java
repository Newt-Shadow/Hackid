package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.Switch;
import b1.c;
import b1.g;
import u.i;
/* loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {
    private final a I;
    private CharSequence J;
    private CharSequence K;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a implements CompoundButton.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
            if (!SwitchPreference.this.a(Boolean.valueOf(z10))) {
                compoundButton.setChecked(!z10);
            } else {
                SwitchPreference.this.M(z10);
            }
        }
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.I = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.J0, i10, i11);
        P(i.f(obtainStyledAttributes, g.R0, g.K0));
        O(i.f(obtainStyledAttributes, g.Q0, g.L0));
        S(i.f(obtainStyledAttributes, g.T0, g.N0));
        R(i.f(obtainStyledAttributes, g.S0, g.O0));
        N(i.b(obtainStyledAttributes, g.P0, g.M0, false));
        obtainStyledAttributes.recycle();
    }

    private void T(View view) {
        boolean z10 = view instanceof Switch;
        if (z10) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.D);
        }
        if (z10) {
            Switch r42 = (Switch) view;
            r42.setTextOn(this.J);
            r42.setTextOff(this.K);
            r42.setOnCheckedChangeListener(this.I);
        }
    }

    private void U(View view) {
        if (!((AccessibilityManager) f().getSystemService("accessibility")).isEnabled()) {
            return;
        }
        T(view.findViewById(16908352));
        Q(view.findViewById(16908304));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    public void E(View view) {
        super.E(view);
        U(view);
    }

    public void R(CharSequence charSequence) {
        this.K = charSequence;
        x();
    }

    public void S(CharSequence charSequence) {
        this.J = charSequence;
        x();
    }

    public SwitchPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SwitchPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, c.f3689j, 16843629));
    }
}
