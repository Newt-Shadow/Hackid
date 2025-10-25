package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C0513ei;
import com.yandex.metrica.impl.ob.C0787pi;
import com.yandex.metrica.impl.ob.C0811qi;
import com.yandex.metrica.impl.ob.Mg;
import com.yandex.metrica.networktasks.api.NetworkTask;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.yandex.metrica.impl.ob.ri  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0834ri {

    /* renamed from: a  reason: collision with root package name */
    private final Context f13521a;

    /* renamed from: b  reason: collision with root package name */
    private final I3 f13522b;

    /* renamed from: c  reason: collision with root package name */
    private final InterfaceC0762oi f13523c;

    /* renamed from: d  reason: collision with root package name */
    private final C0787pi.b f13524d;

    /* renamed from: e  reason: collision with root package name */
    private volatile NetworkTask f13525e;

    /* renamed from: f  reason: collision with root package name */
    private C0538fi f13526f;

    /* renamed from: g  reason: collision with root package name */
    private final dc.d f13527g;

    /* renamed from: h  reason: collision with root package name */
    private final I f13528h;

    /* renamed from: i  reason: collision with root package name */
    private final Rh f13529i;

    /* renamed from: j  reason: collision with root package name */
    private final C0672l3 f13530j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.ri$a */
    /* loaded from: classes2.dex */
    public class a implements id.a {
        a() {
        }

        @Override // id.a
        public Object invoke() {
            return C0834ri.this.f13528h;
        }
    }

    public C0834ri(Context context, String str, Mg.b bVar, InterfaceC0762oi interfaceC0762oi) {
        this(context, new E3(str), bVar, interfaceC0762oi, new C0787pi.b(context), new Pl(context), new dc.c(), F0.g().d(), new Rh(), C0672l3.a());
    }

    public Context b() {
        return this.f13521a;
    }

    public synchronized NetworkTask c() {
        if (e()) {
            if (this.f13525e == null) {
                this.f13525e = C0829rd.a(this, this.f13526f.b());
            }
            return this.f13525e;
        }
        return null;
    }

    public C0787pi d() {
        return this.f13526f.d();
    }

    public synchronized boolean e() {
        boolean b10;
        C0787pi d10 = this.f13526f.d();
        b10 = C0737ni.b(d10);
        if (!b10 && !(!C0737ni.a(d10))) {
            if (!this.f13529i.a(this.f13526f.b().C(), d10, this.f13528h)) {
                b10 = true;
            }
        }
        return b10;
    }

    private void a(Pl pl, C0489dj c0489dj, C0787pi c0787pi) {
        C0787pi.a a10 = c0787pi.a();
        if (!C0737ni.a(c0787pi.V())) {
            a10 = a10.k(c0489dj.a().f11672a);
        }
        String a11 = pl.a();
        if (!C0737ni.a(c0787pi.i())) {
            a10 = a10.c(a11).d("");
        }
        C0787pi a12 = a10.a();
        b(a12);
        a(a12);
    }

    private synchronized void b(C0787pi c0787pi) {
        this.f13526f.a(c0787pi);
        this.f13524d.a(c0787pi);
        F0.g().a(c0787pi);
        this.f13530j.a((C0722n3) new C0796q3(this.f13522b.b(), c0787pi));
    }

    private C0834ri(Context context, I3 i32, Mg.b bVar, InterfaceC0762oi interfaceC0762oi, C0787pi.b bVar2, Pl pl, dc.d dVar, I i10, Rh rh, C0672l3 c0672l3) {
        this(context, i32, bVar, interfaceC0762oi, bVar2, bVar2.a(), pl, dVar, i10, rh, c0672l3);
    }

    private C0834ri(Context context, I3 i32, Mg.b bVar, InterfaceC0762oi interfaceC0762oi, C0787pi.b bVar2, C0787pi c0787pi, Pl pl, dc.d dVar, I i10, Rh rh, C0672l3 c0672l3) {
        this(context, i32, interfaceC0762oi, bVar2, c0787pi, pl, new C0538fi(new Mg.c(context, i32.b()), c0787pi, bVar), dVar, i10, rh, C0514ej.a(context).a(context, new C0613ij(bVar2)), c0672l3);
    }

    C0834ri(Context context, I3 i32, InterfaceC0762oi interfaceC0762oi, C0787pi.b bVar, C0787pi c0787pi, Pl pl, C0538fi c0538fi, dc.d dVar, I i10, Rh rh, C0489dj c0489dj, C0672l3 c0672l3) {
        this.f13521a = context;
        this.f13522b = i32;
        this.f13523c = interfaceC0762oi;
        this.f13524d = bVar;
        this.f13526f = c0538fi;
        this.f13527g = dVar;
        this.f13528h = i10;
        this.f13529i = rh;
        this.f13530j = c0672l3;
        a(pl, c0489dj, c0787pi);
    }

    public I3 a() {
        return this.f13522b;
    }

    public void a(EnumC0563gi enumC0563gi) {
        HashMap hashMap;
        C0838rm c0838rm;
        ArrayList<InterfaceC0662ki> arrayList;
        synchronized (this) {
            this.f13525e = null;
        }
        InterfaceC0762oi interfaceC0762oi = this.f13523c;
        String b10 = this.f13522b.b();
        C0787pi d10 = this.f13526f.d();
        C0513ei.a aVar = (C0513ei.a) interfaceC0762oi;
        hashMap = C0513ei.this.f12339b;
        synchronized (hashMap) {
            c0838rm = C0513ei.this.f12338a;
            Collection a10 = c0838rm.a(b10);
            if (a10 == null) {
                arrayList = new ArrayList();
            } else {
                arrayList = new ArrayList(a10);
            }
        }
        for (InterfaceC0662ki interfaceC0662ki : arrayList) {
            interfaceC0662ki.a(enumC0563gi, d10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0051 A[Catch: all -> 0x005c, TRY_ENTER, TRY_LEAVE, TryCatch #2 {, blocks: (B:3:0x0001, B:5:0x0008, B:14:0x0036, B:17:0x003d, B:18:0x0050, B:20:0x0053, B:21:0x0054, B:22:0x0057, B:19:0x0051), top: B:34:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(com.yandex.metrica.impl.ob.Ui r6, com.yandex.metrica.impl.ob.Mg r7, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r8) {
        /*
            r5 = this;
            monitor-enter(r5)
            boolean r0 = com.yandex.metrica.impl.ob.A2.b(r8)     // Catch: java.lang.Throwable -> L5f
            r1 = 0
            if (r0 != 0) goto L33
            java.lang.String r0 = "Date"
            java.lang.Object r8 = r8.get(r0)     // Catch: java.lang.Throwable -> L5f
            java.util.List r8 = (java.util.List) r8     // Catch: java.lang.Throwable -> L5f
            boolean r0 = com.yandex.metrica.impl.ob.A2.b(r8)     // Catch: java.lang.Throwable -> L5f
            if (r0 != 0) goto L33
            r0 = 0
            java.lang.Object r8 = r8.get(r0)     // Catch: java.lang.Throwable -> L33
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> L33
            java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat     // Catch: java.lang.Throwable -> L33
            java.lang.String r2 = "E, d MMM yyyy HH:mm:ss z"
            java.util.Locale r3 = java.util.Locale.US     // Catch: java.lang.Throwable -> L33
            r0.<init>(r2, r3)     // Catch: java.lang.Throwable -> L33
            java.util.Date r8 = r0.parse(r8)     // Catch: java.lang.Throwable -> L33
            long r2 = r8.getTime()     // Catch: java.lang.Throwable -> L33
            java.lang.Long r8 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L33
            goto L34
        L33:
            r8 = r1
        L34:
            r2 = 0
            java.lang.Long r0 = java.lang.Long.valueOf(r2)     // Catch: java.lang.Throwable -> L5f
            if (r8 != 0) goto L3d
            r8 = r0
        L3d:
            java.lang.Long r0 = r6.N()     // Catch: java.lang.Throwable -> L5f
            com.yandex.metrica.impl.ob.fm r2 = com.yandex.metrica.impl.ob.C0542fm.c()     // Catch: java.lang.Throwable -> L5f
            long r3 = r8.longValue()     // Catch: java.lang.Throwable -> L5f
            r2.a(r3, r0)     // Catch: java.lang.Throwable -> L5f
            com.yandex.metrica.impl.ob.pi r6 = r5.a(r6, r7, r8)     // Catch: java.lang.Throwable -> L5f
            monitor-enter(r5)     // Catch: java.lang.Throwable -> L5f
            r5.f13525e = r1     // Catch: java.lang.Throwable -> L5c
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L5f
            r5.b(r6)     // Catch: java.lang.Throwable -> L5f
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L5f
            r5.a(r6)
            return
        L5c:
            r6 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L5f
            throw r6     // Catch: java.lang.Throwable -> L5f
        L5f:
            r6 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L5f
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0834ri.a(com.yandex.metrica.impl.ob.Ui, com.yandex.metrica.impl.ob.Mg, java.util.Map):void");
    }

    protected C0787pi a(Ui ui, Mg mg, Long l10) {
        boolean equals;
        String c10 = Tl.c(mg.C());
        Map<String, String> b10 = mg.B().b();
        String n10 = ui.n();
        String n11 = this.f13526f.d().n();
        if (!Tl.d(Tl.a(n10))) {
            n10 = Tl.d(Tl.a(n11)) ? n11 : null;
        }
        String i10 = this.f13526f.d().i();
        if (TextUtils.isEmpty(i10)) {
            i10 = ui.i();
        }
        C0787pi.a h10 = new C0787pi.a(new C0811qi.b(ui.e())).c(i10).d(ui.h()).c(this.f13527g.currentTimeSeconds()).k(this.f13526f.d().V()).f(ui.o()).c(ui.G()).b(mg.J()).i(ui.y()).e(ui.r()).i(ui.x()).j(ui.D()).a(ui.d()).a(ui.j()).g(ui.t()).a(ui.g()).e(n10).h(c10);
        this.f13529i.getClass();
        Map<String, String> a10 = Tl.a(n10);
        if (A2.b(b10)) {
            equals = A2.b(a10);
        } else {
            equals = a10.equals(b10);
        }
        C0787pi.a a11 = h10.c(equals).g(Tl.c(b10)).a(ui.E()).d(ui.q()).j(ui.z()).b(ui.f()).a(ui.w()).h(ui.v()).a(ui.C()).a(ui.H()).a(true);
        Long valueOf = Long.valueOf((System.currentTimeMillis() / 1000) * 1000);
        if (l10 != null) {
            valueOf = l10;
        }
        return a11.b(valueOf.longValue()).a(this.f13526f.b().a(l10.longValue())).b(false).a(ui.p()).a(ui.B()).a(ui.L()).b(ui.K()).c(ui.M()).a(ui.J()).a(ui.I()).a(ui.c()).a(ui.k()).f(ui.s()).a(ui.b()).a(ui.a()).a(ui.l()).a(ui.m()).a(ui.F()).b(ui.u()).a();
    }

    private void a(C0787pi c0787pi) {
        HashMap hashMap;
        C0838rm c0838rm;
        ArrayList<InterfaceC0662ki> arrayList;
        InterfaceC0762oi interfaceC0762oi = this.f13523c;
        String b10 = this.f13522b.b();
        C0513ei.a aVar = (C0513ei.a) interfaceC0762oi;
        hashMap = C0513ei.this.f12339b;
        synchronized (hashMap) {
            C0513ei.this.f12340c = c0787pi;
            c0838rm = C0513ei.this.f12338a;
            Collection a10 = c0838rm.a(b10);
            if (a10 == null) {
                arrayList = new ArrayList();
            } else {
                arrayList = new ArrayList(a10);
            }
        }
        for (InterfaceC0662ki interfaceC0662ki : arrayList) {
            interfaceC0662ki.a(c0787pi);
        }
    }

    public synchronized boolean a(List<String> list, Map<String, String> map) {
        return !C0737ni.a(this.f13526f.d(), list, map, new a());
    }

    public synchronized void a(Mg.b bVar) {
        boolean z10;
        this.f13526f.a(bVar);
        Mg b10 = this.f13526f.b();
        if (b10.K()) {
            List<String> G = b10.G();
            boolean z11 = true;
            C0787pi.a aVar = null;
            if (!A2.b(G) || A2.b(b10.J())) {
                z10 = false;
            } else {
                aVar = this.f13526f.d().a().b((List<String>) null);
                z10 = true;
            }
            if (A2.b(G) || A2.a(G, b10.J())) {
                z11 = z10;
            } else {
                aVar = this.f13526f.d().a().b(G);
            }
            if (z11) {
                C0787pi a10 = aVar.a();
                b(a10);
                a(a10);
            }
        }
    }
}
