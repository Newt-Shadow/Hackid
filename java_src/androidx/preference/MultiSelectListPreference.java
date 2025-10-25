package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import b1.c;
import b1.g;
import java.util.HashSet;
import java.util.Set;
import u.i;
/* loaded from: classes.dex */
public class MultiSelectListPreference extends DialogPreference {
    private CharSequence[] J;
    private CharSequence[] K;
    private Set L;

    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        this.L = new HashSet();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.D, i10, i11);
        this.J = i.h(obtainStyledAttributes, g.G, g.E);
        this.K = i.h(obtainStyledAttributes, g.H, g.F);
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    protected Object B(TypedArray typedArray, int i10) {
        CharSequence[] textArray = typedArray.getTextArray(i10);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public MultiSelectListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, c.f3681b, 16842897));
    }
}
