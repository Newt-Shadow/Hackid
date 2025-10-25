package p3;

import b3.e3;
import g3.l;
import g3.n;
import kotlin.KotlinVersion;
import y4.e0;
/* loaded from: classes.dex */
final class f {

    /* renamed from: a  reason: collision with root package name */
    public int f27821a;

    /* renamed from: b  reason: collision with root package name */
    public int f27822b;

    /* renamed from: c  reason: collision with root package name */
    public long f27823c;

    /* renamed from: d  reason: collision with root package name */
    public long f27824d;

    /* renamed from: e  reason: collision with root package name */
    public long f27825e;

    /* renamed from: f  reason: collision with root package name */
    public long f27826f;

    /* renamed from: g  reason: collision with root package name */
    public int f27827g;

    /* renamed from: h  reason: collision with root package name */
    public int f27828h;

    /* renamed from: i  reason: collision with root package name */
    public int f27829i;

    /* renamed from: j  reason: collision with root package name */
    public final int[] f27830j = new int[KotlinVersion.MAX_COMPONENT_VALUE];

    /* renamed from: k  reason: collision with root package name */
    private final e0 f27831k = new e0((int) KotlinVersion.MAX_COMPONENT_VALUE);

    public boolean a(l lVar, boolean z10) {
        b();
        this.f27831k.P(27);
        if (!n.b(lVar, this.f27831k.e(), 0, 27, z10) || this.f27831k.I() != 1332176723) {
            return false;
        }
        int G = this.f27831k.G();
        this.f27821a = G;
        if (G != 0) {
            if (z10) {
                return false;
            }
            throw e3.d("unsupported bit stream revision");
        }
        this.f27822b = this.f27831k.G();
        this.f27823c = this.f27831k.u();
        this.f27824d = this.f27831k.w();
        this.f27825e = this.f27831k.w();
        this.f27826f = this.f27831k.w();
        int G2 = this.f27831k.G();
        this.f27827g = G2;
        this.f27828h = G2 + 27;
        this.f27831k.P(G2);
        if (!n.b(lVar, this.f27831k.e(), 0, this.f27827g, z10)) {
            return false;
        }
        for (int i10 = 0; i10 < this.f27827g; i10++) {
            this.f27830j[i10] = this.f27831k.G();
            this.f27829i += this.f27830j[i10];
        }
        return true;
    }

    public void b() {
        this.f27821a = 0;
        this.f27822b = 0;
        this.f27823c = 0L;
        this.f27824d = 0L;
        this.f27825e = 0L;
        this.f27826f = 0L;
        this.f27827g = 0;
        this.f27828h = 0;
        this.f27829i = 0;
    }

    public boolean c(l lVar) {
        return d(lVar, -1L);
    }

    public boolean d(l lVar, long j10) {
        boolean z10;
        int i10;
        if (lVar.c() == lVar.g()) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.a(z10);
        this.f27831k.P(4);
        while (true) {
            i10 = (j10 > (-1L) ? 1 : (j10 == (-1L) ? 0 : -1));
            if ((i10 == 0 || lVar.c() + 4 < j10) && n.b(lVar, this.f27831k.e(), 0, 4, true)) {
                this.f27831k.T(0);
                if (this.f27831k.I() == 1332176723) {
                    lVar.l();
                    return true;
                }
                lVar.m(1);
            }
        }
        do {
            if (i10 != 0 && lVar.c() >= j10) {
                break;
            }
        } while (lVar.a(1) != -1);
        return false;
    }
}
