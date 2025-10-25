package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.MetricaService;
import com.yandex.metrica.YandexMetrica;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0787pi;
import java.io.File;
import java.util.concurrent.TimeUnit;
/* renamed from: com.yandex.metrica.impl.ob.r1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0817r1 implements InterfaceC0770p1 {
    private final C0497e2 A;

    /* renamed from: a  reason: collision with root package name */
    private C0787pi f13456a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f13457b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f13458c;

    /* renamed from: d  reason: collision with root package name */
    private volatile MetricaService.d f13459d;

    /* renamed from: e  reason: collision with root package name */
    private final Eh f13460e;

    /* renamed from: f  reason: collision with root package name */
    private X0 f13461f;

    /* renamed from: g  reason: collision with root package name */
    private final B0 f13462g;

    /* renamed from: h  reason: collision with root package name */
    private C0623j4 f13463h;

    /* renamed from: i  reason: collision with root package name */
    private final A1 f13464i;

    /* renamed from: j  reason: collision with root package name */
    private Vc f13465j;

    /* renamed from: k  reason: collision with root package name */
    private C0504e9 f13466k;

    /* renamed from: l  reason: collision with root package name */
    private L1 f13467l;

    /* renamed from: m  reason: collision with root package name */
    private final E0 f13468m;

    /* renamed from: n  reason: collision with root package name */
    private final C1018za f13469n;

    /* renamed from: o  reason: collision with root package name */
    private final C0672l3 f13470o;

    /* renamed from: p  reason: collision with root package name */
    private Y6 f13471p;

    /* renamed from: q  reason: collision with root package name */
    private final InterfaceC0750o6 f13472q;

    /* renamed from: r  reason: collision with root package name */
    private final B7 f13473r;

    /* renamed from: s  reason: collision with root package name */
    private final C0935w f13474s;

    /* renamed from: t  reason: collision with root package name */
    private final ICommonExecutor f13475t;

    /* renamed from: u  reason: collision with root package name */
    private final C0985y1 f13476u;

    /* renamed from: v  reason: collision with root package name */
    private InterfaceC0716mm<String> f13477v;

    /* renamed from: w  reason: collision with root package name */
    private InterfaceC0716mm<File> f13478w;

    /* renamed from: x  reason: collision with root package name */
    private InterfaceC0502e7<String> f13479x;

    /* renamed from: y  reason: collision with root package name */
    private ICommonExecutor f13480y;

    /* renamed from: z  reason: collision with root package name */
    private M1 f13481z;

    /* renamed from: com.yandex.metrica.impl.ob.r1$a */
    /* loaded from: classes2.dex */
    class a implements InterfaceC0716mm<File> {
        a() {
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0716mm
        public void b(File file) {
            C0817r1.this.a(file);
        }
    }

    public C0817r1(Context context, MetricaService.d dVar) {
        this(context, dVar, new C0773p4(context));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void d(C0817r1 c0817r1) {
        if (c0817r1.f13456a != null) {
            F0.g().o().a(c0817r1.f13456a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void f(C0817r1 c0817r1) {
        c0817r1.f13460e.b();
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void onConfigurationChanged(Configuration configuration) {
        C0546g1.a(this.f13458c).b(configuration);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    public void reportData(Bundle bundle) {
        bundle.setClassLoader(CounterConfiguration.class.getClassLoader());
        this.f13461f.a();
        this.f13467l.a(C0445c0.a(bundle), bundle);
    }

    private C0817r1(Context context, MetricaService.d dVar, C0773p4 c0773p4) {
        this(context, dVar, new C0623j4(context, c0773p4), new A1(), new B0(), new E0(), new C1018za(context), C0672l3.a(), new Eh(context), F0.g().b(), F0.g().h().c(), B7.a(), F0.g().q().e(), F0.g().q().a(), new C0985y1(), F0.g().n());
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a() {
        if (!this.f13457b) {
            this.f13466k = F0.g().s();
            this.f13468m.a(this.f13458c);
            F0.g().x();
            C0542fm.c().d();
            this.f13465j = new Vc(C0924vc.a(this.f13458c), H2.a(this.f13458c), this.f13466k);
            this.f13456a = new C0787pi.b(this.f13458c).a();
            F0.g().t().getClass();
            this.f13464i.b(new C0913v1(this));
            this.f13464i.c(new C0937w1(this));
            this.f13464i.a(new C0961x1(this));
            this.f13470o.a(this, C0796q3.class, C0772p3.a(new C0865t1(this)).a(new C0841s1(this)).a());
            F0.g().r().a(this.f13458c, this.f13456a);
            this.f13461f = new X0(this.f13466k, this.f13456a.t(), new dc.c(), new C0962x2(), C0761oh.a());
            C0787pi c0787pi = this.f13456a;
            if (c0787pi != null) {
                this.f13460e.b(c0787pi);
            }
            a(this.f13456a);
            C0985y1 c0985y1 = this.f13476u;
            Context context = this.f13458c;
            C0623j4 c0623j4 = this.f13463h;
            c0985y1.getClass();
            this.f13467l = new L1(context, c0623j4, F0.g().q().e(), new B0());
            YandexMetrica.getReporter(this.f13458c, "20799a27-fa80-4b36-b2db-0f8141f24180");
            File a10 = this.f13462g.a(this.f13458c, "appmetrica_crashes");
            if (a10 != null) {
                C0985y1 c0985y12 = this.f13476u;
                InterfaceC0716mm<File> interfaceC0716mm = this.f13478w;
                c0985y12.getClass();
                this.f13471p = new Y6(a10, interfaceC0716mm);
                this.f13475t.execute(new RunnableC0894u6(this.f13458c, a10, this.f13478w));
                this.f13471p.a();
            }
            if (A2.a(21)) {
                C0985y1 c0985y13 = this.f13476u;
                L1 l12 = this.f13467l;
                c0985y13.getClass();
                this.f13479x = new C0871t7(new C0919v7(l12));
                this.f13477v = new C0889u1(this);
                if (this.f13473r.b()) {
                    this.f13479x.a();
                    this.f13480y.executeDelayed(new F7(), 1L, TimeUnit.MINUTES);
                }
            }
            F0.g().f().a(this.f13456a);
            this.f13457b = true;
        } else {
            C0546g1.a(this.f13458c).b(this.f13458c.getResources().getConfiguration());
        }
        if (A2.a(21)) {
            this.f13472q.a(this.f13477v);
        }
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void b(Intent intent) {
        this.f13464i.b(intent);
        if (intent != null) {
            String action = intent.getAction();
            Uri data = intent.getData();
            String encodedAuthority = data == null ? null : data.getEncodedAuthority();
            if ("com.yandex.metrica.IMetricaService".equals(action) && data != null && data.getPath().equals("/client")) {
                int parseInt = Integer.parseInt(data.getQueryParameter("pid"));
                this.f13463h.a(encodedAuthority, parseInt, data.getQueryParameter("psid"));
                this.f13474s.a(parseInt);
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void c(Intent intent) {
        this.f13464i.c(intent);
    }

    private Integer c(Bundle bundle) {
        A3 a32;
        bundle.setClassLoader(A3.class.getClassLoader());
        String str = A3.f9696c;
        try {
            a32 = (A3) bundle.getParcelable("PROCESS_CFG_OBJ");
        } catch (Throwable unused) {
            a32 = null;
        }
        if (a32 == null) {
            return null;
        }
        return a32.g();
    }

    C0817r1(Context context, MetricaService.d dVar, C0623j4 c0623j4, A1 a12, B0 b02, E0 e02, C1018za c1018za, C0672l3 c0672l3, Eh eh, C0935w c0935w, InterfaceC0750o6 interfaceC0750o6, B7 b72, ICommonExecutor iCommonExecutor, ICommonExecutor iCommonExecutor2, C0985y1 c0985y1, C0497e2 c0497e2) {
        this.f13457b = false;
        this.f13478w = new a();
        this.f13458c = context;
        this.f13459d = dVar;
        this.f13463h = c0623j4;
        this.f13464i = a12;
        this.f13462g = b02;
        this.f13468m = e02;
        this.f13469n = c1018za;
        this.f13470o = c0672l3;
        this.f13460e = eh;
        this.f13474s = c0935w;
        this.f13475t = iCommonExecutor;
        this.f13480y = iCommonExecutor2;
        this.f13476u = c0985y1;
        this.f13472q = interfaceC0750o6;
        this.f13473r = b72;
        this.f13481z = new M1(this, context);
        this.A = c0497e2;
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void b() {
        if (A2.a(21)) {
            this.f13472q.b(this.f13477v);
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    public void b(Bundle bundle) {
        Integer c10 = c(bundle);
        if (c10 != null) {
            this.f13474s.c(c10.intValue());
        }
    }

    private void b(Intent intent, int i10) {
        if (intent != null) {
            intent.getExtras().setClassLoader(CounterConfiguration.class.getClassLoader());
            if (!(intent.getData() == null)) {
                Bundle extras = intent.getExtras();
                C1011z3 c1011z3 = new C1011z3(extras);
                if (!C1011z3.a(c1011z3, this.f13458c)) {
                    C0445c0 a10 = C0445c0.a(extras);
                    if (!((EnumC0396a1.EVENT_TYPE_UNDEFINED.b() == a10.f12102e) | (a10.f12098a == null))) {
                        try {
                            this.f13467l.a(C0599i4.a(c1011z3), a10, new D3(c1011z3));
                        } catch (Throwable unused) {
                        }
                    }
                }
            }
        }
        this.f13459d.a(i10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b(C0817r1 c0817r1, C0787pi c0787pi) {
        Vc vc2 = c0817r1.f13465j;
        if (vc2 != null) {
            vc2.a(c0787pi);
        }
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent, int i10) {
        b(intent, i10);
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent, int i10, int i11) {
        b(intent, i11);
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent) {
        this.f13464i.a(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(C0817r1 c0817r1, C0787pi c0787pi) {
        c0817r1.f13456a = c0787pi;
        Vc vc2 = c0817r1.f13465j;
        if (vc2 != null) {
            vc2.a(c0787pi);
        }
        c0817r1.f13461f.a(c0817r1.f13456a.t());
        c0817r1.f13469n.a(c0787pi);
        c0817r1.f13460e.b(c0787pi);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(C0817r1 c0817r1, Intent intent) {
        c0817r1.f13460e.a();
        c0817r1.A.a(Tl.f(intent.getStringExtra("screen_size")));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    @Deprecated
    public void a(String str, int i10, String str2, Bundle bundle) {
        bundle.setClassLoader(CounterConfiguration.class.getClassLoader());
        this.f13467l.a(new C0445c0(str2, str, i10), bundle);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    public void a(int i10, Bundle bundle) {
        this.f13481z.a(i10, bundle);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    public void a(Bundle bundle) {
        Integer c10 = c(bundle);
        if (c10 != null) {
            this.f13474s.b(c10.intValue());
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    public void a(MetricaService.d dVar) {
        this.f13459d = dVar;
    }

    public void a(File file) {
        this.f13467l.a(file);
    }

    private void a(C0787pi c0787pi) {
        Vc vc2 = this.f13465j;
        if (vc2 != null) {
            vc2.a(c0787pi);
        }
    }
}
