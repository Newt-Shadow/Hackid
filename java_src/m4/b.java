package m4;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.Layout;
import android.text.Spanned;
import android.text.SpannedString;
import android.text.TextUtils;
import b3.r;
import y4.q0;
/* loaded from: classes.dex */
public final class b implements r {

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f25685a;

    /* renamed from: b  reason: collision with root package name */
    public final Layout.Alignment f25686b;

    /* renamed from: c  reason: collision with root package name */
    public final Layout.Alignment f25687c;

    /* renamed from: d  reason: collision with root package name */
    public final Bitmap f25688d;

    /* renamed from: e  reason: collision with root package name */
    public final float f25689e;

    /* renamed from: f  reason: collision with root package name */
    public final int f25690f;

    /* renamed from: g  reason: collision with root package name */
    public final int f25691g;

    /* renamed from: h  reason: collision with root package name */
    public final float f25692h;

    /* renamed from: i  reason: collision with root package name */
    public final int f25693i;

    /* renamed from: j  reason: collision with root package name */
    public final float f25694j;

    /* renamed from: k  reason: collision with root package name */
    public final float f25695k;

    /* renamed from: l  reason: collision with root package name */
    public final boolean f25696l;

    /* renamed from: m  reason: collision with root package name */
    public final int f25697m;

    /* renamed from: n  reason: collision with root package name */
    public final int f25698n;

    /* renamed from: o  reason: collision with root package name */
    public final float f25699o;

    /* renamed from: p  reason: collision with root package name */
    public final int f25700p;

    /* renamed from: q  reason: collision with root package name */
    public final float f25701q;

    /* renamed from: r  reason: collision with root package name */
    public static final b f25676r = new C0247b().o("").a();

    /* renamed from: s  reason: collision with root package name */
    private static final String f25677s = q0.q0(0);

    /* renamed from: t  reason: collision with root package name */
    private static final String f25678t = q0.q0(1);

    /* renamed from: u  reason: collision with root package name */
    private static final String f25679u = q0.q0(2);

    /* renamed from: v  reason: collision with root package name */
    private static final String f25680v = q0.q0(3);

    /* renamed from: w  reason: collision with root package name */
    private static final String f25681w = q0.q0(4);

    /* renamed from: x  reason: collision with root package name */
    private static final String f25682x = q0.q0(5);

    /* renamed from: y  reason: collision with root package name */
    private static final String f25683y = q0.q0(6);

    /* renamed from: z  reason: collision with root package name */
    private static final String f25684z = q0.q0(7);
    private static final String A = q0.q0(8);
    private static final String B = q0.q0(9);
    private static final String C = q0.q0(10);
    private static final String D = q0.q0(11);
    private static final String E = q0.q0(12);
    private static final String F = q0.q0(13);
    private static final String G = q0.q0(14);
    private static final String H = q0.q0(15);
    private static final String I = q0.q0(16);
    public static final r.a J = new r.a() { // from class: m4.a
        @Override // b3.r.a
        public final r fromBundle(Bundle bundle) {
            b c10;
            c10 = b.c(bundle);
            return c10;
        }
    };

    /* renamed from: m4.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static final class C0247b {

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f25702a;

        /* renamed from: b  reason: collision with root package name */
        private Bitmap f25703b;

        /* renamed from: c  reason: collision with root package name */
        private Layout.Alignment f25704c;

        /* renamed from: d  reason: collision with root package name */
        private Layout.Alignment f25705d;

        /* renamed from: e  reason: collision with root package name */
        private float f25706e;

        /* renamed from: f  reason: collision with root package name */
        private int f25707f;

        /* renamed from: g  reason: collision with root package name */
        private int f25708g;

        /* renamed from: h  reason: collision with root package name */
        private float f25709h;

        /* renamed from: i  reason: collision with root package name */
        private int f25710i;

        /* renamed from: j  reason: collision with root package name */
        private int f25711j;

        /* renamed from: k  reason: collision with root package name */
        private float f25712k;

        /* renamed from: l  reason: collision with root package name */
        private float f25713l;

        /* renamed from: m  reason: collision with root package name */
        private float f25714m;

        /* renamed from: n  reason: collision with root package name */
        private boolean f25715n;

        /* renamed from: o  reason: collision with root package name */
        private int f25716o;

        /* renamed from: p  reason: collision with root package name */
        private int f25717p;

