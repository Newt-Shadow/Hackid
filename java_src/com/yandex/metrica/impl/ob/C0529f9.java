package com.yandex.metrica.impl.ob;

import android.text.TextUtils;
import com.yandex.metrica.impl.ob.C0811qi;
import com.yandex.metrica.impl.ob.If;
import com.yandex.metrica.impl.ob.Sh;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
@Deprecated
/* renamed from: com.yandex.metrica.impl.ob.f9  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0529f9 extends AbstractC0479d9 {

    /* renamed from: c  reason: collision with root package name */
    private Rd f12381c;

    /* renamed from: d  reason: collision with root package name */
    private Rd f12382d;

    /* renamed from: e  reason: collision with root package name */
    private Rd f12383e;

    /* renamed from: f  reason: collision with root package name */
    private Rd f12384f;

    /* renamed from: g  reason: collision with root package name */
    private Rd f12385g;
    @Deprecated

    /* renamed from: h  reason: collision with root package name */
    private Rd f12386h;

    /* renamed from: i  reason: collision with root package name */
    private Rd f12387i;
    @Deprecated

    /* renamed from: j  reason: collision with root package name */
    private Rd f12388j;

    /* renamed from: k  reason: collision with root package name */
    private Rd f12389k;

    /* renamed from: l  reason: collision with root package name */
    private Rd f12390l;

    /* renamed from: m  reason: collision with root package name */
    private Rd f12391m;

    /* renamed from: n  reason: collision with root package name */
    private Rd f12392n;

    /* renamed from: o  reason: collision with root package name */
    private Rd f12393o;

    /* renamed from: p  reason: collision with root package name */
    private Rd f12394p;

    /* renamed from: q  reason: collision with root package name */
    private Rd f12395q;

    /* renamed from: r  reason: collision with root package name */
    private Rd f12396r;

    /* renamed from: s  reason: collision with root package name */
    private Rd f12397s;

    /* renamed from: t  reason: collision with root package name */
    private Rd f12398t;

    /* renamed from: u  reason: collision with root package name */
    private Rd f12399u;

    /* renamed from: v  reason: collision with root package name */
    private Rd f12400v;

    /* renamed from: w  reason: collision with root package name */
    static final Rd f12377w = new Rd("PREF_KEY_UID_", null);

    /* renamed from: x  reason: collision with root package name */
    private static final Rd f12378x = new Rd("PREF_KEY_HOST_URL_", null);

    /* renamed from: y  reason: collision with root package name */
    private static final Rd f12379y = new Rd("PREF_KEY_HOST_URLS_FROM_STARTUP", null);

    /* renamed from: z  reason: collision with root package name */
    private static final Rd f12380z = new Rd("PREF_KEY_HOST_URLS_FROM_CLIENT", null);
    @Deprecated
    private static final Rd A = new Rd("PREF_KEY_REPORT_URL_", null);
    private static final Rd B = new Rd("PREF_KEY_REPORT_URLS_", null);
    @Deprecated
    private static final Rd C = new Rd("PREF_L_URL", null);
    private static final Rd D = new Rd("PREF_L_URLS", null);
    private static final Rd E = new Rd("PREF_KEY_GET_AD_URL", null);
    private static final Rd F = new Rd("PREF_KEY_REPORT_AD_URL", null);
    private static final Rd G = new Rd("PREF_KEY_STARTUP_OBTAIN_TIME_", null);
    private static final Rd H = new Rd("PREF_KEY_STARTUP_ENCODED_CLIDS_", null);
    static final Rd I = new Rd("PREF_KEY_DEVICE_ID_", null);
    private static final Rd J = new Rd("STARTUP_CLIDS_MATCH_WITH_APP_CLIDS_", null);
    @Deprecated
    private static final Rd K = new Rd("PREF_KEY_PINNING_UPDATE_URL", null);
    private static final Rd L = new Rd("PREF_KEY_EASY_COLLECTING_ENABLED_", null);
    private static final Rd M = new Rd("PREF_KEY_COLLECTING_PACKAGE_INFO_ENABLED_", null);
    private static final Rd N = new Rd("PREF_KEY_PERMISSIONS_COLLECTING_ENABLED_", null);
    private static final Rd O = new Rd("PREF_KEY_FEATURES_COLLECTING_ENABLED_", null);
    private static final Rd P = new Rd("SOCKET_CONFIG_", null);
    private static final Rd Q = new Rd("LAST_STARTUP_REQUEST_CLIDS", null);

    public C0529f9(S7 s72, String str) {
        super(s72, str);
        this.f12381c = new Rd(I.b());
        this.f12382d = d(f12377w.b());
        this.f12383e = d(f12378x.b());
        this.f12384f = d(f12379y.b());
        this.f12385g = d(f12380z.b());
        this.f12386h = d(A.b());
        this.f12387i = d(B.b());
        this.f12388j = d(C.b());
        this.f12389k = d(D.b());
        this.f12390l = d(E.b());
        this.f12391m = d(F.b());
        this.f12392n = d(G.b());
        this.f12393o = d(H.b());
        this.f12394p = d(J.b());
        this.f12395q = d(L.b());
        this.f12396r = d(M.b());
        this.f12397s = d(N.b());
        this.f12398t = d(O.b());
        this.f12400v = d(Q.b());
        this.f12399u = d(P.b());
    }

    public C0529f9 a(List<String> list) {
        return (C0529f9) b(this.f12389k.a(), Tl.c(list));
    }

    public C0529f9 b(List<String> list) {
        return (C0529f9) b(this.f12387i.a(), Tl.c(list));
    }

    public void f() {
        f(K.a());
        f(this.f12381c.a());
        f(this.f12390l.a());
        f(this.f12396r.a());
        f(this.f12395q.a());
        f(this.f12393o.a());
        f(this.f12398t.a());
        f(this.f12383e.a());
        f(this.f12385g.a());
        f(this.f12384f.a());
        f(this.f12400v.a());
        f(this.f12388j.a());
        f(this.f12389k.a());
        f(this.f12392n.a());
        f(this.f12397s.a());
        f(this.f12391m.a());
        f(this.f12386h.a());
        f(this.f12387i.a());
        f(this.f12399u.a());
        f(this.f12394p.a());
        f(this.f12382d.a());
        f(d(new Rd("PREF_KEY_DISTRIBUTION_REFERRER_", null).b()).a());
        d();
    }

    @Deprecated
    public C0811qi g() {
        C0811qi.b bVar;
        C0811qi.b bVar2;
        C0488di c0488di;
        C0811qi.b i10 = new C0811qi.b(new Sh(new Sh.a().d(a(this.f12395q.a(), Sh.b.f11338b)).m(a(this.f12396r.a(), Sh.b.f11339c)).n(a(this.f12397s.a(), Sh.b.f11340d)).f(a(this.f12398t.a(), Sh.b.f11341e)))).k(e(this.f12382d.a())).c(Tl.c(e(this.f12384f.a()))).b(Tl.c(e(this.f12385g.a()))).e(e(this.f12393o.a())).i(Tl.c(e(this.f12387i.a()))).e(Tl.c(e(this.f12389k.a()))).f(e(this.f12390l.a())).i(e(this.f12391m.a()));
        String e10 = e(this.f12399u.a());
        try {
        } catch (Throwable unused) {
            bVar = i10;
        }
        if (!TextUtils.isEmpty(e10)) {
            JSONObject jSONObject = new JSONObject(e10);
            If.q qVar = new If.q();
            long j10 = jSONObject.getLong("seconds_to_live");
            String string = jSONObject.getString("token");
            JSONArray jSONArray = jSONObject.getJSONArray("ports");
            ArrayList arrayList = new ArrayList(jSONArray.length());
            for (int i11 = 0; i11 < jSONArray.length(); i11++) {
                arrayList.add(Integer.valueOf(jSONArray.getInt(i11)));
            }
            bVar = i10;
            try {
                c0488di = new C0488di(j10, string, arrayList, new ArrayList(), jSONObject.getLong("first_delay_seconds"), jSONObject.getInt("launch_delay_seconds"), jSONObject.optLong("open_event_interval_seconds", qVar.f10367g), qVar.f10368h, qVar.f10369i, qVar.f10370j);
                bVar2 = bVar;
            } catch (Throwable unused2) {
                bVar2 = bVar;
                c0488di = null;
                return bVar2.a(c0488di).h(e(this.f12400v.a())).c(a(this.f12394p.a(), true)).c(a(this.f12392n.a(), -1L)).a();
            }
            return bVar2.a(c0488di).h(e(this.f12400v.a())).c(a(this.f12394p.a(), true)).c(a(this.f12392n.a(), -1L)).a();
        }
        bVar2 = i10;
        c0488di = null;
        return bVar2.a(c0488di).h(e(this.f12400v.a())).c(a(this.f12394p.a(), true)).c(a(this.f12392n.a(), -1L)).a();
    }

    @Deprecated
    public String h(String str) {
        return a(this.f12386h.a(), (String) null);
    }

    @Deprecated
    public C0529f9 i(String str) {
        return (C0529f9) b(this.f12381c.a(), str);
    }

    public C0529f9 j(String str) {
        return (C0529f9) b(this.f12393o.a(), str);
    }

    public C0529f9 k(String str) {
        return (C0529f9) b(this.f12390l.a(), str);
    }

    public C0529f9 l(String str) {
        return (C0529f9) b(this.f12383e.a(), str);
    }

    public C0529f9 m(String str) {
        return (C0529f9) b(this.f12391m.a(), str);
    }

    @Deprecated
    public C0529f9 n(String str) {
        return (C0529f9) b(this.f12386h.a(), str);
    }

    public C0529f9 o(String str) {
        return (C0529f9) b(this.f12382d.a(), str);
    }

    public C0529f9 a(boolean z10) {
        return (C0529f9) b(this.f12394p.a(), z10);
    }

    public C0529f9 b(long j10) {
        return (C0529f9) b(this.f12392n.a(), j10);
    }

    @Deprecated
    public String g(String str) {
        return a(this.f12388j.a(), (String) null);
    }
}
