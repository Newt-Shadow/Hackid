package f3;

import android.media.ResourceBusyException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import b3.x1;
import c3.t3;
import f3.b0;
import f3.g;
import f3.h;
import f3.m;
import f3.n;
import f3.u;
import f3.v;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import o6.r0;
import y4.q0;
/* loaded from: classes.dex */
public class h implements v {

    /* renamed from: c  reason: collision with root package name */
    private final UUID f15656c;

    /* renamed from: d  reason: collision with root package name */
    private final b0.c f15657d;

    /* renamed from: e  reason: collision with root package name */
    private final m0 f15658e;

    /* renamed from: f  reason: collision with root package name */
    private final HashMap f15659f;

    /* renamed from: g  reason: collision with root package name */
    private final boolean f15660g;

    /* renamed from: h  reason: collision with root package name */
    private final int[] f15661h;

    /* renamed from: i  reason: collision with root package name */
    private final boolean f15662i;

    /* renamed from: j  reason: collision with root package name */
    private final g f15663j;

    /* renamed from: k  reason: collision with root package name */
    private final x4.d0 f15664k;

    /* renamed from: l  reason: collision with root package name */
    private final C0163h f15665l;

    /* renamed from: m  reason: collision with root package name */
    private final long f15666m;

    /* renamed from: n  reason: collision with root package name */
    private final List f15667n;

    /* renamed from: o  reason: collision with root package name */
    private final Set f15668o;

    /* renamed from: p  reason: collision with root package name */
    private final Set f15669p;

    /* renamed from: q  reason: collision with root package name */
    private int f15670q;

    /* renamed from: r  reason: collision with root package name */
    private b0 f15671r;

    /* renamed from: s  reason: collision with root package name */
    private f3.g f15672s;

    /* renamed from: t  reason: collision with root package name */
    private f3.g f15673t;

    /* renamed from: u  reason: collision with root package name */
    private Looper f15674u;

    /* renamed from: v  reason: collision with root package name */
    private Handler f15675v;

    /* renamed from: w  reason: collision with root package name */
    private int f15676w;

    /* renamed from: x  reason: collision with root package name */
    private byte[] f15677x;

    /* renamed from: y  reason: collision with root package name */
    private t3 f15678y;

    /* renamed from: z  reason: collision with root package name */
    volatile d f15679z;

    /* loaded from: classes.dex */
    public static final class b {

        /* renamed from: d  reason: collision with root package name */
        private boolean f15683d;

        /* renamed from: f  reason: collision with root package name */
        private boolean f15685f;

        /* renamed from: a  reason: collision with root package name */
        private final HashMap f15680a = new HashMap();

        /* renamed from: b  reason: collision with root package name */
        private UUID f15681b = b3.s.f4354d;

        /* renamed from: c  reason: collision with root package name */
        private b0.c f15682c = j0.f15700d;

        /* renamed from: g  reason: collision with root package name */
        private x4.d0 f15686g = new x4.v();

        /* renamed from: e  reason: collision with root package name */
        private int[] f15684e = new int[0];

        /* renamed from: h  reason: collision with root package name */
        private long f15687h = 300000;

        public h a(m0 m0Var) {
            return new h(this.f15681b, this.f15682c, m0Var, this.f15680a, this.f15683d, this.f15684e, this.f15685f, this.f15686g, this.f15687h);
        }

        public b b(boolean z10) {
            this.f15683d = z10;
            return this;
        }

        public b c(boolean z10) {
            this.f15685f = z10;
            return this;
        }

        public b d(int... iArr) {
            for (int i10 : iArr) {
                boolean z10 = true;
                if (i10 != 2 && i10 != 1) {
                    z10 = false;
                }
                y4.a.a(z10);
            }
            this.f15684e = (int[]) iArr.clone();
            return this;
        }

        public b e(UUID uuid, b0.c cVar) {
            this.f15681b = (UUID) y4.a.e(uuid);
            this.f15682c = (b0.c) y4.a.e(cVar);
            return this;
        }
    }

    /* loaded from: classes.dex */
    private class c implements b0.b {
        private c() {
        }

