package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import b1.c;
import u.i;
/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {
    private boolean L;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, i.a(context, c.f3685f, 16842891));
        this.L = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    public void z() {
        if (l() == null && j() == null && M() != 0) {
            q();
            throw null;
        }
    }
}
