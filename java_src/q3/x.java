package q3;

import g3.a;
import org.apache.tika.fork.ForkServer;
import org.apache.tika.pipes.PipesConfigBase;
import y4.m0;
import y4.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x extends g3.a {

    /* loaded from: classes.dex */
    private static final class b implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final m0 f28364a;

        /* renamed from: b  reason: collision with root package name */
        private final y4.e0 f28365b;

        private a.e c(y4.e0 e0Var, long j10, long j11) {
            int i10 = -1;
            int i11 = -1;
            long j12 = -9223372036854775807L;
            while (e0Var.a() >= 4) {
                if (x.k(e0Var.e(), e0Var.f()) != 442) {
                    e0Var.U(1);
                } else {
                    e0Var.U(4);
                    long l10 = y.l(e0Var);
                    if (l10 != -9223372036854775807L) {
                        long b10 = this.f28364a.b(l10);
                        if (b10 > j10) {
                            if (j12 == -9223372036854775807L) {
                                return a.e.d(b10, j11);
                            }
                            return a.e.e(j11 + i11);
                        } else if (PipesConfigBase.DEFAULT_MAX_FOR_EMIT_BATCH + b10 > j10) {
                            return a.e.e(j11 + e0Var.f());
                        } else {
                            i11 = e0Var.f();
                            j12 = b10;
                        }
                    }
                    d(e0Var);
                    i10 = e0Var.f();
                }
            }
            if (j12 != -9223372036854775807L) {
                return a.e.f(j12, j11 + i10);
            }
            return a.e.f16138d;
        }

        private static void d(y4.e0 e0Var) {
            int k10;
            int g10 = e0Var.g();
            if (e0Var.a() < 10) {
                e0Var.T(g10);
                return;
            }
            e0Var.U(9);
            int G = e0Var.G() & 7;
            if (e0Var.a() < G) {
                e0Var.T(g10);
                return;
            }
            e0Var.U(G);
            if (e0Var.a() < 4) {
                e0Var.T(g10);
                return;
            }
            if (x.k(e0Var.e(), e0Var.f()) == 443) {
                e0Var.U(4);
                int M = e0Var.M();
                if (e0Var.a() < M) {
                    e0Var.T(g10);
                    return;
                }
                e0Var.U(M);
            }
            while (e0Var.a() >= 4 && (k10 = x.k(e0Var.e(), e0Var.f())) != 442 && k10 != 441 && (k10 >>> 8) == 1) {
                e0Var.U(4);
                if (e0Var.a() < 2) {
                    e0Var.T(g10);
                    return;
                }
                e0Var.T(Math.min(e0Var.g(), e0Var.f() + e0Var.M()));
            }
        }

        @Override // g3.a.f
        public a.e a(g3.l lVar, long j10) {
            long c10 = lVar.c();
            int min = (int) Math.min(20000L, lVar.b() - c10);
            this.f28365b.P(min);
            lVar.p(this.f28365b.e(), 0, min);
            return c(this.f28365b, j10, c10);
        }

        @Override // g3.a.f
        public void b() {
            this.f28365b.Q(q0.f32951f);
        }

        private b(m0 m0Var) {
            this.f28364a = m0Var;
            this.f28365b = new y4.e0();
        }
    }

    public x(m0 m0Var, long j10, long j11) {
        super(new a.b(), new b(m0Var), j10, 0L, j10 + 1, 0L, j11, 188L, 1000);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int k(byte[] bArr, int i10) {
        return (bArr[i10 + 3] & ForkServer.ERROR) | ((bArr[i10] & ForkServer.ERROR) << 24) | ((bArr[i10 + 1] & ForkServer.ERROR) << 16) | ((bArr[i10 + 2] & ForkServer.ERROR) << 8);
    }
}
