package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class Ek {

    /* renamed from: a  reason: collision with root package name */
    public final C1386o5 f18186a;

    /* renamed from: b  reason: collision with root package name */
    public final Dk f18187b;

    /* renamed from: c  reason: collision with root package name */
    public final C1361n5 f18188c;

    /* renamed from: d  reason: collision with root package name */
    public final AbstractC1181g f18189d;

    /* renamed from: e  reason: collision with root package name */
    public final AbstractC1181g f18190e;

    /* renamed from: f  reason: collision with root package name */
    public C1451qk f18191f;

    /* renamed from: g  reason: collision with root package name */
    public int f18192g = 0;

    public Ek(C1386o5 c1386o5, Dk dk, C1361n5 c1361n5, C1515ta c1515ta, H2 h22) {
        this.f18186a = c1386o5;
        this.f18188c = c1361n5;
        this.f18189d = c1515ta;
        this.f18190e = h22;
        this.f18187b = dk;
    }

    public final synchronized long a() {
        C1451qk c1451qk;
        c1451qk = this.f18191f;
        return c1451qk == null ? 10000000000L : c1451qk.f20448d - 1;
    }

    public final synchronized C1451qk b(C1138e6 c1138e6) {
        if (this.f18192g == 0) {
            C1451qk b10 = this.f18189d.b();
            if (b10 != null) {
                if (b10.a(c1138e6.f19579i)) {
                    this.f18191f = b10;
                    this.f18192g = 3;
                } else {
                    a(b10, c1138e6);
                }
            }
            C1451qk b11 = this.f18190e.b();
            if (b11 != null) {
                if (b11.a(c1138e6.f19579i)) {
                    this.f18191f = b11;
                    this.f18192g = 2;
                } else {
                    a(b11, c1138e6);
                }
            }
            this.f18191f = null;
            this.f18192g = 1;
        }
        if (this.f18192g != 1) {
            C1451qk c1451qk = this.f18191f;
            if (c1451qk != null) {
                if (!c1451qk.a(c1138e6.f19579i)) {
                    a(c1451qk, c1138e6);
                }
            }
            this.f18192g = 1;
            this.f18191f = null;
        }
        int a10 = U7.a(this.f18192g);
        if (a10 != 1) {
            if (a10 != 2) {
                this.f18186a.f20265m.info("Start background session", new Object[0]);
                this.f18192g = 2;
                long j10 = c1138e6.f19579i;
                AbstractC1181g abstractC1181g = this.f18190e;
                C1475rk c1475rk = new C1475rk(j10, c1138e6.f19580j);
                abstractC1181g.getClass();
                C1451qk a11 = abstractC1181g.a(c1475rk);
                if (this.f18186a.f20272t.c()) {
                    C1361n5 c1361n5 = this.f18188c;
                    c1361n5.f20159a.f20266n.a(C1138e6.a(c1138e6, C1665za.E.h()), a(a11, c1138e6.f19579i));
                } else {
                    int i10 = c1138e6.f19574d;
                    EnumC1367nb enumC1367nb = EnumC1367nb.EVENT_TYPE_UNDEFINED;
                    if (i10 == 6145) {
                        C1361n5 c1361n52 = this.f18188c;
                        c1361n52.f20159a.f20266n.a(c1138e6, a(a11, j10));
                        C1361n5 c1361n53 = this.f18188c;
                        c1361n53.f20159a.f20266n.a(C1138e6.a(c1138e6, C1665za.E.h()), a(a11, j10));
                    }
                }
                this.f18191f = a11;
                return a11;
            }
            return this.f18191f;
        }
        C1451qk c1451qk2 = this.f18191f;
        long j11 = c1138e6.f19579i;
        c1451qk2.f20453i = j11;
        Hk hk = c1451qk2.f20446b;
        hk.a(Hk.f18317d, Long.valueOf(j11));
        hk.b();
        return this.f18191f;
    }

    public final synchronized void c(C1138e6 c1138e6) {
        if (this.f18192g == 0) {
            C1451qk b10 = this.f18189d.b();
            if (b10 != null) {
                if (b10.a(c1138e6.f19579i)) {
                    this.f18191f = b10;
                    this.f18192g = 3;
                } else {
                    a(b10, c1138e6);
                }
            }
            C1451qk b11 = this.f18190e.b();
            if (b11 != null) {
                if (b11.a(c1138e6.f19579i)) {
                    this.f18191f = b11;
                    this.f18192g = 2;
                } else {
                    a(b11, c1138e6);
                }
            }
            this.f18191f = null;
            this.f18192g = 1;
        }
        int a10 = U7.a(this.f18192g);
        if (a10 != 0) {
            if (a10 != 1) {
                if (a10 == 2) {
                    C1451qk c1451qk = this.f18191f;
                    if (c1451qk != null) {
                        if (c1451qk.a(c1138e6.f19579i)) {
                            C1451qk c1451qk2 = this.f18191f;
                            long j10 = c1138e6.f19579i;
                            c1451qk2.f20453i = j10;
                            Hk hk = c1451qk2.f20446b;
                            hk.a(Hk.f18317d, Long.valueOf(j10));
                            hk.b();
                        } else {
                            a(c1451qk, c1138e6);
                        }
                    }
                    this.f18191f = a(c1138e6);
                }
            } else {
                a(this.f18191f, c1138e6);
                this.f18191f = a(c1138e6);
            }
        } else {
            this.f18191f = a(c1138e6);
        }
    }

    public final C1451qk a(C1138e6 c1138e6) {
        this.f18186a.f20265m.info("Start foreground session", new Object[0]);
        long j10 = c1138e6.f19579i;
        AbstractC1181g abstractC1181g = this.f18189d;
        C1475rk c1475rk = new C1475rk(j10, c1138e6.f19580j);
        abstractC1181g.getClass();
        C1451qk a10 = abstractC1181g.a(c1475rk);
        this.f18192g = 3;
        ((C1660z5) this.f18186a.f20268p).e();
        C1361n5 c1361n5 = this.f18188c;
        c1361n5.f20159a.f20266n.a(C1138e6.a(c1138e6, C1665za.E.h()), a(a10, j10));
        return a10;
    }

    public final void a(C1451qk c1451qk, C1138e6 c1138e6) {
        if (c1451qk.f20451g && c1451qk.f20448d > 0) {
            C1361n5 c1361n5 = this.f18188c;
            C1138e6 a10 = C1138e6.a(c1138e6, EnumC1367nb.EVENT_TYPE_ALIVE);
            Gk gk = new Gk();
            gk.f18279a = c1451qk.f20448d;
            gk.f18282d = c1451qk.f20447c.f20679a;
            long andIncrement = c1451qk.f20450f.getAndIncrement();
            Hk hk = c1451qk.f20446b;
            hk.a(Hk.f18320g, Long.valueOf(c1451qk.f20450f.get()));
            hk.b();
            gk.f18280b = andIncrement;
            gk.f18281c = TimeUnit.MILLISECONDS.toSeconds(Math.max(c1451qk.f20453i - c1451qk.f20449e, c1451qk.f20454j));
            c1361n5.f20159a.f20266n.a(a10, gk);
            if (c1451qk.f20451g) {
                c1451qk.f20451g = false;
                Hk hk2 = c1451qk.f20446b;
                hk2.a(Hk.f18322i, Boolean.FALSE);
                hk2.b();
            }
        }
        PublicLogger publicLogger = this.f18186a.f20265m;
        int ordinal = c1451qk.f20447c.f20679a.ordinal();
        if (ordinal == 0) {
            publicLogger.info("Finish foreground session", new Object[0]);
        } else if (ordinal == 1) {
            publicLogger.info("Finish background session", new Object[0]);
        }
        synchronized (c1451qk) {
            Hk hk3 = c1451qk.f20446b;
            hk3.getClass();
            hk3.f18325c = new C1466rb();
            hk3.b();
            c1451qk.f20452h = null;
        }
    }

    public static Gk a(C1451qk c1451qk, long j10) {
        Gk gk = new Gk();
        gk.f18279a = c1451qk.f20448d;
        long andIncrement = c1451qk.f20450f.getAndIncrement();
        Hk hk = c1451qk.f20446b;
        hk.a(Hk.f18320g, Long.valueOf(c1451qk.f20450f.get()));
        hk.b();
        gk.f18280b = andIncrement;
        Hk hk2 = c1451qk.f20446b;
        long j11 = j10 - c1451qk.f20449e;
        c1451qk.f20454j = j11;
        hk2.a(Hk.f18318e, Long.valueOf(j11));
        gk.f18281c = TimeUnit.MILLISECONDS.toSeconds(c1451qk.f20454j);
        gk.f18282d = c1451qk.f20447c.f20679a;
        return gk;
    }
}
