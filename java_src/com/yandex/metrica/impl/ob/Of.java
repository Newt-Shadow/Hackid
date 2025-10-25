package com.yandex.metrica.impl.ob;

import android.content.Context;
import com.yandex.metrica.AdRevenue;
import com.yandex.metrica.Revenue;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.ecommerce.ECommerceEvent;
import com.yandex.metrica.f;
import com.yandex.metrica.plugins.IPluginReporter;
import com.yandex.metrica.profile.UserProfile;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class Of implements M0 {

    /* renamed from: a  reason: collision with root package name */
    private final Sf f10943a;

    /* renamed from: b  reason: collision with root package name */
    private final C0411ag f10944b;

    /* renamed from: c  reason: collision with root package name */
    private final ICommonExecutor f10945c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f10946d;

    /* renamed from: e  reason: collision with root package name */
    private final Wf f10947e;

    /* renamed from: f  reason: collision with root package name */
    private final com.yandex.metrica.f f10948f;

    /* renamed from: g  reason: collision with root package name */
    private final com.yandex.metrica.g f10949g;

    /* renamed from: h  reason: collision with root package name */
    private final Nf f10950h;

    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f10951a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f10952b;

        a(String str, String str2) {
            this.f10951a = str;
            this.f10952b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().b(this.f10951a, this.f10952b);
        }
    }

    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f10954a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f10955b;

        b(String str, String str2) {
            this.f10954a = str;
            this.f10955b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().d(this.f10954a, this.f10955b);
        }
    }

    /* loaded from: classes2.dex */
    class c implements InterfaceC0815qm<M0> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Sf f10957a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f10958b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.yandex.metrica.f f10959c;

        c(Sf sf2, Context context, com.yandex.metrica.f fVar) {
            this.f10957a = sf2;
            this.f10958b = context;
            this.f10959c = fVar;
        }

        @Override // com.yandex.metrica.impl.ob.InterfaceC0815qm
        public M0 a() {
            Sf sf2 = this.f10957a;
            Context context = this.f10958b;
            com.yandex.metrica.f fVar = this.f10959c;
            sf2.getClass();
            return R2.a(context).a(fVar);
        }
    }

    /* loaded from: classes2.dex */
    class d implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f10960a;

        d(String str) {
            this.f10960a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportEvent(this.f10960a);
        }
    }

    /* loaded from: classes2.dex */
    class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f10962a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f10963b;

        e(String str, String str2) {
            this.f10962a = str;
            this.f10963b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportEvent(this.f10962a, this.f10963b);
        }
    }

    /* loaded from: classes2.dex */
    class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f10965a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ List f10966b;

        f(String str, List list) {
            this.f10965a = str;
            this.f10966b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportEvent(this.f10965a, A2.a(this.f10966b));
        }
    }

    /* loaded from: classes2.dex */
    class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f10968a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Throwable f10969b;

        g(String str, Throwable th) {
            this.f10968a = str;
            this.f10969b = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportError(this.f10968a, this.f10969b);
        }
    }

    /* loaded from: classes2.dex */
    class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f10971a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f10972b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Throwable f10973c;

        h(String str, String str2, Throwable th) {
            this.f10971a = str;
            this.f10972b = str2;
            this.f10973c = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportError(this.f10971a, this.f10972b, this.f10973c);
        }
    }

    /* loaded from: classes2.dex */
    class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Throwable f10975a;

        i(Throwable th) {
            this.f10975a = th;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportUnhandledException(this.f10975a);
        }
    }

    /* loaded from: classes2.dex */
    class j implements Runnable {
        j() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().resumeSession();
        }
    }

    /* loaded from: classes2.dex */
    class k implements Runnable {
        k() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().pauseSession();
        }
    }

    /* loaded from: classes2.dex */
    class l implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f10979a;

        l(String str) {
            this.f10979a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().setUserProfileID(this.f10979a);
        }
    }

    /* loaded from: classes2.dex */
    class m implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ H6 f10981a;

        m(H6 h62) {
            this.f10981a = h62;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().a(this.f10981a);
        }
    }

    /* loaded from: classes2.dex */
    class n implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ UserProfile f10983a;

        n(UserProfile userProfile) {
            this.f10983a = userProfile;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportUserProfile(this.f10983a);
        }
    }

    /* loaded from: classes2.dex */
    class o implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Revenue f10985a;

        o(Revenue revenue) {
            this.f10985a = revenue;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportRevenue(this.f10985a);
        }
    }

    /* loaded from: classes2.dex */
    class p implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdRevenue f10987a;

        p(AdRevenue adRevenue) {
            this.f10987a = adRevenue;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportAdRevenue(this.f10987a);
        }
    }

    /* loaded from: classes2.dex */
    class q implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ECommerceEvent f10989a;

        q(ECommerceEvent eCommerceEvent) {
            this.f10989a = eCommerceEvent;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().reportECommerce(this.f10989a);
        }
    }

    /* loaded from: classes2.dex */
    class r implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ boolean f10991a;

        r(boolean z10) {
            this.f10991a = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().setStatisticsSending(this.f10991a);
        }
    }

    /* loaded from: classes2.dex */
    class s implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.yandex.metrica.f f10993a;

        s(com.yandex.metrica.f fVar) {
            this.f10993a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.a(Of.this, this.f10993a);
        }
    }

    /* loaded from: classes2.dex */
    class t implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.yandex.metrica.f f10995a;

        t(com.yandex.metrica.f fVar) {
            this.f10995a = fVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.a(Of.this, this.f10995a);
        }
    }

    /* loaded from: classes2.dex */
    class u implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ C0942w6 f10997a;

        u(C0942w6 c0942w6) {
            this.f10997a = c0942w6;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().a(this.f10997a);
        }
    }

    /* loaded from: classes2.dex */
    class v implements Runnable {
        v() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().b();
        }
    }

    /* loaded from: classes2.dex */
    class w implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f11000a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ JSONObject f11001b;

        w(String str, JSONObject jSONObject) {
            this.f11000a = str;
            this.f11001b = jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().a(this.f11000a, this.f11001b);
        }
    }

    /* loaded from: classes2.dex */
    class x implements Runnable {
        x() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Of.this.a().sendEventsBuffer();
        }
    }

    public Of(ICommonExecutor iCommonExecutor, Context context, String str) {
        this(iCommonExecutor, context.getApplicationContext(), str, new Sf());
    }

    final M0 a() {
        Sf sf2 = this.f10943a;
        Context context = this.f10946d;
        com.yandex.metrica.f fVar = this.f10948f;
        sf2.getClass();
        return R2.a(context).a(fVar);
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void b() {
        this.f10949g.getClass();
        this.f10945c.execute(new v());
    }

    public void d(String str) {
        com.yandex.metrica.f b10 = new f.a(str).b();
        this.f10949g.getClass();
        this.f10945c.execute(new s(b10));
    }

    @Override // com.yandex.metrica.IReporter
    public IPluginReporter getPluginExtension() {
        return this.f10950h;
    }

    @Override // com.yandex.metrica.IReporter
    public void pauseSession() {
        this.f10944b.getClass();
        this.f10949g.getClass();
        this.f10945c.execute(new k());
    }

    @Override // com.yandex.metrica.IReporter
    public void reportAdRevenue(AdRevenue adRevenue) {
        this.f10944b.reportAdRevenue(adRevenue);
        this.f10949g.getClass();
        this.f10945c.execute(new p(adRevenue));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportECommerce(ECommerceEvent eCommerceEvent) {
        this.f10944b.reportECommerce(eCommerceEvent);
        this.f10949g.getClass();
        this.f10945c.execute(new q(eCommerceEvent));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, Throwable th) {
        this.f10944b.reportError(str, th);
        this.f10949g.getClass();
        if (th == null) {
            th = new C0650k6();
            th.fillInStackTrace();
        }
        this.f10945c.execute(new g(str, th));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str) {
        this.f10944b.reportEvent(str);
        this.f10949g.getClass();
        this.f10945c.execute(new d(str));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportRevenue(Revenue revenue) {
        this.f10944b.reportRevenue(revenue);
        this.f10949g.getClass();
        this.f10945c.execute(new o(revenue));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUnhandledException(Throwable th) {
        this.f10944b.reportUnhandledException(th);
        this.f10949g.getClass();
        this.f10945c.execute(new i(th));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportUserProfile(UserProfile userProfile) {
        this.f10944b.reportUserProfile(userProfile);
        this.f10949g.getClass();
        this.f10945c.execute(new n(userProfile));
    }

    @Override // com.yandex.metrica.IReporter
    public void resumeSession() {
        this.f10944b.getClass();
        this.f10949g.getClass();
        this.f10945c.execute(new j());
    }

    @Override // com.yandex.metrica.IReporter
    public void sendEventsBuffer() {
        this.f10944b.getClass();
        this.f10949g.getClass();
        this.f10945c.execute(new x());
    }

    @Override // com.yandex.metrica.IReporter
    public void setStatisticsSending(boolean z10) {
        this.f10944b.getClass();
        this.f10949g.getClass();
        this.f10945c.execute(new r(z10));
    }

    @Override // com.yandex.metrica.IReporter
    public void setUserProfileID(String str) {
        this.f10944b.getClass();
        this.f10949g.getClass();
        this.f10945c.execute(new l(str));
    }

    private Of(ICommonExecutor iCommonExecutor, Context context, String str, Sf sf2) {
        this(iCommonExecutor, context, new C0411ag(), sf2, new Wf(), new com.yandex.metrica.g(sf2, new D2()), com.yandex.metrica.f.b(str).b());
    }

    @Override // com.yandex.metrica.impl.ob.M0, com.yandex.metrica.e
    public void b(String str, String str2) {
        this.f10944b.getClass();
        this.f10949g.getClass();
        this.f10945c.execute(new a(str, str2));
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(H6 h62) {
        this.f10949g.getClass();
        this.f10945c.execute(new m(h62));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, String str2) {
        this.f10944b.reportEvent(str, str2);
        this.f10949g.getClass();
        this.f10945c.execute(new e(str, str2));
    }

    private Of(ICommonExecutor iCommonExecutor, Context context, C0411ag c0411ag, Sf sf2, Wf wf, com.yandex.metrica.g gVar, com.yandex.metrica.f fVar) {
        this(iCommonExecutor, context, c0411ag, sf2, wf, gVar, fVar, new Nf(c0411ag.a(), gVar, iCommonExecutor, new c(sf2, context, fVar)));
    }

    @Override // com.yandex.metrica.impl.ob.M0, com.yandex.metrica.e
    public void d(String str, String str2) {
        this.f10944b.d(str, str2);
        this.f10949g.getClass();
        this.f10945c.execute(new b(str, str2));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2) {
        this.f10944b.reportError(str, str2, null);
        this.f10945c.execute(new h(str, str2, null));
    }

    @Override // com.yandex.metrica.impl.ob.R0
    public void a(C0942w6 c0942w6) {
        this.f10949g.getClass();
        this.f10945c.execute(new u(c0942w6));
    }

    Of(ICommonExecutor iCommonExecutor, Context context, C0411ag c0411ag, Sf sf2, Wf wf, com.yandex.metrica.g gVar, com.yandex.metrica.f fVar, Nf nf2) {
        this.f10945c = iCommonExecutor;
        this.f10946d = context;
        this.f10944b = c0411ag;
        this.f10943a = sf2;
        this.f10947e = wf;
        this.f10949g = gVar;
        this.f10948f = fVar;
        this.f10950h = nf2;
    }

    @Override // com.yandex.metrica.IReporter
    public void reportError(String str, String str2, Throwable th) {
        this.f10944b.reportError(str, str2, th);
        this.f10945c.execute(new h(str, str2, th));
    }

    @Override // com.yandex.metrica.IReporter
    public void reportEvent(String str, Map<String, Object> map) {
        this.f10944b.reportEvent(str, map);
        this.f10949g.getClass();
        this.f10945c.execute(new f(str, A2.a((Map) map)));
    }

    @Override // com.yandex.metrica.impl.ob.M0
    public void a(String str, JSONObject jSONObject) {
        this.f10949g.getClass();
        this.f10945c.execute(new w(str, jSONObject));
    }

    public void a(com.yandex.metrica.f fVar) {
        com.yandex.metrica.f a10 = this.f10947e.a(fVar);
        this.f10949g.getClass();
        this.f10945c.execute(new t(a10));
    }

    static void a(Of of2, com.yandex.metrica.f fVar) {
        Sf sf2 = of2.f10943a;
        Context context = of2.f10946d;
        sf2.getClass();
        R2.a(context).c(fVar);
    }
}
