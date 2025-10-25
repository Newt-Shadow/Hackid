package com.yandex.metrica.impl.ob;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.yandex.metrica.MetricaService;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
/* renamed from: com.yandex.metrica.impl.ob.q1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0794q1 implements InterfaceC0770p1 {

    /* renamed from: a  reason: collision with root package name */
    private ICommonExecutor f13209a;

    /* renamed from: b  reason: collision with root package name */
    private InterfaceC0770p1 f13210b;

    /* renamed from: c  reason: collision with root package name */
    private final C0521f1 f13211c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f13212d;

    /* renamed from: com.yandex.metrica.impl.ob.q1$a */
    /* loaded from: classes2.dex */
    class a extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bundle f13213a;

        a(Bundle bundle) {
            this.f13213a = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            C0794q1.this.f13210b.b(this.f13213a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$b */
    /* loaded from: classes2.dex */
    class b extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bundle f13215a;

        b(Bundle bundle) {
            this.f13215a = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            C0794q1.this.f13210b.a(this.f13215a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$c */
    /* loaded from: classes2.dex */
    class c extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Configuration f13217a;

        c(Configuration configuration) {
            this.f13217a = configuration;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            C0794q1.this.f13210b.onConfigurationChanged(this.f13217a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$d */
    /* loaded from: classes2.dex */
    class d extends AbstractRunnableC0517em {
        d() {
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            synchronized (C0794q1.this) {
                if (!C0794q1.this.f13212d) {
                    return;
                }
                C0794q1.this.f13211c.e();
                C0794q1.this.f13210b.a();
            }
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$e */
    /* loaded from: classes2.dex */
    class e extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f13220a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f13221b;

        e(Intent intent, int i10) {
            this.f13220a = intent;
            this.f13221b = i10;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            C0794q1.this.f13210b.a(this.f13220a, this.f13221b);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$f */
    /* loaded from: classes2.dex */
    class f extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f13223a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f13224b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ int f13225c;

        f(Intent intent, int i10, int i11) {
            this.f13223a = intent;
            this.f13224b = i10;
            this.f13225c = i11;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            C0794q1.this.f13210b.a(this.f13223a, this.f13224b, this.f13225c);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$g */
    /* loaded from: classes2.dex */
    class g extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f13227a;

        g(Intent intent) {
            this.f13227a = intent;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            C0794q1.this.f13210b.a(this.f13227a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$h */
    /* loaded from: classes2.dex */
    class h extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f13229a;

        h(Intent intent) {
            this.f13229a = intent;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            C0794q1.this.f13210b.c(this.f13229a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$i */
    /* loaded from: classes2.dex */
    class i extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f13231a;

        i(Intent intent) {
            this.f13231a = intent;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            C0794q1.this.f13210b.b(this.f13231a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$j */
    /* loaded from: classes2.dex */
    class j extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f13233a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ int f13234b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f13235c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ Bundle f13236d;

        j(String str, int i10, String str2, Bundle bundle) {
            this.f13233a = str;
            this.f13234b = i10;
            this.f13235c = str2;
            this.f13236d = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            C0794q1.this.f13210b.a(this.f13233a, this.f13234b, this.f13235c, this.f13236d);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$k */
    /* loaded from: classes2.dex */
    class k extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Bundle f13238a;

        k(Bundle bundle) {
            this.f13238a = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            C0794q1.this.f13210b.reportData(this.f13238a);
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.q1$l */
    /* loaded from: classes2.dex */
    class l extends AbstractRunnableC0517em {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ int f13240a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Bundle f13241b;

        l(int i10, Bundle bundle) {
            this.f13240a = i10;
            this.f13241b = bundle;
        }

        @Override // com.yandex.metrica.impl.ob.AbstractRunnableC0517em
        public void a() {
            C0794q1.this.f13210b.a(this.f13240a, this.f13241b);
        }
    }

    public C0794q1(InterfaceC0770p1 interfaceC0770p1) {
        this(F0.g().q().c(), interfaceC0770p1, F0.g().h());
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void onConfigurationChanged(Configuration configuration) {
        this.f13209a.execute(new c(configuration));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    public void reportData(Bundle bundle) {
        this.f13209a.execute(new k(bundle));
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public synchronized void a() {
        this.f13212d = true;
        this.f13209a.execute(new d());
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void b(Intent intent) {
        this.f13209a.execute(new i(intent));
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void c(Intent intent) {
        this.f13209a.execute(new h(intent));
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void b() {
        this.f13209a.removeAll();
        synchronized (this) {
            this.f13211c.f();
            this.f13212d = false;
        }
        this.f13210b.b();
    }

    C0794q1(ICommonExecutor iCommonExecutor, InterfaceC0770p1 interfaceC0770p1, C0521f1 c0521f1) {
        this.f13212d = false;
        this.f13209a = iCommonExecutor;
        this.f13210b = interfaceC0770p1;
        this.f13211c = c0521f1;
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent, int i10) {
        this.f13209a.execute(new e(intent, i10));
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent, int i10, int i11) {
        this.f13209a.execute(new f(intent, i10, i11));
    }

    @Override // com.yandex.metrica.impl.ob.B1
    public void a(Intent intent) {
        this.f13209a.execute(new g(intent));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    public void a(String str, int i10, String str2, Bundle bundle) {
        this.f13209a.execute(new j(str, i10, str2, bundle));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    public void a(int i10, Bundle bundle) {
        this.f13209a.execute(new l(i10, bundle));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    public void a(Bundle bundle) {
        this.f13209a.execute(new b(bundle));
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    public void a(MetricaService.d dVar) {
        this.f13210b.a(dVar);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0770p1
    public void b(Bundle bundle) {
        this.f13209a.execute(new a(bundle));
    }
}
