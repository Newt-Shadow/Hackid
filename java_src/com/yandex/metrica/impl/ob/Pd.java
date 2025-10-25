package com.yandex.metrica.impl.ob;

import android.content.Context;
@Deprecated
/* loaded from: classes2.dex */
public class Pd extends Kd {

    /* renamed from: f  reason: collision with root package name */
    private Rd f11088f;

    /* renamed from: g  reason: collision with root package name */
    private Rd f11089g;

    /* renamed from: h  reason: collision with root package name */
    private Rd f11090h;

    /* renamed from: i  reason: collision with root package name */
    private Rd f11091i;

    /* renamed from: j  reason: collision with root package name */
    private Rd f11092j;

    /* renamed from: k  reason: collision with root package name */
    private Rd f11093k;

    /* renamed from: l  reason: collision with root package name */
    private Rd f11094l;

    /* renamed from: m  reason: collision with root package name */
    private Rd f11095m;

    /* renamed from: n  reason: collision with root package name */
    private Rd f11096n;

    /* renamed from: o  reason: collision with root package name */
    private Rd f11097o;

    /* renamed from: p  reason: collision with root package name */
    static final Rd f11077p = new Rd("PREF_KEY_DEVICE_ID_", null);

    /* renamed from: q  reason: collision with root package name */
    static final Rd f11078q = new Rd("PREF_KEY_UID_", null);

    /* renamed from: r  reason: collision with root package name */
    private static final Rd f11079r = new Rd("PREF_KEY_HOST_URL_", null);

    /* renamed from: s  reason: collision with root package name */
    private static final Rd f11080s = new Rd("PREF_KEY_REPORT_URL_", null);

    /* renamed from: t  reason: collision with root package name */
    private static final Rd f11081t = new Rd("PREF_KEY_GET_AD_URL", null);

    /* renamed from: u  reason: collision with root package name */
    private static final Rd f11082u = new Rd("PREF_KEY_REPORT_AD_URL", null);

    /* renamed from: v  reason: collision with root package name */
    private static final Rd f11083v = new Rd("PREF_KEY_STARTUP_OBTAIN_TIME_", null);

    /* renamed from: w  reason: collision with root package name */
    private static final Rd f11084w = new Rd("PREF_KEY_STARTUP_ENCODED_CLIDS_", null);

    /* renamed from: x  reason: collision with root package name */
    private static final Rd f11085x = new Rd("PREF_KEY_DISTRIBUTION_REFERRER_", null);

    /* renamed from: y  reason: collision with root package name */
    static final Rd f11086y = new Rd("STARTUP_CLIDS_MATCH_WITH_APP_CLIDS_", null);

    /* renamed from: z  reason: collision with root package name */
    static final Rd f11087z = new Rd("PREF_KEY_PINNING_UPDATE_URL", null);
    private static final Rd A = new Rd("PREF_KEY_EASY_COLLECTING_ENABLED_", null);

    public Pd(Context context) {
        this(context, null);
    }

    public long a(long j10) {
        return this.f10623b.getLong(this.f11094l.a(), j10);
    }

    public String b(String str) {
        return this.f10623b.getString(this.f11088f.a(), null);
    }

    public String c(String str) {
        return this.f10623b.getString(this.f11095m.a(), null);
    }

    @Override // com.yandex.metrica.impl.ob.Kd
    protected String d() {
        return "_startupserviceinfopreferences";
    }

    public String e(String str) {
        return this.f10623b.getString(this.f11090h.a(), null);
    }

    public String f(String str) {
        return this.f10623b.getString(this.f11093k.a(), null);
    }

    public String g(String str) {
        return this.f10623b.getString(this.f11091i.a(), null);
    }

    public String h(String str) {
        return this.f10623b.getString(this.f11089g.a(), null);
    }

    public Pd i(String str) {
        return (Pd) a(this.f11088f.a(), str);
    }

    public Pd j(String str) {
        return (Pd) a(this.f11089g.a(), str);
    }

    public Pd(Context context, String str) {
        super(context, str);
        this.f11088f = new Rd(f11077p.b());
        this.f11089g = new Rd(f11078q.b(), c());
        this.f11090h = new Rd(f11079r.b(), c());
        this.f11091i = new Rd(f11080s.b(), c());
        this.f11092j = new Rd(f11081t.b(), c());
        this.f11093k = new Rd(f11082u.b(), c());
        this.f11094l = new Rd(f11083v.b(), c());
        this.f11095m = new Rd(f11084w.b(), c());
        this.f11096n = new Rd(f11085x.b(), c());
        this.f11097o = new Rd(A.b(), c());
    }

    public static void b(Context context) {
        C0419b.a(context, "_startupserviceinfopreferences").edit().remove(f11077p.b()).apply();
    }

    public String d(String str) {
        return this.f10623b.getString(this.f11092j.a(), null);
    }

    public void f() {
        a(this.f11088f.a()).a(this.f11089g.a()).a(this.f11090h.a()).a(this.f11091i.a()).a(this.f11092j.a()).a(this.f11093k.a()).a(this.f11094l.a()).a(this.f11097o.a()).a(this.f11095m.a()).a(this.f11096n.b()).a(f11086y.b()).a(f11087z.b()).b();
    }
}
