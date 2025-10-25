package f4;

import b3.x1;
/* loaded from: classes.dex */
public abstract class n extends f {

    /* renamed from: j  reason: collision with root package name */
    public final long f15829j;

    public n(x4.j jVar, x4.n nVar, x1 x1Var, int i10, Object obj, long j10, long j11, long j12) {
        super(jVar, nVar, 1, x1Var, i10, obj, j10, j11);
        y4.a.e(x1Var);
        this.f15829j = j12;
    }

    public long g() {
        long j10 = this.f15829j;
        if (j10 == -1) {
            return -1L;
        }
        return 1 + j10;
    }

    public abstract boolean h();
}
