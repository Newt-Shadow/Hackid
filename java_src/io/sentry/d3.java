package io.sentry;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2.dex */
public final class d3 implements u0 {

    /* renamed from: a  reason: collision with root package name */
    private j5 f23016a;

    /* renamed from: b  reason: collision with root package name */
    private a1 f23017b;

    /* renamed from: c  reason: collision with root package name */
    private String f23018c;

    /* renamed from: d  reason: collision with root package name */
    private io.sentry.protocol.b0 f23019d;

    /* renamed from: e  reason: collision with root package name */
    private String f23020e;

    /* renamed from: f  reason: collision with root package name */
    private io.sentry.protocol.m f23021f;

    /* renamed from: g  reason: collision with root package name */
    private List f23022g;

    /* renamed from: h  reason: collision with root package name */
    private final Queue f23023h;

    /* renamed from: i  reason: collision with root package name */
    private Map f23024i;

    /* renamed from: j  reason: collision with root package name */
    private Map f23025j;

    /* renamed from: k  reason: collision with root package name */
    private List f23026k;

    /* renamed from: l  reason: collision with root package name */
    private final s5 f23027l;

    /* renamed from: m  reason: collision with root package name */
    private volatile f6 f23028m;

    /* renamed from: n  reason: collision with root package name */
    private final Object f23029n;

    /* renamed from: o  reason: collision with root package name */
    private final Object f23030o;

    /* renamed from: p  reason: collision with root package name */
    private final Object f23031p;

    /* renamed from: q  reason: collision with root package name */
    private io.sentry.protocol.c f23032q;

    /* renamed from: r  reason: collision with root package name */
    private List f23033r;

    /* renamed from: s  reason: collision with root package name */
    private w2 f23034s;

    /* renamed from: t  reason: collision with root package name */
    private io.sentry.protocol.r f23035t;

    /* loaded from: classes2.dex */
    public interface a {
        void a(w2 w2Var);
    }

    /* loaded from: classes2.dex */
    interface b {
        void a(f6 f6Var);
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(a1 a1Var);
    }

    /* loaded from: classes2.dex */
    static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final f6 f23036a;

        /* renamed from: b  reason: collision with root package name */
        private final f6 f23037b;

        public d(f6 f6Var, f6 f6Var2) {
            this.f23037b = f6Var;
            this.f23036a = f6Var2;
        }

        public f6 a() {
            return this.f23037b;
        }

