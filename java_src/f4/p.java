package f4;

import b3.x1;
import g3.b0;
/* loaded from: classes.dex */
public final class p extends a {

    /* renamed from: o  reason: collision with root package name */
    private final int f15831o;

    /* renamed from: p  reason: collision with root package name */
    private final x1 f15832p;

    /* renamed from: q  reason: collision with root package name */
    private long f15833q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f15834r;

    public p(x4.j jVar, x4.n nVar, x1 x1Var, int i10, Object obj, long j10, long j11, long j12, int i11, x1 x1Var2) {
        super(jVar, nVar, x1Var, i10, obj, j10, j11, -9223372036854775807L, -9223372036854775807L, j12);
        this.f15831o = i11;
        this.f15832p = x1Var2;
    }

    @Override // x4.e0.e
    public void a() {
        c j10 = j();
        j10.c(0L);
        b0 a10 = j10.a(0, this.f15831o);
        a10.c(this.f15832p);
        try {
            long i10 = this.f15786i.i(this.f15779b.e(this.f15833q));
            if (i10 != -1) {
                i10 += this.f15833q;
            }
            g3.e eVar = new g3.e(this.f15786i, this.f15833q, i10);
            for (int i11 = 0; i11 != -1; i11 = a10.e(eVar, Integer.MAX_VALUE, true)) {
                this.f15833q += i11;
            }
            a10.f(this.f15784g, 1, (int) this.f15833q, 0, null);
            x4.m.a(this.f15786i);
            this.f15834r = true;
        } catch (Throwable th) {
            x4.m.a(this.f15786i);
            throw th;
        }
    }

    @Override // x4.e0.e
    public void c() {
    }

    @Override // f4.n
    public boolean h() {
        return this.f15834r;
    }
}
