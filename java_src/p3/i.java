package p3;

import b3.x1;
import g3.b0;
import g3.l;
import g3.m;
import g3.y;
import g3.z;
import y4.e0;
import y4.q0;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class i {

    /* renamed from: b  reason: collision with root package name */
    private b0 f27836b;

    /* renamed from: c  reason: collision with root package name */
    private m f27837c;

    /* renamed from: d  reason: collision with root package name */
    private g f27838d;

    /* renamed from: e  reason: collision with root package name */
    private long f27839e;

    /* renamed from: f  reason: collision with root package name */
    private long f27840f;

    /* renamed from: g  reason: collision with root package name */
    private long f27841g;

    /* renamed from: h  reason: collision with root package name */
    private int f27842h;

    /* renamed from: i  reason: collision with root package name */
    private int f27843i;

    /* renamed from: k  reason: collision with root package name */
    private long f27845k;

    /* renamed from: l  reason: collision with root package name */
    private boolean f27846l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f27847m;

    /* renamed from: a  reason: collision with root package name */
    private final e f27835a = new e();

    /* renamed from: j  reason: collision with root package name */
    private b f27844j = new b();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        x1 f27848a;

        /* renamed from: b  reason: collision with root package name */
        g f27849b;

        b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static final class c implements g {
        private c() {
        }

        @Override // p3.g
        public z a() {
            return new z.b(-9223372036854775807L);
        }

        @Override // p3.g
        public long b(l lVar) {
            return -1L;
        }

        @Override // p3.g
        public void c(long j10) {
        }
    }

    private void a() {
        y4.a.h(this.f27836b);
        q0.j(this.f27837c);
    }

    private boolean h(l lVar) {
        while (this.f27835a.d(lVar)) {
            this.f27845k = lVar.c() - this.f27840f;
            if (i(this.f27835a.c(), this.f27840f, this.f27844j)) {
                this.f27840f = lVar.c();
            } else {
                return true;
            }
        }
        this.f27842h = 3;
        return false;
    }

    private int j(l lVar) {
        boolean z10;
        if (!h(lVar)) {
            return -1;
        }
        x1 x1Var = this.f27844j.f27848a;
        this.f27843i = x1Var.f4528z;
        if (!this.f27847m) {
            this.f27836b.c(x1Var);
            this.f27847m = true;
        }
        g gVar = this.f27844j.f27849b;
        if (gVar != null) {
            this.f27838d = gVar;
        } else if (lVar.b() == -1) {
            this.f27838d = new c();
        } else {
            f b10 = this.f27835a.b();
            if ((b10.f27822b & 4) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            this.f27838d = new p3.a(this, this.f27840f, lVar.b(), b10.f27828h + b10.f27829i, b10.f27823c, z10);
        }
        this.f27842h = 2;
        this.f27835a.f();
        return 0;
    }

    private int k(l lVar, y yVar) {
        long b10 = this.f27838d.b(lVar);
        if (b10 >= 0) {
            yVar.f16251a = b10;
            return 1;
        }
        if (b10 < -1) {
            e(-(b10 + 2));
        }
        if (!this.f27846l) {
            this.f27837c.l((z) y4.a.h(this.f27838d.a()));
            this.f27846l = true;
        }
        if (this.f27845k <= 0 && !this.f27835a.d(lVar)) {
            this.f27842h = 3;
            return -1;
        }
        this.f27845k = 0L;
        e0 c10 = this.f27835a.c();
        long f10 = f(c10);
        if (f10 >= 0) {
            long j10 = this.f27841g;
            if (j10 + f10 >= this.f27839e) {
                long b11 = b(j10);
                this.f27836b.b(c10, c10.g());
                this.f27836b.f(b11, 1, c10.g(), 0, null);
                this.f27839e = -1L;
            }
        }
        this.f27841g += f10;
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long b(long j10) {
        return (j10 * 1000000) / this.f27843i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long c(long j10) {
        return (this.f27843i * j10) / 1000000;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d(m mVar, b0 b0Var) {
        this.f27837c = mVar;
        this.f27836b = b0Var;
        l(true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e(long j10) {
        this.f27841g = j10;
    }

    protected abstract long f(e0 e0Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int g(l lVar, y yVar) {
        a();
        int i10 = this.f27842h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                q0.j(this.f27838d);
                return k(lVar, yVar);
            }
            lVar.m((int) this.f27840f);
            this.f27842h = 2;
            return 0;
        }
        return j(lVar);
    }

    protected abstract boolean i(e0 e0Var, long j10, b bVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(boolean z10) {
        if (z10) {
            this.f27844j = new b();
            this.f27840f = 0L;
            this.f27842h = 0;
        } else {
            this.f27842h = 1;
        }
        this.f27839e = -1L;
        this.f27841g = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void m(long j10, long j11) {
        this.f27835a.e();
        if (j10 == 0) {
            l(!this.f27846l);
        } else if (this.f27842h != 0) {
            this.f27839e = c(j11);
            ((g) q0.j(this.f27838d)).c(this.f27839e);
            this.f27842h = 2;
        }
    }
}
