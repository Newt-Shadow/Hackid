package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.coreutils.internal.time.TimePassedChecker;
import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
/* loaded from: classes2.dex */
public final class Bc extends C1386o5 implements Ya, Xa {

    /* renamed from: v  reason: collision with root package name */
    public final C1272jg f17993v;

    /* renamed from: w  reason: collision with root package name */
    public final C1372ng f17994w;

    /* renamed from: x  reason: collision with root package name */
    public final P6 f17995x;

    /* renamed from: y  reason: collision with root package name */
    public final C1259j3 f17996y;

    public Bc(Context context, Ql ql, C1212h5 c1212h5, F4 f42, C1272jg c1272jg, P6 p62, AbstractC1336m5 abstractC1336m5) {
        this(context, c1212h5, ql, f42, new C1107d0(), new TimePassedChecker(), new Dc(context, c1212h5, f42, abstractC1336m5, ql, new C1592wc(p62), C1665za.j().w().d(), PackageManagerUtils.getAppVersionCodeInt(context), C1665za.j().w(), C1665za.j().k(), new C1418pc()), c1272jg, p62);
    }

    @Override // io.appmetrica.analytics.impl.C1386o5
    public final void B() {
        this.f17993v.a(this.f17994w);
    }

    public final boolean C() {
        boolean optBoolean;
        Cdo cdo = this.f20272t;
        synchronized (cdo) {
            optBoolean = cdo.f19546a.a().optBoolean("referrer_handled", false);
        }
        return optBoolean;
    }

    @Override // io.appmetrica.analytics.impl.C1386o5, io.appmetrica.analytics.impl.InterfaceC1068bb, io.appmetrica.analytics.impl.Qa
    public final synchronized void a(F4 f42) {
        super.a(f42);
        this.f17995x.a(f42.f18207i);
    }

    @Override // io.appmetrica.analytics.impl.C1386o5, io.appmetrica.analytics.impl.Qa
    public final CounterConfigurationReporterType c() {
        return CounterConfigurationReporterType.MAIN;
    }

    @Override // io.appmetrica.analytics.impl.C1386o5, io.appmetrica.analytics.impl.InterfaceC1068bb, io.appmetrica.analytics.impl.Bl
    public final void a(Ql ql) {
        super.a(ql);
        this.f17996y.a(ql);
    }

    @Override // io.appmetrica.analytics.impl.Xa
    public final void a() {
        Cdo cdo = this.f20272t;
        synchronized (cdo) {
            eo eoVar = cdo.f19546a;
            eoVar.a(eoVar.a().put("referrer_handled", true));
        }
    }

    public Bc(Context context, C1212h5 c1212h5, Ql ql, F4 f42, C1107d0 c1107d0, TimePassedChecker timePassedChecker, Dc dc2, C1272jg c1272jg, P6 p62) {
        super(context, c1212h5, c1107d0, timePassedChecker, dc2, f42);
        this.f17993v = c1272jg;
        C1241i9 j10 = j();
        j10.a(EnumC1367nb.EVENT_TYPE_REGULAR, new Fg(j10.b()));
        this.f17994w = dc2.b(this);
        this.f17995x = p62;
        C1259j3 a10 = dc2.a(this);
        this.f17996y = a10;
        a10.a(ql, f42.f18211m);
    }
}
