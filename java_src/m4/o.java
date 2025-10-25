package m4;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import b3.u3;
import b3.x1;
import b3.y1;
import o6.q;
import y4.q0;
import y4.r;
import y4.v;
/* loaded from: classes.dex */
public final class o extends b3.o implements Handler.Callback {
    private int A;
    private long B;
    private long C;
    private long D;

    /* renamed from: n  reason: collision with root package name */
    private final Handler f25739n;

    /* renamed from: o  reason: collision with root package name */
    private final n f25740o;

    /* renamed from: p  reason: collision with root package name */
    private final k f25741p;

    /* renamed from: q  reason: collision with root package name */
    private final y1 f25742q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f25743r;

    /* renamed from: s  reason: collision with root package name */
    private boolean f25744s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f25745t;

    /* renamed from: u  reason: collision with root package name */
    private int f25746u;

    /* renamed from: v  reason: collision with root package name */
    private x1 f25747v;

    /* renamed from: w  reason: collision with root package name */
    private i f25748w;

    /* renamed from: x  reason: collision with root package name */
    private l f25749x;

    /* renamed from: y  reason: collision with root package name */
    private m f25750y;

    /* renamed from: z  reason: collision with root package name */
    private m f25751z;

    public o(n nVar, Looper looper) {
        this(nVar, looper, k.f25735a);
    }

    private void Y() {
        j0(new e(q.D(), b0(this.D)));
    }

    private long Z(long j10) {
        int a10 = this.f25750y.a(j10);
        if (a10 != 0 && this.f25750y.i() != 0) {
            if (a10 == -1) {
                m mVar = this.f25750y;
                return mVar.b(mVar.i() - 1);
            }
            return this.f25750y.b(a10 - 1);
        }
        return this.f25750y.f15297b;
    }

    private long a0() {
        if (this.A == -1) {
            return Long.MAX_VALUE;
        }
        y4.a.e(this.f25750y);
        if (this.A >= this.f25750y.i()) {
            return Long.MAX_VALUE;
        }
        return this.f25750y.b(this.A);
    }

