package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import b1.c;
import b1.e;
import b1.g;
import java.util.List;
import u.i;
/* loaded from: classes.dex */
public class Preference implements Comparable<Preference> {
    private List A;
    private b B;
    private final View.OnClickListener C;

    /* renamed from: a  reason: collision with root package name */
    private final Context f3054a;

    /* renamed from: b  reason: collision with root package name */
    private int f3055b;

    /* renamed from: c  reason: collision with root package name */
    private int f3056c;

    /* renamed from: d  reason: collision with root package name */
    private CharSequence f3057d;

    /* renamed from: e  reason: collision with root package name */
    private CharSequence f3058e;

    /* renamed from: f  reason: collision with root package name */
    private int f3059f;

    /* renamed from: g  reason: collision with root package name */
    private String f3060g;

    /* renamed from: h  reason: collision with root package name */
    private Intent f3061h;

    /* renamed from: i  reason: collision with root package name */
    private String f3062i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f3063j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f3064k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f3065l;

    /* renamed from: m  reason: collision with root package name */
    private String f3066m;

    /* renamed from: n  reason: collision with root package name */
    private Object f3067n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f3068o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f3069p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f3070q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f3071r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f3072s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f3073t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f3074u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f3075v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f3076w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f3077x;

    /* renamed from: y  reason: collision with root package name */
    private int f3078y;

    /* renamed from: z  reason: collision with root package name */
    private int f3079z;

    /* loaded from: classes.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Preference.this.E(view);
        }
    }

    /* loaded from: classes.dex */
    public interface b {
        CharSequence a(Preference preference);
    }

