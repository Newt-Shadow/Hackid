package t3;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import b3.o;
import b3.u3;
import b3.x1;
import b3.y1;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import y4.q0;
/* loaded from: classes.dex */
public final class f extends o implements Handler.Callback {

    /* renamed from: n  reason: collision with root package name */
    private final c f29849n;

    /* renamed from: o  reason: collision with root package name */
    private final e f29850o;

    /* renamed from: p  reason: collision with root package name */
    private final Handler f29851p;

    /* renamed from: q  reason: collision with root package name */
    private final d f29852q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f29853r;

    /* renamed from: s  reason: collision with root package name */
    private b f29854s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f29855t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f29856u;

    /* renamed from: v  reason: collision with root package name */
    private long f29857v;

    /* renamed from: w  reason: collision with root package name */
    private a f29858w;

    /* renamed from: x  reason: collision with root package name */
    private long f29859x;

    public f(e eVar, Looper looper) {
        this(eVar, looper, c.f29847a);
    }

    private void Y(a aVar, List list) {
        for (int i10 = 0; i10 < aVar.e(); i10++) {
            x1 y10 = aVar.d(i10).y();
            if (y10 != null && this.f29849n.b(y10)) {
                b a10 = this.f29849n.a(y10);
                byte[] bArr = (byte[]) y4.a.e(aVar.d(i10).A());
                this.f29852q.l();
                this.f29852q.w(bArr.length);
                ((ByteBuffer) q0.j(this.f29852q.f15289c)).put(bArr);
                this.f29852q.x();
                a a11 = a10.a(this.f29852q);
                if (a11 != null) {
                    Y(a11, list);
                }
            } else {
                list.add(aVar.d(i10));
            }
        }
    }

    private long Z(long j10) {
        boolean z10;
        boolean z11 = true;
        if (j10 != -9223372036854775807L) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        if (this.f29859x == -9223372036854775807L) {
            z11 = false;
        }
        y4.a.f(z11);
        return j10 - this.f29859x;
    }

    private void a0(a aVar) {
        Handler handler = this.f29851p;
        if (handler != null) {
            handler.obtainMessage(0, aVar).sendToTarget();
        } else {
            b0(aVar);
        }
    }

    private void b0(a aVar) {
        this.f29850o.onMetadata(aVar);
    }

    private boolean c0(long j10) {
        boolean z10;
        a aVar = this.f29858w;
        if (aVar != null && (this.f29853r || aVar.f29846b <= Z(j10))) {
            a0(this.f29858w);
            this.f29858w = null;
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f29855t && this.f29858w == null) {
            this.f29856u = true;
        }
        return z10;
    }

    private void d0() {
        if (!this.f29855t && this.f29858w == null) {
            this.f29852q.l();
            y1 J = J();
            int V = V(J, this.f29852q, 0);
            if (V == -4) {
                if (this.f29852q.q()) {
                    this.f29855t = true;
                    return;
                }
                d dVar = this.f29852q;
                dVar.f29848i = this.f29857v;
                dVar.x();
                a a10 = ((b) q0.j(this.f29854s)).a(this.f29852q);
                if (a10 != null) {
                    ArrayList arrayList = new ArrayList(a10.e());
                    Y(a10, arrayList);
                    if (!arrayList.isEmpty()) {
                        this.f29858w = new a(Z(this.f29852q.f15291e), arrayList);
                    }
                }
            } else if (V == -5) {
                this.f29857v = ((x1) y4.a.e(J.f4575b)).f4518p;
            }
        }
    }

    @Override // b3.o
    protected void O() {
        this.f29858w = null;
        this.f29854s = null;
        this.f29859x = -9223372036854775807L;
    }

    @Override // b3.o
    protected void Q(long j10, boolean z10) {
        this.f29858w = null;
        this.f29855t = false;
        this.f29856u = false;
    }

    @Override // b3.o
    protected void U(x1[] x1VarArr, long j10, long j11) {
        this.f29854s = this.f29849n.a(x1VarArr[0]);
        a aVar = this.f29858w;
        if (aVar != null) {
            this.f29858w = aVar.c((aVar.f29846b + this.f29859x) - j11);
        }
        this.f29859x = j11;
    }

    @Override // b3.u3
    public int b(x1 x1Var) {
        int i10;
        if (this.f29849n.b(x1Var)) {
            if (x1Var.G == 0) {
                i10 = 4;
            } else {
                i10 = 2;
            }
            return u3.v(i10);
        }
        return u3.v(0);
    }

    @Override // b3.t3
    public boolean d() {
        return this.f29856u;
    }

    @Override // b3.t3, b3.u3
    public String getName() {
        return "MetadataRenderer";
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            b0((a) message.obj);
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // b3.t3
    public boolean isReady() {
        return true;
    }

    @Override // b3.t3
    public void x(long j10, long j11) {
        boolean z10 = true;
        while (z10) {
            d0();
            z10 = c0(j10);
        }
    }

    public f(e eVar, Looper looper, c cVar) {
        this(eVar, looper, cVar, false);
    }

    public f(e eVar, Looper looper, c cVar, boolean z10) {
        super(5);
        this.f29850o = (e) y4.a.e(eVar);
        this.f29851p = looper == null ? null : q0.v(looper, this);
        this.f29849n = (c) y4.a.e(cVar);
        this.f29853r = z10;
        this.f29852q = new d();
        this.f29859x = -9223372036854775807L;
    }
}
