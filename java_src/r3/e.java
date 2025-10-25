package r3;

import g3.a0;
import g3.z;
import y4.q0;
/* loaded from: classes.dex */
final class e implements z {

    /* renamed from: a  reason: collision with root package name */
    private final c f28922a;

    /* renamed from: b  reason: collision with root package name */
    private final int f28923b;

    /* renamed from: c  reason: collision with root package name */
    private final long f28924c;

    /* renamed from: d  reason: collision with root package name */
    private final long f28925d;

    /* renamed from: e  reason: collision with root package name */
    private final long f28926e;

    public e(c cVar, int i10, long j10, long j11) {
        this.f28922a = cVar;
        this.f28923b = i10;
        this.f28924c = j10;
        long j12 = (j11 - j10) / cVar.f28917e;
        this.f28925d = j12;
        this.f28926e = b(j12);
    }

    private long b(long j10) {
        return q0.M0(j10 * this.f28923b, 1000000L, this.f28922a.f28915c);
    }

    @Override // g3.z
    public boolean e() {
        return true;
    }

    @Override // g3.z
    public z.a h(long j10) {
        long r10 = q0.r((this.f28922a.f28915c * j10) / (this.f28923b * 1000000), 0L, this.f28925d - 1);
        long j11 = this.f28924c + (this.f28922a.f28917e * r10);
        long b10 = b(r10);
        a0 a0Var = new a0(b10, j11);
        if (b10 < j10 && r10 != this.f28925d - 1) {
            long j12 = r10 + 1;
            return new z.a(a0Var, new a0(b(j12), this.f28924c + (this.f28922a.f28917e * j12)));
        }
        return new z.a(a0Var);
    }

    @Override // g3.z
    public long i() {
        return this.f28926e;
    }
}