    public Preference(Context context, AttributeSet attributeSet, int i10, int i11) {
        this.f3055b = Integer.MAX_VALUE;
        this.f3056c = 0;
        this.f3063j = true;
        this.f3064k = true;
        this.f3065l = true;
        this.f3068o = true;
        this.f3069p = true;
        this.f3070q = true;
        this.f3071r = true;
        this.f3072s = true;
        this.f3074u = true;
        this.f3077x = true;
        this.f3078y = e.f3691a;
        this.C = new a();
        this.f3054a = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, g.I, i10, i11);
        this.f3059f = i.e(obtainStyledAttributes, g.f3711g0, g.J, 0);
        this.f3060g = i.f(obtainStyledAttributes, g.f3717j0, g.P);
        this.f3057d = i.g(obtainStyledAttributes, g.f3733r0, g.N);
        this.f3058e = i.g(obtainStyledAttributes, g.f3731q0, g.Q);
        this.f3055b = i.d(obtainStyledAttributes, g.f3721l0, g.R, Integer.MAX_VALUE);
        this.f3062i = i.f(obtainStyledAttributes, g.f3709f0, g.W);
        this.f3078y = i.e(obtainStyledAttributes, g.f3719k0, g.M, e.f3691a);
        this.f3079z = i.e(obtainStyledAttributes, g.f3735s0, g.S, 0);
        this.f3063j = i.b(obtainStyledAttributes, g.f3706e0, g.L, true);
        this.f3064k = i.b(obtainStyledAttributes, g.f3725n0, g.O, true);
        this.f3065l = i.b(obtainStyledAttributes, g.f3723m0, g.K, true);
        this.f3066m = i.f(obtainStyledAttributes, g.f3700c0, g.T);
        int i12 = g.Z;
        this.f3071r = i.b(obtainStyledAttributes, i12, i12, this.f3064k);
        int i13 = g.f3694a0;
        this.f3072s = i.b(obtainStyledAttributes, i13, i13, this.f3064k);
        if (obtainStyledAttributes.hasValue(g.f3697b0)) {
            this.f3067n = B(obtainStyledAttributes, g.f3697b0);
        } else if (obtainStyledAttributes.hasValue(g.U)) {
            this.f3067n = B(obtainStyledAttributes, g.U);
        }
        this.f3077x = i.b(obtainStyledAttributes, g.f3727o0, g.V, true);
        boolean hasValue = obtainStyledAttributes.hasValue(g.f3729p0);
        this.f3073t = hasValue;
        if (hasValue) {
            this.f3074u = i.b(obtainStyledAttributes, g.f3729p0, g.X, true);
        }
        this.f3075v = i.b(obtainStyledAttributes, g.f3713h0, g.Y, false);
        int i14 = g.f3715i0;
        this.f3070q = i.b(obtainStyledAttributes, i14, i14, true);
        int i15 = g.f3703d0;
        this.f3076w = i.b(obtainStyledAttributes, i15, i15, false);
        obtainStyledAttributes.recycle();
    }

    public void A(Preference preference, boolean z10) {
        if (this.f3068o == z10) {
            this.f3068o = !z10;
            y(J());
            x();
        }
    }

    protected Object B(TypedArray typedArray, int i10) {
        return null;
    }

    public void C(Preference preference, boolean z10) {
        if (this.f3069p == z10) {
            this.f3069p = !z10;
            y(J());
            x();
        }
    }

    public void D() {
        if (v() && w()) {
            z();
            q();
            if (this.f3061h != null) {
                f().startActivity(this.f3061h);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E(View view) {
        D();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean F(boolean z10) {
        if (!K()) {
            return false;
        }
        if (z10 == m(!z10)) {
            return true;
        }
        p();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean G(int i10) {
        if (!K()) {
            return false;
        }
        if (i10 == n(~i10)) {
            return true;
        }
        p();
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean H(String str) {
        if (!K()) {
            return false;
        }
        if (TextUtils.equals(str, o(null))) {
            return true;
        }
        p();
        throw null;
    }

    public final void I(b bVar) {
        this.B = bVar;
        x();
    }

    public boolean J() {
        return !v();
    }

    protected boolean K() {
        return false;
    }

    public boolean a(Object obj) {
        return true;
    }

    @Override // java.lang.Comparable
    /* renamed from: b */
    public int compareTo(Preference preference) {
        int i10 = this.f3055b;
        int i11 = preference.f3055b;
        if (i10 != i11) {
            return i10 - i11;
        }
        CharSequence charSequence = this.f3057d;
        CharSequence charSequence2 = preference.f3057d;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference.f3057d.toString());
    }

    public Context f() {
        return this.f3054a;
    }

    StringBuilder i() {
        StringBuilder sb2 = new StringBuilder();
        CharSequence t10 = t();
        if (!TextUtils.isEmpty(t10)) {
            sb2.append(t10);
            sb2.append(' ');
        }
        CharSequence r10 = r();
        if (!TextUtils.isEmpty(r10)) {
            sb2.append(r10);
            sb2.append(' ');
        }
        if (sb2.length() > 0) {
            sb2.setLength(sb2.length() - 1);
        }
        return sb2;
    }

    public String j() {
        return this.f3062i;
    }

    public Intent l() {
        return this.f3061h;
    }

    protected boolean m(boolean z10) {
        if (!K()) {
            return z10;
        }
        p();
        throw null;
    }

    protected int n(int i10) {
        if (!K()) {
            return i10;
        }
        p();
        throw null;
    }

    protected String o(String str) {
        if (!K()) {
            return str;
        }
        p();
        throw null;
    }

    public b1.a p() {
        return null;
    }

    public b1.b q() {
        return null;
    }

    public CharSequence r() {
        if (s() != null) {
            return s().a(this);
        }
        return this.f3058e;
    }

    public final b s() {
        return this.B;
    }

    public CharSequence t() {
        return this.f3057d;
    }

    public String toString() {
        return i().toString();
    }

    public boolean u() {
        return !TextUtils.isEmpty(this.f3060g);
    }

    public boolean v() {
        if (this.f3063j && this.f3068o && this.f3069p) {
            return true;
        }
        return false;
    }

    public boolean w() {
        return this.f3064k;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void x() {
    }

    public void y(boolean z10) {
        List list = this.A;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            ((Preference) list.get(i10)).A(this, z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void z() {
    }

    public Preference(Context context, AttributeSet attributeSet, int i10) {
        this(context, attributeSet, i10, 0);
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, i.a(context, c.f3686g, 16842894));
    }
}
