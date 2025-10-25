package q3;

import g3.a;
import org.apache.tika.pipes.PipesConfigBase;
import y4.m0;
import y4.q0;
/* loaded from: classes.dex */
final class e0 extends g3.a {

    /* loaded from: classes.dex */
    private static final class a implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final m0 f28060a;

        /* renamed from: b  reason: collision with root package name */
        private final y4.e0 f28061b = new y4.e0();

        /* renamed from: c  reason: collision with root package name */
        private final int f28062c;

        /* renamed from: d  reason: collision with root package name */
        private final int f28063d;

        public a(int i10, m0 m0Var, int i11) {
            this.f28062c = i10;
            this.f28060a = m0Var;
            this.f28063d = i11;
        }

        private a.e c(y4.e0 e0Var, long j10, long j11) {
            int a10;
            int a11;
            int g10 = e0Var.g();
            long j12 = -1;
            long j13 = -1;
            long j14 = -9223372036854775807L;
            while (e0Var.a() >= 188 && (a11 = (a10 = j0.a(e0Var.e(), e0Var.f(), g10)) + 188) <= g10) {
                long c10 = j0.c(e0Var, a10, this.f28062c);
                if (c10 != -9223372036854775807L) {
                    long b10 = this.f28060a.b(c10);
                    if (b10 > j10) {
                        if (j14 == -9223372036854775807L) {
                            return a.e.d(b10, j11);
                        }
                        return a.e.e(j11 + j13);
                    } else if (PipesConfigBase.DEFAULT_MAX_FOR_EMIT_BATCH + b10 > j10) {
                        return a.e.e(j11 + a10);
                    } else {
                        j13 = a10;
                        j14 = b10;
                    }
                }
                e0Var.T(a11);
                j12 = a11;
            }
            if (j14 != -9223372036854775807L) {
                return a.e.f(j14, j11 + j12);
            }
            return a.e.f16138d;
        }

        @Override // g3.a.f
        public a.e a(g3.l lVar, long j10) {
            long c10 = lVar.c();
            int min = (int) Math.min(this.f28063d, lVar.b() - c10);
            this.f28061b.P(min);
            lVar.p(this.f28061b.e(), 0, min);
            return c(this.f28061b, j10, c10);
        }

        @Override // g3.a.f
        public void b() {
            this.f28061b.Q(q0.f32951f);
        }
    }

    public e0(m0 m0Var, long j10, long j11, int i10, int i11) {
        super(new a.b(), new a(i10, m0Var, i11), j10, 0L, j10 + 1, 0L, j11, 188L, 940);
    }
}
