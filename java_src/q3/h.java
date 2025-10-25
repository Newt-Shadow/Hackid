package q3;

import b3.e3;
import g3.z;
import java.io.EOFException;
import q3.i0;
/* loaded from: classes.dex */
public final class h implements g3.k {

    /* renamed from: m  reason: collision with root package name */
    public static final g3.p f28086m = new g3.p() { // from class: q3.g
        @Override // g3.p
        public final g3.k[] b() {
            g3.k[] i10;
            i10 = h.i();
            return i10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final int f28087a;

    /* renamed from: b  reason: collision with root package name */
    private final i f28088b;

    /* renamed from: c  reason: collision with root package name */
    private final y4.e0 f28089c;

    /* renamed from: d  reason: collision with root package name */
    private final y4.e0 f28090d;

    /* renamed from: e  reason: collision with root package name */
    private final y4.d0 f28091e;

    /* renamed from: f  reason: collision with root package name */
    private g3.m f28092f;

    /* renamed from: g  reason: collision with root package name */
    private long f28093g;

    /* renamed from: h  reason: collision with root package name */
    private long f28094h;

    /* renamed from: i  reason: collision with root package name */
    private int f28095i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f28096j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f28097k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f28098l;

    public h() {
        this(0);
    }

    private void d(g3.l lVar) {
        int h10;
        if (this.f28096j) {
            return;
        }
        this.f28095i = -1;
        lVar.l();
        long j10 = 0;
        if (lVar.c() == 0) {
            k(lVar);
        }
        int i10 = 0;
        int i11 = 0;
        do {
            try {
                if (!lVar.f(this.f28090d.e(), 0, 2, true)) {
                    break;
                }
                this.f28090d.T(0);
                if (!i.m(this.f28090d.M())) {
                    break;
                } else if (!lVar.f(this.f28090d.e(), 0, 4, true)) {
                    break;
                } else {
                    this.f28091e.p(14);
                    h10 = this.f28091e.h(13);
                    if (h10 > 6) {
                        j10 += h10;
                        i11++;
                        if (i11 == 1000) {
                            break;
                        }
                    } else {
                        this.f28096j = true;
                        throw e3.a("Malformed ADTS stream", null);
                    }
                }
            } catch (EOFException unused) {
            }
        } while (lVar.n(h10 - 6, true));
        i10 = i11;
        lVar.l();
        if (i10 > 0) {
            this.f28095i = (int) (j10 / i10);
        } else {
            this.f28095i = -1;
        }
        this.f28096j = true;
    }

    private static int e(int i10, long j10) {
        return (int) (((i10 * 8) * 1000000) / j10);
    }

    private g3.z h(long j10, boolean z10) {
        return new g3.d(j10, this.f28094h, e(this.f28095i, this.f28088b.k()), this.f28095i, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g3.k[] i() {
        return new g3.k[]{new h()};
    }

    private void j(long j10, boolean z10) {
        boolean z11;
        if (this.f28098l) {
            return;
        }
        boolean z12 = false;
        if ((this.f28087a & 1) != 0 && this.f28095i > 0) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11 && this.f28088b.k() == -9223372036854775807L && !z10) {
            return;
        }
        if (z11 && this.f28088b.k() != -9223372036854775807L) {
            g3.m mVar = this.f28092f;
            if ((this.f28087a & 2) != 0) {
                z12 = true;
            }
            mVar.l(h(j10, z12));
        } else {
            this.f28092f.l(new z.b(-9223372036854775807L));
        }
        this.f28098l = true;
    }

    private int k(g3.l lVar) {
        int i10 = 0;
        while (true) {
            lVar.p(this.f28090d.e(), 0, 10);
            this.f28090d.T(0);
            if (this.f28090d.J() != 4801587) {
                break;
            }
            this.f28090d.U(3);
            int F = this.f28090d.F();
            i10 += F + 10;
            lVar.h(F);
        }
        lVar.l();
        lVar.h(i10);
        if (this.f28094h == -1) {
            this.f28094h = i10;
        }
        return i10;
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        this.f28097k = false;
        this.f28088b.c();
        this.f28093g = j11;
    }

    @Override // g3.k
    public void c(g3.m mVar) {
        this.f28092f = mVar;
        this.f28088b.f(mVar, new i0.d(0, 1));
        mVar.n();
    }

    @Override // g3.k
    public boolean f(g3.l lVar) {
        int k10 = k(lVar);
        int i10 = k10;
        int i11 = 0;
        int i12 = 0;
        do {
            lVar.p(this.f28090d.e(), 0, 2);
            this.f28090d.T(0);
            if (!i.m(this.f28090d.M())) {
                i10++;
                lVar.l();
                lVar.h(i10);
            } else {
                i11++;
                if (i11 >= 4 && i12 > 188) {
                    return true;
                }
                lVar.p(this.f28090d.e(), 0, 4);
                this.f28091e.p(14);
                int h10 = this.f28091e.h(13);
                if (h10 <= 6) {
                    i10++;
                    lVar.l();
                    lVar.h(i10);
                } else {
                    lVar.h(h10 - 6);
                    i12 += h10;
                }
            }
            i11 = 0;
            i12 = 0;
        } while (i10 - k10 < 8192);
        return false;
    }

    @Override // g3.k
    public int g(g3.l lVar, g3.y yVar) {
        boolean z10;
        boolean z11;
        y4.a.h(this.f28092f);
        long b10 = lVar.b();
        int i10 = this.f28087a;
        if ((i10 & 2) == 0 && ((i10 & 1) == 0 || b10 == -1)) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (z10) {
            d(lVar);
        }
        int read = lVar.read(this.f28089c.e(), 0, 2048);
        if (read == -1) {
            z11 = true;
        } else {
            z11 = false;
        }
        j(b10, z11);
        if (z11) {
            return -1;
        }
        this.f28089c.T(0);
        this.f28089c.S(read);
        if (!this.f28097k) {
            this.f28088b.e(this.f28093g, 4);
            this.f28097k = true;
        }
        this.f28088b.b(this.f28089c);
        return 0;
    }

    @Override // g3.k
    public void release() {
    }

    public h(int i10) {
        this.f28087a = (i10 & 2) != 0 ? i10 | 1 : i10;
        this.f28088b = new i(true);
        this.f28089c = new y4.e0(2048);
        this.f28095i = -1;
        this.f28094h = -1L;
        y4.e0 e0Var = new y4.e0(10);
        this.f28090d = e0Var;
        this.f28091e = new y4.d0(e0Var.e());
    }
}
