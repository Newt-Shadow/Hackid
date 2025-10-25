package m5;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import m5.j;
/* loaded from: classes.dex */
public final class i0 implements f.a, f.b {

    /* renamed from: g */
    private final a.f f25805g;

    /* renamed from: h */
    private final b f25806h;

    /* renamed from: i */
    private final z f25807i;

    /* renamed from: l */
    private final int f25810l;

    /* renamed from: m */
    private final e1 f25811m;

    /* renamed from: n */
    private boolean f25812n;

    /* renamed from: r */
    final /* synthetic */ e f25816r;

    /* renamed from: a */
    private final Queue f25804a = new LinkedList();

    /* renamed from: j */
    private final Set f25808j = new HashSet();

    /* renamed from: k */
    private final Map f25809k = new HashMap();

    /* renamed from: o */
    private final List f25813o = new ArrayList();

    /* renamed from: p */
    private l5.b f25814p = null;

    /* renamed from: q */
    private int f25815q = 0;

    public i0(e eVar, com.google.android.gms.common.api.e eVar2) {
        Handler handler;
        Context context;
        Handler handler2;
        this.f25816r = eVar;
        handler = eVar.f25786n;
        a.f v10 = eVar2.v(handler.getLooper(), this);
        this.f25805g = v10;
        this.f25806h = eVar2.p();
        this.f25807i = new z();
        this.f25810l = eVar2.u();
        if (v10.o()) {
            context = eVar.f25777e;
            handler2 = eVar.f25786n;
            this.f25811m = eVar2.w(context, handler2);
            return;
        }
        this.f25811m = null;
    }

    public static /* bridge */ /* synthetic */ void B(i0 i0Var, k0 k0Var) {
        if (i0Var.f25813o.contains(k0Var) && !i0Var.f25812n) {
            if (!i0Var.f25805g.a()) {
                i0Var.E();
            } else {
                i0Var.i();
            }
        }
    }

