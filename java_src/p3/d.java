package p3;

import b3.e3;
import g3.b0;
import g3.k;
import g3.l;
import g3.m;
import g3.p;
import g3.y;
import y4.e0;
/* loaded from: classes.dex */
public class d implements k {

    /* renamed from: d  reason: collision with root package name */
    public static final p f27812d = new p() { // from class: p3.c
        @Override // g3.p
        public final k[] b() {
            k[] d10;
            d10 = d.d();
            return d10;
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private m f27813a;

    /* renamed from: b  reason: collision with root package name */
    private i f27814b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f27815c;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ k[] d() {
        return new k[]{new d()};
    }

    private static e0 e(e0 e0Var) {
        e0Var.T(0);
        return e0Var;
    }

    private boolean h(l lVar) {
        f fVar = new f();
        if (fVar.a(lVar, true) && (fVar.f27822b & 2) == 2) {
            int min = Math.min(fVar.f27829i, 8);
            e0 e0Var = new e0(min);
            lVar.p(e0Var.e(), 0, min);
            if (b.p(e(e0Var))) {
                this.f27814b = new b();
            } else if (j.r(e(e0Var))) {
                this.f27814b = new j();
            } else if (h.o(e(e0Var))) {
                this.f27814b = new h();
            }
            return true;
        }
        return false;
    }

    @Override // g3.k
    public void b(long j10, long j11) {
        i iVar = this.f27814b;
        if (iVar != null) {
            iVar.m(j10, j11);
        }
    }

    @Override // g3.k
    public void c(m mVar) {
        this.f27813a = mVar;
    }

    @Override // g3.k
    public boolean f(l lVar) {
        try {
            return h(lVar);
        } catch (e3 unused) {
            return false;
        }
    }

    @Override // g3.k
    public int g(l lVar, y yVar) {
        y4.a.h(this.f27813a);
        if (this.f27814b == null) {
            if (h(lVar)) {
                lVar.l();
            } else {
                throw e3.a("Failed to determine bitstream type", null);
            }
        }
        if (!this.f27815c) {
            b0 a10 = this.f27813a.a(0, 1);
            this.f27813a.n();
            this.f27814b.d(this.f27813a, a10);
            this.f27815c = true;
        }
        return this.f27814b.g(lVar, yVar);
    }

    @Override // g3.k
    public void release() {
    }
}
