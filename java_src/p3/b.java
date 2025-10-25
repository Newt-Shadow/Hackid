package p3;

import g3.l;
import g3.q;
import g3.r;
import g3.s;
import g3.t;
import g3.z;
import java.util.Arrays;
import org.apache.tika.fork.ForkServer;
import p3.i;
import y4.e0;
import y4.q0;
/* loaded from: classes.dex */
final class b extends i {

    /* renamed from: n  reason: collision with root package name */
    private t f27806n;

    /* renamed from: o  reason: collision with root package name */
    private a f27807o;

    /* loaded from: classes.dex */
    private static final class a implements g {

        /* renamed from: a  reason: collision with root package name */
        private t f27808a;

        /* renamed from: b  reason: collision with root package name */
        private t.a f27809b;

        /* renamed from: c  reason: collision with root package name */
        private long f27810c = -1;

        /* renamed from: d  reason: collision with root package name */
        private long f27811d = -1;

        public a(t tVar, t.a aVar) {
            this.f27808a = tVar;
            this.f27809b = aVar;
        }

        @Override // p3.g
        public z a() {
            boolean z10;
            if (this.f27810c != -1) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.f(z10);
            return new s(this.f27808a, this.f27810c);
        }

        @Override // p3.g
        public long b(l lVar) {
            long j10 = this.f27811d;
            if (j10 < 0) {
                return -1L;
            }
            long j11 = -(j10 + 2);
            this.f27811d = -1L;
            return j11;
        }

        @Override // p3.g
        public void c(long j10) {
            long[] jArr = this.f27809b.f16240a;
            this.f27811d = jArr[q0.i(jArr, j10, true, true)];
        }

        public void d(long j10) {
            this.f27810c = j10;
        }
    }

    private int n(e0 e0Var) {
        int i10 = (e0Var.e()[2] & ForkServer.ERROR) >> 4;
        if (i10 == 6 || i10 == 7) {
            e0Var.U(4);
            e0Var.N();
        }
        int j10 = q.j(e0Var, i10);
        e0Var.T(0);
        return j10;
    }

    private static boolean o(byte[] bArr) {
        if (bArr[0] != -1) {
            return false;
        }
        return true;
    }

    public static boolean p(e0 e0Var) {
        if (e0Var.a() >= 5 && e0Var.G() == 127 && e0Var.I() == 1179402563) {
            return true;
        }
        return false;
    }

    @Override // p3.i
    protected long f(e0 e0Var) {
        if (!o(e0Var.e())) {
            return -1L;
        }
        return n(e0Var);
    }

    @Override // p3.i
    protected boolean i(e0 e0Var, long j10, i.b bVar) {
        byte[] e10 = e0Var.e();
        t tVar = this.f27806n;
        if (tVar == null) {
            t tVar2 = new t(e10, 17);
            this.f27806n = tVar2;
            bVar.f27848a = tVar2.g(Arrays.copyOfRange(e10, 9, e0Var.g()), null);
            return true;
        } else if ((e10[0] & Byte.MAX_VALUE) == 3) {
            t.a g10 = r.g(e0Var);
            t b10 = tVar.b(g10);
            this.f27806n = b10;
            this.f27807o = new a(b10, g10);
            return true;
        } else if (!o(e10)) {
            return true;
        } else {
            a aVar = this.f27807o;
            if (aVar != null) {
                aVar.d(j10);
                bVar.f27849b = this.f27807o;
            }
            y4.a.e(bVar.f27848a);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // p3.i
    public void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f27806n = null;
            this.f27807o = null;
        }
    }
}