        /* renamed from: q  reason: collision with root package name */
        private float f25718q;

        public b a() {
            return new b(this.f25702a, this.f25704c, this.f25705d, this.f25703b, this.f25706e, this.f25707f, this.f25708g, this.f25709h, this.f25710i, this.f25711j, this.f25712k, this.f25713l, this.f25714m, this.f25715n, this.f25716o, this.f25717p, this.f25718q);
        }

        public C0247b b() {
            this.f25715n = false;
            return this;
        }

        public int c() {
            return this.f25708g;
        }

        public int d() {
            return this.f25710i;
        }

        public CharSequence e() {
            return this.f25702a;
        }

        public C0247b f(Bitmap bitmap) {
            this.f25703b = bitmap;
            return this;
        }

        public C0247b g(float f10) {
            this.f25714m = f10;
            return this;
        }

        public C0247b h(float f10, int i10) {
            this.f25706e = f10;
            this.f25707f = i10;
            return this;
        }

        public C0247b i(int i10) {
            this.f25708g = i10;
            return this;
        }

        public C0247b j(Layout.Alignment alignment) {
            this.f25705d = alignment;
            return this;
        }

        public C0247b k(float f10) {
            this.f25709h = f10;
            return this;
        }

        public C0247b l(int i10) {
            this.f25710i = i10;
            return this;
        }

        public C0247b m(float f10) {
            this.f25718q = f10;
            return this;
        }

        public C0247b n(float f10) {
            this.f25713l = f10;
            return this;
        }

        public C0247b o(CharSequence charSequence) {
            this.f25702a = charSequence;
            return this;
        }

        public C0247b p(Layout.Alignment alignment) {
            this.f25704c = alignment;
            return this;
        }

        public C0247b q(float f10, int i10) {
            this.f25712k = f10;
            this.f25711j = i10;
            return this;
        }

        public C0247b r(int i10) {
            this.f25717p = i10;
            return this;
        }

        public C0247b s(int i10) {
            this.f25716o = i10;
            this.f25715n = true;
            return this;
        }

        public C0247b() {
            this.f25702a = null;
            this.f25703b = null;
            this.f25704c = null;
            this.f25705d = null;
            this.f25706e = -3.4028235E38f;
            this.f25707f = Integer.MIN_VALUE;
            this.f25708g = Integer.MIN_VALUE;
            this.f25709h = -3.4028235E38f;
            this.f25710i = Integer.MIN_VALUE;
            this.f25711j = Integer.MIN_VALUE;
            this.f25712k = -3.4028235E38f;
            this.f25713l = -3.4028235E38f;
            this.f25714m = -3.4028235E38f;
            this.f25715n = false;
            this.f25716o = -16777216;
            this.f25717p = Integer.MIN_VALUE;
        }

