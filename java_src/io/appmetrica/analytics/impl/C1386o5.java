package io.appmetrica.analytics.impl;

import android.content.Context;
import android.text.TextUtils;
import io.appmetrica.analytics.AppMetrica;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.List;
/* renamed from: io.appmetrica.analytics.impl.o5  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1386o5 implements InterfaceC1068bb, Qa, InterfaceC1298kh {

    /* renamed from: a  reason: collision with root package name */
    public final Context f20253a;

    /* renamed from: b  reason: collision with root package name */
    public final C1212h5 f20254b;

    /* renamed from: c  reason: collision with root package name */
    public final Ue f20255c;

    /* renamed from: d  reason: collision with root package name */
    public final Xe f20256d;

    /* renamed from: e  reason: collision with root package name */
    public final W6 f20257e;

    /* renamed from: f  reason: collision with root package name */
    public final C1523ti f20258f;

    /* renamed from: g  reason: collision with root package name */
    public final C1241i9 f20259g;

    /* renamed from: h  reason: collision with root package name */
    public final C1082c0 f20260h;

    /* renamed from: i  reason: collision with root package name */
    public final C1107d0 f20261i;

    /* renamed from: j  reason: collision with root package name */
    public final Ek f20262j;

    /* renamed from: k  reason: collision with root package name */
    public final Og f20263k;

    /* renamed from: l  reason: collision with root package name */
    public final V8 f20264l;

    /* renamed from: m  reason: collision with root package name */
    public final PublicLogger f20265m;

    /* renamed from: n  reason: collision with root package name */
    public final C1564v9 f20266n;

    /* renamed from: o  reason: collision with root package name */
    public final C1261j5 f20267o;

    /* renamed from: p  reason: collision with root package name */
    public final B9 f20268p;

    /* renamed from: q  reason: collision with root package name */
    public final E3 f20269q;

    /* renamed from: r  reason: collision with root package name */
    public final TimePassedChecker f20270r;

    /* renamed from: s  reason: collision with root package name */
    public final C1470rf f20271s;

    /* renamed from: t  reason: collision with root package name */
    public final Cdo f20272t;

    /* renamed from: u  reason: collision with root package name */
    public final C1600wk f20273u;

    public C1386o5(Context context, Ql ql, C1212h5 c1212h5, F4 f42, InterfaceC1248ih interfaceC1248ih, AbstractC1336m5 abstractC1336m5) {
        this(context, c1212h5, new C1107d0(), new TimePassedChecker(), new C1510t5(context, c1212h5, f42, abstractC1336m5, ql, interfaceC1248ih, C1665za.j().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), C1665za.j().k(), new C1187g5()), f42);
    }

    public final boolean A() {
        Ql ql;
        boolean z10;
        C1470rf c1470rf = this.f20271s;
        c1470rf.f19286h.a(c1470rf.f19279a);
        boolean z11 = ((C1396of) c1470rf.c()).f20301d;
        Og og = this.f20263k;
        synchronized (og) {
            ql = og.f18077c.f19374a;
        }
        boolean z12 = ql.f18844q;
        if (z11 && z12) {
            z10 = true;
        } else {
            z10 = false;
        }
        return !z10;
    }

    public void B() {
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1068bb, io.appmetrica.analytics.impl.Bl
    public final void a(EnumC1551ul enumC1551ul, Ql ql) {
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final C1212h5 b() {
        return this.f20254b;
    }

    public CounterConfigurationReporterType c() {
        return CounterConfigurationReporterType.MANUAL;
    }

    public final void d() {
        C1082c0 c1082c0 = this.f20260h;
        synchronized (c1082c0) {
            c1082c0.f19448a = new Rc();
        }
        this.f20261i.a(this.f20260h.a(), this.f20255c);
    }

    public final synchronized void e() {
        ((C1660z5) this.f20268p).d();
    }

    public final E3 f() {
        return this.f20269q;
    }

    public final Ue g() {
        return this.f20255c;
    }

    @Override // io.appmetrica.analytics.impl.Qa
    public final Context getContext() {
        return this.f20253a;
    }

    public final W6 h() {
        return this.f20257e;
    }

    public final V8 i() {
        return this.f20264l;
    }

    public final C1241i9 j() {
        return this.f20259g;
    }

    public final C1564v9 k() {
        return this.f20266n;
    }

    public final B9 l() {
        return this.f20268p;
    }

    public final C1323lh m() {
        return (C1323lh) this.f20263k.a();
    }

    public final String n() {
        return this.f20255c.i();
    }

    public final PublicLogger o() {
        return this.f20265m;
    }

    public final Xe p() {
        return this.f20256d;
    }

    public final C1600wk q() {
        return this.f20273u;
    }

    public final Ek r() {
        return this.f20262j;
    }

    public final Ql s() {
        Ql ql;
        Og og = this.f20263k;
        synchronized (og) {
            ql = og.f18077c.f19374a;
        }
        return ql;
    }

    public final Cdo t() {
        return this.f20272t;
    }

    public final void u() {
        C1564v9 c1564v9 = this.f20266n;
        int i10 = c1564v9.f20790k;
        c1564v9.f20792m = i10;
        c1564v9.f20780a.a(i10).b();
    }

    public final void v() {
        int optInt;
        List<AbstractC1286k5> b10;
        int libraryApiLevel = AppMetrica.getLibraryApiLevel();
        Cdo cdo = this.f20272t;
        synchronized (cdo) {
            optInt = cdo.f19546a.a().optInt("last_migration_api_level", 0);
        }
        Integer valueOf = Integer.valueOf(optInt);
        if (valueOf.intValue() < libraryApiLevel) {
            this.f20267o.getClass();
            b10 = yc.n.b(new C1311l5(this));
            int intValue = valueOf.intValue();
            for (AbstractC1286k5 abstractC1286k5 : b10) {
                abstractC1286k5.a(intValue);
            }
            this.f20272t.b(libraryApiLevel);
        }
    }

    public final boolean w() {
        C1323lh c1323lh = (C1323lh) this.f20263k.a();
        if (c1323lh.f20047n && c1323lh.isIdentifiersValid() && this.f20270r.didTimePassSeconds(this.f20266n.f20791l, c1323lh.f20052s, "need to check permissions")) {
            return true;
        }
        return false;
    }

    public final boolean x() {
        C1564v9 c1564v9 = this.f20266n;
        if (c1564v9.f20792m < c1564v9.f20790k && ((C1323lh) this.f20263k.a()).f20048o && ((C1323lh) this.f20263k.a()).isIdentifiersValid()) {
            return true;
        }
        return false;
    }

    public final void y() {
        Og og = this.f20263k;
        synchronized (og) {
            og.f18075a = null;
        }
    }

    public final boolean z() {
        C1323lh c1323lh = (C1323lh) this.f20263k.a();
        if (c1323lh.f20047n && this.f20270r.didTimePassSeconds(this.f20266n.f20791l, c1323lh.f20053t, "should force send permissions")) {
            return true;
        }
        return false;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1068bb
    public final void a(C1138e6 c1138e6) {
        String a10 = Mf.a("Event received on service", EnumC1367nb.a(c1138e6.f19574d), c1138e6.getName(), c1138e6.getValue());
        if (a10 != null) {
            this.f20265m.info(a10, new Object[0]);
        }
        String str = this.f20254b.f19717b;
        if (TextUtils.isEmpty(str) || "-1".equals(str)) {
            return;
        }
        this.f20258f.a(c1138e6, new C1498si());
    }

    public final void b(C1138e6 c1138e6) {
        this.f20260h.a(c1138e6.f19576f);
        C1057b0 a10 = this.f20260h.a();
        C1107d0 c1107d0 = this.f20261i;
        Ue ue2 = this.f20255c;
        synchronized (c1107d0) {
            if (a10.f19416b > ue2.d().f19416b) {
                ue2.a(a10).b();
                this.f20265m.info("Save new app environment for %s. Value: %s", this.f20254b, a10.f19415a);
            }
        }
    }

    public C1386o5(Context context, C1212h5 c1212h5, C1107d0 c1107d0, TimePassedChecker timePassedChecker, C1510t5 c1510t5, F4 f42) {
        this.f20253a = context.getApplicationContext();
        this.f20254b = c1212h5;
        this.f20261i = c1107d0;
        this.f20270r = timePassedChecker;
        Cdo f10 = c1510t5.f();
        this.f20272t = f10;
        this.f20271s = C1665za.j().s();
        Og a10 = c1510t5.a(this);
        this.f20263k = a10;
        PublicLogger a11 = c1510t5.d().a();
        this.f20265m = a11;
        Ue a12 = c1510t5.e().a();
        this.f20255c = a12;
        this.f20256d = C1665za.j().x();
        C1082c0 a13 = c1107d0.a(c1212h5, a11, a12);
        this.f20260h = a13;
        this.f20264l = c1510t5.a();
        W6 b10 = c1510t5.b(this);
        this.f20257e = b10;
        C1573vi d10 = c1510t5.d(this);
        this.f20267o = C1510t5.b();
        v();
        Ek a14 = C1510t5.a(this, f10, new C1361n5(this));
        this.f20262j = a14;
        a11.info("Read app environment for component %s. Value: %s", c1212h5.toString(), a13.a().f19415a);
        C1600wk c10 = c1510t5.c();
        this.f20273u = c10;
        this.f20266n = c1510t5.a(a12, f10, a14, b10, a13, c10, d10);
        C1241i9 c11 = C1510t5.c(this);
        this.f20259g = c11;
        this.f20258f = C1510t5.a(this, c11);
        this.f20269q = c1510t5.a(a12);
        this.f20268p = c1510t5.a(d10, b10, a10, f42, c1212h5, a12);
        b10.e();
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1068bb, io.appmetrica.analytics.impl.Qa
    public synchronized void a(F4 f42) {
        this.f20263k.a(f42);
        if (Boolean.TRUE.equals(f42.f18206h)) {
            this.f20265m.setEnabled(true);
        } else {
            if (Boolean.FALSE.equals(f42.f18206h)) {
                this.f20265m.setEnabled(false);
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1068bb, io.appmetrica.analytics.impl.Bl
    public synchronized void a(Ql ql) {
        this.f20263k.a(ql);
        ((C1660z5) this.f20268p).e();
    }

    public final void a(String str) {
        this.f20255c.j(str).b();
    }
}