        public f6 b() {
            return this.f23036a;
        }
    }

    public d3(s5 s5Var) {
        this.f23022g = new ArrayList();
        this.f23024i = new ConcurrentHashMap();
        this.f23025j = new ConcurrentHashMap();
        this.f23026k = new CopyOnWriteArrayList();
        this.f23029n = new Object();
        this.f23030o = new Object();
        this.f23031p = new Object();
        this.f23032q = new io.sentry.protocol.c();
        this.f23033r = new CopyOnWriteArrayList();
        this.f23035t = io.sentry.protocol.r.f23462b;
        s5 s5Var2 = (s5) io.sentry.util.q.c(s5Var, "SentryOptions is required.");
        this.f23027l = s5Var2;
        this.f23023h = M(s5Var2.getMaxBreadcrumbs());
        this.f23034s = new w2();
    }

    private Queue M(int i10) {
        if (i10 > 0) {
            return t6.i(new f(i10));
        }
        return t6.i(new q());
    }

    @Override // io.sentry.u0
    public void A() {
        this.f23028m = null;
    }

    @Override // io.sentry.u0
    public w2 B(a aVar) {
        w2 w2Var;
        synchronized (this.f23031p) {
            aVar.a(this.f23034s);
            w2Var = new w2(this.f23034s);
        }
        return w2Var;
    }

    @Override // io.sentry.u0
    public String C() {
        return this.f23020e;
    }

    @Override // io.sentry.u0
    public void D(c cVar) {
        synchronized (this.f23030o) {
            cVar.a(this.f23017b);
        }
    }

    @Override // io.sentry.u0
    public void E(a1 a1Var) {
        synchronized (this.f23030o) {
            this.f23017b = a1Var;
            for (v0 v0Var : this.f23027l.getScopeObservers()) {
                if (a1Var != null) {
                    v0Var.j(a1Var.getName());
                    v0Var.h(a1Var.o(), this);
                } else {
                    v0Var.j(null);
                    v0Var.h(null, this);
                }
            }
        }
    }

    @Override // io.sentry.u0
    public List F() {
        return this.f23022g;
    }

    @Override // io.sentry.u0
    public io.sentry.protocol.b0 G() {
        return this.f23019d;
    }

    @Override // io.sentry.u0
    public io.sentry.protocol.m H() {
        return this.f23021f;
    }

    @Override // io.sentry.u0
    public List I() {
        return this.f23026k;
    }

    @Override // io.sentry.u0
    public String J() {
        a1 a1Var = this.f23017b;
        if (a1Var != null) {
            return a1Var.getName();
        }
        return this.f23018c;
    }

    @Override // io.sentry.u0
    public void K(w2 w2Var) {
        this.f23034s = w2Var;
        l6 h10 = w2Var.h();
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.h(h10, this);
        }
    }

    public void L() {
        this.f23033r.clear();
    }

    @Override // io.sentry.u0
    public void a(String str) {
        this.f23025j.remove(str);
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.a(str);
            v0Var.setExtras(this.f23025j);
        }
    }

    @Override // io.sentry.u0
    public void b(String str, String str2) {
        this.f23025j.put(str, str2);
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.b(str, str2);
            v0Var.setExtras(this.f23025j);
        }
    }

    @Override // io.sentry.u0
    public void c(String str) {
        this.f23024i.remove(str);
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.c(str);
            v0Var.e(this.f23024i);
        }
    }

    @Override // io.sentry.u0
    public void clear() {
        this.f23016a = null;
        this.f23019d = null;
        this.f23021f = null;
        this.f23020e = null;
        this.f23022g.clear();
        q();
        this.f23024i.clear();
        this.f23025j.clear();
        this.f23026k.clear();
        h();
        L();
    }

    @Override // io.sentry.u0
    public void d(String str, String str2) {
        this.f23024i.put(str, str2);
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.d(str, str2);
            v0Var.e(this.f23024i);
        }
    }

    @Override // io.sentry.u0
    public f6 e() {
        f6 f6Var;
        synchronized (this.f23029n) {
            f6Var = null;
            if (this.f23028m != null) {
                this.f23028m.c();
                f6 clone = this.f23028m.clone();
                this.f23028m = null;
                f6Var = clone;
            }
        }
        return f6Var;
    }

    @Override // io.sentry.u0
    public d f() {
        d dVar;
        synchronized (this.f23029n) {
            if (this.f23028m != null) {
                this.f23028m.c();
            }
            f6 f6Var = this.f23028m;
            dVar = null;
            f6 f6Var2 = null;
            if (this.f23027l.getRelease() != null) {
                this.f23028m = new f6(this.f23027l.getDistinctId(), this.f23019d, this.f23027l.getEnvironment(), this.f23027l.getRelease());
                if (f6Var != null) {
                    f6Var2 = f6Var.clone();
                }
                dVar = new d(this.f23028m.clone(), f6Var2);
            } else {
                this.f23027l.getLogger().c(j5.WARNING, "Release is not set on SentryOptions. Session could not be started", new Object[0]);
            }
        }
        return dVar;
    }

    @Override // io.sentry.u0
    public void g(io.sentry.protocol.r rVar) {
        this.f23035t = rVar;
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.g(rVar);
        }
    }

    @Override // io.sentry.u0
    public Map getExtras() {
        return this.f23025j;
    }

    @Override // io.sentry.u0
    public void h() {
        synchronized (this.f23030o) {
            this.f23017b = null;
        }
        this.f23018c = null;
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.j(null);
            v0Var.h(null, this);
        }
    }

    @Override // io.sentry.u0
    public z0 i() {
        k6 k10;
        a1 a1Var = this.f23017b;
        if (a1Var != null && (k10 = a1Var.k()) != null) {
            return k10;
        }
        return a1Var;
    }

    @Override // io.sentry.u0
    public void j(String str) {
        this.f23032q.remove(str);
    }

    @Override // io.sentry.u0
    public f6 k() {
        return this.f23028m;
    }

    @Override // io.sentry.u0
    public Queue l() {
        return this.f23023h;
    }

    @Override // io.sentry.u0
    public j5 m() {
        return this.f23016a;
    }

    @Override // io.sentry.u0
    public void n(io.sentry.protocol.b0 b0Var) {
        this.f23019d = b0Var;
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.n(b0Var);
        }
    }

    @Override // io.sentry.u0
    public io.sentry.protocol.r o() {
        return this.f23035t;
    }

    @Override // io.sentry.u0
    public void p(e eVar, c0 c0Var) {
        if (eVar == null) {
            return;
        }
        if (c0Var == null) {
            new c0();
        }
        this.f23027l.getBeforeBreadcrumb();
        this.f23023h.add(eVar);
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.t(eVar);
            v0Var.f(this.f23023h);
        }
    }

    @Override // io.sentry.u0
    public void q() {
        this.f23023h.clear();
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.f(this.f23023h);
        }
    }

    @Override // io.sentry.u0
    /* renamed from: r */
    public u0 clone() {
        return new d3(this);
    }

    @Override // io.sentry.u0
    public a1 s() {
        return this.f23017b;
    }

    @Override // io.sentry.u0
    public w2 t() {
        return this.f23034s;
    }

    @Override // io.sentry.u0
    public f6 u(b bVar) {
        f6 f6Var;
        synchronized (this.f23029n) {
            bVar.a(this.f23028m);
            if (this.f23028m != null) {
                f6Var = this.f23028m.clone();
            } else {
                f6Var = null;
            }
        }
        return f6Var;
    }

    @Override // io.sentry.u0
    public void v(String str) {
        this.f23020e = str;
        io.sentry.protocol.c y10 = y();
        io.sentry.protocol.a a10 = y10.a();
        if (a10 == null) {
            a10 = new io.sentry.protocol.a();
            y10.g(a10);
        }
        if (str == null) {
            a10.u(null);
        } else {
            ArrayList arrayList = new ArrayList(1);
            arrayList.add(str);
            a10.u(arrayList);
        }
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.i(y10);
        }
    }

    @Override // io.sentry.u0
    public Map w() {
        return io.sentry.util.b.c(this.f23024i);
    }

    @Override // io.sentry.u0
    public List x() {
        return new CopyOnWriteArrayList(this.f23033r);
    }

    @Override // io.sentry.u0
    public io.sentry.protocol.c y() {
        return this.f23032q;
    }

    @Override // io.sentry.u0
    public void z(String str, Object obj) {
        this.f23032q.put(str, obj);
        for (v0 v0Var : this.f23027l.getScopeObservers()) {
            v0Var.i(this.f23032q);
        }
    }

    private d3(d3 d3Var) {
        this.f23022g = new ArrayList();
        this.f23024i = new ConcurrentHashMap();
        this.f23025j = new ConcurrentHashMap();
        this.f23026k = new CopyOnWriteArrayList();
        this.f23029n = new Object();
        this.f23030o = new Object();
        this.f23031p = new Object();
        this.f23032q = new io.sentry.protocol.c();
        this.f23033r = new CopyOnWriteArrayList();
        this.f23035t = io.sentry.protocol.r.f23462b;
        this.f23017b = d3Var.f23017b;
        this.f23018c = d3Var.f23018c;
        this.f23028m = d3Var.f23028m;
        this.f23027l = d3Var.f23027l;
        this.f23016a = d3Var.f23016a;
        io.sentry.protocol.b0 b0Var = d3Var.f23019d;
        this.f23019d = b0Var != null ? new io.sentry.protocol.b0(b0Var) : null;
        this.f23020e = d3Var.f23020e;
        this.f23035t = d3Var.f23035t;
        io.sentry.protocol.m mVar = d3Var.f23021f;
        this.f23021f = mVar != null ? new io.sentry.protocol.m(mVar) : null;
        this.f23022g = new ArrayList(d3Var.f23022g);
        this.f23026k = new CopyOnWriteArrayList(d3Var.f23026k);
        e[] eVarArr = (e[]) d3Var.f23023h.toArray(new e[0]);
        Queue M = M(d3Var.f23027l.getMaxBreadcrumbs());
        for (e eVar : eVarArr) {
            M.add(new e(eVar));
        }
        this.f23023h = M;
        Map map = d3Var.f23024i;
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (entry != null) {
                concurrentHashMap.put((String) entry.getKey(), (String) entry.getValue());
            }
        }
        this.f23024i = concurrentHashMap;
        Map map2 = d3Var.f23025j;
        ConcurrentHashMap concurrentHashMap2 = new ConcurrentHashMap();
        for (Map.Entry entry2 : map2.entrySet()) {
            if (entry2 != null) {
                concurrentHashMap2.put((String) entry2.getKey(), entry2.getValue());
            }
        }
        this.f23025j = concurrentHashMap2;
        this.f23032q = new io.sentry.protocol.c(d3Var.f23032q);
        this.f23033r = new CopyOnWriteArrayList(d3Var.f23033r);
        this.f23034s = new w2(d3Var.f23034s);
    }
}
