package g3;

import g3.z;
import y4.q0;
/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    protected final C0173a f16119a;

    /* renamed from: b  reason: collision with root package name */
    protected final f f16120b;

    /* renamed from: c  reason: collision with root package name */
    protected c f16121c;

    /* renamed from: d  reason: collision with root package name */
    private final int f16122d;

    /* renamed from: g3.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static class C0173a implements z {

        /* renamed from: a  reason: collision with root package name */
        private final d f16123a;

        /* renamed from: b  reason: collision with root package name */
        private final long f16124b;

        /* renamed from: c  reason: collision with root package name */
        private final long f16125c;

        /* renamed from: d  reason: collision with root package name */
        private final long f16126d;

        /* renamed from: e  reason: collision with root package name */
        private final long f16127e;

        /* renamed from: f  reason: collision with root package name */
        private final long f16128f;

        /* renamed from: g  reason: collision with root package name */
        private final long f16129g;

        public C0173a(d dVar, long j10, long j11, long j12, long j13, long j14, long j15) {
            this.f16123a = dVar;
            this.f16124b = j10;
            this.f16125c = j11;
            this.f16126d = j12;
            this.f16127e = j13;
            this.f16128f = j14;
            this.f16129g = j15;
        }

        @Override // g3.z
        public boolean e() {
            return true;
        }

        @Override // g3.z
        public z.a h(long j10) {
            return new z.a(new a0(j10, c.h(this.f16123a.a(j10), this.f16125c, this.f16126d, this.f16127e, this.f16128f, this.f16129g)));
        }

        @Override // g3.z
        public long i() {
            return this.f16124b;
        }

        public long k(long j10) {
            return this.f16123a.a(j10);
        }
    }

    /* loaded from: classes.dex */
    public static final class b implements d {
        @Override // g3.a.d
        public long a(long j10) {
            return j10;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final long f16130a;

        /* renamed from: b  reason: collision with root package name */
        private final long f16131b;

        /* renamed from: c  reason: collision with root package name */
        private final long f16132c;

        /* renamed from: d  reason: collision with root package name */
        private long f16133d;

        /* renamed from: e  reason: collision with root package name */
        private long f16134e;

        /* renamed from: f  reason: collision with root package name */
        private long f16135f;

        /* renamed from: g  reason: collision with root package name */
        private long f16136g;

        /* renamed from: h  reason: collision with root package name */
        private long f16137h;

        protected c(long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
            this.f16130a = j10;
            this.f16131b = j11;
            this.f16133d = j12;
            this.f16134e = j13;
            this.f16135f = j14;
            this.f16136g = j15;
            this.f16132c = j16;
            this.f16137h = h(j11, j12, j13, j14, j15, j16);
        }

        protected static long h(long j10, long j11, long j12, long j13, long j14, long j15) {
            if (j13 + 1 < j14 && j11 + 1 < j12) {
                long j16 = ((float) (j10 - j11)) * (((float) (j14 - j13)) / ((float) (j12 - j11)));
                return q0.r(((j16 + j13) - j15) - (j16 / 20), j13, j14 - 1);
            }
            return j13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long i() {
            return this.f16136g;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long j() {
            return this.f16135f;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long k() {
            return this.f16137h;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long l() {
            return this.f16130a;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long m() {
            return this.f16131b;
        }

        private void n() {
            this.f16137h = h(this.f16131b, this.f16133d, this.f16134e, this.f16135f, this.f16136g, this.f16132c);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void o(long j10, long j11) {
            this.f16134e = j10;
            this.f16136g = j11;
            n();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void p(long j10, long j11) {
            this.f16133d = j10;
            this.f16135f = j11;
            n();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public interface d {
        long a(long j10);
    }

    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: d  reason: collision with root package name */
        public static final e f16138d = new e(-3, -9223372036854775807L, -1);

        /* renamed from: a  reason: collision with root package name */
        private final int f16139a;

        /* renamed from: b  reason: collision with root package name */
        private final long f16140b;

        /* renamed from: c  reason: collision with root package name */
        private final long f16141c;

        private e(int i10, long j10, long j11) {
            this.f16139a = i10;
            this.f16140b = j10;
            this.f16141c = j11;
        }

        public static e d(long j10, long j11) {
            return new e(-1, j10, j11);
        }

        public static e e(long j10) {
            return new e(0, -9223372036854775807L, j10);
        }

        public static e f(long j10, long j11) {
            return new e(-2, j10, j11);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public interface f {
        e a(l lVar, long j10);

        default void b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(d dVar, f fVar, long j10, long j11, long j12, long j13, long j14, long j15, int i10) {
        this.f16120b = fVar;
        this.f16122d = i10;
        this.f16119a = new C0173a(dVar, j10, j11, j12, j13, j14, j15);
    }

    protected c a(long j10) {
        return new c(j10, this.f16119a.k(j10), this.f16119a.f16125c, this.f16119a.f16126d, this.f16119a.f16127e, this.f16119a.f16128f, this.f16119a.f16129g);
    }

    public final z b() {
        return this.f16119a;
    }

    public int c(l lVar, y yVar) {
        while (true) {
            c cVar = (c) y4.a.h(this.f16121c);
            long j10 = cVar.j();
            long i10 = cVar.i();
            long k10 = cVar.k();
            if (i10 - j10 <= this.f16122d) {
                e(false, j10);
                return g(lVar, j10, yVar);
            } else if (!i(lVar, k10)) {
                return g(lVar, k10, yVar);
            } else {
                lVar.l();
                e a10 = this.f16120b.a(lVar, cVar.m());
                int i11 = a10.f16139a;
                if (i11 != -3) {
                    if (i11 == -2) {
                        cVar.p(a10.f16140b, a10.f16141c);
                    } else if (i11 == -1) {
                        cVar.o(a10.f16140b, a10.f16141c);
                    } else if (i11 == 0) {
                        i(lVar, a10.f16141c);
                        e(true, a10.f16141c);
                        return g(lVar, a10.f16141c, yVar);
                    } else {
                        throw new IllegalStateException("Invalid case");
                    }
                } else {
                    e(false, k10);
                    return g(lVar, k10, yVar);
                }
            }
        }
    }

    public final boolean d() {
        if (this.f16121c != null) {
            return true;
        }
        return false;
    }

    protected final void e(boolean z10, long j10) {
        this.f16121c = null;
        this.f16120b.b();
        f(z10, j10);
    }

    protected void f(boolean z10, long j10) {
    }

    protected final int g(l lVar, long j10, y yVar) {
        if (j10 == lVar.c()) {
            return 0;
        }
        yVar.f16251a = j10;
        return 1;
    }

    public final void h(long j10) {
        c cVar = this.f16121c;
        if (cVar != null && cVar.l() == j10) {
            return;
        }
        this.f16121c = a(j10);
    }

    protected final boolean i(l lVar, long j10) {
        long c10 = j10 - lVar.c();
        if (c10 >= 0 && c10 <= 262144) {
            lVar.m((int) c10);
            return true;
        }
        return false;
    }
}
