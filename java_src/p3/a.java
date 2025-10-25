package p3;

import g3.a0;
import g3.l;
import g3.n;
import g3.z;
import java.io.EOFException;
import java.io.IOException;
import org.apache.tika.pipes.PipesConfigBase;
import y4.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    private final f f27793a;

    /* renamed from: b  reason: collision with root package name */
    private final long f27794b;

    /* renamed from: c  reason: collision with root package name */
    private final long f27795c;

    /* renamed from: d  reason: collision with root package name */
    private final i f27796d;

    /* renamed from: e  reason: collision with root package name */
    private int f27797e;

    /* renamed from: f  reason: collision with root package name */
    private long f27798f;

    /* renamed from: g  reason: collision with root package name */
    private long f27799g;

    /* renamed from: h  reason: collision with root package name */
    private long f27800h;

    /* renamed from: i  reason: collision with root package name */
    private long f27801i;

    /* renamed from: j  reason: collision with root package name */
    private long f27802j;

    /* renamed from: k  reason: collision with root package name */
    private long f27803k;

    /* renamed from: l  reason: collision with root package name */
    private long f27804l;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public final class b implements z {
        private b() {
        }

        @Override // g3.z
        public boolean e() {
            return true;
        }

        @Override // g3.z
        public z.a h(long j10) {
            return new z.a(new a0(j10, q0.r((a.this.f27794b + ((a.this.f27796d.c(j10) * (a.this.f27795c - a.this.f27794b)) / a.this.f27798f)) - 30000, a.this.f27794b, a.this.f27795c - 1)));
        }

        @Override // g3.z
        public long i() {
            return a.this.f27796d.b(a.this.f27798f);
        }
    }

    public a(i iVar, long j10, long j11, long j12, long j13, boolean z10) {
        boolean z11;
        if (j10 >= 0 && j11 > j10) {
            z11 = true;
        } else {
            z11 = false;
        }
        y4.a.a(z11);
        this.f27796d = iVar;
        this.f27794b = j10;
        this.f27795c = j11;
        if (j12 != j11 - j10 && !z10) {
            this.f27797e = 0;
        } else {
            this.f27798f = j13;
            this.f27797e = 4;
        }
        this.f27793a = new f();
    }

    private long i(l lVar) {
        long j10;
        if (this.f27801i == this.f27802j) {
            return -1L;
        }
        long c10 = lVar.c();
        if (!this.f27793a.d(lVar, this.f27802j)) {
            long j11 = this.f27801i;
            if (j11 != c10) {
                return j11;
            }
            throw new IOException("No ogg page can be found.");
        }
        this.f27793a.a(lVar, false);
        lVar.l();
        long j12 = this.f27800h;
        f fVar = this.f27793a;
        long j13 = fVar.f27823c;
        long j14 = j12 - j13;
        int i10 = fVar.f27828h + fVar.f27829i;
        if (0 <= j14 && j14 < 72000) {
            return -1L;
        }
        int i11 = (j14 > 0L ? 1 : (j14 == 0L ? 0 : -1));
        if (i11 < 0) {
            this.f27802j = c10;
            this.f27804l = j13;
        } else {
            this.f27801i = lVar.c() + i10;
            this.f27803k = this.f27793a.f27823c;
        }
        long j15 = this.f27802j;
        long j16 = this.f27801i;
        if (j15 - j16 < PipesConfigBase.DEFAULT_MAX_FOR_EMIT_BATCH) {
            this.f27802j = j16;
            return j16;
        }
        long j17 = i10;
        if (i11 <= 0) {
            j10 = 2;
        } else {
            j10 = 1;
        }
        long c11 = lVar.c() - (j17 * j10);
        long j18 = this.f27802j;
        long j19 = this.f27801i;
        return q0.r(c11 + ((j14 * (j18 - j19)) / (this.f27804l - this.f27803k)), j19, j18 - 1);
    }

    private void k(l lVar) {
        while (true) {
            this.f27793a.c(lVar);
            this.f27793a.a(lVar, false);
            f fVar = this.f27793a;
            if (fVar.f27823c > this.f27800h) {
                lVar.l();
                return;
            }
            lVar.m(fVar.f27828h + fVar.f27829i);
            this.f27801i = lVar.c();
            this.f27803k = this.f27793a.f27823c;
        }
    }

    @Override // p3.g
    public long b(l lVar) {
        int i10 = this.f27797e;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        if (i10 == 4) {
                            return -1L;
                        }
                        throw new IllegalStateException();
                    }
                } else {
                    long i11 = i(lVar);
                    if (i11 != -1) {
                        return i11;
                    }
                    this.f27797e = 3;
                }
                k(lVar);
                this.f27797e = 4;
                return -(this.f27803k + 2);
            }
        } else {
            long c10 = lVar.c();
            this.f27799g = c10;
            this.f27797e = 1;
            long j10 = this.f27795c - 65307;
            if (j10 > c10) {
                return j10;
            }
        }
        this.f27798f = j(lVar);
        this.f27797e = 4;
        return this.f27799g;
    }

    @Override // p3.g
    public void c(long j10) {
        this.f27800h = q0.r(j10, 0L, this.f27798f - 1);
        this.f27797e = 2;
        this.f27801i = this.f27794b;
        this.f27802j = this.f27795c;
        this.f27803k = 0L;
        this.f27804l = this.f27798f;
    }

    @Override // p3.g
    /* renamed from: h */
    public b a() {
        if (this.f27798f == 0) {
            return null;
        }
        return new b();
    }

    long j(l lVar) {
        this.f27793a.b();
        if (this.f27793a.c(lVar)) {
            this.f27793a.a(lVar, false);
            f fVar = this.f27793a;
            lVar.m(fVar.f27828h + fVar.f27829i);
            long j10 = this.f27793a.f27823c;
            while (true) {
                f fVar2 = this.f27793a;
                if ((fVar2.f27822b & 4) == 4 || !fVar2.c(lVar) || lVar.c() >= this.f27795c || !this.f27793a.a(lVar, true)) {
                    break;
                }
                f fVar3 = this.f27793a;
                if (!n.e(lVar, fVar3.f27828h + fVar3.f27829i)) {
                    break;
                }
                j10 = this.f27793a.f27823c;
            }
            return j10;
        }
        throw new EOFException();
    }
}
