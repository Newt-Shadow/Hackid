package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.executors.SynchronizedBlockingExecutor;
import io.appmetrica.analytics.networktasks.internal.AllHostsExponentialBackoffPolicy;
import io.appmetrica.analytics.networktasks.internal.DefaultResponseValidityChecker;
import io.appmetrica.analytics.networktasks.internal.FinalConfigProvider;
import io.appmetrica.analytics.networktasks.internal.FullUrlFormer;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;
import io.appmetrica.analytics.networktasks.internal.RequestDataHolder;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.mm  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1353mm {

    /* renamed from: a  reason: collision with root package name */
    public final C1378nm f20138a;

    /* renamed from: b  reason: collision with root package name */
    public volatile NetworkTask f20139b;

    public C1353mm(C1378nm c1378nm) {
        this.f20138a = c1378nm;
    }

    public final Context b() {
        return this.f20138a.f20223a;
    }

    public final synchronized NetworkTask c() {
        NetworkTask networkTask;
        List h10;
        if (g()) {
            networkTask = this.f20139b;
            if (networkTask == null || networkTask.isRemoved()) {
                Ml d10 = d();
                Ud ud2 = Ud.f19043a;
                Il il = new Il(new C1171fe(), C1665za.E.o());
                FinalConfigProvider finalConfigProvider = new FinalConfigProvider(d10);
                SynchronizedBlockingExecutor synchronizedBlockingExecutor = new SynchronizedBlockingExecutor();
                J9 j92 = new J9(this.f20138a.f20223a);
                AllHostsExponentialBackoffPolicy allHostsExponentialBackoffPolicy = new AllHostsExponentialBackoffPolicy(Ud.f19043a.a(Sd.STARTUP));
                C1303km c1303km = new C1303km(this, new Cl(), new FullUrlFormer(il, finalConfigProvider), new RequestDataHolder(), new ResponseDataHolder(new DefaultResponseValidityChecker()), finalConfigProvider);
                h10 = yc.o.h();
                networkTask = new NetworkTask(synchronizedBlockingExecutor, j92, allHostsExponentialBackoffPolicy, c1303km, h10, Ud.f19045c);
                this.f20139b = networkTask;
            }
        } else {
            networkTask = null;
        }
        return networkTask;
    }

    public final Ml d() {
        return (Ml) this.f20138a.f20234l.a();
    }

    public final Ql e() {
        Ql ql;
        C1526tl c1526tl = this.f20138a.f20234l;
        synchronized (c1526tl) {
            ql = c1526tl.f18077c.f19374a;
        }
        return ql;
    }

    public final void f() {
        Ql ql;
        C1526tl c1526tl = this.f20138a.f20234l;
        synchronized (c1526tl) {
            ql = c1526tl.f18077c.f19374a;
        }
        Ul ul = ql.f18830c;
        Tl a10 = ul.a(ul.f19083m);
        String str = ql.f18828a;
        String str2 = ql.f18829b;
        Vn vn = this.f20138a.f20236n;
        String str3 = ql.f18831d;
        vn.getClass();
        if (!Vn.a(str3)) {
            a10.f19001a = this.f20138a.f20235m.a().f21091id;
        }
        String str4 = ql.f18828a;
        if (str4 == null || str4.length() == 0) {
            str = this.f20138a.f20230h.a();
            str2 = "";
        }
        List<String> list = this.f20138a.f20225c.f18505e;
        a10.f19007g = (list == null || !(list.isEmpty() ^ true)) ? null : null;
        Ql ql2 = new Ql(str, str2, new Ul(a10));
        b(ql2);
        a(ql2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0057, code lost:
        if (r0 == false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0025 A[Catch: all -> 0x005d, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x000d, B:11:0x0025, B:13:0x002d, B:15:0x0035, B:18:0x003e), top: B:28:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean g() {
        /*
            r8 = this;
            monitor-enter(r8)
            io.appmetrica.analytics.impl.Ql r0 = r8.e()     // Catch: java.lang.Throwable -> L5d
            java.util.Set r1 = io.appmetrica.analytics.impl.Nl.f18655a     // Catch: java.lang.Throwable -> L5d
            boolean r1 = r0.f18850w     // Catch: java.lang.Throwable -> L5d
            r2 = 0
            r3 = 1
            if (r1 != 0) goto L22
            long r4 = r0.f18842o     // Catch: java.lang.Throwable -> L5d
            io.appmetrica.analytics.impl.om r1 = r0.A     // Catch: java.lang.Throwable -> L5d
            int r1 = r1.f20316a     // Catch: java.lang.Throwable -> L5d
            long r6 = (long) r1     // Catch: java.lang.Throwable -> L5d
            long r4 = r4 + r6
            io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider r1 = io.appmetrica.analytics.impl.Nl.f18656b     // Catch: java.lang.Throwable -> L5d
            long r6 = r1.currentTimeSeconds()     // Catch: java.lang.Throwable -> L5d
            int r1 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r1 <= 0) goto L20
            goto L22
        L20:
            r1 = r2
            goto L23
        L22:
            r1 = r3
        L23:
            if (r1 != 0) goto L5a
            java.lang.String r1 = r0.f18831d     // Catch: java.lang.Throwable -> L5d
            boolean r1 = io.appmetrica.analytics.impl.Nl.a(r1)     // Catch: java.lang.Throwable -> L5d
            if (r1 == 0) goto L3e
            java.lang.String r1 = r0.f18828a     // Catch: java.lang.Throwable -> L5d
            boolean r1 = io.appmetrica.analytics.impl.Nl.a(r1)     // Catch: java.lang.Throwable -> L5d
            if (r1 == 0) goto L3e
            java.lang.String r1 = r0.f18829b     // Catch: java.lang.Throwable -> L5d
            boolean r1 = io.appmetrica.analytics.impl.Nl.a(r1)     // Catch: java.lang.Throwable -> L5d
            if (r1 == 0) goto L3e
            r2 = r3
        L3e:
            r1 = r2 ^ 1
            io.appmetrica.analytics.impl.nm r2 = r8.f20138a     // Catch: java.lang.Throwable -> L5d
            io.appmetrica.analytics.impl.U3 r2 = r2.f20233k     // Catch: java.lang.Throwable -> L5d
            io.appmetrica.analytics.impl.Ml r4 = r8.d()     // Catch: java.lang.Throwable -> L5d
            java.util.Map r4 = r4.f18613h     // Catch: java.lang.Throwable -> L5d
            io.appmetrica.analytics.impl.nm r5 = r8.f20138a     // Catch: java.lang.Throwable -> L5d
            io.appmetrica.analytics.impl.R3 r5 = r5.f20232j     // Catch: java.lang.Throwable -> L5d
            r2.getClass()     // Catch: java.lang.Throwable -> L5d
            boolean r0 = io.appmetrica.analytics.impl.U3.a(r4, r0, r5)     // Catch: java.lang.Throwable -> L5d
            if (r1 != 0) goto L5a
            if (r0 != 0) goto L5a
            goto L5b
        L5a:
            r3 = r1
        L5b:
            monitor-exit(r8)
            return r3
        L5d:
            r0 = move-exception
            monitor-exit(r8)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1353mm.g():boolean");
    }

    public final synchronized void h() {
        this.f20139b = null;
    }

    public final C1212h5 a() {
        return this.f20138a.f20228f;
    }

    public final synchronized void b(Ql ql) {
        this.f20138a.f20234l.a(ql);
        Pl pl = this.f20138a.f20229g;
        pl.f18793b.a(ql.f18828a);
        pl.f18793b.b(ql.f18829b);
        pl.f18792a.save(ql.f18830c);
        this.f20138a.f20227e.a(ql);
    }

    public final synchronized boolean a(List<String> list, Map<String, String> map) {
        return !Nl.a(e(), list, map, new C1328lm(this));
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x003c, code lost:
        if (r5 == null) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final io.appmetrica.analytics.impl.Ql a(io.appmetrica.analytics.impl.Ol r10, io.appmetrica.analytics.impl.Ml r11, long r12) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1353mm.a(io.appmetrica.analytics.impl.Ol, io.appmetrica.analytics.impl.Ml, long):io.appmetrica.analytics.impl.Ql");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0035 A[Catch: all -> 0x0054, TRY_ENTER, TryCatch #1 {, blocks: (B:3:0x0001, B:5:0x0007, B:12:0x0035, B:14:0x003c), top: B:24:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(io.appmetrica.analytics.impl.Ol r4, io.appmetrica.analytics.impl.Ml r5, java.util.Map<java.lang.String, ? extends java.util.List<java.lang.String>> r6) {
        /*
            r3 = this;
            monitor-enter(r3)
            boolean r0 = io.appmetrica.analytics.impl.Rn.a(r6)     // Catch: java.lang.Throwable -> L54
            if (r0 != 0) goto L32
            java.lang.String r0 = "Date"
            java.lang.Object r6 = io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils.getFromMapIgnoreCase(r6, r0)     // Catch: java.lang.Throwable -> L54
            java.util.List r6 = (java.util.List) r6     // Catch: java.lang.Throwable -> L54
            boolean r0 = io.appmetrica.analytics.impl.Rn.a(r6)     // Catch: java.lang.Throwable -> L54
            if (r0 != 0) goto L32
            r0 = 0
            java.lang.Object r6 = r6.get(r0)     // Catch: java.lang.Throwable -> L32
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> L32
            java.text.SimpleDateFormat r0 = new java.text.SimpleDateFormat     // Catch: java.lang.Throwable -> L32
            java.lang.String r1 = "E, d MMM yyyy HH:mm:ss z"
            java.util.Locale r2 = java.util.Locale.US     // Catch: java.lang.Throwable -> L32
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> L32
            java.util.Date r6 = r0.parse(r6)     // Catch: java.lang.Throwable -> L32
            long r0 = r6.getTime()     // Catch: java.lang.Throwable -> L32
            java.lang.Long r6 = java.lang.Long.valueOf(r0)     // Catch: java.lang.Throwable -> L32
            goto L33
        L32:
            r6 = 0
        L33:
            if (r6 == 0) goto L3a
            long r0 = r6.longValue()     // Catch: java.lang.Throwable -> L54
            goto L3c
        L3a:
            r0 = 0
        L3c:
            java.lang.Long r6 = r4.f18727l     // Catch: java.lang.Throwable -> L54
            io.appmetrica.analytics.impl.Tj r2 = io.appmetrica.analytics.impl.Sj.f18943a     // Catch: java.lang.Throwable -> L54
            r2.a(r0, r6)     // Catch: java.lang.Throwable -> L54
            io.appmetrica.analytics.impl.Ql r4 = r3.a(r4, r5, r0)     // Catch: java.lang.Throwable -> L54
            r3.h()     // Catch: java.lang.Throwable -> L54
            r3.b(r4)     // Catch: java.lang.Throwable -> L54
            xc.t r5 = xc.t.f32733a     // Catch: java.lang.Throwable -> L54
            monitor-exit(r3)
            r3.a(r4)
            return
        L54:
            r4 = move-exception
            monitor-exit(r3)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: io.appmetrica.analytics.impl.C1353mm.a(io.appmetrica.analytics.impl.Ol, io.appmetrica.analytics.impl.Ml, java.util.Map):void");
    }

    public final void a(Ql ql) {
        ArrayList arrayList;
        C1378nm c1378nm = this.f20138a;
        C1452ql c1452ql = c1378nm.f20226d;
        String str = c1378nm.f20224b;
        synchronized (c1452ql.f20456a.f20607b) {
            C1501sl c1501sl = c1452ql.f20456a;
            c1501sl.f20608c = ql;
            Collection collection = (Collection) c1501sl.f20606a.f17991a.get(str);
            if (collection == null) {
                arrayList = new ArrayList();
            } else {
                arrayList = new ArrayList(collection);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((Bl) it.next()).a(ql);
        }
    }

    public final void a(EnumC1551ul enumC1551ul) {
        synchronized (this) {
            this.f20139b = null;
        }
        C1378nm c1378nm = this.f20138a;
        c1378nm.f20226d.a(c1378nm.f20228f.f19716a, enumC1551ul, e());
    }

    public final synchronized void a(Kl kl) {
        this.f20138a.f20234l.a(kl);
        Ml d10 = d();
        if (d10.f18616k) {
            List list = d10.f18615j;
            if (list != null && !list.isEmpty()) {
                if (!Rn.a(list, d10.f18610e)) {
                    Ql e10 = e();
                    Ul ul = e10.f18830c;
                    Tl a10 = ul.a(ul.f19083m);
                    String str = e10.f18828a;
                    String str2 = e10.f18829b;
                    a10.f19007g = list;
                    Ql ql = new Ql(str, str2, new Ul(a10));
                    b(ql);
                    a(ql);
                }
            }
            List list2 = d10.f18610e;
            if (list2 != null && (!list2.isEmpty())) {
                Ql e11 = e();
                Ul ul2 = e11.f18830c;
                Tl a11 = ul2.a(ul2.f19083m);
                String str3 = e11.f18828a;
                String str4 = e11.f18829b;
                a11.f19007g = null;
                Ql ql2 = new Ql(str3, str4, new Ul(a11));
                b(ql2);
                a(ql2);
            }
        }
    }
}
