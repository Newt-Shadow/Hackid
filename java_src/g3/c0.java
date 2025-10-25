package g3;

import g3.b0;
/* loaded from: classes.dex */
public final class c0 {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f16155a = new byte[10];

    /* renamed from: b  reason: collision with root package name */
    private boolean f16156b;

    /* renamed from: c  reason: collision with root package name */
    private int f16157c;

    /* renamed from: d  reason: collision with root package name */
    private long f16158d;

    /* renamed from: e  reason: collision with root package name */
    private int f16159e;

    /* renamed from: f  reason: collision with root package name */
    private int f16160f;

    /* renamed from: g  reason: collision with root package name */
    private int f16161g;

    public void a(b0 b0Var, b0.a aVar) {
        if (this.f16157c > 0) {
            b0Var.f(this.f16158d, this.f16159e, this.f16160f, this.f16161g, aVar);
            this.f16157c = 0;
        }
    }

    public void b() {
        this.f16156b = false;
        this.f16157c = 0;
    }

    public void c(b0 b0Var, long j10, int i10, int i11, int i12, b0.a aVar) {
        boolean z10;
        if (this.f16161g <= i11 + i12) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.g(z10, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (!this.f16156b) {
            return;
        }
        int i13 = this.f16157c;
        int i14 = i13 + 1;
        this.f16157c = i14;
        if (i13 == 0) {
            this.f16158d = j10;
            this.f16159e = i10;
            this.f16160f = 0;
        }
        this.f16160f += i11;
        this.f16161g = i12;
        if (i14 >= 16) {
            a(b0Var, aVar);
        }
    }

    public void d(l lVar) {
        if (this.f16156b) {
            return;
        }
        lVar.p(this.f16155a, 0, 10);
        lVar.l();
        if (d3.b.j(this.f16155a) == 0) {
            return;
        }
        this.f16156b = true;
    }
}
