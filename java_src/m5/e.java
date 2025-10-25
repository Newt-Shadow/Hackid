package m5;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import io.appmetrica.analytics.impl.C1415p9;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import m5.j;
import m6.Task;
/* loaded from: classes.dex */
public class e implements Handler.Callback {

    /* renamed from: p  reason: collision with root package name */
    public static final Status f25769p = new Status(4, "Sign-out occurred while this API call was in progress.");

    /* renamed from: q  reason: collision with root package name */
    private static final Status f25770q = new Status(4, "The user must be signed in to make this API call.");

    /* renamed from: r  reason: collision with root package name */
    private static final Object f25771r = new Object();

    /* renamed from: s  reason: collision with root package name */
    private static e f25772s;

    /* renamed from: c  reason: collision with root package name */
    private n5.u f25775c;

    /* renamed from: d  reason: collision with root package name */
    private n5.w f25776d;

    /* renamed from: e  reason: collision with root package name */
    private final Context f25777e;

    /* renamed from: f  reason: collision with root package name */
    private final l5.f f25778f;

    /* renamed from: g  reason: collision with root package name */
    private final n5.i0 f25779g;

    /* renamed from: n  reason: collision with root package name */
    private final Handler f25786n;

    /* renamed from: o  reason: collision with root package name */
    private volatile boolean f25787o;

    /* renamed from: a  reason: collision with root package name */
    private long f25773a = 10000;

    /* renamed from: b  reason: collision with root package name */
    private boolean f25774b = false;

    /* renamed from: h  reason: collision with root package name */
    private final AtomicInteger f25780h = new AtomicInteger(1);

    /* renamed from: i  reason: collision with root package name */
    private final AtomicInteger f25781i = new AtomicInteger(0);

    /* renamed from: j  reason: collision with root package name */
    private final Map f25782j = new ConcurrentHashMap(5, 0.75f, 1);

    /* renamed from: k  reason: collision with root package name */
    private a0 f25783k = null;

    /* renamed from: l  reason: collision with root package name */
    private final Set f25784l = new r.b();

    /* renamed from: m  reason: collision with root package name */
    private final Set f25785m = new r.b();

    private e(Context context, Looper looper, l5.f fVar) {
        this.f25787o = true;
        this.f25777e = context;
        a6.h hVar = new a6.h(looper, this);
        this.f25786n = hVar;
        this.f25778f = fVar;
        this.f25779g = new n5.i0(fVar);
        if (com.google.android.gms.common.util.h.a(context)) {
            this.f25787o = false;
        }
        hVar.sendMessage(hVar.obtainMessage(6));
    }

