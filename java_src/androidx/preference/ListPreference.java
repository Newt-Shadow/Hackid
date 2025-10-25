package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import androidx.preference.Preference;
import b1.c;
import b1.f;
import b1.g;
import u.i;
/* loaded from: classes.dex */
public class ListPreference extends DialogPreference {
    private CharSequence[] J;
    private CharSequence[] K;
    private String L;
    private String M;
    private boolean N;

    /* loaded from: classes.dex */
    public static final class a implements Preference.b {

        /* renamed from: a  reason: collision with root package name */
        private static a f3053a;

        private a() {
        }

        public static a b() {
            if (f3053a == null) {
                f3053a = new a();
            }
            return f3053a;
        }

        @Override // androidx.preference.Preference.b
        /* renamed from: c */
        public CharSequence a(ListPreference listPreference) {
            if (TextUtils.isEmpty(listPreference.N())) {
                return listPreference.f().getString(f.f3692a);
            }
            return listPreference.N();
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i10, int i11) {
        super(context, attributeSet, i10, i11);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.f3744x, i10, i11);
        this.J = i.h(obtainStyledAttributes, g.A, g.f3746y);
        this.K = i.h(obtainStyledAttributes, g.B, g.f3748z);
        int i12 = g.C;
        if (i.b(obtainStyledAttributes, i12, i12, false)) {
            I(a.b());
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, g.I, i10, i11);
        this.M = i.f(obtainStyledAttributes2, g.f3731q0, g.Q);
        obtainStyledAttributes2.recycle();
    }

    private int Q() {
        return L(this.L);
    }

    @Override // androidx.preference.Preference
    protected Object B(TypedArray typedArray, int i10) {
        return typedArray.getString(i10);
    }

    public int L(String str) {
        CharSequence[] charSequenceArr;
        if (str != null && (charSequenceArr = this.K) != null) {
            for (int length = charSequenceArr.length - 1; length >= 0; length--) {
                if (TextUtils.equals(this.K[length].toString(), str)) {
                    return length;
                }
            }
            return -1;
        }
        return -1;
    }

    public CharSequence[] M() {
        return this.J;
    }

    public CharSequence N() {
        CharSequence[] charSequenceArr;
        int Q = Q();
        if (Q >= 0 && (charSequenceArr = this.J) != null) {
            return charSequenceArr[Q];
        }
        return null;
    }

    public CharSequence[] O() {
        return this.K;
    }

    public String P() {
        return this.L;
    }

    public void R(String str) {
        boolean z10 = !TextUtils.equals(this.L, str);
        if (z10 || !this.N) {
            this.L = str;
            this.N = true;
            H(str);
            if (z10) {
                x();
            }
        }
    }

    @Override // androidx.preference.Preference
    public CharSequence r() {
        if (s() != null) {
            return s().a(this);
        }
        CharSequence N = N();
        CharSequence r10 = super.r();
        String str = this.M;
        if (str == null) {
            return r10;
        }
        Object[] objArr = new Object[1];
        if (N == null) {
            N = "";
        }
        objArr[0] = N;
        String format = String.format(str, objArr);
        if (TextUtils.equals(format, r10)) {
            return r10;
        }
        Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
        return format;
    }

    public ListPreference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, c.f3681b, 16842897));
    }
}