        private C0247b(b bVar) {
            this.f25702a = bVar.f25685a;
            this.f25703b = bVar.f25688d;
            this.f25704c = bVar.f25686b;
            this.f25705d = bVar.f25687c;
            this.f25706e = bVar.f25689e;
            this.f25707f = bVar.f25690f;
            this.f25708g = bVar.f25691g;
            this.f25709h = bVar.f25692h;
            this.f25710i = bVar.f25693i;
            this.f25711j = bVar.f25698n;
            this.f25712k = bVar.f25699o;
            this.f25713l = bVar.f25694j;
            this.f25714m = bVar.f25695k;
            this.f25715n = bVar.f25696l;
            this.f25716o = bVar.f25697m;
            this.f25717p = bVar.f25700p;
            this.f25718q = bVar.f25701q;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final b c(Bundle bundle) {
        C0247b c0247b = new C0247b();
        CharSequence charSequence = bundle.getCharSequence(f25677s);
        if (charSequence != null) {
            c0247b.o(charSequence);
        }
        Layout.Alignment alignment = (Layout.Alignment) bundle.getSerializable(f25678t);
        if (alignment != null) {
            c0247b.p(alignment);
        }
        Layout.Alignment alignment2 = (Layout.Alignment) bundle.getSerializable(f25679u);
        if (alignment2 != null) {
            c0247b.j(alignment2);
        }
        Bitmap bitmap = (Bitmap) bundle.getParcelable(f25680v);
        if (bitmap != null) {
            c0247b.f(bitmap);
        }
        String str = f25681w;
        if (bundle.containsKey(str)) {
            String str2 = f25682x;
            if (bundle.containsKey(str2)) {
                c0247b.h(bundle.getFloat(str), bundle.getInt(str2));
            }
        }
        String str3 = f25683y;
        if (bundle.containsKey(str3)) {
            c0247b.i(bundle.getInt(str3));
        }
        String str4 = f25684z;
        if (bundle.containsKey(str4)) {
            c0247b.k(bundle.getFloat(str4));
        }
        String str5 = A;
        if (bundle.containsKey(str5)) {
            c0247b.l(bundle.getInt(str5));
        }
        String str6 = C;
        if (bundle.containsKey(str6)) {
            String str7 = B;
            if (bundle.containsKey(str7)) {
                c0247b.q(bundle.getFloat(str6), bundle.getInt(str7));
            }
        }
        String str8 = D;
        if (bundle.containsKey(str8)) {
            c0247b.n(bundle.getFloat(str8));
        }
        String str9 = E;
        if (bundle.containsKey(str9)) {
            c0247b.g(bundle.getFloat(str9));
        }
        String str10 = F;
        if (bundle.containsKey(str10)) {
            c0247b.s(bundle.getInt(str10));
        }
        if (!bundle.getBoolean(G, false)) {
            c0247b.b();
        }
        String str11 = H;
        if (bundle.containsKey(str11)) {
            c0247b.r(bundle.getInt(str11));
        }
        String str12 = I;
        if (bundle.containsKey(str12)) {
            c0247b.m(bundle.getFloat(str12));
        }
        return c0247b.a();
    }

    public C0247b b() {
        return new C0247b();
    }

    public boolean equals(Object obj) {
        Bitmap bitmap;
        Bitmap bitmap2;
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (TextUtils.equals(this.f25685a, bVar.f25685a) && this.f25686b == bVar.f25686b && this.f25687c == bVar.f25687c && ((bitmap = this.f25688d) != null ? !((bitmap2 = bVar.f25688d) == null || !bitmap.sameAs(bitmap2)) : bVar.f25688d == null) && this.f25689e == bVar.f25689e && this.f25690f == bVar.f25690f && this.f25691g == bVar.f25691g && this.f25692h == bVar.f25692h && this.f25693i == bVar.f25693i && this.f25694j == bVar.f25694j && this.f25695k == bVar.f25695k && this.f25696l == bVar.f25696l && this.f25697m == bVar.f25697m && this.f25698n == bVar.f25698n && this.f25699o == bVar.f25699o && this.f25700p == bVar.f25700p && this.f25701q == bVar.f25701q) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return n6.k.b(this.f25685a, this.f25686b, this.f25687c, this.f25688d, Float.valueOf(this.f25689e), Integer.valueOf(this.f25690f), Integer.valueOf(this.f25691g), Float.valueOf(this.f25692h), Integer.valueOf(this.f25693i), Float.valueOf(this.f25694j), Float.valueOf(this.f25695k), Boolean.valueOf(this.f25696l), Integer.valueOf(this.f25697m), Integer.valueOf(this.f25698n), Float.valueOf(this.f25699o), Integer.valueOf(this.f25700p), Float.valueOf(this.f25701q));
    }

    private b(CharSequence charSequence, Layout.Alignment alignment, Layout.Alignment alignment2, Bitmap bitmap, float f10, int i10, int i11, float f11, int i12, int i13, float f12, float f13, float f14, boolean z10, int i14, int i15, float f15) {
        if (charSequence == null) {
            y4.a.e(bitmap);
        } else {
            y4.a.a(bitmap == null);
        }
        if (charSequence instanceof Spanned) {
            this.f25685a = SpannedString.valueOf(charSequence);
        } else if (charSequence != null) {
            this.f25685a = charSequence.toString();
        } else {
            this.f25685a = null;
        }
        this.f25686b = alignment;
        this.f25687c = alignment2;
        this.f25688d = bitmap;
        this.f25689e = f10;
        this.f25690f = i10;
        this.f25691g = i11;
        this.f25692h = f11;
        this.f25693i = i12;
        this.f25694j = f13;
        this.f25695k = f14;
        this.f25696l = z10;
        this.f25697m = i14;
        this.f25698n = i13;
        this.f25699o = f12;
        this.f25700p = i15;
        this.f25701q = f15;
    }
}