        @Override // f3.b0.b
        public void a(b0 b0Var, byte[] bArr, int i10, int i11, byte[] bArr2) {
            ((d) y4.a.e(h.this.f15679z)).obtainMessage(i10, bArr).sendToTarget();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (f3.g gVar : h.this.f15667n) {
                if (gVar.u(bArr)) {
                    gVar.C(message.what);
                    return;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class e extends Exception {
        private e(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class f implements v.b {

        /* renamed from: b  reason: collision with root package name */
        private final u.a f15690b;

        /* renamed from: c  reason: collision with root package name */
        private n f15691c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f15692d;

        public f(u.a aVar) {
            this.f15690b = aVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void f(x1 x1Var) {
            if (h.this.f15670q != 0 && !this.f15692d) {
                h hVar = h.this;
                this.f15691c = hVar.t((Looper) y4.a.e(hVar.f15674u), this.f15690b, x1Var, false);
                h.this.f15668o.add(this);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void g() {
            if (this.f15692d) {
                return;
            }
            n nVar = this.f15691c;
            if (nVar != null) {
                nVar.f(this.f15690b);
            }
            h.this.f15668o.remove(this);
            this.f15692d = true;
        }

        public void e(final x1 x1Var) {
            ((Handler) y4.a.e(h.this.f15675v)).post(new Runnable() { // from class: f3.j
                @Override // java.lang.Runnable
                public final void run() {
                    h.f.this.f(x1Var);
                }
            });
        }

        @Override // f3.v.b
        public void release() {
            q0.J0((Handler) y4.a.e(h.this.f15675v), new Runnable() { // from class: f3.i
                @Override // java.lang.Runnable
                public final void run() {
                    h.f.this.g();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class g implements g.a {

        /* renamed from: a  reason: collision with root package name */
        private final Set f15694a = new HashSet();

        /* renamed from: b  reason: collision with root package name */
        private f3.g f15695b;

        public g(h hVar) {
        }

        @Override // f3.g.a
        public void a(Exception exc, boolean z10) {
            this.f15695b = null;
            o6.q t10 = o6.q.t(this.f15694a);
            this.f15694a.clear();
            r0 it = t10.iterator();
            while (it.hasNext()) {
                ((f3.g) it.next()).E(exc, z10);
            }
        }

        @Override // f3.g.a
        public void b(f3.g gVar) {
            this.f15694a.add(gVar);
            if (this.f15695b != null) {
                return;
            }
            this.f15695b = gVar;
            gVar.I();
        }

        @Override // f3.g.a
        public void c() {
            this.f15695b = null;
            o6.q t10 = o6.q.t(this.f15694a);
            this.f15694a.clear();
            r0 it = t10.iterator();
            while (it.hasNext()) {
                ((f3.g) it.next()).D();
            }
        }

        public void d(f3.g gVar) {
            this.f15694a.remove(gVar);
            if (this.f15695b == gVar) {
                this.f15695b = null;
                if (!this.f15694a.isEmpty()) {
                    f3.g gVar2 = (f3.g) this.f15694a.iterator().next();
                    this.f15695b = gVar2;
                    gVar2.I();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f3.h$h  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class C0163h implements g.b {
        private C0163h() {
        }

        @Override // f3.g.b
        public void a(final f3.g gVar, int i10) {
            if (i10 == 1 && h.this.f15670q > 0 && h.this.f15666m != -9223372036854775807L) {
                h.this.f15669p.add(gVar);
                ((Handler) y4.a.e(h.this.f15675v)).postAtTime(new Runnable() { // from class: f3.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        g.this.f(null);
                    }
                }, gVar, SystemClock.uptimeMillis() + h.this.f15666m);
            } else if (i10 == 0) {
                h.this.f15667n.remove(gVar);
                if (h.this.f15672s == gVar) {
                    h.this.f15672s = null;
                }
                if (h.this.f15673t == gVar) {
                    h.this.f15673t = null;
                }
                h.this.f15663j.d(gVar);
                if (h.this.f15666m != -9223372036854775807L) {
                    ((Handler) y4.a.e(h.this.f15675v)).removeCallbacksAndMessages(gVar);
                    h.this.f15669p.remove(gVar);
                }
            }
            h.this.C();
        }

        @Override // f3.g.b
        public void b(f3.g gVar, int i10) {
            if (h.this.f15666m != -9223372036854775807L) {
                h.this.f15669p.remove(gVar);
                ((Handler) y4.a.e(h.this.f15675v)).removeCallbacksAndMessages(gVar);
            }
        }
    }

    private n A(int i10, boolean z10) {
        boolean z11;
        b0 b0Var = (b0) y4.a.e(this.f15671r);
        if (b0Var.m() == 2 && c0.f15615d) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (z11 || q0.y0(this.f15661h, i10) == -1 || b0Var.m() == 1) {
            return null;
        }
        f3.g gVar = this.f15672s;
        if (gVar == null) {
            f3.g x10 = x(o6.q.D(), true, null, z10);
            this.f15667n.add(x10);
            this.f15672s = x10;
        } else {
            gVar.a(null);
        }
        return this.f15672s;
    }

    private void B(Looper looper) {
        if (this.f15679z == null) {
            this.f15679z = new d(looper);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void C() {
        if (this.f15671r != null && this.f15670q == 0 && this.f15667n.isEmpty() && this.f15668o.isEmpty()) {
            ((b0) y4.a.e(this.f15671r)).release();
            this.f15671r = null;
        }
    }

    private void D() {
        r0 A = o6.s.r(this.f15669p).A();
        while (A.hasNext()) {
            ((n) A.next()).f(null);
        }
    }

    private void E() {
        r0 A = o6.s.r(this.f15668o).A();
        while (A.hasNext()) {
            ((f) A.next()).release();
        }
    }

    private void G(n nVar, u.a aVar) {
        nVar.f(aVar);
        if (this.f15666m != -9223372036854775807L) {
            nVar.f(null);
        }
    }

    private void H(boolean z10) {
        if (z10 && this.f15674u == null) {
            y4.r.j("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread.", new IllegalStateException());
        } else if (Thread.currentThread() != ((Looper) y4.a.e(this.f15674u)).getThread()) {
            y4.r.j("DefaultDrmSessionMgr", "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: " + Thread.currentThread().getName() + "\nExpected thread: " + this.f15674u.getThread().getName(), new IllegalStateException());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public n t(Looper looper, u.a aVar, x1 x1Var, boolean z10) {
        List list;
        B(looper);
        m mVar = x1Var.f4517o;
        if (mVar == null) {
            return A(y4.v.k(x1Var.f4514l), z10);
        }
        f3.g gVar = null;
        if (this.f15677x == null) {
            list = y((m) y4.a.e(mVar), this.f15656c, false);
            if (list.isEmpty()) {
                e eVar = new e(this.f15656c);
                y4.r.d("DefaultDrmSessionMgr", "DRM error", eVar);
                if (aVar != null) {
                    aVar.l(eVar);
                }
                return new a0(new n.a(eVar, 6003));
            }
        } else {
            list = null;
        }
        if (!this.f15660g) {
            gVar = this.f15673t;
        } else {
            Iterator it = this.f15667n.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                f3.g gVar2 = (f3.g) it.next();
                if (q0.c(gVar2.f15623a, list)) {
                    gVar = gVar2;
                    break;
                }
            }
        }
        if (gVar == null) {
            gVar = x(list, false, aVar, z10);
            if (!this.f15660g) {
                this.f15673t = gVar;
            }
            this.f15667n.add(gVar);
        } else {
            gVar.a(aVar);
        }
        return gVar;
    }

    private static boolean u(n nVar) {
        if (nVar.getState() == 1 && (q0.f32946a < 19 || (((n.a) y4.a.e(nVar.h())).getCause() instanceof ResourceBusyException))) {
            return true;
        }
        return false;
    }

    private boolean v(m mVar) {
        if (this.f15677x != null) {
            return true;
        }
        if (y(mVar, this.f15656c, true).isEmpty()) {
            if (mVar.f15717d != 1 || !mVar.e(0).d(b3.s.f4352b)) {
                return false;
            }
            y4.r.i("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.f15656c);
        }
        String str = mVar.f15716c;
        if (str == null || "cenc".equals(str)) {
            return true;
        }
        if ("cbcs".equals(str)) {
            if (q0.f32946a >= 25) {
                return true;
            }
            return false;
        } else if (!"cbc1".equals(str) && !"cens".equals(str)) {
            return true;
        } else {
            return false;
        }
    }

    private f3.g w(List list, boolean z10, u.a aVar) {
        y4.a.e(this.f15671r);
        f3.g gVar = new f3.g(this.f15656c, this.f15671r, this.f15663j, this.f15665l, list, this.f15676w, this.f15662i | z10, z10, this.f15677x, this.f15659f, this.f15658e, (Looper) y4.a.e(this.f15674u), this.f15664k, (t3) y4.a.e(this.f15678y));
        gVar.a(aVar);
        if (this.f15666m != -9223372036854775807L) {
            gVar.a(null);
        }
        return gVar;
    }

    private f3.g x(List list, boolean z10, u.a aVar, boolean z11) {
        f3.g w10 = w(list, z10, aVar);
        if (u(w10) && !this.f15669p.isEmpty()) {
            D();
            G(w10, aVar);
            w10 = w(list, z10, aVar);
        }
        if (u(w10) && z11 && !this.f15668o.isEmpty()) {
            E();
            if (!this.f15669p.isEmpty()) {
                D();
            }
            G(w10, aVar);
            return w(list, z10, aVar);
        }
        return w10;
    }

    private static List y(m mVar, UUID uuid, boolean z10) {
        boolean z11;
        ArrayList arrayList = new ArrayList(mVar.f15717d);
        for (int i10 = 0; i10 < mVar.f15717d; i10++) {
            m.b e10 = mVar.e(i10);
            if (!e10.d(uuid) && (!b3.s.f4353c.equals(uuid) || !e10.d(b3.s.f4352b))) {
                z11 = false;
            } else {
                z11 = true;
            }
            if (z11 && (e10.f15722e != null || z10)) {
                arrayList.add(e10);
            }
        }
        return arrayList;
    }

    private synchronized void z(Looper looper) {
        boolean z10;
        Looper looper2 = this.f15674u;
        if (looper2 == null) {
            this.f15674u = looper;
            this.f15675v = new Handler(looper);
        } else {
            if (looper2 == looper) {
                z10 = true;
            } else {
                z10 = false;
            }
            y4.a.f(z10);
            y4.a.e(this.f15675v);
        }
    }

    public void F(int i10, byte[] bArr) {
        y4.a.f(this.f15667n.isEmpty());
        if (i10 == 1 || i10 == 3) {
            y4.a.e(bArr);
        }
        this.f15676w = i10;
        this.f15677x = bArr;
    }

    @Override // f3.v
    public v.b a(u.a aVar, x1 x1Var) {
        boolean z10;
        if (this.f15670q > 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        y4.a.f(z10);
        y4.a.h(this.f15674u);
        f fVar = new f(aVar);
        fVar.e(x1Var);
        return fVar;
    }

    @Override // f3.v
    public final void b() {
        H(true);
        int i10 = this.f15670q;
        this.f15670q = i10 + 1;
        if (i10 != 0) {
            return;
        }
        if (this.f15671r == null) {
            b0 a10 = this.f15657d.a(this.f15656c);
            this.f15671r = a10;
            a10.b(new c());
        } else if (this.f15666m != -9223372036854775807L) {
            for (int i11 = 0; i11 < this.f15667n.size(); i11++) {
                ((f3.g) this.f15667n.get(i11)).a(null);
            }
        }
    }

    @Override // f3.v
    public int c(x1 x1Var) {
        H(false);
        int m10 = ((b0) y4.a.e(this.f15671r)).m();
        m mVar = x1Var.f4517o;
        if (mVar == null) {
            if (q0.y0(this.f15661h, y4.v.k(x1Var.f4514l)) == -1) {
                return 0;
            }
            return m10;
        } else if (!v(mVar)) {
            return 1;
        } else {
            return m10;
        }
    }

    @Override // f3.v
    public void d(Looper looper, t3 t3Var) {
        z(looper);
        this.f15678y = t3Var;
    }

    @Override // f3.v
    public n e(u.a aVar, x1 x1Var) {
        boolean z10 = false;
        H(false);
        if (this.f15670q > 0) {
            z10 = true;
        }
        y4.a.f(z10);
        y4.a.h(this.f15674u);
        return t(this.f15674u, aVar, x1Var, true);
    }

    @Override // f3.v
    public final void release() {
        H(true);
        int i10 = this.f15670q - 1;
        this.f15670q = i10;
        if (i10 != 0) {
            return;
        }
        if (this.f15666m != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.f15667n);
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                ((f3.g) arrayList.get(i11)).f(null);
            }
        }
        E();
        C();
    }

    private h(UUID uuid, b0.c cVar, m0 m0Var, HashMap hashMap, boolean z10, int[] iArr, boolean z11, x4.d0 d0Var, long j10) {
        y4.a.e(uuid);
        y4.a.b(!b3.s.f4352b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f15656c = uuid;
        this.f15657d = cVar;
        this.f15658e = m0Var;
        this.f15659f = hashMap;
        this.f15660g = z10;
        this.f15661h = iArr;
        this.f15662i = z11;
        this.f15664k = d0Var;
        this.f15663j = new g(this);
        this.f15665l = new C0163h();
        this.f15676w = 0;
        this.f15667n = new ArrayList();
        this.f15668o = o6.o0.h();
        this.f15669p = o6.o0.h();
        this.f15666m = j10;
    }
}
