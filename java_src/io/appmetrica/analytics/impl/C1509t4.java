package io.appmetrica.analytics.impl;

import android.content.Context;
/* renamed from: io.appmetrica.analytics.impl.t4  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1509t4 {

    /* renamed from: s  reason: collision with root package name */
    public static volatile C1509t4 f20617s;

    /* renamed from: a  reason: collision with root package name */
    public final C1467rc f20618a;

    /* renamed from: b  reason: collision with root package name */
    public final P7 f20619b;

    /* renamed from: c  reason: collision with root package name */
    public final C1260j4 f20620c;

    /* renamed from: d  reason: collision with root package name */
    public final K1 f20621d;

    /* renamed from: e  reason: collision with root package name */
    public final C1355n f20622e;

    /* renamed from: f  reason: collision with root package name */
    public final Jk f20623f;

    /* renamed from: g  reason: collision with root package name */
    public final T5 f20624g;

    /* renamed from: h  reason: collision with root package name */
    public final C1305l f20625h;

    /* renamed from: i  reason: collision with root package name */
    public final Tm f20626i;

    /* renamed from: j  reason: collision with root package name */
    public Bd f20627j;

    /* renamed from: k  reason: collision with root package name */
    public final C1256j0 f20628k;

    /* renamed from: l  reason: collision with root package name */
    public volatile C1435q4 f20629l;

    /* renamed from: m  reason: collision with root package name */
    public final C1145ed f20630m;

    /* renamed from: n  reason: collision with root package name */
    public volatile Te f20631n;

    /* renamed from: o  reason: collision with root package name */
    public C1051aj f20632o;

    /* renamed from: p  reason: collision with root package name */
    public final C1406p0 f20633p;

    /* renamed from: q  reason: collision with root package name */
    public final C1391oa f20634q;

    /* renamed from: r  reason: collision with root package name */
    public volatile U f20635r;

    public C1509t4(C1467rc c1467rc, C1355n c1355n, C1260j4 c1260j4) {
        this(c1467rc, c1355n, c1260j4, new C1305l(c1355n));
    }

    public static C1509t4 j() {
        if (f20617s == null) {
            synchronized (C1509t4.class) {
                if (f20617s == null) {
                    f20617s = new C1509t4(new C1467rc(), new C1355n(), new C1260j4());
                }
            }
        }
        return f20617s;
    }

    public final C1355n a() {
        return this.f20622e;
    }

    public final Te b(Context context) {
        Te te2 = this.f20631n;
        if (te2 == null) {
            synchronized (this) {
                te2 = this.f20631n;
                if (te2 == null) {
                    te2 = new Te(C1288k7.a(context).a());
                    this.f20631n = te2;
                }
            }
        }
        return te2;
    }

    public final C1256j0 c() {
        return this.f20628k;
    }

    public final C1406p0 d() {
        return this.f20633p;
    }

    public final K1 e() {
        return this.f20621d;
    }

    public final C1260j4 f() {
        return this.f20620c;
    }

    public final T5 g() {
        return this.f20624g;
    }

    public final P7 h() {
        return this.f20619b;
    }

    public final C1391oa i() {
        return this.f20634q;
    }

    public final C1467rc k() {
        return this.f20618a;
    }

    public final C1435q4 l() {
        C1435q4 c1435q4 = this.f20629l;
        if (c1435q4 == null) {
            synchronized (this) {
                c1435q4 = this.f20629l;
                if (c1435q4 == null) {
                    c1435q4 = new C1435q4();
                    this.f20629l = c1435q4;
                }
            }
        }
        return c1435q4;
    }

    public final C1467rc m() {
        return this.f20618a;
    }

    public final Jk n() {
        return this.f20623f;
    }

    public C1509t4(C1467rc c1467rc, C1355n c1355n, C1260j4 c1260j4, C1305l c1305l) {
        this(c1467rc, new P7(), c1260j4, c1305l, new K1(), c1355n, new Jk(c1355n, c1305l), new T5(c1355n), new Tm(), new C1256j0());
    }

    public final synchronized Bd a(Context context) {
        if (this.f20627j == null) {
            this.f20627j = new Bd(context, new Sn());
        }
        return this.f20627j;
    }

    public C1509t4(C1467rc c1467rc, P7 p72, C1260j4 c1260j4, C1305l c1305l, K1 k12, C1355n c1355n, Jk jk, T5 t52, Tm tm, C1256j0 c1256j0) {
        this.f20630m = new C1145ed();
        this.f20633p = new C1406p0();
        this.f20634q = new C1391oa();
        new O7();
        this.f20618a = c1467rc;
        this.f20619b = p72;
        this.f20620c = c1260j4;
        this.f20625h = c1305l;
        this.f20621d = k12;
        this.f20622e = c1355n;
        this.f20623f = jk;
        this.f20624g = t52;
        this.f20626i = tm;
        this.f20628k = c1256j0;
    }

    public final U b() {
        U u10 = this.f20635r;
        if (u10 == null) {
            synchronized (this) {
                u10 = this.f20635r;
                if (u10 == null) {
                    u10 = new U(this.f20633p, this.f20623f, this.f20620c);
                    this.f20635r = u10;
                }
            }
        }
        return u10;
    }
}
