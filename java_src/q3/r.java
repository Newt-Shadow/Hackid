package q3;

import b3.x1;
import q3.i0;
/* loaded from: classes.dex */
public final class r implements m {

    /* renamed from: b  reason: collision with root package name */
    private g3.b0 f28306b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f28307c;

    /* renamed from: e  reason: collision with root package name */
    private int f28309e;

    /* renamed from: f  reason: collision with root package name */
    private int f28310f;

    /* renamed from: a  reason: collision with root package name */
    private final y4.e0 f28305a = new y4.e0(10);

    /* renamed from: d  reason: collision with root package name */
    private long f28308d = -9223372036854775807L;

    @Override // q3.m
    public void b(y4.e0 e0Var) {
        y4.a.h(this.f28306b);
        if (!this.f28307c) {
            return;
        }
        int a10 = e0Var.a();
        int i10 = this.f28310f;
        if (i10 < 10) {
            int min = Math.min(a10, 10 - i10);
            System.arraycopy(e0Var.e(), e0Var.f(), this.f28305a.e(), this.f28310f, min);
            if (this.f28310f + min == 10) {
                this.f28305a.T(0);
                if (73 == this.f28305a.G() && 68 == this.f28305a.G() && 51 == this.f28305a.G()) {
                    this.f28305a.U(3);
                    this.f28309e = this.f28305a.F() + 10;
                } else {
                    y4.r.i("Id3Reader", "Discarding invalid ID3 tag");
                    this.f28307c = false;
                    return;
                }
            }
        }
        int min2 = Math.min(a10, this.f28309e - this.f28310f);
        this.f28306b.b(e0Var, min2);
        this.f28310f += min2;
    }

    @Override // q3.m
    public void c() {
        this.f28307c = false;
        this.f28308d = -9223372036854775807L;
    }

    @Override // q3.m
    public void d() {
        int i10;
        y4.a.h(this.f28306b);
        if (this.f28307c && (i10 = this.f28309e) != 0 && this.f28310f == i10) {
            long j10 = this.f28308d;
            if (j10 != -9223372036854775807L) {
                this.f28306b.f(j10, 1, i10, 0, null);
            }
            this.f28307c = false;
        }
    }

    @Override // q3.m
    public void e(long j10, int i10) {
        if ((i10 & 4) == 0) {
            return;
        }
        this.f28307c = true;
        if (j10 != -9223372036854775807L) {
            this.f28308d = j10;
        }
        this.f28309e = 0;
        this.f28310f = 0;
    }

    @Override // q3.m
    public void f(g3.m mVar, i0.d dVar) {
        dVar.a();
        g3.b0 a10 = mVar.a(dVar.c(), 5);
        this.f28306b = a10;
        a10.c(new x1.b().U(dVar.b()).g0("application/id3").G());
    }
}
