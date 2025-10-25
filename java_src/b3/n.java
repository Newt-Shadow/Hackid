package b3;

import b3.g4;
/* loaded from: classes.dex */
public abstract class n implements m3 {

    /* renamed from: a  reason: collision with root package name */
    protected final g4.d f4280a = new g4.d();

    private int L() {
        int E = E();
        if (E == 1) {
            return 0;
        }
        return E;
    }

    private void N(long j10, int i10) {
        M(z(), j10, i10, false);
    }

    private void O(int i10, int i11) {
        M(i10, -9223372036854775807L, i11, false);
    }

    @Override // b3.m3
    public final boolean C() {
        g4 F = F();
        if (!F.u() && F.r(z(), this.f4280a).f4081i) {
            return true;
        }
        return false;
    }

    @Override // b3.m3
    public final boolean H() {
        g4 F = F();
        if (!F.u() && F.r(z(), this.f4280a).g()) {
            return true;
        }
        return false;
    }

    public final long I() {
        g4 F = F();
        if (F.u()) {
            return -9223372036854775807L;
        }
        return F.r(z(), this.f4280a).f();
    }

    public final int J() {
        g4 F = F();
        if (F.u()) {
            return -1;
        }
        return F.i(z(), L(), G());
    }

    public final int K() {
        g4 F = F();
        if (F.u()) {
            return -1;
        }
        return F.p(z(), L(), G());
    }

    public abstract void M(int i10, long j10, int i11, boolean z10);

    @Override // b3.m3
    public final void l() {
        O(z(), 4);
    }

    @Override // b3.m3
    public final boolean m() {
        if (K() != -1) {
            return true;
        }
        return false;
    }

    @Override // b3.m3
    public final void o(long j10) {
        N(j10, 5);
    }

    @Override // b3.m3
    public final boolean t() {
        g4 F = F();
        if (!F.u() && F.r(z(), this.f4280a).f4080h) {
            return true;
        }
        return false;
    }

    @Override // b3.m3
    public final boolean w() {
        if (J() != -1) {
            return true;
        }
        return false;
    }
}
