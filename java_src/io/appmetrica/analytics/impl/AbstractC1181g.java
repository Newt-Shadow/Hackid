package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.coreutils.internal.time.SystemTimeProvider;
import java.util.concurrent.TimeUnit;
/* renamed from: io.appmetrica.analytics.impl.g  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC1181g {

    /* renamed from: a  reason: collision with root package name */
    public final C1386o5 f19657a;

    /* renamed from: b  reason: collision with root package name */
    public final Dk f19658b;

    /* renamed from: c  reason: collision with root package name */
    public final Hk f19659c;

    /* renamed from: d  reason: collision with root package name */
    public final Ck f19660d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC1118db f19661e;

    /* renamed from: f  reason: collision with root package name */
    public final SystemTimeProvider f19662f;

    public AbstractC1181g(C1386o5 c1386o5, Dk dk, Hk hk, Ck ck, InterfaceC1118db interfaceC1118db, SystemTimeProvider systemTimeProvider) {
        this.f19657a = c1386o5;
        this.f19658b = dk;
        this.f19659c = hk;
        this.f19660d = ck;
        this.f19661e = interfaceC1118db;
        this.f19662f = systemTimeProvider;
    }

    public final /* bridge */ C1451qk a(Object obj) {
        return a((C1475rk) obj);
    }

    public final C1451qk b() {
        if (this.f19659c.h()) {
            return new C1451qk(this.f19657a, this.f19659c, a(), this.f19662f);
        }
        return null;
    }

    public final C1451qk a(C1475rk c1475rk) {
        if (this.f19659c.h()) {
            this.f19661e.reportEvent("create session with non-empty storage");
        }
        C1386o5 c1386o5 = this.f19657a;
        Hk hk = this.f19659c;
        long a10 = this.f19658b.a();
        Hk hk2 = this.f19659c;
        hk2.a(Hk.f18319f, Long.valueOf(a10));
        hk2.a(Hk.f18317d, Long.valueOf(c1475rk.f20551a));
        hk2.a(Hk.f18321h, Long.valueOf(c1475rk.f20551a));
        hk2.a(Hk.f18320g, 0L);
        hk2.a(Hk.f18322i, Boolean.TRUE);
        hk2.b();
        this.f19657a.f20257e.a(a10, this.f19660d.f18062a, TimeUnit.MILLISECONDS.toSeconds(c1475rk.f20552b));
        return new C1451qk(c1386o5, hk, a(), new SystemTimeProvider());
    }

    public final C1525tk a() {
        C1500sk c1500sk = new C1500sk(this.f19660d);
        c1500sk.f20604g = this.f19659c.i();
        c1500sk.f20603f = this.f19659c.f18325c.a(Hk.f18320g);
        c1500sk.f20601d = this.f19659c.f18325c.a(Hk.f18321h);
        c1500sk.f20600c = this.f19659c.f18325c.a(Hk.f18319f);
        c1500sk.f20605h = this.f19659c.f18325c.a(Hk.f18317d);
        c1500sk.f20598a = this.f19659c.f18325c.a(Hk.f18318e);
        return new C1525tk(c1500sk);
    }
}
