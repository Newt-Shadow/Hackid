package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import b1.c;
import b1.d;
import b1.g;
import u.i;
/* loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {
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
            if (!SwitchPreferenceCompat.this.a(Boolean.valueOf(z10))) {
                compoundButton.setChecked(!z10);
            } else {
                SwitchPreferenceCompat.this.M(z10);
            }
        }
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.I = new a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.U0, i10, i11);
        P(i.f(obtainStyledAttributes, g.f3701c1, g.V0));
        O(i.f(obtainStyledAttributes, g.f3698b1, g.W0));
        S(i.f(obtainStyledAttributes, g.f3707e1, g.Y0));
        R(i.f(obtainStyledAttributes, g.f3704d1, g.Z0));
        N(i.b(obtainStyledAttributes, g.f3695a1, g.X0, false));
        obtainStyledAttributes.recycle();
    }

    private void T(View view) {
        boolean z10 = view instanceof SwitchCompat;
        if (z10) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.D);
        }
        if (z10) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.J);
            switchCompat.setTextOff(this.K);
            switchCompat.setOnCheckedChangeListener(this.I);
        }
    }

    private void U(View view) {
        if (!((AccessibilityManager) f().getSystemService("accessibility")).isEnabled()) {
            return;
        }
        T(view.findViewById(d.f3690a));
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

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, c.f3688i);
    }
}
