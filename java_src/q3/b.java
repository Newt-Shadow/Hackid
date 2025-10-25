package q3;

import g3.z;
import q3.i0;
/* loaded from: classes.dex */
public final class b implements g3.k {

    /* renamed from: d  reason: collision with root package name */
    public static final g3.p f28032d = new g3.p() { // from class: q3.a
        @Override // g3.p
        public final g3.k[] b() {
            g3.k[] d10;
            d10 = b.d();
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final c f28033a = new c();

    /* renamed from: b  reason: collision with root package name */
    private final y4.e0 f28034b = new y4.e0(2786);

    /* renamed from: c  reason: collision with root package name */
    private boolean f28035c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g3.k[] d() {
        return new g3.k[]{new b()};
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        this.f28035c = false;
        this.f28033a.c();
    }

    @Override // g3.k
    public void c(g3.m mVar) {
        this.f28033a.f(mVar, new i0.d(0, 1));
        mVar.n();
        mVar.l(new z.b(-9223372036854775807L));
    }

    @Override // g3.k
    public boolean f(g3.l lVar) {
        y4.e0 e0Var = new y4.e0(10);
        int i10 = 0;
        while (true) {
            lVar.p(e0Var.e(), 0, 10);
            e0Var.T(0);
            if (e0Var.J() != 4801587) {
                break;
            }
            e0Var.U(3);
            int F = e0Var.F();
            i10 += F + 10;
            lVar.h(F);
        }
        lVar.l();
        lVar.h(i10);
        int i11 = 0;
        int i12 = i10;
        while (true) {
            lVar.p(e0Var.e(), 0, 6);
            e0Var.T(0);
            if (e0Var.M() != 2935) {
                lVar.l();
                i12++;
                if (i12 - i10 >= 8192) {
                    return false;
                }
                lVar.h(i12);
                i11 = 0;
            } else {
                i11++;
                if (i11 >= 4) {
                    return true;
                }
                int g10 = d3.b.g(e0Var.e());
                if (g10 == -1) {
                    return false;
                }
                lVar.h(g10 - 6);
            }
        }
    }

    @Override // g3.k
    public int g(g3.l lVar, g3.y yVar) {
        int read = lVar.read(this.f28034b.e(), 0, 2786);
        if (read == -1) {
            return -1;
        }
        this.f28034b.T(0);
        this.f28034b.S(read);
        if (!this.f28035c) {
            this.f28033a.e(0L, 4);
            this.f28035c = true;
        }
        this.f28033a.b(this.f28034b);
        return 0;
    }

    @Override // g3.k
    public void release() {
    }
}
