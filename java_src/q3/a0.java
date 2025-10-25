package q3;

import android.util.SparseArray;
import g3.z;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import kotlin.KotlinVersion;
import org.apache.tika.fork.ForkServer;
import q3.i0;
import y4.m0;
/* loaded from: classes.dex */
public final class a0 implements g3.k {

    /* renamed from: l  reason: collision with root package name */
    public static final g3.p f28012l = new g3.p() { // from class: q3.z
        @Override // g3.p
        public final g3.k[] b() {
            g3.k[] d10;
            d10 = a0.d();
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private final m0 f28013a;

    /* renamed from: b  reason: collision with root package name */
    private final SparseArray f28014b;

    /* renamed from: c  reason: collision with root package name */
    private final y4.e0 f28015c;

    /* renamed from: d  reason: collision with root package name */
    private final y f28016d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f28017e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f28018f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f28019g;

    /* renamed from: h  reason: collision with root package name */
    private long f28020h;

    /* renamed from: i  reason: collision with root package name */
    private x f28021i;

    /* renamed from: j  reason: collision with root package name */
    private g3.m f28022j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f28023k;

    /* loaded from: classes.dex */
    private static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final m f28024a;

        /* renamed from: b  reason: collision with root package name */
        private final m0 f28025b;

        /* renamed from: c  reason: collision with root package name */
        private final y4.d0 f28026c = new y4.d0(new byte[64]);

        /* renamed from: d  reason: collision with root package name */
        private boolean f28027d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f28028e;

        /* renamed from: f  reason: collision with root package name */
        private boolean f28029f;

        /* renamed from: g  reason: collision with root package name */
        private int f28030g;

        /* renamed from: h  reason: collision with root package name */
        private long f28031h;

        public a(m mVar, m0 m0Var) {
            this.f28024a = mVar;
            this.f28025b = m0Var;
        }

        private void b() {
            this.f28026c.r(8);
            this.f28027d = this.f28026c.g();
            this.f28028e = this.f28026c.g();
            this.f28026c.r(6);
            this.f28030g = this.f28026c.h(8);
        }

        private void c() {
            this.f28031h = 0L;
            if (this.f28027d) {
                this.f28026c.r(4);
                this.f28026c.r(1);
                this.f28026c.r(1);
                long h10 = (this.f28026c.h(3) << 30) | (this.f28026c.h(15) << 15) | this.f28026c.h(15);
                this.f28026c.r(1);
                if (!this.f28029f && this.f28028e) {
                    this.f28026c.r(4);
                    this.f28026c.r(1);
                    this.f28026c.r(1);
                    this.f28026c.r(1);
                    this.f28025b.b((this.f28026c.h(3) << 30) | (this.f28026c.h(15) << 15) | this.f28026c.h(15));
                    this.f28029f = true;
                }
                this.f28031h = this.f28025b.b(h10);
            }
        }

        public void a(y4.e0 e0Var) {
            e0Var.l(this.f28026c.f32862a, 0, 3);
            this.f28026c.p(0);
            b();
            e0Var.l(this.f28026c.f32862a, 0, this.f28030g);
            this.f28026c.p(0);
            c();
            this.f28024a.e(this.f28031h, 4);
            this.f28024a.b(e0Var);
            this.f28024a.d();
        }

        public void d() {
            this.f28029f = false;
            this.f28024a.c();
        }
    }

    public a0() {
        this(new m0(0L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ g3.k[] d() {
        return new g3.k[]{new a0()};
    }

    private void e(long j10) {
        if (!this.f28023k) {
            this.f28023k = true;
            if (this.f28016d.c() != -9223372036854775807L) {
                x xVar = new x(this.f28016d.d(), this.f28016d.c(), j10);
                this.f28021i = xVar;
                this.f28022j.l(xVar.b());
                return;
            }
            this.f28022j.l(new z.b(this.f28016d.c()));
        }
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        boolean z10;
        boolean z11 = true;
        if (this.f28013a.e() == -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            long c10 = this.f28013a.c();
            z10 = (c10 == -9223372036854775807L || c10 == 0 || c10 == j11) ? false : false;
        }
        if (z10) {
            this.f28013a.g(j11);
        }
        x xVar = this.f28021i;
        if (xVar != null) {
            xVar.h(j11);
        }
        for (int i10 = 0; i10 < this.f28014b.size(); i10++) {
            ((a) this.f28014b.valueAt(i10)).d();
        }
    }

    @Override // g3.k
    public void c(g3.m mVar) {
        this.f28022j = mVar;
    }

    @Override // g3.k
    public boolean f(g3.l lVar) {
        byte[] bArr = new byte[14];
        lVar.p(bArr, 0, 14);
        if (442 != (((bArr[0] & ForkServer.ERROR) << 24) | ((bArr[1] & ForkServer.ERROR) << 16) | ((bArr[2] & ForkServer.ERROR) << 8) | (bArr[3] & ForkServer.ERROR)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        lVar.h(bArr[13] & 7);
        lVar.p(bArr, 0, 3);
        if (1 != (((bArr[0] & ForkServer.ERROR) << 16) | ((bArr[1] & ForkServer.ERROR) << 8) | (bArr[2] & ForkServer.ERROR))) {
            return false;
        }
        return true;
    }

    @Override // g3.k
    public int g(g3.l lVar, g3.y yVar) {
        boolean z10;
        long j10;
        long j11;
        m mVar;
        y4.a.h(this.f28022j);
        long b10 = lVar.b();
        int i10 = (b10 > (-1L) ? 1 : (b10 == (-1L) ? 0 : -1));
        if (i10 != 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (z10 && !this.f28016d.e()) {
            return this.f28016d.g(lVar, yVar);
        }
        e(b10);
        x xVar = this.f28021i;
        if (xVar != null && xVar.d()) {
            return this.f28021i.c(lVar, yVar);
        }
        lVar.l();
        if (i10 != 0) {
            j10 = b10 - lVar.g();
        } else {
            j10 = -1;
        }
        if ((j10 != -1 && j10 < 4) || !lVar.f(this.f28015c.e(), 0, 4, true)) {
            return -1;
        }
        this.f28015c.T(0);
        int p10 = this.f28015c.p();
        if (p10 == 441) {
            return -1;
        }
        if (p10 == 442) {
            lVar.p(this.f28015c.e(), 0, 10);
            this.f28015c.T(9);
            lVar.m((this.f28015c.G() & 7) + 14);
            return 0;
        } else if (p10 == 443) {
            lVar.p(this.f28015c.e(), 0, 2);
            this.f28015c.T(0);
            lVar.m(this.f28015c.M() + 6);
            return 0;
        } else if (((p10 & (-256)) >> 8) != 1) {
            lVar.m(1);
            return 0;
        } else {
            int i11 = p10 & KotlinVersion.MAX_COMPONENT_VALUE;
            a aVar = (a) this.f28014b.get(i11);
            if (!this.f28017e) {
                if (aVar == null) {
                    if (i11 == 189) {
                        mVar = new c();
                        this.f28018f = true;
                        this.f28020h = lVar.c();
                    } else if ((i11 & 224) == 192) {
                        mVar = new t();
                        this.f28018f = true;
                        this.f28020h = lVar.c();
                    } else if ((i11 & 240) == 224) {
                        mVar = new n();
                        this.f28019g = true;
                        this.f28020h = lVar.c();
                    } else {
                        mVar = null;
                    }
                    if (mVar != null) {
                        mVar.f(this.f28022j, new i0.d(i11, 256));
                        aVar = new a(mVar, this.f28013a);
                        this.f28014b.put(i11, aVar);
                    }
                }
                if (this.f28018f && this.f28019g) {
                    j11 = this.f28020h + 8192;
                } else {
                    j11 = 1048576;
                }
                if (lVar.c() > j11) {
                    this.f28017e = true;
                    this.f28022j.n();
                }
            }
            lVar.p(this.f28015c.e(), 0, 2);
            this.f28015c.T(0);
            int M = this.f28015c.M() + 6;
            if (aVar == null) {
                lVar.m(M);
            } else {
                this.f28015c.P(M);
                lVar.readFully(this.f28015c.e(), 0, M);
                this.f28015c.T(6);
                aVar.a(this.f28015c);
                y4.e0 e0Var = this.f28015c;
                e0Var.S(e0Var.b());
            }
            return 0;
        }
    }

    @Override // g3.k
    public void release() {
    }

    public a0(m0 m0Var) {
        this.f28013a = m0Var;
        this.f28015c = new y4.e0((int) Base64Utils.IO_BUFFER_SIZE);
        this.f28014b = new SparseArray();
        this.f28016d = new y();
    }
}
