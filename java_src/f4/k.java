package f4;

import b3.x1;
import f4.g;
import x4.l0;
/* loaded from: classes.dex */
public class k extends a {

    /* renamed from: o  reason: collision with root package name */
    private final int f15817o;

    /* renamed from: p  reason: collision with root package name */
    private final long f15818p;

    /* renamed from: q  reason: collision with root package name */
    private final g f15819q;

    /* renamed from: r  reason: collision with root package name */
    private long f15820r;

    /* renamed from: s  reason: collision with root package name */
    private volatile boolean f15821s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f15822t;

    public k(x4.j jVar, x4.n nVar, x1 x1Var, int i10, Object obj, long j10, long j11, long j12, long j13, long j14, int i11, long j15, g gVar) {
        super(jVar, nVar, x1Var, i10, obj, j10, j11, j12, j13, j14);
        this.f15817o = i11;
        this.f15818p = j15;
        this.f15819q = gVar;
    }

    @Override // x4.e0.e
    public final void a() {
        long j10;
        long j11;
        if (this.f15820r == 0) {
            c j12 = j();
            j12.c(this.f15818p);
            g gVar = this.f15819q;
            g.b l10 = l(j12);
            long j13 = this.f15751k;
            if (j13 == -9223372036854775807L) {
                j10 = -9223372036854775807L;
            } else {
                j10 = j13 - this.f15818p;
            }
            long j14 = this.f15752l;
            if (j14 == -9223372036854775807L) {
                j11 = -9223372036854775807L;
            } else {
                j11 = j14 - this.f15818p;
            }
            gVar.d(l10, j10, j11);
        }
        try {
            x4.n e10 = this.f15779b.e(this.f15820r);
            l0 l0Var = this.f15786i;
            g3.e eVar = new g3.e(l0Var, e10.f32377g, l0Var.i(e10));
            while (!this.f15821s && this.f15819q.b(eVar)) {
            }
            this.f15820r = eVar.c() - this.f15779b.f32377g;
            x4.m.a(this.f15786i);
            this.f15822t = !this.f15821s;
        } catch (Throwable th) {
            x4.m.a(this.f15786i);
            throw th;
        }
    }

    @Override // x4.e0.e
    public final void c() {
        this.f15821s = true;
    }

    @Override // f4.n
    public long g() {
        return this.f15829j + this.f15817o;
    }

    @Override // f4.n
    public boolean h() {
        return this.f15822t;
    }

    protected g.b l(c cVar) {
        return cVar;
    }
}
