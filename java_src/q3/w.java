package q3;

import q3.i0;
import y4.m0;
/* loaded from: classes.dex */
public final class w implements i0 {

    /* renamed from: a  reason: collision with root package name */
    private final m f28352a;

    /* renamed from: b  reason: collision with root package name */
    private final y4.d0 f28353b = new y4.d0(new byte[10]);

    /* renamed from: c  reason: collision with root package name */
    private int f28354c = 0;

    /* renamed from: d  reason: collision with root package name */
    private int f28355d;

    /* renamed from: e  reason: collision with root package name */
    private m0 f28356e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f28357f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f28358g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f28359h;

    /* renamed from: i  reason: collision with root package name */
    private int f28360i;

    /* renamed from: j  reason: collision with root package name */
    private int f28361j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f28362k;

    /* renamed from: l  reason: collision with root package name */
    private long f28363l;

    public w(m mVar) {
        this.f28352a = mVar;
    }

    private boolean d(y4.e0 e0Var, byte[] bArr, int i10) {
        int min = Math.min(e0Var.a(), i10 - this.f28355d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            e0Var.U(min);
        } else {
            e0Var.l(bArr, this.f28355d, min);
        }
        int i11 = this.f28355d + min;
        this.f28355d = i11;
        if (i11 == i10) {
            return true;
        }
        return false;
    }

    private boolean e() {
        this.f28353b.p(0);
        int h10 = this.f28353b.h(24);
        if (h10 != 1) {
            y4.r.i("PesReader", "Unexpected start code prefix: " + h10);
            this.f28361j = -1;
            return false;
        }
        this.f28353b.r(8);
        int h11 = this.f28353b.h(16);
        this.f28353b.r(5);
        this.f28362k = this.f28353b.g();
        this.f28353b.r(2);
        this.f28357f = this.f28353b.g();
        this.f28358g = this.f28353b.g();
        this.f28353b.r(6);
        int h12 = this.f28353b.h(8);
        this.f28360i = h12;
        if (h11 == 0) {
            this.f28361j = -1;
        } else {
            int i10 = ((h11 + 6) - 9) - h12;
            this.f28361j = i10;
            if (i10 < 0) {
                y4.r.i("PesReader", "Found negative packet payload size: " + this.f28361j);
                this.f28361j = -1;
            }
        }
        return true;
    }

    private void f() {
        this.f28353b.p(0);
        this.f28363l = -9223372036854775807L;
        if (this.f28357f) {
            this.f28353b.r(4);
            this.f28353b.r(1);
            this.f28353b.r(1);
            long h10 = (this.f28353b.h(3) << 30) | (this.f28353b.h(15) << 15) | this.f28353b.h(15);
            this.f28353b.r(1);
            if (!this.f28359h && this.f28358g) {
                this.f28353b.r(4);
                this.f28353b.r(1);
                this.f28353b.r(1);
                this.f28353b.r(1);
                this.f28356e.b((this.f28353b.h(3) << 30) | (this.f28353b.h(15) << 15) | this.f28353b.h(15));
                this.f28359h = true;
            }
            this.f28363l = this.f28356e.b(h10);
        }
    }

    private void g(int i10) {
        this.f28354c = i10;
        this.f28355d = 0;
    }

    @Override // q3.i0
    public void a(m0 m0Var, g3.m mVar, i0.d dVar) {
        this.f28356e = m0Var;
        this.f28352a.f(mVar, dVar);
    }

    @Override // q3.i0
    public final void b(y4.e0 e0Var, int i10) {
        y4.a.h(this.f28356e);
        if ((i10 & 1) != 0) {
            int i11 = this.f28354c;
            if (i11 != 0 && i11 != 1) {
                if (i11 != 2) {
                    if (i11 == 3) {
                        if (this.f28361j != -1) {
                            y4.r.i("PesReader", "Unexpected start indicator: expected " + this.f28361j + " more bytes");
                        }
                        this.f28352a.d();
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    y4.r.i("PesReader", "Unexpected start indicator reading extended header");
                }
            }
            g(1);
        }
        while (e0Var.a() > 0) {
            int i12 = this.f28354c;
            if (i12 != 0) {
                int i13 = 0;
                if (i12 != 1) {
                    if (i12 != 2) {
                        if (i12 == 3) {
                            int a10 = e0Var.a();
                            int i14 = this.f28361j;
                            if (i14 != -1) {
                                i13 = a10 - i14;
                            }
                            if (i13 > 0) {
                                a10 -= i13;
                                e0Var.S(e0Var.f() + a10);
                            }
                            this.f28352a.b(e0Var);
                            int i15 = this.f28361j;
                            if (i15 != -1) {
                                int i16 = i15 - a10;
                                this.f28361j = i16;
                                if (i16 == 0) {
                                    this.f28352a.d();
                                    g(1);
                                }
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else {
                        if (d(e0Var, this.f28353b.f32862a, Math.min(10, this.f28360i)) && d(e0Var, null, this.f28360i)) {
                            f();
                            if (this.f28362k) {
                                i13 = 4;
                            }
                            i10 |= i13;
                            this.f28352a.e(this.f28363l, i10);
                            g(3);
                        }
                    }
                } else if (d(e0Var, this.f28353b.f32862a, 9)) {
                    if (e()) {
                        i13 = 2;
                    }
                    g(i13);
                }
            } else {
                e0Var.U(e0Var.a());
            }
        }
    }

    @Override // q3.i0
    public final void c() {
        this.f28354c = 0;
        this.f28355d = 0;
        this.f28359h = false;
        this.f28352a.c();
    }
}
