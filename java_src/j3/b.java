package j3;

import g3.a;
import g3.l;
import g3.q;
import g3.t;
import java.util.Objects;
/* loaded from: classes.dex */
final class b extends g3.a {

    /* renamed from: j3.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static final class C0226b implements a.f {

        /* renamed from: a  reason: collision with root package name */
        private final t f24306a;

        /* renamed from: b  reason: collision with root package name */
        private final int f24307b;

        /* renamed from: c  reason: collision with root package name */
        private final q.a f24308c;

        private long c(l lVar) {
            while (lVar.g() < lVar.b() - 6 && !q.h(lVar, this.f24306a, this.f24307b, this.f24308c)) {
                lVar.h(1);
            }
            if (lVar.g() >= lVar.b() - 6) {
                lVar.h((int) (lVar.b() - lVar.g()));
                return this.f24306a.f16237j;
            }
            return this.f24308c.f16224a;
        }

        @Override // g3.a.f
        public a.e a(l lVar, long j10) {
            long c10 = lVar.c();
            long c11 = c(lVar);
            long g10 = lVar.g();
            lVar.h(Math.max(6, this.f24306a.f16230c));
            long c12 = c(lVar);
            long g11 = lVar.g();
            if (c11 <= j10 && c12 > j10) {
                return a.e.e(g10);
            }
            if (c12 <= j10) {
                return a.e.f(c12, g11);
            }
            return a.e.d(c11, c10);
        }

        private C0226b(t tVar, int i10) {
            this.f24306a = tVar;
            this.f24307b = i10;
            this.f24308c = new q.a();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(final t tVar, int i10, long j10, long j11) {
        super(new a.d() { // from class: j3.a
            @Override // g3.a.d
            public final long a(long j12) {
                return t.this.i(j12);
            }
        }, new C0226b(tVar, i10), tVar.f(), 0L, tVar.f16237j, j10, j11, tVar.d(), Math.max(6, tVar.f16230c));
        Objects.requireNonNull(tVar);
    }
}
