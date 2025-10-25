package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.preference.Preference;
import b1.c;
import b1.f;
import b1.g;
import u.i;
/* loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {
    private String J;

    /* loaded from: classes.dex */
    public static final class a implements Preference.b {

        /* renamed from: a  reason: collision with root package name */
        private static a f3052a;

        private a() {
        }

        public static a b() {
            if (f3052a == null) {
                f3052a = new a();
            }
            return f3052a;
        }

        @Override // androidx.preference.Preference.b
        /* renamed from: c */
        public CharSequence a(EditTextPreference editTextPreference) {
            if (TextUtils.isEmpty(editTextPreference.L())) {
                return editTextPreference.f().getString(f.f3692a);
            }
            return editTextPreference.L();
        }
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.f3740v, i10, i11);
        int i12 = g.f3742w;
        if (i.b(obtainStyledAttributes, i12, i12, false)) {
            I(a.b());
        }
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    protected Object B(TypedArray typedArray, int i10) {
        return typedArray.getString(i10);
    }

    @Override // androidx.preference.Preference
    public boolean J() {
        if (!TextUtils.isEmpty(this.J) && !super.J()) {
            return false;
        }
        return true;
    }

    public String L() {
        return this.J;
    }

    public EditTextPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public EditTextPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, c.f3683d, 16842898));
    }
}