    private long b0(long j10) {
        boolean z10;
        boolean z11 = true;
        if (j10 != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        if (this.C == -9223372036854775807L) {
            z11 = false;
        }
        y4.a.f(z11);
        return j10 - this.C;
    }

    private void c0(j jVar) {
        r.d("TextRenderer", "Subtitle decoding failed. streamFormat=" + this.f25747v, jVar);
        Y();
        h0();
    }

    private void d0() {
        this.f25745t = true;
        this.f25748w = this.f25741p.a((x1) y4.a.e(this.f25747v));
    }

    private void e0(e eVar) {
        this.f25740o.onCues(eVar.f25723a);
        this.f25740o.onCues(eVar);
    }

    private void f0() {
        this.f25749x = null;
        this.A = -1;
        m mVar = this.f25750y;
        if (mVar != null) {
            mVar.v();
            this.f25750y = null;
        }
        m mVar2 = this.f25751z;
        if (mVar2 != null) {
            mVar2.v();
            this.f25751z = null;
        }
    }

    private void g0() {
        f0();
        ((i) y4.a.e(this.f25748w)).release();
        this.f25748w = null;
        this.f25746u = 0;
    }

    private void h0() {
        g0();
        d0();
    }

    private void j0(e eVar) {
        Handler handler = this.f25739n;
        if (handler != null) {
            handler.obtainMessage(0, eVar).sendToTarget();
        } else {
            e0(eVar);
        }
    }

    @Override // b3.o
    protected void O() {
        this.f25747v = null;
        this.B = -9223372036854775807L;
        Y();
        this.C = -9223372036854775807L;
        this.D = -9223372036854775807L;
        g0();
    }

    @Override // b3.o
    protected void Q(long j10, boolean z10) {
        this.D = j10;
        Y();
        this.f25743r = false;
        this.f25744s = false;
        this.B = -9223372036854775807L;
        if (this.f25746u != 0) {
            h0();
            return;
        }
        f0();
        ((i) y4.a.e(this.f25748w)).flush();
    }

    @Override // b3.o
    protected void U(x1[] x1VarArr, long j10, long j11) {
        this.C = j11;
        this.f25747v = x1VarArr[0];
        if (this.f25748w != null) {
            this.f25746u = 1;
        } else {
            d0();
        }
    }

    @Override // b3.u3
    public int b(x1 x1Var) {
        int i10;
        if (this.f25741p.b(x1Var)) {
            if (x1Var.G == 0) {
                i10 = 4;
            } else {
                i10 = 2;
            }
            return u3.v(i10);
        } else if (v.r(x1Var.f4514l)) {
            return u3.v(1);
        } else {
            return u3.v(0);
        }
    }

    @Override // b3.t3
    public boolean d() {
        return this.f25744s;
    }

    @Override // b3.t3, b3.u3
    public String getName() {
        return "TextRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            e0((e) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    public void i0(long j10) {
        y4.a.f(D());
        this.B = j10;
    }

    @Override // b3.t3
    public boolean isReady() {
        return true;
    }

    @Override // b3.t3
    public void x(long j10, long j11) {
        boolean z10;
        boolean z11;
        this.D = j10;
        if (D()) {
            long j12 = this.B;
            if (j12 != -9223372036854775807L && j10 >= j12) {
                f0();
                this.f25744s = true;
            }
        }
        if (this.f25744s) {
            return;
        }
        if (this.f25751z == null) {
            ((i) y4.a.e(this.f25748w)).a(j10);
            try {
                this.f25751z = (m) ((i) y4.a.e(this.f25748w)).b();
            } catch (j e10) {
                c0(e10);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.f25750y != null) {
            long a02 = a0();
            z10 = false;
            while (a02 <= j10) {
                this.A++;
                a02 = a0();
                z10 = true;
            }
        } else {
            z10 = false;
        }
        m mVar = this.f25751z;
        if (mVar != null) {
            if (mVar.q()) {
                if (!z10 && a0() == Long.MAX_VALUE) {
                    if (this.f25746u == 2) {
                        h0();
                    } else {
                        f0();
                        this.f25744s = true;
                    }
                }
            } else if (mVar.f15297b <= j10) {
                m mVar2 = this.f25750y;
                if (mVar2 != null) {
                    mVar2.v();
                }
                this.A = mVar.a(j10);
                this.f25750y = mVar;
                this.f25751z = null;
                z10 = true;
            }
        }
        if (z10) {
            y4.a.e(this.f25750y);
            j0(new e(this.f25750y.f(j10), b0(Z(j10))));
        }
        if (this.f25746u == 2) {
            return;
        }
        while (!this.f25743r) {
            try {
                l lVar = this.f25749x;
                if (lVar == null) {
                    lVar = (l) ((i) y4.a.e(this.f25748w)).c();
                    if (lVar == null) {
                        return;
                    }
                    this.f25749x = lVar;
                }
                if (this.f25746u == 1) {
                    lVar.u(4);
                    ((i) y4.a.e(this.f25748w)).d(lVar);
                    this.f25749x = null;
                    this.f25746u = 2;
                    return;
                }
                int V = V(this.f25742q, lVar, 0);
                if (V == -4) {
                    if (lVar.q()) {
                        this.f25743r = true;
                        this.f25745t = false;
                    } else {
                        x1 x1Var = this.f25742q.f4575b;
                        if (x1Var == null) {
                            return;
                        }
                        lVar.f25736i = x1Var.f4518p;
                        lVar.x();
                        boolean z12 = this.f25745t;
                        if (!lVar.s()) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                        this.f25745t = z12 & z11;
                    }
                    if (!this.f25745t) {
                        ((i) y4.a.e(this.f25748w)).d(lVar);
                        this.f25749x = null;
                    }
                } else if (V == -3) {
                    return;
                }
            } catch (j e11) {
                c0(e11);
                return;
            }
        }
    }

    public o(n nVar, Looper looper, k kVar) {
        super(3);
        this.f25740o = (n) y4.a.e(nVar);
        this.f25739n = looper == null ? null : q0.v(looper, this);
        this.f25741p = kVar;
        this.f25742q = new y1();
        this.B = -9223372036854775807L;
        this.C = -9223372036854775807L;
        this.D = -9223372036854775807L;
    }
}
