package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
/* loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {
    protected boolean D;
    private CharSequence E;
    private CharSequence F;
    private boolean G;
    private boolean H;

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    @Override // androidx.preference.Preference
    protected Object B(TypedArray typedArray, int i10) {
        return Boolean.valueOf(typedArray.getBoolean(i10, false));
    }

    @Override // androidx.preference.Preference
    public boolean J() {
        boolean z10;
        if (this.H) {
            z10 = this.D;
        } else if (!this.D) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 || super.J()) {
            return true;
        }
        return false;
    }

    public boolean L() {
        return this.D;
    }

    public void M(boolean z10) {
        boolean z11;
        if (this.D != z10) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11 || !this.G) {
            this.D = z10;
            this.G = true;
            F(z10);
            if (z11) {
                y(J());
                x();
            }
        }
    }

    public void N(boolean z10) {
        this.H = z10;
    }

    public void O(CharSequence charSequence) {
        this.F = charSequence;
        if (!L()) {
            x();
        }
    }

    public void P(CharSequence charSequence) {
        this.E = charSequence;
        if (L()) {
            x();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void Q(android.view.View r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof android.widget.TextView
            if (r0 != 0) goto L5
            return
        L5:
            android.widget.TextView r5 = (android.widget.TextView) r5
            boolean r0 = r4.D
            r1 = 0
            if (r0 == 0) goto L1b
            java.lang.CharSequence r0 = r4.E
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L1b
            java.lang.CharSequence r0 = r4.E
            r5.setText(r0)
        L19:
            r0 = r1
            goto L2e
        L1b:
            boolean r0 = r4.D
            if (r0 != 0) goto L2d
            java.lang.CharSequence r0 = r4.F
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L2d
            java.lang.CharSequence r0 = r4.F
            r5.setText(r0)
            goto L19
        L2d:
            r0 = 1
        L2e:
            if (r0 == 0) goto L3e
            java.lang.CharSequence r2 = r4.r()
            boolean r3 = android.text.TextUtils.isEmpty(r2)
            if (r3 != 0) goto L3e
            r5.setText(r2)
            r0 = r1
        L3e:
            if (r0 != 0) goto L41
            goto L43
        L41:
            r1 = 8
        L43:
            int r0 = r5.getVisibility()
            if (r1 == r0) goto L4c
            r5.setVisibility(r1)
        L4c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.TwoStatePreference.Q(android.view.View):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    public void z() {
        super.z();
        boolean z10 = !L();
        if (a(Boolean.valueOf(z10))) {
            M(z10);
        }
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
