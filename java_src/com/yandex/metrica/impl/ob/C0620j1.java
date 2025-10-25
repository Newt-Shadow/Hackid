package com.yandex.metrica.impl.ob;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import com.yandex.metrica.PreloadInfo;
import com.yandex.metrica.b;
import com.yandex.metrica.core.api.executors.ICommonExecutor;
import com.yandex.metrica.impl.ob.C0394a;
import com.yandex.metrica.impl.ob.C0792q;
import com.yandex.metrica.impl.ob.r;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* renamed from: com.yandex.metrica.impl.ob.j1  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0620j1 extends B implements K0 {

    /* renamed from: y  reason: collision with root package name */
    private static final Kn<String> f12628y = new Hn(new Fn("Referral url"));

    /* renamed from: z  reason: collision with root package name */
    private static final Long f12629z = Long.valueOf(TimeUnit.SECONDS.toMillis(5));

    /* renamed from: p  reason: collision with root package name */
    private final com.yandex.metrica.b f12630p;

    /* renamed from: q  reason: collision with root package name */
    private final com.yandex.metrica.j f12631q;

    /* renamed from: r  reason: collision with root package name */
    private final C0588hi f12632r;

    /* renamed from: s  reason: collision with root package name */
    private C0394a f12633s;

    /* renamed from: t  reason: collision with root package name */
    private final C0909ul f12634t;

    /* renamed from: u  reason: collision with root package name */
    private final r f12635u;

    /* renamed from: v  reason: collision with root package name */
    private final AtomicBoolean f12636v;

    /* renamed from: w  reason: collision with root package name */
    private final C0647k3 f12637w;

    /* renamed from: x  reason: collision with root package name */
    private final C0626j7 f12638x;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.j1$a */
    /* loaded from: classes2.dex */
    public class a implements C0394a.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ICommonExecutor f12639a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ C0496e1 f12640b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ C0986y2 f12641c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ C0986y2 f12642d;

        /* renamed from: com.yandex.metrica.impl.ob.j1$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0129a implements Runnable {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ C0942w6 f12644a;

            RunnableC0129a(C0942w6 c0942w6) {
                this.f12644a = c0942w6;
            }

            @Override // java.lang.Runnable
            public void run() {
                C0620j1.this.a(this.f12644a);
                if (a.this.f12640b.a(this.f12644a.f13856a.f9979f)) {
                    a.this.f12641c.a().a(this.f12644a);
                }
                if (a.this.f12640b.b(this.f12644a.f13856a.f9979f)) {
                    a.this.f12642d.a().a(this.f12644a);
                }
            }
        }

        a(ICommonExecutor iCommonExecutor, C0496e1 c0496e1, C0986y2 c0986y2, C0986y2 c0986y22) {
            this.f12639a = iCommonExecutor;
            this.f12640b = c0496e1;
            this.f12641c = c0986y2;
            this.f12642d = c0986y22;
        }

        @Override // com.yandex.metrica.impl.ob.C0394a.b
        public void a() {
            this.f12639a.execute(new RunnableC0129a(C0620j1.this.f12637w.a()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.yandex.metrica.impl.ob.j1$b */
    /* loaded from: classes2.dex */
    public class b implements b.a {
        b() {
        }

        @Override // com.yandex.metrica.b.a
        public void a() {
            C0620j1 c0620j1 = C0620j1.this;
            c0620j1.f9742i.a(c0620j1.f9735b.a());
        }

        @Override // com.yandex.metrica.b.a
        public void b() {
            C0620j1 c0620j1 = C0620j1.this;
            c0620j1.f9742i.b(c0620j1.f9735b.a());
        }
    }

    /* renamed from: com.yandex.metrica.impl.ob.j1$c */
    /* loaded from: classes2.dex */
    static class c {
        c() {
        }

        C0909ul a(Context context, ICommonExecutor iCommonExecutor, C0429b9 c0429b9, C0620j1 c0620j1, C0588hi c0588hi) {
            return new C0909ul(context, c0429b9, c0620j1, iCommonExecutor, c0588hi.d());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C0620j1(android.content.Context r26, com.yandex.metrica.impl.ob.A3 r27, com.yandex.metrica.j r28, com.yandex.metrica.impl.ob.T1 r29, com.yandex.metrica.impl.ob.C0626j7 r30, com.yandex.metrica.impl.ob.C0588hi r31, com.yandex.metrica.impl.ob.C0986y2 r32, com.yandex.metrica.impl.ob.C0986y2 r33, com.yandex.metrica.impl.ob.C0429b9 r34, com.yandex.metrica.impl.ob.P r35, com.yandex.metrica.impl.ob.A0 r36) {
        /*
            r25 = this;
            r2 = r28
            com.yandex.metrica.impl.ob.Q1 r5 = new com.yandex.metrica.impl.ob.Q1
            com.yandex.metrica.CounterConfiguration r0 = new com.yandex.metrica.CounterConfiguration
            com.yandex.metrica.CounterConfiguration$b r1 = com.yandex.metrica.CounterConfiguration.b.MAIN
            r0.<init>(r2, r1)
            java.lang.String r1 = r2.userProfileID
            r3 = r27
            r5.<init>(r3, r0, r1)
            com.yandex.metrica.b r6 = new com.yandex.metrica.b
            java.lang.Integer r0 = r2.sessionTimeout
            if (r0 != 0) goto L21
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
            r3 = 10
            long r0 = r0.toMillis(r3)
            goto L26
        L21:
            int r0 = r0.intValue()
            long r0 = (long) r0
        L26:
            r6.<init>(r0)
            com.yandex.metrica.impl.ob.e1 r0 = new com.yandex.metrica.impl.ob.e1
            r8 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.bm r9 = r35.j()
            com.yandex.metrica.core.api.executors.ICommonExecutor r13 = r35.c()
            com.yandex.metrica.impl.ob.j1$c r0 = new com.yandex.metrica.impl.ob.j1$c
            r15 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.r r0 = new com.yandex.metrica.impl.ob.r
            r16 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.Zg r0 = new com.yandex.metrica.impl.ob.Zg
            r17 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.Yg r0 = new com.yandex.metrica.impl.ob.Yg
            r18 = r0
            java.lang.String r1 = r2.appVersion
            java.lang.String r3 = r2.f14099a
            r0.<init>(r1, r3)
            com.yandex.metrica.impl.ob.s6 r0 = new com.yandex.metrica.impl.ob.s6
            r19 = r0
            r14 = r36
            r0.<init>(r14)
            com.yandex.metrica.impl.ob.X6 r0 = new com.yandex.metrica.impl.ob.X6
            r20 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.S6 r0 = new com.yandex.metrica.impl.ob.S6
            r21 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.M6 r0 = new com.yandex.metrica.impl.ob.M6
            r22 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.K6 r0 = new com.yandex.metrica.impl.ob.K6
            r23 = r0
            r0.<init>()
            com.yandex.metrica.impl.ob.zg r24 = r35.k()
            r0 = r25
            r1 = r26
            r2 = r28
            r3 = r29
            r4 = r30
            r7 = r31
            r10 = r32
            r11 = r33
            r12 = r34
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19, r20, r21, r22, r23, r24)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.C0620j1.<init>(android.content.Context, com.yandex.metrica.impl.ob.A3, com.yandex.metrica.j, com.yandex.metrica.impl.ob.T1, com.yandex.metrica.impl.ob.j7, com.yandex.metrica.impl.ob.hi, com.yandex.metrica.impl.ob.y2, com.yandex.metrica.impl.ob.y2, com.yandex.metrica.impl.ob.b9, com.yandex.metrica.impl.ob.P, com.yandex.metrica.impl.ob.A0):void");
    }

    private void h() {
        this.f9742i.a(this.f9735b.a());
        this.f12630p.b(new b(), f12629z.longValue());
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void a(boolean z10) {
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void b(Activity activity) {
        if (this.f12635u.a(activity, r.a.PAUSED)) {
            d(activity != null ? activity.getClass().getSimpleName() : null);
            this.f12630p.a();
            if (activity != null) {
                this.f12634t.a(activity);
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.B, com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void c(String str, String str2) {
        super.c(str, str2);
        this.f12638x.a(this.f9735b.f11134c.a());
    }

    public final void g() {
        if (this.f12636v.compareAndSet(false, true)) {
            this.f12633s.c();
        }
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(String str, boolean z10) {
        if (this.f9736c.isEnabled()) {
            this.f9736c.i("App opened via deeplink: " + f(str));
        }
        this.f9742i.a(C1008z0.a("open", str, z10, this.f9736c), this.f9735b);
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void b(boolean z10) {
        this.f9735b.b().o(z10);
    }

    @Override // com.yandex.metrica.impl.ob.El
    public void b(JSONObject jSONObject) {
        T1 t12 = this.f9742i;
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        t12.a(new J(jSONObject.toString(), "view_tree", EnumC0396a1.EVENT_TYPE_VIEW_TREE.b(), 0, c0467cm), this.f9735b);
    }

    C0620j1(Context context, com.yandex.metrica.j jVar, T1 t12, C0626j7 c0626j7, Q1 q12, com.yandex.metrica.b bVar, C0588hi c0588hi, C0496e1 c0496e1, InterfaceC0442bm interfaceC0442bm, C0986y2 c0986y2, C0986y2 c0986y22, C0429b9 c0429b9, ICommonExecutor iCommonExecutor, A0 a02, c cVar, r rVar, Zg zg, Yg yg, C0846s6 c0846s6, X6 x62, S6 s62, M6 m62, K6 k62, C1024zg c1024zg) {
        super(context, t12, q12, a02, interfaceC0442bm, zg.a(t12.b(), jVar.apiKey, true), yg, x62, s62, m62, k62, c0846s6);
        this.f12636v = new AtomicBoolean(false);
        this.f12637w = new C0647k3();
        this.f9735b.a(a(jVar));
        this.f12630p = bVar;
        this.f12638x = c0626j7;
        this.f12631q = jVar;
        this.f12635u = rVar;
        C0909ul a10 = cVar.a(context, iCommonExecutor, c0429b9, this, c0588hi);
        this.f12634t = a10;
        this.f12632r = c0588hi;
        c0588hi.a(a10);
        a(jVar.nativeCrashReporting, this.f9735b);
        context.getApplicationContext();
        c0588hi.b();
        Bg bg = Bg.f9794b;
        this.f12633s = a(iCommonExecutor, c0496e1, c0986y2, c0986y22);
        if (C0419b.a(jVar.f14109k)) {
            g();
        }
        h();
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(String str) {
        ((Hn) f12628y).a(str);
        this.f9742i.a(C1008z0.a("referral", str, false, this.f9736c), this.f9735b);
        if (this.f9736c.isEnabled()) {
            this.f9736c.i("Referral URL received: " + f(str));
        }
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(C0792q.c cVar) {
        if (cVar == C0792q.c.WATCHING) {
            if (this.f9736c.isEnabled()) {
                this.f9736c.i("Enable activity auto tracking");
            }
        } else if (this.f9736c.isEnabled()) {
            C0467cm c0467cm = this.f9736c;
            c0467cm.w("Could not enable activity auto tracking. " + cVar.f13204a);
        }
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(Activity activity) {
        if (this.f12635u.a(activity, r.a.RESUMED)) {
            e(activity != null ? activity.getClass().getSimpleName() : null);
            this.f12630p.c();
            if (activity != null) {
                this.f12634t.b(activity);
            }
        }
    }

    @Override // com.yandex.metrica.impl.ob.InterfaceC0720n1
    public void a(Location location) {
        this.f9735b.b().c(location);
        if (this.f9736c.isEnabled()) {
            this.f9736c.fi("Set location: %s", location);
        }
    }

    private C0394a a(ICommonExecutor iCommonExecutor, C0496e1 c0496e1, C0986y2 c0986y2, C0986y2 c0986y22) {
        return new C0394a(new a(iCommonExecutor, c0496e1, c0986y2, c0986y22));
    }

    @Override // com.yandex.metrica.impl.ob.El
    public void a(JSONObject jSONObject) {
        T1 t12 = this.f9742i;
        C0467cm c0467cm = this.f9736c;
        List<Integer> list = C1008z0.f14050i;
        t12.a(new J(jSONObject.toString(), "view_tree", EnumC0396a1.EVENT_TYPE_RAW_VIEW_TREE.b(), 0, c0467cm), this.f9735b);
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(InterfaceC0690ll interfaceC0690ll, boolean z10) {
        this.f12634t.a(interfaceC0690ll, z10);
    }

    @Override // com.yandex.metrica.impl.ob.K0
    public void a(D2 d22) {
        d22.a(this.f9736c);
    }

    private void a(Boolean bool, Q1 q12) {
        Boolean bool2 = Boolean.TRUE;
        if (bool == null) {
            bool = bool2;
        }
        boolean booleanValue = bool.booleanValue();
        this.f12638x.a(booleanValue, q12.b().b(), q12.f11134c.a());
        if (this.f9736c.isEnabled()) {
            this.f9736c.fi("Set report native crashes enabled: %b", Boolean.valueOf(booleanValue));
        }
    }

    private C0609ie a(com.yandex.metrica.j jVar) {
        PreloadInfo preloadInfo = jVar.preloadInfo;
        C0467cm c0467cm = this.f9736c;
        Boolean bool = jVar.f14107i;
        Boolean bool2 = Boolean.FALSE;
        if (bool == null) {
            bool = bool2;
        }
        return new C0609ie(preloadInfo, c0467cm, bool.booleanValue());
    }
}
