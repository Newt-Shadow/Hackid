package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;
import io.appmetrica.analytics.coreapi.internal.identifiers.PlatformIdentifiers;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.coreutils.internal.reflection.ReflectionUtils;
import io.appmetrica.analytics.coreutils.internal.services.UtilityServiceProvider;
import io.appmetrica.analytics.coreutils.internal.services.WaitForActivationDelayBarrier;
import io.appmetrica.analytics.locationapi.internal.LocationClient;
/* renamed from: io.appmetrica.analytics.impl.za  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1665za {
    public static volatile C1665za E;
    public volatile Y9 C;

    /* renamed from: a  reason: collision with root package name */
    public final Context f21037a;

    /* renamed from: b  reason: collision with root package name */
    public volatile C1272jg f21038b;

    /* renamed from: c  reason: collision with root package name */
    public volatile P6 f21039c;

    /* renamed from: e  reason: collision with root package name */
    public volatile C1035a3 f21041e;

    /* renamed from: f  reason: collision with root package name */
    public volatile C1325lj f21042f;

    /* renamed from: g  reason: collision with root package name */
    public volatile O f21043g;

    /* renamed from: h  reason: collision with root package name */
    public volatile C1084c2 f21044h;

    /* renamed from: i  reason: collision with root package name */
    public volatile PlatformIdentifiers f21045i;

    /* renamed from: j  reason: collision with root package name */
    public volatile C1470rf f21046j;

    /* renamed from: k  reason: collision with root package name */
    public volatile R3 f21047k;

    /* renamed from: l  reason: collision with root package name */
    public volatile Xe f21048l;

    /* renamed from: m  reason: collision with root package name */
    public volatile go f21049m;

    /* renamed from: n  reason: collision with root package name */
    public volatile C1126dj f21050n;

    /* renamed from: o  reason: collision with root package name */
    public volatile Qb f21051o;

    /* renamed from: p  reason: collision with root package name */
    public C1327ll f21052p;

    /* renamed from: r  reason: collision with root package name */
    public volatile C1301kk f21054r;

    /* renamed from: w  reason: collision with root package name */
    public volatile Vb f21059w;

    /* renamed from: x  reason: collision with root package name */
    public volatile Um f21060x;

    /* renamed from: y  reason: collision with root package name */
    public volatile C1153el f21061y;

    /* renamed from: z  reason: collision with root package name */
    public volatile Bd f21062z;

    /* renamed from: q  reason: collision with root package name */
    public final C1640ya f21053q = new C1640ya();

    /* renamed from: s  reason: collision with root package name */
    public final C1145ed f21055s = new C1145ed();

    /* renamed from: t  reason: collision with root package name */
    public final C1195gd f21056t = new C1195gd();

    /* renamed from: u  reason: collision with root package name */
    public final Sl f21057u = new Sl();

    /* renamed from: v  reason: collision with root package name */
    public final Yj f21058v = new Yj();
    public final Pd A = new Pd();
    public final UtilityServiceProvider B = new UtilityServiceProvider();
    public final C1177fk D = new C1177fk();

    /* renamed from: d  reason: collision with root package name */
    public final C1127dk f21040d = new C1127dk();

    public C1665za(Context context) {
        this.f21037a = context;
    }

    public static void a(Context context) {
        if (E == null) {
            synchronized (C1665za.class) {
                if (E == null) {
                    E = new C1665za(context.getApplicationContext());
                }
            }
        }
    }

    public static C1665za j() {
        return E;
    }

    public final Um A() {
        Um um = this.f21060x;
        if (um == null) {
            synchronized (this) {
                um = this.f21060x;
                if (um == null) {
                    um = new Um(this.f21037a);
                    this.f21060x = um;
                }
            }
        }
        return um;
    }

    public final synchronized go B() {
        if (this.f21049m == null) {
            this.f21049m = new go(this.f21037a);
        }
        return this.f21049m;
    }

    public final void C() {
        if (this.f21046j == null) {
            synchronized (this) {
                if (this.f21046j == null) {
                    Cm a10 = Bm.a(C1072bf.class);
                    Context context = this.f21037a;
                    ProtobufStateStorage<Object> a11 = a10.a(context, a10.c(context));
                    C1072bf c1072bf = (C1072bf) a11.read();
                    this.f21046j = new C1470rf(this.f21037a, a11, new Cif(), new Ze(c1072bf), new C1446qf(), new C1222hf(this.f21037a), new C1346mf(j().x()), new C1097cf(), c1072bf, "[PreloadInfoStorage]");
                }
            }
        }
    }

    public final O b() {
        O o10 = this.f21043g;
        if (o10 == null) {
            synchronized (this) {
                o10 = this.f21043g;
                if (o10 == null) {
                    o10 = new O(this.f21037a, this.f21040d.a(), this.f21057u.b());
                    this.f21057u.a(o10);
                    this.f21043g = o10;
                }
            }
        }
        return o10;
    }

    public final C1084c2 c() {
        C1084c2 c1084c2 = this.f21044h;
        if (c1084c2 == null) {
            synchronized (this) {
                c1084c2 = this.f21044h;
                if (c1084c2 == null) {
                    c1084c2 = new C1084c2(this.f21037a, AbstractC1109d2.a());
                    this.f21044h = c1084c2;
                }
            }
        }
        return c1084c2;
    }

    public final C1234i2 d() {
        return k().f18815b;
    }

    public final R3 e() {
        if (this.f21047k == null) {
            synchronized (this) {
                if (this.f21047k == null) {
                    Cm a10 = Bm.a(K3.class);
                    Context context = this.f21037a;
                    ProtobufStateStorage<Object> a11 = a10.a(context, a10.c(context));
                    this.f21047k = new R3(this.f21037a, a11, new S3(), new F3(), new V3(), new Si(this.f21037a), new T3(x()), new G3(), (K3) a11.read(), "[ClidsInfoStorage]");
                }
            }
        }
        return this.f21047k;
    }

    public final Context f() {
        return this.f21037a;
    }

    public final P6 g() {
        if (this.f21039c == null) {
            synchronized (this) {
                if (this.f21039c == null) {
                    this.f21039c = new P6(new O6(x()));
                }
            }
        }
        return this.f21039c;
    }

    public final Y9 h() {
        Y9 y92 = this.C;
        if (y92 == null) {
            synchronized (this) {
                y92 = this.C;
                if (y92 == null) {
                    y92 = new Y9(this.f21037a);
                    this.C = y92;
                }
            }
        }
        return y92;
    }

    public final PermissionExtractor i() {
        C1153el c1153el = this.f21061y;
        if (c1153el != null) {
            return c1153el;
        }
        synchronized (this) {
            C1153el c1153el2 = this.f21061y;
            if (c1153el2 != null) {
                return c1153el2;
            }
            C1153el c1153el3 = new C1153el(o().f19989c.getAskForPermissionStrategy());
            this.f21061y = c1153el3;
            return c1153el3;
        }
    }

    public final Qb k() {
        Qb qb2 = this.f21051o;
        if (qb2 == null) {
            synchronized (this) {
                qb2 = this.f21051o;
                if (qb2 == null) {
                    qb2 = new Qb(new X2(this.f21037a, this.f21040d.a()), new C1234i2());
                    this.f21051o = qb2;
                }
            }
        }
        return qb2;
    }

    public final Vb l() {
        Vb vb2 = this.f21059w;
        if (vb2 == null) {
            synchronized (this) {
                vb2 = this.f21059w;
                if (vb2 == null) {
                    Context context = this.f21037a;
                    LocationClient locationClient = (LocationClient) ReflectionUtils.loadAndInstantiateClassWithDefaultConstructor("io.appmetrica.analytics.location.internal.LocationClientImpl", LocationClient.class);
                    if (locationClient == null) {
                        vb2 = new Xb();
                    } else {
                        vb2 = new Wb(context, new C1119dc(), locationClient);
                    }
                    this.f21059w = vb2;
                }
            }
        }
        return vb2;
    }

    public final Vb m() {
        return l();
    }

    public final C1195gd n() {
        return this.f21056t;
    }

    public final C1301kk o() {
        C1301kk c1301kk = this.f21054r;
        if (c1301kk == null) {
            synchronized (this) {
                c1301kk = this.f21054r;
                if (c1301kk == null) {
                    c1301kk = new C1301kk();
                    this.f21054r = c1301kk;
                }
            }
        }
        return c1301kk;
    }

    public final Bd p() {
        Bd bd2 = this.f21062z;
        if (bd2 == null) {
            synchronized (this) {
                bd2 = this.f21062z;
                if (bd2 == null) {
                    bd2 = new Bd(this.f21037a, new Tn());
                    this.f21062z = bd2;
                }
            }
        }
        return bd2;
    }

    public final Pd q() {
        return this.A;
    }

    public final PlatformIdentifiers r() {
        PlatformIdentifiers platformIdentifiers = this.f21045i;
        if (platformIdentifiers == null) {
            synchronized (this) {
                platformIdentifiers = this.f21045i;
                if (platformIdentifiers == null) {
                    platformIdentifiers = new PlatformIdentifiers(b(), c());
                    this.f21045i = platformIdentifiers;
                }
            }
        }
        return platformIdentifiers;
    }

    public final C1470rf s() {
        C();
        return this.f21046j;
    }

    public final C1272jg t() {
        if (this.f21038b == null) {
            synchronized (this) {
                if (this.f21038b == null) {
                    this.f21038b = new C1272jg(this.f21037a, E.B().f19696c);
                }
            }
        }
        return this.f21038b;
    }

    public final C1126dj u() {
        C1126dj c1126dj = this.f21050n;
        if (c1126dj == null) {
            synchronized (this) {
                c1126dj = this.f21050n;
                if (c1126dj == null) {
                    c1126dj = new C1126dj(this.f21037a);
                    this.f21050n = c1126dj;
                }
            }
        }
        return c1126dj;
    }

    public final synchronized C1325lj v() {
        return this.f21042f;
    }

    public final C1127dk w() {
        return this.f21040d;
    }

    public final Xe x() {
        if (this.f21048l == null) {
            synchronized (this) {
                if (this.f21048l == null) {
                    this.f21048l = new Xe(C1288k7.a(this.f21037a).c());
                }
            }
        }
        return this.f21048l;
    }

    public final synchronized T2 y() {
        if (this.f21052p == null) {
            C1327ll c1327ll = new C1327ll(this.f21037a);
            this.f21052p = c1327ll;
            this.f21057u.a(c1327ll);
        }
        return this.f21052p;
    }

    public final Sl z() {
        return this.f21057u;
    }

    public final WaitForActivationDelayBarrier a() {
        return this.B.getActivationBarrier();
    }
}
