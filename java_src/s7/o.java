package s7;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicMarkableReference;
import java.util.concurrent.atomic.AtomicReference;
import s7.o;
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private final g f29529a;

    /* renamed from: b  reason: collision with root package name */
    private final r7.i f29530b;

    /* renamed from: c  reason: collision with root package name */
    private String f29531c;

    /* renamed from: d  reason: collision with root package name */
    private final a f29532d = new a(false);

    /* renamed from: e  reason: collision with root package name */
    private final a f29533e = new a(true);

    /* renamed from: f  reason: collision with root package name */
    private final k f29534f = new k(128);

    /* renamed from: g  reason: collision with root package name */
    private final AtomicMarkableReference f29535g = new AtomicMarkableReference(null, false);

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        final AtomicMarkableReference f29536a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicReference f29537b = new AtomicReference(null);

        /* renamed from: c  reason: collision with root package name */
        private final boolean f29538c;

        public a(boolean z10) {
            int i10;
            this.f29538c = z10;
            if (z10) {
                i10 = 8192;
            } else {
                i10 = 1024;
            }
            this.f29536a = new AtomicMarkableReference(new e(64, i10), false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void c() {
            this.f29537b.set(null);
            e();
        }

        private void d() {
            Runnable runnable = new Runnable() { // from class: s7.n
                @Override // java.lang.Runnable
                public final void run() {
                    o.a.this.c();
                }
            };
            if (o1.c.a(this.f29537b, null, runnable)) {
                o.this.f29530b.f28984b.g(runnable);
            }
        }

        private void e() {
            Map map;
            synchronized (this) {
                if (this.f29536a.isMarked()) {
                    map = ((e) this.f29536a.getReference()).a();
                    AtomicMarkableReference atomicMarkableReference = this.f29536a;
                    atomicMarkableReference.set((e) atomicMarkableReference.getReference(), false);
                } else {
                    map = null;
                }
            }
            if (map != null) {
                o.this.f29529a.r(o.this.f29531c, map, this.f29538c);
            }
        }

        public Map b() {
            return ((e) this.f29536a.getReference()).a();
        }

        public boolean f(String str, String str2) {
            synchronized (this) {
                if (!((e) this.f29536a.getReference()).d(str, str2)) {
                    return false;
                }
                AtomicMarkableReference atomicMarkableReference = this.f29536a;
                atomicMarkableReference.set((e) atomicMarkableReference.getReference(), true);
                d();
                return true;
            }
        }
    }

    public o(String str, w7.g gVar, r7.i iVar) {
        this.f29531c = str;
        this.f29529a = new g(gVar);
        this.f29530b = iVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void j(String str, Map map, List list) {
        if (i() != null) {
            this.f29529a.t(str, i());
        }
        if (!map.isEmpty()) {
            this.f29529a.q(str, map);
        }
        if (!list.isEmpty()) {
            this.f29529a.s(str, list);
        }
    }

    public static o k(String str, w7.g gVar, r7.i iVar) {
        g gVar2 = new g(gVar);
        o oVar = new o(str, gVar, iVar);
        ((e) oVar.f29532d.f29536a.getReference()).e(gVar2.i(str, false));
        ((e) oVar.f29533e.f29536a.getReference()).e(gVar2.i(str, true));
        oVar.f29535g.set(gVar2.k(str), false);
        oVar.f29534f.c(gVar2.j(str));
        return oVar;
    }

    public static String l(String str, w7.g gVar) {
        return new g(gVar).k(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        boolean z10;
        String str;
        synchronized (this.f29535g) {
            z10 = false;
            if (this.f29535g.isMarked()) {
                str = i();
                this.f29535g.set(str, false);
                z10 = true;
            } else {
                str = null;
            }
        }
        if (z10) {
            this.f29529a.t(this.f29531c, str);
        }
    }

    public Map f(Map map) {
        if (map.isEmpty()) {
            return this.f29532d.b();
        }
        HashMap hashMap = new HashMap(this.f29532d.b());
        int i10 = 0;
        for (Map.Entry entry : map.entrySet()) {
            String c10 = e.c((String) entry.getKey(), 1024);
            if (hashMap.size() >= 64 && !hashMap.containsKey(c10)) {
                i10++;
            } else {
                hashMap.put(c10, e.c((String) entry.getValue(), 1024));
            }
        }
        if (i10 > 0) {
            n7.g f10 = n7.g.f();
            f10.k("Ignored " + i10 + " keys when adding event specific keys. Maximum allowable: 1024");
        }
        return Collections.unmodifiableMap(hashMap);
    }

    public Map g() {
        return this.f29533e.b();
    }

    public List h() {
        return this.f29534f.a();
    }

    public String i() {
        return (String) this.f29535g.getReference();
    }

    public boolean n(String str, String str2) {
        return this.f29532d.f(str, str2);
    }

    public boolean o(String str, String str2) {
        return this.f29533e.f(str, str2);
    }

    public void p(final String str) {
        synchronized (this.f29531c) {
            this.f29531c = str;
            final Map b10 = this.f29532d.b();
            final List b11 = this.f29534f.b();
            this.f29530b.f28984b.g(new Runnable() { // from class: s7.l
                @Override // java.lang.Runnable
                public final void run() {
                    o.this.j(str, b10, b11);
                }
            });
        }
    }

    public void q(String str) {
        String c10 = e.c(str, 1024);
        synchronized (this.f29535g) {
            if (q7.j.z(c10, (String) this.f29535g.getReference())) {
                return;
            }
            this.f29535g.set(c10, true);
            this.f29530b.f28984b.g(new Runnable() { // from class: s7.m
                @Override // java.lang.Runnable
                public final void run() {
                    o.this.m();
                }
            });
        }
    }
}
