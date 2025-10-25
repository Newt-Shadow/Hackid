package td;
/* loaded from: classes2.dex */
public abstract class d1 extends i0 {

    /* renamed from: c  reason: collision with root package name */
    private long f30636c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f30637d;

    /* renamed from: e  reason: collision with root package name */
    private yc.f f30638e;

    public static /* synthetic */ void T0(d1 d1Var, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            d1Var.J0(z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: decrementUseCount");
    }

    private final long U0(boolean z10) {
        return z10 ? 4294967296L : 1L;
    }

    public static /* synthetic */ void Y0(d1 d1Var, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            d1Var.X0(z10);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementUseCount");
    }

    @Override // td.i0
    public final i0 A0(int i10, String str) {
        yd.n.a(i10);
        return yd.n.b(this, str);
    }

    public final void J0(boolean z10) {
        long U0 = this.f30636c - U0(z10);
        this.f30636c = U0;
        if (U0 <= 0 && this.f30637d) {
            shutdown();
        }
    }

    public final void V0(x0 x0Var) {
        yc.f fVar = this.f30638e;
        if (fVar == null) {
            fVar = new yc.f();
            this.f30638e = fVar;
        }
        fVar.addLast(x0Var);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long W0() {
        yc.f fVar = this.f30638e;
        if (fVar == null || fVar.isEmpty()) {
            return Long.MAX_VALUE;
        }
        return 0L;
    }

    public final void X0(boolean z10) {
        this.f30636c += U0(z10);
        if (!z10) {
            this.f30637d = true;
        }
    }

    public final boolean Z0() {
        if (this.f30636c >= U0(true)) {
            return true;
        }
        return false;
    }

    public final boolean a1() {
        yc.f fVar = this.f30638e;
        if (fVar != null) {
            return fVar.isEmpty();
        }
        return true;
    }

    public abstract long b1();

    public final boolean c1() {
        x0 x0Var;
        yc.f fVar = this.f30638e;
        if (fVar == null || (x0Var = (x0) fVar.A()) == null) {
            return false;
        }
        x0Var.run();
        return true;
    }

    public boolean d1() {
        return false;
    }

    public abstract void shutdown();
}
