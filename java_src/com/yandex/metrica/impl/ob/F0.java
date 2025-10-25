package com.yandex.metrica.impl.ob;

import android.annotation.SuppressLint;
import android.content.Context;
import com.yandex.metrica.core.api.ProtobufStateStorage;
import com.yandex.metrica.impl.ob.C0842s2;
import com.yandex.metrica.impl.ob.C0971xb;
import com.yandex.metrica.impl.ob.InterfaceC0530fa;
import com.yandex.metrica.impl.ob.Jf;
import com.yandex.metrica.networktasks.api.NetworkServiceLocator;
/* loaded from: classes2.dex */
public final class F0 {
    @SuppressLint({"StaticFieldLeak"})

    /* renamed from: x  reason: collision with root package name */
    private static volatile F0 f10029x;

    /* renamed from: a  reason: collision with root package name */
    private final Context f10030a;

    /* renamed from: b  reason: collision with root package name */
    private volatile C0856sg f10031b;

    /* renamed from: c  reason: collision with root package name */
    private volatile C0661kh f10032c;

    /* renamed from: d  reason: collision with root package name */
    private volatile Jf f10033d;

    /* renamed from: e  reason: collision with root package name */
    private volatile C0606ib f10034e;

    /* renamed from: f  reason: collision with root package name */
    private volatile C0842s2 f10035f;

    /* renamed from: g  reason: collision with root package name */
    private volatile C0487dh f10036g;

    /* renamed from: i  reason: collision with root package name */
    private volatile Xj f10038i;

    /* renamed from: j  reason: collision with root package name */
    private volatile E f10039j;

    /* renamed from: k  reason: collision with root package name */
    private volatile C0621j2 f10040k;

    /* renamed from: l  reason: collision with root package name */
    private volatile C0805qc f10041l;

    /* renamed from: m  reason: collision with root package name */
    private volatile C0971xb f10042m;

    /* renamed from: n  reason: collision with root package name */
    private volatile Bb f10043n;

    /* renamed from: o  reason: collision with root package name */
    private volatile I1 f10044o;

    /* renamed from: p  reason: collision with root package name */
    private volatile I f10045p;

    /* renamed from: q  reason: collision with root package name */
    private volatile C0504e9 f10046q;

    /* renamed from: r  reason: collision with root package name */
    private volatile C0503e8 f10047r;

    /* renamed from: t  reason: collision with root package name */
    private C0521f1 f10049t;

    /* renamed from: u  reason: collision with root package name */
    private C0853sd f10050u;

    /* renamed from: v  reason: collision with root package name */
    private final InterfaceC0671l2 f10051v = new a(this);

    /* renamed from: h  reason: collision with root package name */
    private volatile Pm f10037h = new Pm();

    /* renamed from: s  reason: collision with root package name */
    private C0497e2 f10048s = new C0497e2();

    /* renamed from: w  reason: collision with root package name */
    private C0632jd f10052w = new C0632jd();

