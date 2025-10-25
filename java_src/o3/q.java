package o3;

import y4.e0;
/* loaded from: classes.dex */
final class q {

    /* renamed from: a  reason: collision with root package name */
    public c f27293a;

    /* renamed from: b  reason: collision with root package name */
    public long f27294b;

    /* renamed from: c  reason: collision with root package name */
    public long f27295c;

    /* renamed from: d  reason: collision with root package name */
    public long f27296d;

    /* renamed from: e  reason: collision with root package name */
    public int f27297e;

    /* renamed from: f  reason: collision with root package name */
    public int f27298f;

    /* renamed from: l  reason: collision with root package name */
    public boolean f27304l;

    /* renamed from: n  reason: collision with root package name */
    public p f27306n;

    /* renamed from: p  reason: collision with root package name */
    public boolean f27308p;

    /* renamed from: q  reason: collision with root package name */
    public long f27309q;

    /* renamed from: r  reason: collision with root package name */
    public boolean f27310r;

    /* renamed from: g  reason: collision with root package name */
    public long[] f27299g = new long[0];

    /* renamed from: h  reason: collision with root package name */
    public int[] f27300h = new int[0];

    /* renamed from: i  reason: collision with root package name */
    public int[] f27301i = new int[0];

    /* renamed from: j  reason: collision with root package name */
    public long[] f27302j = new long[0];

    /* renamed from: k  reason: collision with root package name */
    public boolean[] f27303k = new boolean[0];

    /* renamed from: m  reason: collision with root package name */
    public boolean[] f27305m = new boolean[0];

    /* renamed from: o  reason: collision with root package name */
    public final e0 f27307o = new e0();

    public void a(g3.l lVar) {
        lVar.readFully(this.f27307o.e(), 0, this.f27307o.g());
        this.f27307o.T(0);
        this.f27308p = false;
    }

    public void b(e0 e0Var) {
        e0Var.l(this.f27307o.e(), 0, this.f27307o.g());
        this.f27307o.T(0);
        this.f27308p = false;
    }

    public long c(int i10) {
        return this.f27302j[i10];
    }

    public void d(int i10) {
        this.f27307o.P(i10);
        this.f27304l = true;
        this.f27308p = true;
    }

    public void e(int i10, int i11) {
        this.f27297e = i10;
        this.f27298f = i11;
        if (this.f27300h.length < i10) {
            this.f27299g = new long[i10];
            this.f27300h = new int[i10];
        }
        if (this.f27301i.length < i11) {
            int i12 = (i11 * 125) / 100;
            this.f27301i = new int[i12];
            this.f27302j = new long[i12];
            this.f27303k = new boolean[i12];
            this.f27305m = new boolean[i12];
        }
    }

    public void f() {
        this.f27297e = 0;
        this.f27309q = 0L;
        this.f27310r = false;
        this.f27304l = false;
        this.f27308p = false;
        this.f27306n = null;
    }

    public boolean g(int i10) {
        if (this.f27304l && this.f27305m[i10]) {
            return true;
        }
        return false;
    }
}
