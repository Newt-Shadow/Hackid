package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import io.appmetrica.analytics.coreutils.internal.time.TimeProvider;
import java.util.HashMap;
import java.util.Map;
/* renamed from: io.appmetrica.analytics.impl.v9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1564v9 {

    /* renamed from: a  reason: collision with root package name */
    public final Ue f20780a;

    /* renamed from: b  reason: collision with root package name */
    public final Cdo f20781b;

    /* renamed from: c  reason: collision with root package name */
    public final Ek f20782c;

    /* renamed from: d  reason: collision with root package name */
    public final W6 f20783d;

    /* renamed from: e  reason: collision with root package name */
    public final Q8 f20784e;

    /* renamed from: f  reason: collision with root package name */
    public final C1600wk f20785f;

    /* renamed from: g  reason: collision with root package name */
    public final C1082c0 f20786g;

    /* renamed from: h  reason: collision with root package name */
    public final C1091c9 f20787h;

    /* renamed from: i  reason: collision with root package name */
    public final C1436q5 f20788i;

    /* renamed from: j  reason: collision with root package name */
    public final TimeProvider f20789j;

    /* renamed from: k  reason: collision with root package name */
    public final int f20790k;

    /* renamed from: l  reason: collision with root package name */
    public long f20791l;

    /* renamed from: m  reason: collision with root package name */
    public int f20792m;

    public C1564v9(Ue ue2, Cdo cdo, Ek ek, W6 w62, C1082c0 c1082c0, Q8 q82, C1600wk c1600wk, int i10, C1436q5 c1436q5, C1091c9 c1091c9, SystemTimeProvider systemTimeProvider) {
        this.f20780a = ue2;
        this.f20781b = cdo;
        this.f20782c = ek;
        this.f20783d = w62;
        this.f20786g = c1082c0;
        this.f20784e = q82;
        this.f20785f = c1600wk;
        this.f20790k = i10;
        this.f20787h = c1091c9;
        this.f20789j = systemTimeProvider;
        this.f20788i = c1436q5;
        this.f20791l = ue2.h();
        this.f20792m = ue2.g();
    }

    public final void a(C1138e6 c1138e6, Gk gk) {
        Map map = c1138e6.f19586p;
        C1600wk c1600wk = this.f20785f;
        c1600wk.getClass();
        map.putAll(new HashMap(c1600wk.f20879b));
        c1138e6.c(this.f20780a.i());
        c1138e6.f19585o = Integer.valueOf(this.f20781b.b());
        C1057b0 a10 = this.f20786g.a();
        Q8 q82 = this.f20784e;
        q82.getClass();
        EnumC1367nb a11 = EnumC1367nb.a(c1138e6.f19574d);
        W6 w62 = this.f20783d;
        I8 a12 = ((P8) q82.f18813b.a(a11)).a(c1138e6);
        int i10 = c1138e6.f19574d;
        C1091c9 c1091c9 = this.f20787h;
        C1512t7 c1512t7 = new C1512t7(w62.f19150g, gk, i10, c1091c9, a12, (C1323lh) w62.f19151h.f20263k.a(), a10);
        Long valueOf = Long.valueOf(gk.f18279a);
        Ik ik = gk.f18282d;
        Long valueOf2 = Long.valueOf(gk.f18280b);
        EnumC1367nb a13 = EnumC1367nb.a(c1512t7.f20659h.f19574d);
        long j10 = 0;
        if (!H9.f18296g.contains(EnumC1367nb.a(i10))) {
            Cdo cdo = c1091c9.f19473b;
            synchronized (cdo) {
                j10 = cdo.f19546a.a().optLong("global_number", 0L);
            }
            c1091c9.f19473b.b(1 + j10);
        }
        w62.a(w62.f19155l.fromModel(new C1438q7(valueOf, ik, valueOf2, a13, Long.valueOf(j10), Long.valueOf(gk.f18281c), c1512t7.a())));
        this.f20788i.f20410a.h();
    }
}