    public static void a() {
        synchronized (f25771r) {
            e eVar = f25772s;
            if (eVar != null) {
                eVar.f25781i.incrementAndGet();
                Handler handler = eVar.f25786n;
                handler.sendMessageAtFrontOfQueue(handler.obtainMessage(10));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Status g(b bVar, l5.b bVar2) {
        String b10 = bVar.b();
        String valueOf = String.valueOf(bVar2);
        return new Status(bVar2, "API: " + b10 + " is not available on this device. Connection failed with: " + valueOf);
    }

    private final i0 h(com.google.android.gms.common.api.e eVar) {
        Map map = this.f25782j;
        b p10 = eVar.p();
        i0 i0Var = (i0) map.get(p10);
        if (i0Var == null) {
            i0Var = new i0(this, eVar);
            this.f25782j.put(p10, i0Var);
        }
        if (i0Var.b()) {
            this.f25785m.add(p10);
        }
        i0Var.E();
        return i0Var;
    }

    private final n5.w i() {
        if (this.f25776d == null) {
            this.f25776d = n5.v.a(this.f25777e);
        }
        return this.f25776d;
    }

    private final void j() {
        n5.u uVar = this.f25775c;
        if (uVar != null) {
            if (uVar.g() > 0 || e()) {
                i().c(uVar);
            }
            this.f25775c = null;
        }
    }

    private final void k(m6.l lVar, int i10, com.google.android.gms.common.api.e eVar) {
        s0 a10;
        if (i10 != 0 && (a10 = s0.a(this, i10, eVar.p())) != null) {
            Task a11 = lVar.a();
            final Handler handler = this.f25786n;
            handler.getClass();
            a11.b(new Executor() { // from class: m5.c0
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    handler.post(runnable);
                }
            }, a10);
        }
    }

    public static e u(Context context) {
        e eVar;
        synchronized (f25771r) {
            if (f25772s == null) {
                f25772s = new e(context.getApplicationContext(), n5.i.c().getLooper(), l5.f.m());
            }
            eVar = f25772s;
        }
        return eVar;
    }

    public final void C(com.google.android.gms.common.api.e eVar, int i10, com.google.android.gms.common.api.internal.a aVar) {
        this.f25786n.sendMessage(this.f25786n.obtainMessage(4, new u0(new j1(i10, aVar), this.f25781i.get(), eVar)));
    }

    public final void D(com.google.android.gms.common.api.e eVar, int i10, u uVar, m6.l lVar, s sVar) {
        k(lVar, uVar.d(), eVar);
        this.f25786n.sendMessage(this.f25786n.obtainMessage(4, new u0(new l1(i10, uVar, lVar, sVar), this.f25781i.get(), eVar)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void E(n5.n nVar, int i10, long j10, int i11) {
        this.f25786n.sendMessage(this.f25786n.obtainMessage(18, new t0(nVar, i10, j10, i11)));
    }

    public final void F(l5.b bVar, int i10) {
        if (!f(bVar, i10)) {
            Handler handler = this.f25786n;
            handler.sendMessage(handler.obtainMessage(5, i10, 0, bVar));
        }
    }

    public final void G() {
        Handler handler = this.f25786n;
        handler.sendMessage(handler.obtainMessage(3));
    }

    public final void H(com.google.android.gms.common.api.e eVar) {
        Handler handler = this.f25786n;
        handler.sendMessage(handler.obtainMessage(7, eVar));
    }

    public final void b(a0 a0Var) {
        synchronized (f25771r) {
            if (this.f25783k != a0Var) {
                this.f25783k = a0Var;
                this.f25784l.clear();
            }
            this.f25784l.addAll(a0Var.t());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c(a0 a0Var) {
        synchronized (f25771r) {
            if (this.f25783k == a0Var) {
                this.f25783k = null;
                this.f25784l.clear();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean e() {
        if (this.f25774b) {
            return false;
        }
        n5.s a10 = n5.r.b().a();
        if (a10 != null && !a10.l()) {
            return false;
        }
        int a11 = this.f25779g.a(this.f25777e, 203400000);
        if (a11 != -1 && a11 != 0) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean f(l5.b bVar, int i10) {
        return this.f25778f.w(this.f25777e, bVar, i10);
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        b bVar;
        b bVar2;
        b bVar3;
        b bVar4;
        int i10 = message.what;
        long j10 = 300000;
        i0 i0Var = null;
        switch (i10) {
            case 1:
                if (true == ((Boolean) message.obj).booleanValue()) {
                    j10 = 10000;
                }
                this.f25773a = j10;
                this.f25786n.removeMessages(12);
                for (b bVar5 : this.f25782j.keySet()) {
                    Handler handler = this.f25786n;
                    handler.sendMessageDelayed(handler.obtainMessage(12, bVar5), this.f25773a);
                }
                break;
            case 2:
                android.support.v4.media.session.b.a(message.obj);
                throw null;
            case 3:
                for (i0 i0Var2 : this.f25782j.values()) {
                    i0Var2.D();
                    i0Var2.E();
                }
                break;
            case 4:
            case 8:
            case 13:
                u0 u0Var = (u0) message.obj;
                i0 i0Var3 = (i0) this.f25782j.get(u0Var.f25893c.p());
                if (i0Var3 == null) {
                    i0Var3 = h(u0Var.f25893c);
                }
                if (i0Var3.b() && this.f25781i.get() != u0Var.f25892b) {
                    u0Var.f25891a.a(f25769p);
                    i0Var3.K();
                    break;
                } else {
                    i0Var3.F(u0Var.f25891a);
                    break;
                }
            case 5:
                int i11 = message.arg1;
                l5.b bVar6 = (l5.b) message.obj;
                Iterator it = this.f25782j.values().iterator();
                while (true) {
                    if (it.hasNext()) {
                        i0 i0Var4 = (i0) it.next();
                        if (i0Var4.s() == i11) {
                            i0Var = i0Var4;
                        }
                    }
                }
                if (i0Var != null) {
                    if (bVar6.g() == 13) {
                        String e10 = this.f25778f.e(bVar6.g());
                        String i12 = bVar6.i();
                        i0.y(i0Var, new Status(17, "Error resolution was canceled by the user, original error message: " + e10 + ": " + i12));
                        break;
                    } else {
                        i0.y(i0Var, g(i0.w(i0Var), bVar6));
                        break;
                    }
                } else {
                    Log.wtf("GoogleApiManager", "Could not find API instance " + i11 + " while trying to fail enqueued calls.", new Exception());
                    break;
                }
            case 6:
                if (this.f25777e.getApplicationContext() instanceof Application) {
                    c.c((Application) this.f25777e.getApplicationContext());
                    c.b().a(new d0(this));
                    if (!c.b().e(true)) {
                        this.f25773a = 300000L;
                        break;
                    }
                }
                break;
            case 7:
                h((com.google.android.gms.common.api.e) message.obj);
                break;
            case 9:
                if (this.f25782j.containsKey(message.obj)) {
                    ((i0) this.f25782j.get(message.obj)).J();
                    break;
                }
                break;
            case 10:
                for (b bVar7 : this.f25785m) {
                    i0 i0Var5 = (i0) this.f25782j.remove(bVar7);
                    if (i0Var5 != null) {
                        i0Var5.K();
                    }
                }
                this.f25785m.clear();
                break;
            case 11:
                if (this.f25782j.containsKey(message.obj)) {
                    ((i0) this.f25782j.get(message.obj)).L();
                    break;
                }
                break;
            case 12:
                if (this.f25782j.containsKey(message.obj)) {
                    ((i0) this.f25782j.get(message.obj)).c();
                    break;
                }
                break;
            case 14:
                android.support.v4.media.session.b.a(message.obj);
                throw null;
            case 15:
                k0 k0Var = (k0) message.obj;
                Map map = this.f25782j;
                bVar = k0Var.f25824a;
                if (map.containsKey(bVar)) {
                    Map map2 = this.f25782j;
                    bVar2 = k0Var.f25824a;
                    i0.B((i0) map2.get(bVar2), k0Var);
                    break;
                }
                break;
            case 16:
                k0 k0Var2 = (k0) message.obj;
                Map map3 = this.f25782j;
                bVar3 = k0Var2.f25824a;
                if (map3.containsKey(bVar3)) {
                    Map map4 = this.f25782j;
                    bVar4 = k0Var2.f25824a;
                    i0.C((i0) map4.get(bVar4), k0Var2);
                    break;
                }
                break;
            case 17:
                j();
                break;
            case 18:
                t0 t0Var = (t0) message.obj;
                if (t0Var.f25879c == 0) {
                    i().c(new n5.u(t0Var.f25878b, Arrays.asList(t0Var.f25877a)));
                    break;
                } else {
                    n5.u uVar = this.f25775c;
                    if (uVar != null) {
                        List i13 = uVar.i();
                        if (uVar.g() == t0Var.f25878b && (i13 == null || i13.size() < t0Var.f25880d)) {
                            this.f25775c.l(t0Var.f25877a);
                        } else {
                            this.f25786n.removeMessages(17);
                            j();
                        }
                    }
                    if (this.f25775c == null) {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(t0Var.f25877a);
                        this.f25775c = new n5.u(t0Var.f25878b, arrayList);
                        Handler handler2 = this.f25786n;
                        handler2.sendMessageDelayed(handler2.obtainMessage(17), t0Var.f25879c);
                        break;
                    }
                }
                break;
            case C1415p9.C /* 19 */:
                this.f25774b = false;
                break;
            default:
                Log.w("GoogleApiManager", "Unknown message id: " + i10);
                return false;
        }
        return true;
    }

    public final int l() {
        return this.f25780h.getAndIncrement();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final i0 t(b bVar) {
        return (i0) this.f25782j.get(bVar);
    }

    public final Task w(com.google.android.gms.common.api.e eVar, o oVar, w wVar, Runnable runnable) {
        m6.l lVar = new m6.l();
        k(lVar, oVar.e(), eVar);
        this.f25786n.sendMessage(this.f25786n.obtainMessage(8, new u0(new k1(new v0(oVar, wVar, runnable), lVar), this.f25781i.get(), eVar)));
        return lVar.a();
    }

    public final Task x(com.google.android.gms.common.api.e eVar, j.a aVar, int i10) {
        m6.l lVar = new m6.l();
        k(lVar, i10, eVar);
        this.f25786n.sendMessage(this.f25786n.obtainMessage(13, new u0(new m1(aVar, lVar), this.f25781i.get(), eVar)));
        return lVar.a();
    }
}