    public static /* bridge */ /* synthetic */ void C(i0 i0Var, k0 k0Var) {
        Handler handler;
        Handler handler2;
        l5.d dVar;
        l5.d[] g10;
        if (i0Var.f25813o.remove(k0Var)) {
            handler = i0Var.f25816r.f25786n;
            handler.removeMessages(15, k0Var);
            handler2 = i0Var.f25816r.f25786n;
            handler2.removeMessages(16, k0Var);
            dVar = k0Var.f25825b;
            ArrayList arrayList = new ArrayList(i0Var.f25804a.size());
            for (n1 n1Var : i0Var.f25804a) {
                if ((n1Var instanceof q0) && (g10 = ((q0) n1Var).g(i0Var)) != null && com.google.android.gms.common.util.b.b(g10, dVar)) {
                    arrayList.add(n1Var);
                }
            }
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                n1 n1Var2 = (n1) arrayList.get(i10);
                i0Var.f25804a.remove(n1Var2);
                n1Var2.b(new com.google.android.gms.common.api.l(dVar));
            }
        }
    }

    private final l5.d e(l5.d[] dVarArr) {
        if (dVarArr != null && dVarArr.length != 0) {
            l5.d[] l10 = this.f25805g.l();
            if (l10 == null) {
                l10 = new l5.d[0];
            }
            r.a aVar = new r.a(l10.length);
            for (l5.d dVar : l10) {
                aVar.put(dVar.g(), Long.valueOf(dVar.i()));
            }
            for (l5.d dVar2 : dVarArr) {
                Long l11 = (Long) aVar.get(dVar2.g());
                if (l11 == null || l11.longValue() < dVar2.i()) {
                    return dVar2;
                }
            }
        }
        return null;
    }

    private final void f(l5.b bVar) {
        Iterator it = this.f25808j.iterator();
        if (it.hasNext()) {
            android.support.v4.media.session.b.a(it.next());
            if (n5.o.a(bVar, l5.b.f25260e)) {
                this.f25805g.f();
            }
            throw null;
        }
        this.f25808j.clear();
    }

    public final void g(Status status) {
        Handler handler;
        handler = this.f25816r.f25786n;
        n5.q.d(handler);
        h(status, null, false);
    }

    private final void h(Status status, Exception exc, boolean z10) {
        Handler handler;
        boolean z11;
        handler = this.f25816r.f25786n;
        n5.q.d(handler);
        boolean z12 = false;
        if (status != null) {
            z11 = false;
        } else {
            z11 = true;
        }
        if (exc == null) {
            z12 = true;
        }
        if (z11 != z12) {
            Iterator it = this.f25804a.iterator();
            while (it.hasNext()) {
                n1 n1Var = (n1) it.next();
                if (!z10 || n1Var.f25841a == 2) {
                    if (status != null) {
                        n1Var.a(status);
                    } else {
                        n1Var.b(exc);
                    }
                    it.remove();
                }
            }
            return;
        }
        throw new IllegalArgumentException("Status XOR exception should be null");
    }

    private final void i() {
        ArrayList arrayList = new ArrayList(this.f25804a);
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            n1 n1Var = (n1) arrayList.get(i10);
            if (this.f25805g.a()) {
                if (p(n1Var)) {
                    this.f25804a.remove(n1Var);
                }
            } else {
                return;
            }
        }
    }

    public final void j() {
        D();
        f(l5.b.f25260e);
        o();
        Iterator it = this.f25809k.values().iterator();
        while (it.hasNext()) {
            v0 v0Var = (v0) it.next();
            if (e(v0Var.f25897a.c()) != null) {
                it.remove();
            } else {
                try {
                    v0Var.f25897a.d(this.f25805g, new m6.l());
                } catch (DeadObjectException unused) {
                    d(3);
                    this.f25805g.c("DeadObjectException thrown while calling register listener method.");
                } catch (RemoteException unused2) {
                    it.remove();
                }
            }
        }
        i();
        m();
    }

    public final void l(int i10) {
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        n5.i0 i0Var;
        D();
        this.f25812n = true;
        this.f25807i.e(i10, this.f25805g.m());
        b bVar = this.f25806h;
        e eVar = this.f25816r;
        handler = eVar.f25786n;
        handler2 = eVar.f25786n;
        handler.sendMessageDelayed(Message.obtain(handler2, 9, bVar), 5000L);
        b bVar2 = this.f25806h;
        e eVar2 = this.f25816r;
        handler3 = eVar2.f25786n;
        handler4 = eVar2.f25786n;
        handler3.sendMessageDelayed(Message.obtain(handler4, 11, bVar2), 120000L);
        i0Var = this.f25816r.f25779g;
        i0Var.c();
        for (v0 v0Var : this.f25809k.values()) {
            v0Var.f25899c.run();
        }
    }

    private final void m() {
        Handler handler;
        Handler handler2;
        Handler handler3;
        long j10;
        b bVar = this.f25806h;
        handler = this.f25816r.f25786n;
        handler.removeMessages(12, bVar);
        b bVar2 = this.f25806h;
        e eVar = this.f25816r;
        handler2 = eVar.f25786n;
        handler3 = eVar.f25786n;
        Message obtainMessage = handler3.obtainMessage(12, bVar2);
        j10 = this.f25816r.f25773a;
        handler2.sendMessageDelayed(obtainMessage, j10);
    }

    private final void n(n1 n1Var) {
        n1Var.d(this.f25807i, b());
        try {
            n1Var.c(this);
        } catch (DeadObjectException unused) {
            d(1);
            this.f25805g.c("DeadObjectException thrown while running ApiCallRunner.");
        }
    }

    private final void o() {
        Handler handler;
        Handler handler2;
        if (this.f25812n) {
            e eVar = this.f25816r;
            b bVar = this.f25806h;
            handler = eVar.f25786n;
            handler.removeMessages(11, bVar);
            e eVar2 = this.f25816r;
            b bVar2 = this.f25806h;
            handler2 = eVar2.f25786n;
            handler2.removeMessages(9, bVar2);
            this.f25812n = false;
        }
    }

    private final boolean p(n1 n1Var) {
        boolean z10;
        Handler handler;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        Handler handler5;
        Handler handler6;
        Handler handler7;
        if (!(n1Var instanceof q0)) {
            n(n1Var);
            return true;
        }
        q0 q0Var = (q0) n1Var;
        l5.d e10 = e(q0Var.g(this));
        if (e10 == null) {
            n(n1Var);
            return true;
        }
        String name = this.f25805g.getClass().getName();
        String g10 = e10.g();
        long i10 = e10.i();
        Log.w("GoogleApiManager", name + " could not execute call because it requires feature (" + g10 + ", " + i10 + ").");
        z10 = this.f25816r.f25787o;
        if (z10 && q0Var.f(this)) {
            k0 k0Var = new k0(this.f25806h, e10, null);
            int indexOf = this.f25813o.indexOf(k0Var);
            if (indexOf >= 0) {
                k0 k0Var2 = (k0) this.f25813o.get(indexOf);
                handler5 = this.f25816r.f25786n;
                handler5.removeMessages(15, k0Var2);
                e eVar = this.f25816r;
                handler6 = eVar.f25786n;
                handler7 = eVar.f25786n;
                handler6.sendMessageDelayed(Message.obtain(handler7, 15, k0Var2), 5000L);
                return false;
            }
            this.f25813o.add(k0Var);
            e eVar2 = this.f25816r;
            handler = eVar2.f25786n;
            handler2 = eVar2.f25786n;
            handler.sendMessageDelayed(Message.obtain(handler2, 15, k0Var), 5000L);
            e eVar3 = this.f25816r;
            handler3 = eVar3.f25786n;
            handler4 = eVar3.f25786n;
            handler3.sendMessageDelayed(Message.obtain(handler4, 16, k0Var), 120000L);
            l5.b bVar = new l5.b(2, null);
            if (!q(bVar)) {
                this.f25816r.f(bVar, this.f25810l);
                return false;
            }
            return false;
        }
        q0Var.b(new com.google.android.gms.common.api.l(e10));
        return true;
    }

    private final boolean q(l5.b bVar) {
        Object obj;
        a0 a0Var;
        Set set;
        a0 a0Var2;
        obj = e.f25771r;
        synchronized (obj) {
            e eVar = this.f25816r;
            a0Var = eVar.f25783k;
            if (a0Var != null) {
                set = eVar.f25784l;
                if (set.contains(this.f25806h)) {
                    a0Var2 = this.f25816r.f25783k;
                    a0Var2.s(bVar, this.f25810l);
                    return true;
                }
            }
            return false;
        }
    }

    private final boolean r(boolean z10) {
        Handler handler;
        handler = this.f25816r.f25786n;
        n5.q.d(handler);
        if (this.f25805g.a() && this.f25809k.isEmpty()) {
            if (this.f25807i.g()) {
                if (z10) {
                    m();
                    return false;
                }
                return false;
            }
            this.f25805g.c("Timing out service connection.");
            return true;
        }
        return false;
    }

    public static /* bridge */ /* synthetic */ b w(i0 i0Var) {
        return i0Var.f25806h;
    }

    public static /* bridge */ /* synthetic */ void y(i0 i0Var, Status status) {
        i0Var.g(status);
    }

    public final void D() {
        Handler handler;
        handler = this.f25816r.f25786n;
        n5.q.d(handler);
        this.f25814p = null;
    }

    public final void E() {
        Handler handler;
        n5.i0 i0Var;
        Context context;
        handler = this.f25816r.f25786n;
        n5.q.d(handler);
        if (!this.f25805g.a() && !this.f25805g.e()) {
            try {
                e eVar = this.f25816r;
                i0Var = eVar.f25779g;
                context = eVar.f25777e;
                int b10 = i0Var.b(context, this.f25805g);
                if (b10 != 0) {
                    l5.b bVar = new l5.b(b10, null);
                    String name = this.f25805g.getClass().getName();
                    String obj = bVar.toString();
                    Log.w("GoogleApiManager", "The service for " + name + " is not available: " + obj);
                    H(bVar, null);
                    return;
                }
                e eVar2 = this.f25816r;
                a.f fVar = this.f25805g;
                m0 m0Var = new m0(eVar2, fVar, this.f25806h);
                if (fVar.o()) {
                    ((e1) n5.q.k(this.f25811m)).h1(m0Var);
                }
                try {
                    this.f25805g.d(m0Var);
                } catch (SecurityException e10) {
                    H(new l5.b(10), e10);
                }
            } catch (IllegalStateException e11) {
                H(new l5.b(10), e11);
            }
        }
    }

    public final void F(n1 n1Var) {
        Handler handler;
        handler = this.f25816r.f25786n;
        n5.q.d(handler);
        if (this.f25805g.a()) {
            if (p(n1Var)) {
                m();
                return;
            } else {
                this.f25804a.add(n1Var);
                return;
            }
        }
        this.f25804a.add(n1Var);
        l5.b bVar = this.f25814p;
        if (bVar != null && bVar.m()) {
            H(this.f25814p, null);
        } else {
            E();
        }
    }

    public final void G() {
        this.f25815q++;
    }

    public final void H(l5.b bVar, Exception exc) {
        Handler handler;
        n5.i0 i0Var;
        boolean z10;
        Status g10;
        Status g11;
        Status g12;
        Handler handler2;
        Handler handler3;
        Handler handler4;
        Status status;
        Handler handler5;
        Handler handler6;
        handler = this.f25816r.f25786n;
        n5.q.d(handler);
        e1 e1Var = this.f25811m;
        if (e1Var != null) {
            e1Var.i1();
        }
        D();
        i0Var = this.f25816r.f25779g;
        i0Var.c();
        f(bVar);
        if ((this.f25805g instanceof p5.e) && bVar.g() != 24) {
            this.f25816r.f25774b = true;
            e eVar = this.f25816r;
            handler5 = eVar.f25786n;
            handler6 = eVar.f25786n;
            handler5.sendMessageDelayed(handler6.obtainMessage(19), 300000L);
        }
        if (bVar.g() == 4) {
            status = e.f25770q;
            g(status);
        } else if (this.f25804a.isEmpty()) {
            this.f25814p = bVar;
        } else if (exc != null) {
            handler4 = this.f25816r.f25786n;
            n5.q.d(handler4);
            h(null, exc, false);
        } else {
            z10 = this.f25816r.f25787o;
            if (z10) {
                g11 = e.g(this.f25806h, bVar);
                h(g11, null, true);
                if (!this.f25804a.isEmpty() && !q(bVar) && !this.f25816r.f(bVar, this.f25810l)) {
                    if (bVar.g() == 18) {
                        this.f25812n = true;
                    }
                    if (!this.f25812n) {
                        g12 = e.g(this.f25806h, bVar);
                        g(g12);
                        return;
                    }
                    e eVar2 = this.f25816r;
                    b bVar2 = this.f25806h;
                    handler2 = eVar2.f25786n;
                    handler3 = eVar2.f25786n;
                    handler2.sendMessageDelayed(Message.obtain(handler3, 9, bVar2), 5000L);
                    return;
                }
                return;
            }
            g10 = e.g(this.f25806h, bVar);
            g(g10);
        }
    }

    public final void I(l5.b bVar) {
        Handler handler;
        handler = this.f25816r.f25786n;
        n5.q.d(handler);
        a.f fVar = this.f25805g;
        String name = fVar.getClass().getName();
        String valueOf = String.valueOf(bVar);
        fVar.c("onSignInFailed for " + name + " with " + valueOf);
        H(bVar, null);
    }

    public final void J() {
        Handler handler;
        handler = this.f25816r.f25786n;
        n5.q.d(handler);
        if (this.f25812n) {
            E();
        }
    }

    public final void K() {
        Handler handler;
        handler = this.f25816r.f25786n;
        n5.q.d(handler);
        g(e.f25769p);
        this.f25807i.f();
        for (j.a aVar : (j.a[]) this.f25809k.keySet().toArray(new j.a[0])) {
            F(new m1(aVar, new m6.l()));
        }
        f(new l5.b(4));
        if (this.f25805g.a()) {
            this.f25805g.h(new h0(this));
        }
    }

    public final void L() {
        Handler handler;
        l5.f fVar;
        Context context;
        Status status;
        handler = this.f25816r.f25786n;
        n5.q.d(handler);
        if (this.f25812n) {
            o();
            e eVar = this.f25816r;
            fVar = eVar.f25778f;
            context = eVar.f25777e;
            if (fVar.g(context) == 18) {
                status = new Status(21, "Connection timed out waiting for Google Play services update to complete.");
            } else {
                status = new Status(22, "API failed to connect while resuming due to an unknown error.");
            }
            g(status);
            this.f25805g.c("Timing out connection while resuming.");
        }
    }

    @Override // m5.m
    public final void a(l5.b bVar) {
        H(bVar, null);
    }

    public final boolean b() {
        return this.f25805g.o();
    }

    public final boolean c() {
        return r(true);
    }

    @Override // m5.d
    public final void d(int i10) {
        Handler handler;
        Handler handler2;
        e eVar = this.f25816r;
        Looper myLooper = Looper.myLooper();
        handler = eVar.f25786n;
        if (myLooper != handler.getLooper()) {
            handler2 = this.f25816r.f25786n;
            handler2.post(new f0(this, i10));
            return;
        }
        l(i10);
    }

    @Override // m5.d
    public final void k(Bundle bundle) {
        Handler handler;
        Handler handler2;
        e eVar = this.f25816r;
        Looper myLooper = Looper.myLooper();
        handler = eVar.f25786n;
        if (myLooper != handler.getLooper()) {
            handler2 = this.f25816r.f25786n;
            handler2.post(new e0(this));
            return;
        }
        j();
    }

    public final int s() {
        return this.f25810l;
    }

    public final int t() {
        return this.f25815q;
    }

    public final a.f v() {
        return this.f25805g;
    }

    public final Map x() {
        return this.f25809k;
    }
}
