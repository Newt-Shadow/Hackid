package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.util.Log;
import android.webkit.WebView;
import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.AppMetricaDeviceIDListener;
import com.yandex.metrica.DeferredDeeplinkListener;
import com.yandex.metrica.DeferredDeeplinkParametersListener;
import com.yandex.metrica.IReporter;
import com.yandex.metrica.ReporterConfig;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.YandexMetricaConfig;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.impl.ob.C0792q;
import com.yandex.metrica.profile.UserProfile;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Uf extends Lf {

    /* renamed from: i  reason: collision with root package name */
    private final Qf f11508i;

    /* renamed from: j  reason: collision with root package name */
    private final Xf f11509j;

    /* renamed from: k  reason: collision with root package name */
    private final Wf f11510k;

    /* renamed from: l  reason: collision with root package name */
    private final C0746o2 f11511l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class A implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f11512a;

        A(Activity activity) {
            this.f11512a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.this.f11511l.a(this.f11512a, Uf.a(Uf.this));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class B implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0792q.c f11514a;

        B(C0792q.c cVar) {
            this.f11514a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).a(this.f11514a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class C implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11516a;

        C(String str) {
            this.f11516a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportEvent(this.f11516a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class D implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11518a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f11519b;

        D(String str, String str2) {
            this.f11518a = str;
            this.f11519b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportEvent(this.f11518a, this.f11519b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class E implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11521a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f11522b;

        E(String str, List list) {
            this.f11521a = str;
            this.f11522b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportEvent(this.f11521a, A2.a(this.f11522b));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class F implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11524a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f11525b;

        F(String str, Throwable th) {
            this.f11524a = str;
            this.f11525b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportError(this.f11524a, this.f11525b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$a  reason: case insensitive filesystem */
    /* loaded from: classes2.dex */
    public class RunnableC0388a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11527a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f11528b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Throwable f11529c;

        RunnableC0388a(String str, String str2, Throwable th) {
            this.f11527a = str;
            this.f11528b = str2;
            this.f11529c = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportError(this.f11527a, this.f11528b, this.f11529c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$b  reason: case insensitive filesystem */
    /* loaded from: classes2.dex */
    public class RunnableC0389b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f11531a;

        RunnableC0389b(Throwable th) {
            this.f11531a = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportUnhandledException(this.f11531a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$c  reason: case insensitive filesystem */
    /* loaded from: classes2.dex */
    public class RunnableC0390c implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11533a;

        RunnableC0390c(String str) {
            this.f11533a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).c(this.f11533a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$d  reason: case insensitive filesystem */
    /* loaded from: classes2.dex */
    public class RunnableC0391d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f11535a;

        RunnableC0391d(Intent intent) {
            this.f11535a = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.c(Uf.this).a().a(this.f11535a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$e  reason: case insensitive filesystem */
    /* loaded from: classes2.dex */
    public class RunnableC0392e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11537a;

        RunnableC0392e(String str) {
            this.f11537a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.c(Uf.this).a().a(this.f11537a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.Uf$f  reason: case insensitive filesystem */
    /* loaded from: classes2.dex */
    public class RunnableC0393f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Intent f11539a;

        RunnableC0393f(Intent intent) {
            this.f11539a = intent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.c(Uf.this).a().a(this.f11539a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11541a;

        g(String str) {
            this.f11541a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).a(this.f11541a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Location f11543a;

        h(Location location) {
            this.f11543a = location;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e10 = Uf.this.e();
            Location location = this.f11543a;
            e10.getClass();
            R2.a(location);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f11545a;

        i(boolean z10) {
            this.f11545a = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e10 = Uf.this.e();
            boolean z10 = this.f11545a;
            e10.getClass();
            R2.a(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class j implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f11547a;

        j(boolean z10) {
            this.f11547a = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e10 = Uf.this.e();
            boolean z10 = this.f11547a;
            e10.getClass();
            R2.a(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class k implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f11549a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ YandexMetricaConfig f11550b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.yandex.metrica.j f11551c;

        k(Context context, YandexMetricaConfig yandexMetricaConfig, com.yandex.metrica.j jVar) {
            this.f11549a = context;
            this.f11550b = yandexMetricaConfig;
            this.f11551c = jVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e10 = Uf.this.e();
            Context context = this.f11549a;
            e10.getClass();
            R2.a(context).b(this.f11550b, Uf.this.c().a(this.f11551c));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f11553a;

        l(boolean z10) {
            this.f11553a = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e10 = Uf.this.e();
            boolean z10 = this.f11553a;
            e10.getClass();
            R2.c(z10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11555a;

        m(String str) {
            this.f11555a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e10 = Uf.this.e();
            String str = this.f11555a;
            e10.getClass();
            R2.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserProfile f11557a;

        n(UserProfile userProfile) {
            this.f11557a = userProfile;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportUserProfile(this.f11557a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Revenue f11559a;

        o(Revenue revenue) {
            this.f11559a = revenue;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportRevenue(this.f11559a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdRevenue f11561a;

        p(AdRevenue adRevenue) {
            this.f11561a = adRevenue;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportAdRevenue(this.f11561a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ECommerceEvent f11563a;

        q(ECommerceEvent eCommerceEvent) {
            this.f11563a = eCommerceEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).reportECommerce(this.f11563a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DeferredDeeplinkParametersListener f11565a;

        r(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
            this.f11565a = deferredDeeplinkParametersListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.this.e().getClass();
            R2.k().a(this.f11565a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ DeferredDeeplinkListener f11567a;

        s(DeferredDeeplinkListener deferredDeeplinkListener) {
            this.f11567a = deferredDeeplinkListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.this.e().getClass();
            R2.k().a(this.f11567a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AppMetricaDeviceIDListener f11569a;

        t(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
            this.f11569a = appMetricaDeviceIDListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.this.e().getClass();
            R2.k().b(this.f11569a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11571a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f11572b;

        u(String str, String str2) {
            this.f11571a = str;
            this.f11572b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Sf e10 = Uf.this.e();
            String str = this.f11571a;
            String str2 = this.f11572b;
            e10.getClass();
            R2.a(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).sendEventsBuffer();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class w implements Runnable {
        w() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).a(Uf.this.h());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class x implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11576a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f11577b;

        x(String str, String str2) {
            this.f11576a = str;
            this.f11577b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).a(this.f11576a, this.f11577b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class y implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11579a;

        y(String str) {
            this.f11579a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.a(Uf.this).b(this.f11579a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class z implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Activity f11581a;

        z(Activity activity) {
            this.f11581a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            Uf.this.f11511l.b(this.f11581a, Uf.a(Uf.this));
        }
    }

    public Uf(ICommonExecutor iCommonExecutor) {
        this(new Sf(), iCommonExecutor, new Xf(), new Wf(), new D2());
    }

    public void a(Context context, YandexMetricaConfig yandexMetricaConfig) {
        com.yandex.metrica.j jVar;
        this.f11509j.a(context, yandexMetricaConfig);
        Wf wf = this.f11510k;
        if (yandexMetricaConfig instanceof com.yandex.metrica.j) {
            jVar = (com.yandex.metrica.j) yandexMetricaConfig;
        } else {
            jVar = new com.yandex.metrica.j(yandexMetricaConfig);
        }
        com.yandex.metrica.j a10 = wf.a(jVar);
        g().c(context, a10);
        d().execute(new k(context, yandexMetricaConfig, a10));
        e().getClass();
        R2.j();
    }

    public void c(Activity activity) {
        a().a(null);
        this.f11509j.getClass();
        g().getClass();
        d().execute(new z(activity));
    }

    public void d(String str) {
        a().a(null);
        this.f11509j.c(str);
        g().getClass();
        d().execute(new RunnableC0390c(str));
    }

    public void e(String str) {
        a().a(null);
        this.f11509j.a(str);
        d().execute(new g(str));
    }

    public void f(String str) {
        this.f11509j.getClass();
        g().getClass();
        d().execute(new m(str));
    }

    public void i() {
        a().a(null);
        this.f11509j.getClass();
        g().getClass();
        d().execute(new v());
    }

    private Uf(Sf sf2, ICommonExecutor iCommonExecutor, Xf xf, Wf wf, D2 d22) {
        this(sf2, iCommonExecutor, xf, wf, new Kf(sf2), new Qf(sf2), d22, new com.yandex.metrica.g(sf2, d22), Pf.a(), P.g().f(), P.g().l(), P.g().e());
    }

    public void b(String str) {
        a().a(null);
        this.f11509j.reportEvent(str);
        g().getClass();
        d().execute(new C(str));
    }

    Uf(Sf sf2, ICommonExecutor iCommonExecutor, Xf xf, Wf wf, Kf kf2, Qf qf2, D2 d22, com.yandex.metrica.g gVar, Pf pf2, C0669l0 c0669l0, C0746o2 c0746o2, C0395a0 c0395a0) {
        super(sf2, iCommonExecutor, kf2, d22, gVar, pf2, c0669l0, c0395a0);
        this.f11510k = wf;
        this.f11509j = xf;
        this.f11508i = qf2;
        this.f11511l = c0746o2;
    }

    public void b(String str, String str2) {
        a().a(null);
        this.f11509j.reportEvent(str, str2);
        g().getClass();
        d().execute(new D(str, str2));
    }

    public void c(String str, String str2) {
        a().a(null);
        if (!this.f11509j.f(str)) {
            Log.w("AppMetrica", "Impossible to report event because parameters are invalid.");
            return;
        }
        g().getClass();
        d().execute(new x(str, str2));
    }

    public void a(Activity activity) {
        a().a(null);
        this.f11509j.getClass();
        g().getClass();
        d().execute(new A(activity));
    }

    public void b(Activity activity) {
        Intent intent = null;
        a().a(null);
        this.f11509j.c(activity);
        g().getClass();
        if (activity != null) {
            try {
                intent = activity.getIntent();
            } catch (Throwable unused) {
            }
        }
        d().execute(new RunnableC0391d(intent));
    }

    public void c(String str) {
        if (this.f11508i.a().b() && this.f11509j.g(str)) {
            g().getClass();
            d().execute(new y(str));
        }
    }

    public void a(Application application) {
        a().a(null);
        this.f11509j.a(application);
        d().execute(new B(g().a(application)));
    }

    static C0645k1 c(Uf uf) {
        uf.e().getClass();
        return R2.k().d();
    }

    public void b(Context context, boolean z10) {
        this.f11509j.b(context);
        g().f(context);
        d().execute(new l(z10));
    }

    public void a(String str, Map<String, Object> map) {
        a().a(null);
        this.f11509j.reportEvent(str, map);
        g().getClass();
        d().execute(new E(str, A2.a((Map) map)));
    }

    public void a(String str, Throwable th) {
        a().a(null);
        this.f11509j.reportError(str, th);
        g().getClass();
        if (th == null) {
            th = new C0650k6();
            th.fillInStackTrace();
        }
        d().execute(new F(str, th));
    }

    public void a(String str, String str2, Throwable th) {
        a().a(null);
        this.f11509j.reportError(str, str2, th);
        d().execute(new RunnableC0388a(str, str2, th));
    }

    public void a(Throwable th) {
        a().a(null);
        this.f11509j.reportUnhandledException(th);
        g().getClass();
        d().execute(new RunnableC0389b(th));
    }

    public void a(String str) {
        a().a(null);
        this.f11509j.e(str);
        g().getClass();
        d().execute(new RunnableC0392e(str));
    }

    public void a(Intent intent) {
        a().a(null);
        this.f11509j.a(intent);
        g().getClass();
        d().execute(new RunnableC0393f(intent));
    }

    public void a(Location location) {
        this.f11509j.getClass();
        g().getClass();
        d().execute(new h(location));
    }

    public void a(boolean z10) {
        this.f11509j.getClass();
        g().getClass();
        d().execute(new i(z10));
    }

    public void a(Context context, boolean z10) {
        this.f11509j.a(context);
        g().e(context);
        d().execute(new j(z10));
    }

    public void a(UserProfile userProfile) {
        a().a(null);
        this.f11509j.reportUserProfile(userProfile);
        g().getClass();
        d().execute(new n(userProfile));
    }

    public void a(Revenue revenue) {
        a().a(null);
        this.f11509j.reportRevenue(revenue);
        g().getClass();
        d().execute(new o(revenue));
    }

    public void a(AdRevenue adRevenue) {
        a().a(null);
        this.f11509j.reportAdRevenue(adRevenue);
        g().getClass();
        d().execute(new p(adRevenue));
    }

    public void a(ECommerceEvent eCommerceEvent) {
        a().a(null);
        this.f11509j.reportECommerce(eCommerceEvent);
        g().getClass();
        d().execute(new q(eCommerceEvent));
    }

    public void a(DeferredDeeplinkParametersListener deferredDeeplinkParametersListener) {
        a().a(null);
        this.f11509j.a(deferredDeeplinkParametersListener);
        g().getClass();
        d().execute(new r(deferredDeeplinkParametersListener));
    }

    public void a(DeferredDeeplinkListener deferredDeeplinkListener) {
        a().a(null);
        this.f11509j.a(deferredDeeplinkListener);
        g().getClass();
        d().execute(new s(deferredDeeplinkListener));
    }

    public void a(AppMetricaDeviceIDListener appMetricaDeviceIDListener) {
        a().a(null);
        this.f11509j.a(appMetricaDeviceIDListener);
        g().getClass();
        d().execute(new t(appMetricaDeviceIDListener));
    }

    public IReporter a(Context context, String str) {
        this.f11509j.a(context, str);
        b().a(context);
        return f().a(context, str);
    }

    public void a(Context context, ReporterConfig reporterConfig) {
        this.f11509j.a(context, reporterConfig);
        com.yandex.metrica.f c10 = com.yandex.metrica.f.c(reporterConfig);
        g().b(context);
        f().a(context, c10);
    }

    public void a(String str, String str2) {
        this.f11509j.d(str);
        g().getClass();
        d().execute(new u(str, str2));
    }

    public void a(WebView webView) {
        a().a(null);
        this.f11509j.a(webView);
        g().d(webView, this);
        d().execute(new w());
    }

    static K0 a(Uf uf) {
        uf.e().getClass();
        return R2.k().d().b();
    }
}
