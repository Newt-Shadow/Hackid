package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.yandex.metrica.IParamsCallback;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* renamed from: com.yandex.metrica.impl.ob.mi  reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C0712mi {

    /* renamed from: a  reason: collision with root package name */
    private final Set<String> f12946a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, W0> f12947b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f12948c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, String> f12949d;

    /* renamed from: e  reason: collision with root package name */
    private long f12950e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f12951f;

    /* renamed from: g  reason: collision with root package name */
    private C0541fl f12952g;

    /* renamed from: h  reason: collision with root package name */
    private C0826ra f12953h;

    /* renamed from: i  reason: collision with root package name */
    private long f12954i;

    /* renamed from: j  reason: collision with root package name */
    private final List<InterfaceC0566gl> f12955j;

    /* renamed from: k  reason: collision with root package name */
    private final C0429b9 f12956k;

    /* renamed from: l  reason: collision with root package name */
    private final Rh f12957l;

    /* renamed from: m  reason: collision with root package name */
    private final Th f12958m;

    /* renamed from: n  reason: collision with root package name */
    private final Wh f12959n;

    public C0712mi(Context context, C0429b9 c0429b9) {
        this(c0429b9, new Nh(), new Rh(), C0514ej.a(context).a(context, new C0589hj(c0429b9)), new Th(), new Wh(), new Vh());
    }

    private void b(String str, W0 w02) {
        if (a(w02)) {
            return;
        }
        this.f12947b.put(str, w02);
    }

    private void h() {
        this.f12956k.i(this.f12947b.get("yandex_mobile_metrica_uuid")).e(this.f12947b.get("yandex_mobile_metrica_device_id")).d(this.f12947b.get("appmetrica_device_id_hash")).a(this.f12947b.get("yandex_mobile_metrica_get_ad_url")).b(this.f12947b.get("yandex_mobile_metrica_report_ad_url")).h(this.f12950e).h(this.f12947b.get(IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS)).r(Tl.c(this.f12949d)).a(this.f12952g).a(this.f12953h).f(this.f12947b.get("yandex_mobile_metrica_google_adv_id")).g(this.f12947b.get("yandex_mobile_metrica_huawei_oaid")).j(this.f12947b.get("yandex_mobile_metrica_yandex_adv_id")).d(this.f12951f).c(this.f12958m.a()).g(this.f12954i).a(this.f12959n.a()).d();
    }

    public void a(Map<String, String> map) {
        if (A2.b(map) || A2.a(map, this.f12949d)) {
            return;
        }
        this.f12949d = new HashMap(map);
        this.f12951f = true;
        h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String c() {
        W0 w02 = this.f12947b.get("yandex_mobile_metrica_device_id");
        if (w02 == null) {
            return null;
        }
        return w02.f11672a;
    }

    public C0826ra d() {
        return this.f12953h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long e() {
        return this.f12950e;
    }

    public C0541fl f() {
        return this.f12952g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String g() {
        W0 w02 = this.f12947b.get("yandex_mobile_metrica_uuid");
        if (w02 == null) {
            return null;
        }
        return w02.f11672a;
    }

    private boolean b(W0 w02) {
        return w02 == null || TextUtils.isEmpty(w02.f11672a);
    }

    C0712mi(C0429b9 c0429b9, Nh nh, Rh rh, C0489dj c0489dj, Th th, Wh wh, Vh vh) {
        HashSet hashSet = new HashSet();
        this.f12946a = hashSet;
        this.f12947b = new HashMap();
        this.f12955j = new ArrayList();
        hashSet.add("yandex_mobile_metrica_google_adv_id");
        hashSet.add("yandex_mobile_metrica_huawei_oaid");
        hashSet.add("yandex_mobile_metrica_yandex_adv_id");
        this.f12956k = c0429b9;
        this.f12957l = rh;
        this.f12958m = th;
        this.f12959n = wh;
        a("yandex_mobile_metrica_uuid", c0489dj.a());
        a("yandex_mobile_metrica_device_id", c0429b9.l());
        a("appmetrica_device_id_hash", c0429b9.k());
        a("yandex_mobile_metrica_get_ad_url", c0429b9.f());
        a("yandex_mobile_metrica_report_ad_url", c0429b9.g());
        b(IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS, c0429b9.r());
        a("yandex_mobile_metrica_google_adv_id", c0429b9.o());
        a("yandex_mobile_metrica_huawei_oaid", c0429b9.p());
        a("yandex_mobile_metrica_yandex_adv_id", c0429b9.v());
        th.a(c0429b9.j());
        wh.a(c0429b9.n());
        this.f12948c = c0429b9.i();
        String k10 = c0429b9.k(null);
        this.f12949d = k10 != null ? Tl.a(k10) : null;
        this.f12951f = c0429b9.b(true);
        this.f12950e = c0429b9.d(0L);
        this.f12952g = c0429b9.t();
        this.f12953h = c0429b9.m();
        this.f12954i = c0429b9.q();
        h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean b(List<String> list) {
        boolean z10;
        boolean z11;
        z10 = true;
        boolean z12 = !a(C0737ni.a(list));
        Iterator<String> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z11 = false;
                break;
            }
            if (this.f12946a.contains(it.next())) {
                z11 = true;
                break;
            }
        }
        boolean a10 = C0737ni.a(this.f12954i);
        C0541fl c0541fl = this.f12952g;
        boolean z13 = !(c0541fl != null && c0541fl.a());
        if (!z12 && !z11 && !a10) {
            if (!this.f12951f && !z13) {
                z10 = false;
            }
        }
        return z10;
    }

    public boolean a() {
        W0 w02 = this.f12947b.get(IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS);
        if (!a(w02) && w02.f11672a.isEmpty()) {
            return A2.b(this.f12949d);
        }
        return true;
    }

    private void a(String str, W0 w02) {
        if (b(w02)) {
            return;
        }
        this.f12947b.put(str, w02);
    }

    private boolean a(W0 w02) {
        return w02 == null || w02.f11672a == null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<String> b() {
        return this.f12948c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(List<String> list, Map<String, W0> map) {
        for (String str : list) {
            W0 w02 = this.f12947b.get(str);
            if (w02 != null) {
                map.put(str, w02);
            }
        }
        this.f12958m.a(list, map);
        this.f12959n.a(list, map);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized boolean a(Collection<String> collection) {
        for (String str : collection) {
            W0 w02 = this.f12947b.get(str);
            if (w02 == null) {
                w02 = this.f12958m.b().get(str);
            }
            if (w02 == null) {
                w02 = this.f12959n.a(str);
            }
            if (IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS.equals(str)) {
                if (this.f12951f || a(w02) || (w02.f11672a.isEmpty() && !A2.b(this.f12949d))) {
                    return false;
                }
            } else if (IParamsCallback.YANDEX_MOBILE_METRICA_FEATURE_LIB_SSL_ENABLED.equals(str)) {
                if (w02 == null) {
                    return false;
                }
            } else if (b(w02)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Bundle bundle) {
        HashMap<String, String> d10;
        boolean equals;
        L l10 = new L(bundle);
        W0 o10 = l10.o();
        if (b(this.f12947b.get("yandex_mobile_metrica_uuid")) && !b(o10) && !b(o10)) {
            this.f12947b.put("yandex_mobile_metrica_uuid", o10);
        }
        W0 c10 = l10.c();
        if (!b(c10)) {
            this.f12947b.put("yandex_mobile_metrica_device_id", c10);
        }
        W0 d11 = l10.d();
        if (!b(d11)) {
            this.f12947b.put("appmetrica_device_id_hash", d11);
        }
        this.f12947b.put("yandex_mobile_metrica_google_adv_id", l10.g());
        this.f12947b.put("yandex_mobile_metrica_huawei_oaid", l10.i());
        this.f12947b.put("yandex_mobile_metrica_yandex_adv_id", l10.p());
        this.f12958m.a(l10.b());
        this.f12959n.a(l10.f());
        W0 h10 = l10.h();
        if (!a(h10)) {
            this.f12947b.put("yandex_mobile_metrica_get_ad_url", h10);
        }
        W0 k10 = l10.k();
        if (!a(k10)) {
            this.f12947b.put("yandex_mobile_metrica_report_ad_url", k10);
        }
        this.f12950e = l10.m();
        Rh rh = this.f12957l;
        Map<String, String> map = this.f12949d;
        String str = l10.a().f11672a;
        if (str == null) {
            d10 = null;
        } else if (str.isEmpty()) {
            d10 = new HashMap<>();
        } else {
            d10 = Tl.d(str);
        }
        rh.getClass();
        if (A2.b(map)) {
            equals = A2.b(d10);
        } else {
            equals = map.equals(d10);
        }
        if (equals) {
            this.f12947b.put(IParamsCallback.YANDEX_MOBILE_METRICA_CLIDS, l10.l());
            this.f12951f = false;
        }
        C0541fl n10 = l10.n();
        if (n10 != null && n10.a()) {
            this.f12952g = n10;
            for (InterfaceC0566gl interfaceC0566gl : this.f12955j) {
                interfaceC0566gl.a(this.f12952g);
            }
        }
        this.f12953h = l10.e();
        this.f12954i = l10.j();
        h();
    }

    public synchronized void a(InterfaceC0566gl interfaceC0566gl) {
        this.f12955j.add(interfaceC0566gl);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(List<String> list) {
        this.f12948c = list;
        this.f12956k.b(list);
    }
}