    /* loaded from: classes2.dex */
    class a implements InterfaceC0671l2 {
        a(F0 f02) {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
        public void a() {
            NetworkServiceLocator.a().e();
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0671l2
        public void b() {
            NetworkServiceLocator.a().f();
        }
    }

    private F0(Context context) {
        this.f10030a = context;
        this.f10049t = new C0521f1(context, this.f10037h.a());
        this.f10039j = new E(this.f10037h.a(), this.f10049t.b());
        NetworkServiceLocator.c();
    }

    public static void a(Context context) {
        if (f10029x == null) {
            synchronized (F0.class) {
                if (f10029x == null) {
                    f10029x = new F0(context.getApplicationContext());
                }
            }
        }
    }

    public static F0 g() {
        return f10029x;
    }

    private void y() {
        if (this.f10044o == null) {
            synchronized (this) {
                if (this.f10044o == null) {
                    ProtobufStateStorage a10 = InterfaceC0530fa.b.a(Ud.class).a(this.f10030a);
                    Ud ud2 = (Ud) a10.read();
                    Context context = this.f10030a;
                    C0434be c0434be = new C0434be();
                    Td td2 = new Td(ud2);
                    C0559ge c0559ge = new C0559ge();
                    C0409ae c0409ae = new C0409ae(this.f10030a);
                    F0 g10 = g();
                    kotlin.jvm.internal.m.d(g10, "GlobalServiceLocator.getInstance()");
                    C0504e9 s10 = g10.s();
                    kotlin.jvm.internal.m.d(s10, "GlobalServiceLocator.get…ance().servicePreferences");
                    this.f10044o = new I1(context, a10, c0434be, td2, c0559ge, c0409ae, new C0459ce(s10), new Vd(), ud2, "[PreloadInfoStorage]");
                }
            }
        }
    }

    public C0935w b() {
        return this.f10049t.a();
    }

    public E c() {
        return this.f10039j;
    }

    public I d() {
        if (this.f10045p == null) {
            synchronized (this) {
                if (this.f10045p == null) {
                    ProtobufStateStorage a10 = InterfaceC0530fa.b.a(C0915v3.class).a(this.f10030a);
                    this.f10045p = new I(this.f10030a, a10, new C0939w3(), new C0819r3(), new C0987y3(), new C0397a2(this.f10030a), new C0963x3(s()), new C0843s3(), (C0915v3) a10.read(), "[ClidsInfoStorage]");
                }
            }
        }
        return this.f10045p;
    }

    public Context e() {
        return this.f10030a;
    }

    public C0606ib f() {
        if (this.f10034e == null) {
            synchronized (this) {
                if (this.f10034e == null) {
                    this.f10034e = new C0606ib(this.f10049t.a(), new C0581hb());
                }
            }
        }
        return this.f10034e;
    }

    public C0521f1 h() {
        return this.f10049t;
    }

    public C0805qc i() {
        C0805qc c0805qc = this.f10041l;
        if (c0805qc == null) {
            synchronized (this) {
                c0805qc = this.f10041l;
                if (c0805qc == null) {
                    c0805qc = new C0805qc(this.f10030a);
                    this.f10041l = c0805qc;
                }
            }
        }
        return c0805qc;
    }

    public C0632jd j() {
        return this.f10052w;
    }

    public I1 k() {
        y();
        return this.f10044o;
    }

    public Jf l() {
        if (this.f10033d == null) {
            synchronized (this) {
                if (this.f10033d == null) {
                    Context context = this.f10030a;
                    ProtobufStateStorage a10 = InterfaceC0530fa.b.a(Jf.e.class).a(this.f10030a);
                    C0842s2 u10 = u();
                    if (this.f10032c == null) {
                        synchronized (this) {
                            if (this.f10032c == null) {
                                this.f10032c = new C0661kh();
                            }
                        }
                    }
                    this.f10033d = new Jf(context, a10, u10, this.f10032c, this.f10037h.g(), new Ml());
                }
            }
        }
        return this.f10033d;
    }

    public C0856sg m() {
        if (this.f10031b == null) {
            synchronized (this) {
                if (this.f10031b == null) {
                    this.f10031b = new C0856sg(this.f10030a);
                }
            }
        }
        return this.f10031b;
    }

    public C0497e2 n() {
        return this.f10048s;
    }

    public C0487dh o() {
        if (this.f10036g == null) {
            synchronized (this) {
                if (this.f10036g == null) {
                    this.f10036g = new C0487dh(this.f10030a, this.f10037h.g());
                }
            }
        }
        return this.f10036g;
    }

    public synchronized C0621j2 p() {
        return this.f10040k;
    }

    public Pm q() {
        return this.f10037h;
    }

    public C0971xb r() {
        if (this.f10042m == null) {
            synchronized (this) {
                if (this.f10042m == null) {
                    this.f10042m = new C0971xb(new C0971xb.h(), new C0971xb.d(), new C0971xb.c(), this.f10037h.a(), "ServiceInternal");
                }
            }
        }
        return this.f10042m;
    }

    public C0504e9 s() {
        if (this.f10046q == null) {
            synchronized (this) {
                if (this.f10046q == null) {
                    this.f10046q = new C0504e9(C0629ja.a(this.f10030a).i());
                }
            }
        }
        return this.f10046q;
    }

    public synchronized C0853sd t() {
        if (this.f10050u == null) {
            this.f10050u = new C0853sd(this.f10030a);
        }
        return this.f10050u;
    }

    public C0842s2 u() {
        if (this.f10035f == null) {
            synchronized (this) {
                if (this.f10035f == null) {
                    this.f10035f = new C0842s2(new C0842s2.b(s()));
                }
            }
        }
        return this.f10035f;
    }

    public Xj v() {
        if (this.f10038i == null) {
            synchronized (this) {
                if (this.f10038i == null) {
                    this.f10038i = new Xj(this.f10030a, this.f10037h.h());
                }
            }
        }
        return this.f10038i;
    }

    public synchronized C0503e8 w() {
        if (this.f10047r == null) {
            this.f10047r = new C0503e8(this.f10030a);
        }
        return this.f10047r;
    }

    public synchronized void x() {
        dc.f.c().d();
        NetworkServiceLocator.a().d();
        this.f10049t.a(this.f10051v);
        l().a();
        y();
        i().b();
    }

    public synchronized void a(C0787pi c0787pi) {
        if (this.f10042m != null) {
            this.f10042m.a(c0787pi);
        }
        if (this.f10036g != null) {
            this.f10036g.b(c0787pi);
        }
        dc.f.c().e(new dc.e(c0787pi.o(), c0787pi.B()));
        if (this.f10034e != null) {
            this.f10034e.b(c0787pi);
        }
    }

    public Bb a() {
        if (this.f10043n == null) {
            synchronized (this) {
                if (this.f10043n == null) {
                    this.f10043n = new Bb(this.f10030a, Cb.a());
                }
            }
        }
        return this.f10043n;
    }

    public synchronized void a(C0646k2 c0646k2) {
        this.f10040k = new C0621j2(this.f10030a, c0646k2);
    }
}
