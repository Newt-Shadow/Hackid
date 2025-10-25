package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import b1.c;
import b1.g;
import u.i;
/* loaded from: classes.dex */
public abstract class DialogPreference extends Preference {
    private CharSequence D;
    private CharSequence E;
    private Drawable F;
    private CharSequence G;
    private CharSequence H;
    private int I;

    public DialogPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.f3714i, i10, i11);
        String f10 = i.f(obtainStyledAttributes, g.f3734s, g.f3716j);
        this.D = f10;
        if (f10 == null) {
            this.D = t();
        }
        this.E = i.f(obtainStyledAttributes, g.f3732r, g.f3718k);
        this.F = i.c(obtainStyledAttributes, g.f3728p, g.f3720l);
        this.G = i.f(obtainStyledAttributes, g.f3738u, g.f3722m);
        this.H = i.f(obtainStyledAttributes, g.f3736t, g.f3724n);
        this.I = i.e(obtainStyledAttributes, g.f3730q, g.f3726o, 0);
        obtainStyledAttributes.recycle();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    public void z() {
        q();
        throw null;
    }

    public DialogPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, c.f3681b, 16842897));
    }
}
