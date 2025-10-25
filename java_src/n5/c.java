package n5;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public abstract class c {
    private boolean A;
    private volatile j1 B;
    protected AtomicInteger C;

    /* renamed from: a  reason: collision with root package name */
    private int f26237a;

    /* renamed from: b  reason: collision with root package name */
    private long f26238b;

    /* renamed from: c  reason: collision with root package name */
    private long f26239c;

    /* renamed from: d  reason: collision with root package name */
    private int f26240d;

    /* renamed from: e  reason: collision with root package name */
    private long f26241e;

    /* renamed from: f  reason: collision with root package name */
    private volatile String f26242f;

    /* renamed from: g  reason: collision with root package name */
    u1 f26243g;

    /* renamed from: h  reason: collision with root package name */
    private final Context f26244h;

    /* renamed from: i  reason: collision with root package name */
    private final Looper f26245i;

    /* renamed from: j  reason: collision with root package name */
    private final i f26246j;

    /* renamed from: k  reason: collision with root package name */
    private final l5.g f26247k;

    /* renamed from: l  reason: collision with root package name */
    final Handler f26248l;

    /* renamed from: m  reason: collision with root package name */
    private final Object f26249m;

    /* renamed from: n  reason: collision with root package name */
    private final Object f26250n;

    /* renamed from: o  reason: collision with root package name */
    private m f26251o;

    /* renamed from: p  reason: collision with root package name */
    protected InterfaceC0255c f26252p;

    /* renamed from: q  reason: collision with root package name */
    private IInterface f26253q;

    /* renamed from: r  reason: collision with root package name */
    private final ArrayList f26254r;

    /* renamed from: s  reason: collision with root package name */
    private g1 f26255s;

    /* renamed from: t  reason: collision with root package name */
    private int f26256t;

    /* renamed from: u  reason: collision with root package name */
    private final a f26257u;

    /* renamed from: v  reason: collision with root package name */
    private final b f26258v;

    /* renamed from: w  reason: collision with root package name */
    private final int f26259w;

    /* renamed from: x  reason: collision with root package name */
    private final String f26260x;

    /* renamed from: y  reason: collision with root package name */
    private volatile String f26261y;

    /* renamed from: z  reason: collision with root package name */
    private l5.b f26262z;
    private static final l5.d[] E = new l5.d[0];
    public static final String[] D = {"service_esmobile", "service_googleme"};

    /* loaded from: classes.dex */
    public interface a {
        void d(int i10);

        void k(Bundle bundle);
    }

    /* loaded from: classes.dex */
    public interface b {
        void a(l5.b bVar);
    }

    /* renamed from: n5.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0255c {
        void d(l5.b bVar);
    }

    /* loaded from: classes.dex */
    protected class d implements InterfaceC0255c {
        public d() {
        }

        @Override // n5.c.InterfaceC0255c
        public final void d(l5.b bVar) {
            if (bVar.n()) {
                c cVar = c.this;
                cVar.k(null, cVar.C());
            } else if (c.this.f26258v != null) {
                c.this.f26258v.a(bVar);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface e {
        void a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public c(android.content.Context r10, android.os.Looper r11, int r12, n5.c.a r13, n5.c.b r14, java.lang.String r15) {
        /*
            r9 = this;
            n5.i r3 = n5.i.b(r10)
            l5.g r4 = l5.g.f()
            n5.q.k(r13)
            n5.q.k(r14)
            r0 = r9
            r1 = r10
            r2 = r11
            r5 = r12
            r6 = r13
            r7 = r14
            r8 = r15
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: n5.c.<init>(android.content.Context, android.os.Looper, int, n5.c$a, n5.c$b, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void c0(c cVar, j1 j1Var) {
        s o10;
        cVar.B = j1Var;
        if (cVar.S()) {
            f fVar = j1Var.f26336d;
            r b10 = r.b();
            if (fVar == null) {
                o10 = null;
            } else {
                o10 = fVar.o();
            }
            b10.c(o10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void d0(c cVar, int i10) {
        int i11;
        int i12;
        synchronized (cVar.f26249m) {
            i11 = cVar.f26256t;
        }
        if (i11 == 3) {
            cVar.A = true;
            i12 = 5;
        } else {
            i12 = 4;
        }
        Handler handler = cVar.f26248l;
        handler.sendMessage(handler.obtainMessage(i12, cVar.C.get(), 16));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ boolean g0(c cVar, int i10, int i11, IInterface iInterface) {
        synchronized (cVar.f26249m) {
            if (cVar.f26256t != i10) {
                return false;
            }
            cVar.i0(i11, iInterface);
            return true;
        }
    }

    /*  JADX ERROR: NullPointerException in pass: RegionMakerVisitor
        java.lang.NullPointerException: Cannot read field "wordsInUse" because "set" is null
        	at java.base/java.util.BitSet.or(BitSet.java:943)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:732)
        	at jadx.core.utils.BlockUtils.getPathCross(BlockUtils.java:811)
        	at jadx.core.dex.visitors.regions.IfMakerHelper.restructureIf(IfMakerHelper.java:88)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:706)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMaker.processIf(RegionMaker.java:730)
        	at jadx.core.dex.visitors.regions.RegionMaker.traverse(RegionMaker.java:155)
        	at jadx.core.dex.visitors.regions.RegionMaker.makeRegion(RegionMaker.java:94)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:52)
        */
    static /* bridge */ /* synthetic */ boolean h0(n5.c r2) {
        /*
            boolean r0 = r2.A
            r1 = 0
            if (r0 == 0) goto L6
            goto L24
        L6:
            java.lang.String r0 = r2.E()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L11
            goto L24
        L11:
            java.lang.String r0 = r2.B()
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L1c
            goto L24
        L1c:
            java.lang.String r2 = r2.E()     // Catch: java.lang.ClassNotFoundException -> L24
            java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L24
            r1 = 1
        L24:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: n5.c.h0(n5.c):boolean");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0(int i10, IInterface iInterface) {
        boolean z10;
        boolean z11;
        u1 u1Var;
        int g10;
        u1 u1Var2;
        boolean z12 = false;
        if (i10 != 4) {
            z10 = false;
        } else {
            z10 = true;
        }
        if (iInterface == null) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (z10 == z11) {
            z12 = true;
        }
        q.a(z12);
        synchronized (this.f26249m) {
            this.f26256t = i10;
            this.f26253q = iInterface;
            Bundle bundle = null;
            if (i10 != 1) {
                if (i10 != 2 && i10 != 3) {
                    if (i10 == 4) {
                        q.k(iInterface);
                        K(iInterface);
                    }
                } else {
                    g1 g1Var = this.f26255s;
                    if (g1Var != null && (u1Var2 = this.f26243g) != null) {
                        Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + u1Var2.b() + " on " + u1Var2.a());
                        i iVar = this.f26246j;
                        String b10 = this.f26243g.b();
                        q.k(b10);
                        iVar.g(b10, this.f26243g.a(), 4225, g1Var, X(), this.f26243g.c());
                        this.C.incrementAndGet();
                    }
                    g1 g1Var2 = new g1(this, this.C.get());
                    this.f26255s = g1Var2;
                    if (this.f26256t == 3 && B() != null) {
                        u1Var = new u1(y().getPackageName(), B(), true, 4225, false);
                    } else {
                        u1Var = new u1(G(), F(), false, 4225, I());
                    }
                    this.f26243g = u1Var;
                    if (u1Var.c() && j() < 17895000) {
                        throw new IllegalStateException("Internal Error, the minimum apk version of this BaseGmsClient is too low to support dynamic lookup. Start service action: ".concat(String.valueOf(this.f26243g.b())));
                    }
                    i iVar2 = this.f26246j;
                    String b11 = this.f26243g.b();
                    q.k(b11);
                    l5.b e10 = iVar2.e(new n1(b11, this.f26243g.a(), 4225, this.f26243g.c()), g1Var2, X(), w());
                    if (!e10.n()) {
                        Log.w("GmsClient", "unable to connect to service: " + this.f26243g.b() + " on " + this.f26243g.a());
                        if (e10.g() == -1) {
                            g10 = 16;
                        } else {
                            g10 = e10.g();
                        }
                        if (e10.l() != null) {
                            bundle = new Bundle();
                            bundle.putParcelable("pendingIntent", e10.l());
                        }
                        e0(g10, bundle, this.C.get());
                    }
                }
            } else {
                g1 g1Var3 = this.f26255s;
                if (g1Var3 != null) {
                    i iVar3 = this.f26246j;
                    String b12 = this.f26243g.b();
                    q.k(b12);
                    iVar3.g(b12, this.f26243g.a(), 4225, g1Var3, X(), this.f26243g.c());
                    this.f26255s = null;
                }
            }
        }
    }

    protected Bundle A() {
        return new Bundle();
    }

    protected String B() {
        return null;
    }

    protected Set C() {
        return Collections.emptySet();
    }

    public final IInterface D() {
        IInterface iInterface;
        synchronized (this.f26249m) {
            if (this.f26256t != 5) {
                r();
                IInterface iInterface2 = this.f26253q;
                q.l(iInterface2, "Client is connected but service is null");
                iInterface = iInterface2;
            } else {
                throw new DeadObjectException();
            }
        }
        return iInterface;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract String E();

    protected abstract String F();

    protected String G() {
        return "com.google.android.gms";
    }

    public f H() {
        j1 j1Var = this.B;
        if (j1Var == null) {
            return null;
        }
        return j1Var.f26336d;
    }

    protected boolean I() {
        if (j() >= 211700000) {
            return true;
        }
        return false;
    }

    public boolean J() {
        return this.B != null;
    }

    protected void K(IInterface iInterface) {
        this.f26239c = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void L(l5.b bVar) {
        this.f26240d = bVar.g();
        this.f26241e = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void M(int i10) {
        this.f26237a = i10;
        this.f26238b = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void N(int i10, IBinder iBinder, Bundle bundle, int i11) {
        this.f26248l.sendMessage(this.f26248l.obtainMessage(1, i11, -1, new h1(this, i10, iBinder, bundle)));
    }

    public boolean O() {
        return false;
    }

    public void P(String str) {
        this.f26261y = str;
    }

    public void Q(int i10) {
        this.f26248l.sendMessage(this.f26248l.obtainMessage(6, this.C.get(), i10));
    }

    protected void R(InterfaceC0255c interfaceC0255c, int i10, PendingIntent pendingIntent) {
        q.l(interfaceC0255c, "Connection progress callbacks cannot be null.");
        this.f26252p = interfaceC0255c;
        this.f26248l.sendMessage(this.f26248l.obtainMessage(3, this.C.get(), i10, pendingIntent));
    }

    public boolean S() {
        return false;
    }

    protected final String X() {
        String str = this.f26260x;
        if (str == null) {
            return this.f26244h.getClass().getName();
        }
        return str;
    }

    public boolean a() {
        boolean z10;
        synchronized (this.f26249m) {
            if (this.f26256t == 4) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        return z10;
    }

    public void c(String str) {
        this.f26242f = str;
        g();
    }

    public void d(InterfaceC0255c interfaceC0255c) {
        q.l(interfaceC0255c, "Connection progress callbacks cannot be null.");
        this.f26252p = interfaceC0255c;
        i0(2, null);
    }

    public boolean e() {
        boolean z10;
        synchronized (this.f26249m) {
            int i10 = this.f26256t;
            z10 = true;
            if (i10 != 2 && i10 != 3) {
                z10 = false;
            }
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e0(int i10, Bundle bundle, int i11) {
        this.f26248l.sendMessage(this.f26248l.obtainMessage(7, i11, -1, new i1(this, i10, bundle)));
    }

    public String f() {
        u1 u1Var;
        if (a() && (u1Var = this.f26243g) != null) {
            return u1Var.a();
        }
        throw new RuntimeException("Failed to connect when checking package");
    }

    public void g() {
        this.C.incrementAndGet();
        synchronized (this.f26254r) {
            int size = this.f26254r.size();
            for (int i10 = 0; i10 < size; i10++) {
                ((e1) this.f26254r.get(i10)).d();
            }
            this.f26254r.clear();
        }
        synchronized (this.f26250n) {
            this.f26251o = null;
        }
        i0(1, null);
    }

    public void h(e eVar) {
        eVar.a();
    }

    public boolean i() {
        return true;
    }

    public abstract int j();

    public void k(k kVar, Set set) {
        String str;
        Bundle A = A();
        if (Build.VERSION.SDK_INT < 31) {
            str = this.f26261y;
        } else {
            str = this.f26261y;
        }
        String str2 = str;
        int i10 = this.f26259w;
        int i11 = l5.g.f25293a;
        Scope[] scopeArr = g.f26300o;
        Bundle bundle = new Bundle();
        l5.d[] dVarArr = g.f26301p;
        g gVar = new g(6, i10, i11, null, null, scopeArr, bundle, null, dVarArr, dVarArr, true, 0, false, str2);
        gVar.f26305d = this.f26244h.getPackageName();
        gVar.f26308g = A;
        if (set != null) {
            gVar.f26307f = (Scope[]) set.toArray(new Scope[0]);
        }
        if (o()) {
            Account u10 = u();
            if (u10 == null) {
                u10 = new Account("<<default account>>", "com.google");
            }
            gVar.f26309h = u10;
            if (kVar != null) {
                gVar.f26306e = kVar.asBinder();
            }
        } else if (O()) {
            gVar.f26309h = u();
        }
        gVar.f26310i = E;
        gVar.f26311j = v();
        if (S()) {
            gVar.f26314m = true;
        }
        try {
            synchronized (this.f26250n) {
                m mVar = this.f26251o;
                if (mVar != null) {
                    mVar.N0(new f1(this, this.C.get()), gVar);
                } else {
                    Log.w("GmsClient", "mServiceBroker is null, client disconnected");
                }
            }
        } catch (DeadObjectException e10) {
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e10);
            Q(3);
        } catch (RemoteException e11) {
            e = e11;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            N(8, null, null, this.C.get());
        } catch (SecurityException e12) {
            throw e12;
        } catch (RuntimeException e13) {
            e = e13;
            Log.w("GmsClient", "IGmsServiceBroker.getService failed", e);
            N(8, null, null, this.C.get());
        }
    }

    public final l5.d[] l() {
        j1 j1Var = this.B;
        if (j1Var == null) {
            return null;
        }
        return j1Var.f26334b;
    }

    public String m() {
        return this.f26242f;
    }

    public boolean o() {
        return false;
    }

    public void q() {
        int h10 = this.f26247k.h(this.f26244h, j());
        if (h10 != 0) {
            i0(1, null);
            R(new d(), h10, null);
            return;
        }
        d(new d());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void r() {
        if (a()) {
            return;
        }
        throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract IInterface s(IBinder iBinder);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean t() {
        return false;
    }

    public Account u() {
        return null;
    }

    public l5.d[] v() {
        return E;
    }

    protected Executor w() {
        return null;
    }

    public Bundle x() {
        return null;
    }

    public final Context y() {
        return this.f26244h;
    }

    public int z() {
        return this.f26259w;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(Context context, Looper looper, i iVar, l5.g gVar, int i10, a aVar, b bVar, String str) {
        this.f26242f = null;
        this.f26249m = new Object();
        this.f26250n = new Object();
        this.f26254r = new ArrayList();
        this.f26256t = 1;
        this.f26262z = null;
        this.A = false;
        this.B = null;
        this.C = new AtomicInteger(0);
        q.l(context, "Context must not be null");
        this.f26244h = context;
        q.l(looper, "Looper must not be null");
        this.f26245i = looper;
        q.l(iVar, "Supervisor must not be null");
        this.f26246j = iVar;
        q.l(gVar, "API availability must not be null");
        this.f26247k = gVar;
        this.f26248l = new d1(this, looper);
        this.f26259w = i10;
        this.f26257u = aVar;
        this.f26258v = bVar;
        this.f26260x = str;
    }
}
