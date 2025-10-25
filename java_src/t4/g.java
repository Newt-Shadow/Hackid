package t4;

import android.text.Layout;
/* loaded from: classes.dex */
final class g {

    /* renamed from: a  reason: collision with root package name */
    private String f29908a;

    /* renamed from: b  reason: collision with root package name */
    private int f29909b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f29910c;

    /* renamed from: d  reason: collision with root package name */
    private int f29911d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f29912e;

    /* renamed from: k  reason: collision with root package name */
    private float f29918k;

    /* renamed from: l  reason: collision with root package name */
    private String f29919l;

    /* renamed from: o  reason: collision with root package name */
    private Layout.Alignment f29922o;

    /* renamed from: p  reason: collision with root package name */
    private Layout.Alignment f29923p;

    /* renamed from: r  reason: collision with root package name */
    private b f29925r;

    /* renamed from: f  reason: collision with root package name */
    private int f29913f = -1;

    /* renamed from: g  reason: collision with root package name */
    private int f29914g = -1;

    /* renamed from: h  reason: collision with root package name */
    private int f29915h = -1;

    /* renamed from: i  reason: collision with root package name */
    private int f29916i = -1;

    /* renamed from: j  reason: collision with root package name */
    private int f29917j = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f29920m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f29921n = -1;

    /* renamed from: q  reason: collision with root package name */
    private int f29924q = -1;

    /* renamed from: s  reason: collision with root package name */
    private float f29926s = Float.MAX_VALUE;

    private g r(g gVar, boolean z10) {
        int i10;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.f29910c && gVar.f29910c) {
                w(gVar.f29909b);
            }
            if (this.f29915h == -1) {
                this.f29915h = gVar.f29915h;
            }
            if (this.f29916i == -1) {
                this.f29916i = gVar.f29916i;
            }
            if (this.f29908a == null && (str = gVar.f29908a) != null) {
                this.f29908a = str;
            }
            if (this.f29913f == -1) {
                this.f29913f = gVar.f29913f;
            }
            if (this.f29914g == -1) {
                this.f29914g = gVar.f29914g;
            }
            if (this.f29921n == -1) {
                this.f29921n = gVar.f29921n;
            }
            if (this.f29922o == null && (alignment2 = gVar.f29922o) != null) {
                this.f29922o = alignment2;
            }
            if (this.f29923p == null && (alignment = gVar.f29923p) != null) {
                this.f29923p = alignment;
            }
            if (this.f29924q == -1) {
                this.f29924q = gVar.f29924q;
            }
            if (this.f29917j == -1) {
                this.f29917j = gVar.f29917j;
                this.f29918k = gVar.f29918k;
            }
            if (this.f29925r == null) {
                this.f29925r = gVar.f29925r;
            }
            if (this.f29926s == Float.MAX_VALUE) {
                this.f29926s = gVar.f29926s;
            }
            if (z10 && !this.f29912e && gVar.f29912e) {
                u(gVar.f29911d);
            }
            if (z10 && this.f29920m == -1 && (i10 = gVar.f29920m) != -1) {
                this.f29920m = i10;
            }
        }
        return this;
    }

    public g A(String str) {
        this.f29919l = str;
        return this;
    }

    public g B(boolean z10) {
        this.f29916i = z10 ? 1 : 0;
        return this;
    }

    public g C(boolean z10) {
        this.f29913f = z10 ? 1 : 0;
        return this;
    }

    public g D(Layout.Alignment alignment) {
        this.f29923p = alignment;
        return this;
    }

    public g E(int i10) {
        this.f29921n = i10;
        return this;
    }

    public g F(int i10) {
        this.f29920m = i10;
        return this;
    }

    public g G(float f10) {
        this.f29926s = f10;
        return this;
    }

    public g H(Layout.Alignment alignment) {
        this.f29922o = alignment;
        return this;
    }

    public g I(boolean z10) {
        this.f29924q = z10 ? 1 : 0;
        return this;
    }

    public g J(b bVar) {
        this.f29925r = bVar;
        return this;
    }

    public g K(boolean z10) {
        this.f29914g = z10 ? 1 : 0;
        return this;
    }

    public g a(g gVar) {
        return r(gVar, true);
    }

    public int b() {
        if (this.f29912e) {
            return this.f29911d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public int c() {
        if (this.f29910c) {
            return this.f29909b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public String d() {
        return this.f29908a;
    }

    public float e() {
        return this.f29918k;
    }

    public int f() {
        return this.f29917j;
    }

    public String g() {
        return this.f29919l;
    }

    public Layout.Alignment h() {
        return this.f29923p;
    }

    public int i() {
        return this.f29921n;
    }

    public int j() {
        return this.f29920m;
    }

    public float k() {
        return this.f29926s;
    }

    public int l() {
        int i10;
        int i11 = this.f29915h;
        if (i11 == -1 && this.f29916i == -1) {
            return -1;
        }
        int i12 = 0;
        if (i11 == 1) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (this.f29916i == 1) {
            i12 = 2;
        }
        return i10 | i12;
    }

    public Layout.Alignment m() {
        return this.f29922o;
    }

    public boolean n() {
        if (this.f29924q == 1) {
            return true;
        }
        return false;
    }

    public b o() {
        return this.f29925r;
    }

    public boolean p() {
        return this.f29912e;
    }

    public boolean q() {
        return this.f29910c;
    }

    public boolean s() {
        if (this.f29913f == 1) {
            return true;
        }
        return false;
    }

    public boolean t() {
        if (this.f29914g == 1) {
            return true;
        }
        return false;
    }

    public g u(int i10) {
        this.f29911d = i10;
        this.f29912e = true;
        return this;
    }

    public g v(boolean z10) {
        this.f29915h = z10 ? 1 : 0;
        return this;
    }

    public g w(int i10) {
        this.f29909b = i10;
        this.f29910c = true;
        return this;
    }

    public g x(String str) {
        this.f29908a = str;
        return this;
    }

    public g y(float f10) {
        this.f29918k = f10;
        return this;
    }

    public g z(int i10) {
        this.f29917j = i10;
        return this;
    }
}
