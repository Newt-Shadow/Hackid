package d4;
/* loaded from: classes.dex */
public class g implements n0 {

    /* renamed from: a  reason: collision with root package name */
    protected final n0[] f14758a;

    public g(n0[] n0VarArr) {
        this.f14758a = n0VarArr;
    }

    @Override // d4.n0
    public final long b() {
        long j10 = Long.MAX_VALUE;
        for (n0 n0Var : this.f14758a) {
            long b10 = n0Var.b();
            if (b10 != Long.MIN_VALUE) {
                j10 = Math.min(j10, b10);
            }
        }
        if (j10 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j10;
    }

    @Override // d4.n0
    public boolean c(long j10) {
        n0[] n0VarArr;
        boolean z10;
        boolean z11;
        boolean z12 = false;
        do {
            long b10 = b();
            if (b10 == Long.MIN_VALUE) {
                break;
            }
            z10 = false;
            for (n0 n0Var : this.f14758a) {
                long b11 = n0Var.b();
                if (b11 != Long.MIN_VALUE && b11 <= j10) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (b11 == b10 || z11) {
                    z10 |= n0Var.c(j10);
                }
            }
            z12 |= z10;
        } while (z10);
        return z12;
    }

    @Override // d4.n0
    public final long d() {
        long j10 = Long.MAX_VALUE;
        for (n0 n0Var : this.f14758a) {
            long d10 = n0Var.d();
            if (d10 != Long.MIN_VALUE) {
                j10 = Math.min(j10, d10);
            }
        }
        if (j10 == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j10;
    }

    @Override // d4.n0
    public final void f(long j10) {
        for (n0 n0Var : this.f14758a) {
            n0Var.f(j10);
        }
    }

    @Override // d4.n0
    public boolean isLoading() {
        for (n0 n0Var : this.f14758a) {
            if (n0Var.isLoading()) {
                return true;
            }
        }
        return false;
    }
}
