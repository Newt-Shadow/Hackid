package g4;

import h4.i;
/* loaded from: classes.dex */
public final class h implements f {

    /* renamed from: a  reason: collision with root package name */
    private final g3.c f16262a;

    /* renamed from: b  reason: collision with root package name */
    private final long f16263b;

    public h(g3.c cVar, long j10) {
        this.f16262a = cVar;
        this.f16263b = j10;
    }

    @Override // g4.f
    public long a(long j10) {
        return this.f16262a.f16153e[(int) j10] - this.f16263b;
    }

    @Override // g4.f
    public long b(long j10, long j11) {
        return this.f16262a.f16152d[(int) j10];
    }

    @Override // g4.f
    public long c(long j10, long j11) {
        return 0L;
    }

    @Override // g4.f
    public long d(long j10, long j11) {
        return -9223372036854775807L;
    }

    @Override // g4.f
    public i e(long j10) {
        g3.c cVar = this.f16262a;
        int i10 = (int) j10;
        return new i(null, cVar.f16151c[i10], cVar.f16150b[i10]);
    }

    @Override // g4.f
    public long f(long j10, long j11) {
        return this.f16262a.b(j10 + this.f16263b);
    }

    @Override // g4.f
    public boolean g() {
        return true;
    }

    @Override // g4.f
    public long h() {
        return 0L;
    }

    @Override // g4.f
    public long i(long j10) {
        return this.f16262a.f16149a;
    }

    @Override // g4.f
    public long j(long j10, long j11) {
        return this.f16262a.f16149a;
    }
}
