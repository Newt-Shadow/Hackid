package f4;

import b3.x1;
import f4.g;
import x4.l0;
/* loaded from: classes.dex */
public final class m extends f {

    /* renamed from: j  reason: collision with root package name */
    private final g f15825j;

    /* renamed from: k  reason: collision with root package name */
    private g.b f15826k;

    /* renamed from: l  reason: collision with root package name */
    private long f15827l;

    /* renamed from: m  reason: collision with root package name */
    private volatile boolean f15828m;

    public m(x4.j jVar, x4.n nVar, x1 x1Var, int i10, Object obj, g gVar) {
        super(jVar, nVar, 2, x1Var, i10, obj, -9223372036854775807L, -9223372036854775807L);
        this.f15825j = gVar;
    }

    @Override // x4.e0.e
    public void a() {
        if (this.f15827l == 0) {
            this.f15825j.d(this.f15826k, -9223372036854775807L, -9223372036854775807L);
        }
        try {
            x4.n e10 = this.f15779b.e(this.f15827l);
            l0 l0Var = this.f15786i;
            g3.e eVar = new g3.e(l0Var, e10.f32377g, l0Var.i(e10));
            while (!this.f15828m && this.f15825j.b(eVar)) {
            }
            this.f15827l = eVar.c() - this.f15779b.f32377g;
        } finally {
            x4.m.a(this.f15786i);
        }
    }

    @Override // x4.e0.e
    public void c() {
        this.f15828m = true;
    }

    public void g(g.b bVar) {
        this.f15826k = bVar;
    }
}
