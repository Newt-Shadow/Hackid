package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.LinkedHashMap;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.t5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1510t5 {

    /* renamed from: a  reason: collision with root package name */
    public final C1460r5 f20636a;

    /* renamed from: b  reason: collision with root package name */
    public final C1485s5 f20637b;

    /* renamed from: c  reason: collision with root package name */
    protected final Context f20638c;

    /* renamed from: d  reason: collision with root package name */
    public final C1212h5 f20639d;

    /* renamed from: e  reason: collision with root package name */
    public final F4 f20640e;

    /* renamed from: f  reason: collision with root package name */
    public final AbstractC1336m5 f20641f;

    /* renamed from: g  reason: collision with root package name */
    protected final Ql f20642g;

    /* renamed from: h  reason: collision with root package name */
    public final InterfaceC1248ih f20643h;

    /* renamed from: i  reason: collision with root package name */
    public final Q8 f20644i;

    /* renamed from: j  reason: collision with root package name */
    public final ICommonExecutor f20645j;

    /* renamed from: k  reason: collision with root package name */
    public final Qb f20646k;

    /* renamed from: l  reason: collision with root package name */
    public final D9 f20647l;

    /* renamed from: m  reason: collision with root package name */
    public final int f20648m;

    public C1510t5(Context context, C1212h5 c1212h5, F4 f42, AbstractC1336m5 abstractC1336m5, Ql ql, InterfaceC1248ih interfaceC1248ih, ICommonExecutor iCommonExecutor, int i10, Qb qb2, D9 d92) {
        this(context, c1212h5, f42, abstractC1336m5, ql, interfaceC1248ih, iCommonExecutor, new Q8(), i10, new C1460r5(f42.f18199a), new C1485s5(context, c1212h5), qb2, d92);
    }

    public static C1241i9 c(C1386o5 c1386o5) {
        return new C1241i9(c1386o5);
    }

    public final V8 a() {
        Context context = this.f20638c;
        C1212h5 c1212h5 = this.f20639d;
        return new V8(new C1041a9(context, c1212h5), this.f20648m);
    }

    public final W6 b(C1386o5 c1386o5) {
        return new W6(c1386o5, C1288k7.a(this.f20638c).c(this.f20639d), new S6(c1386o5.c()), new C1462r7());
    }

    public final C1460r5 d() {
        return this.f20636a;
    }

    public final C1485s5 e() {
        return this.f20637b;
    }

    public final Cdo f() {
        Cdo cdo;
        ho c1366na;
        List k10;
        go B = C1665za.E.B();
        C1212h5 c1212h5 = this.f20639d;
        synchronized (B) {
            String valueOf = String.valueOf(c1212h5);
            LinkedHashMap linkedHashMap = B.f19695b;
            Object obj = linkedHashMap.get(valueOf);
            if (obj == null) {
                Ue ue2 = new Ue(C1288k7.a(B.f19694a).b(c1212h5));
                if (c1212h5.d()) {
                    String str = "appmetrica_vital_" + c1212h5.f19717b + ".dat";
                    k10 = yc.o.k(xc.q.a(str, new C1366na(B.f19694a, str)), xc.q.a("appmetrica_vital_main.dat", new C1366na(B.f19694a, "appmetrica_vital_main.dat")));
                    c1366na = new C1560v5(k10);
                } else {
                    c1366na = new C1366na(B.f19694a, "appmetrica_vital_" + c1212h5.f19717b + ".dat");
                }
                obj = new Cdo(ue2, c1366na, valueOf);
                linkedHashMap.put(valueOf, obj);
            }
            cdo = (Cdo) obj;
        }
        return cdo;
    }

    public C1510t5(Context context, C1212h5 c1212h5, F4 f42, AbstractC1336m5 abstractC1336m5, Ql ql, InterfaceC1248ih interfaceC1248ih, ICommonExecutor iCommonExecutor, Q8 q82, int i10, C1460r5 c1460r5, C1485s5 c1485s5, Qb qb2, D9 d92) {
        this.f20638c = context;
        this.f20639d = c1212h5;
        this.f20640e = f42;
        this.f20641f = abstractC1336m5;
        this.f20642g = ql;
        this.f20643h = interfaceC1248ih;
        this.f20645j = iCommonExecutor;
        this.f20644i = q82;
        this.f20648m = i10;
        this.f20636a = c1460r5;
        this.f20637b = c1485s5;
        this.f20646k = qb2;
        this.f20647l = d92;
    }

    public final C1600wk c() {
        return new C1600wk(this.f20638c, this.f20639d);
    }

    public final C1573vi d(C1386o5 c1386o5) {
        C1573vi c1573vi = new C1573vi(c1386o5, this.f20641f.a(), this.f20645j);
        Qb qb2 = this.f20646k;
        synchronized (qb2) {
            qb2.f18816c.add(c1573vi);
        }
        return c1573vi;
    }

    public final Og a(C1386o5 c1386o5) {
        return new Og(new C1273jh(c1386o5, this.f20643h, new U3()), this.f20642g, new C1199gh(this.f20640e));
    }

    public static Ek a(C1386o5 c1386o5, Cdo cdo, C1361n5 c1361n5) {
        Dk dk = new Dk(cdo);
        return new Ek(c1386o5, dk, c1361n5, new C1515ta(c1386o5, dk, new Hk(c1386o5.g(), C1515ta.f20667g), AbstractC1382o1.a(), new SystemTimeProvider()), new H2(c1386o5, dk, new Hk(c1386o5.g(), H2.f18288g), AbstractC1382o1.a(), new SystemTimeProvider()));
    }

    public static C1261j5 b() {
        return new C1261j5();
    }

    public final C1564v9 a(Ue ue2, Cdo cdo, Ek ek, W6 w62, C1082c0 c1082c0, C1600wk c1600wk, C1573vi c1573vi) {
        return new C1564v9(ue2, cdo, ek, w62, c1082c0, this.f20644i, c1600wk, this.f20648m, new C1436q5(c1573vi), new C1091c9(cdo, new C1116d9(cdo)), new SystemTimeProvider());
    }

    public static C1523ti a(C1386o5 c1386o5, C1241i9 c1241i9) {
        return new C1523ti(c1241i9, c1386o5);
    }

    public B9 a(G9 g92, W6 w62, Og og, F4 f42, C1212h5 c1212h5, Ue ue2) {
        return this.f20647l.a(g92, w62, og, f42, c1212h5, ue2).a();
    }

    public final E3 a(Ue ue2) {
        Context context = this.f20638c;
        return new E3(context, ue2, context.getPackageName(), new SafePackageManager());
    }
}
