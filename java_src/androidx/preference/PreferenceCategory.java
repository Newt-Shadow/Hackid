package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import b1.c;
import u.i;
/* loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
    }

    @Override // androidx.preference.Preference
    public boolean J() {
        return !super.v();
    }

    @Override // androidx.preference.Preference
    public boolean v() {
        return false;
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, c.f3684e, 16842892));
    }
}
