package io.appmetrica.analytics.impl;

import android.content.Context;
import android.text.TextUtils;
import io.appmetrica.analytics.StartupParamsCallback;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.internal.IdentifiersResult;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class Hl {

    /* renamed from: a  reason: collision with root package name */
    public final HashSet f18326a;

    /* renamed from: b  reason: collision with root package name */
    public final HashMap f18327b;

    /* renamed from: c  reason: collision with root package name */
    public final El f18328c;

    /* renamed from: d  reason: collision with root package name */
    public List f18329d;

    /* renamed from: e  reason: collision with root package name */
    public HashMap f18330e;

    /* renamed from: f  reason: collision with root package name */
    public long f18331f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f18332g;

    /* renamed from: h  reason: collision with root package name */
    public long f18333h;

    /* renamed from: i  reason: collision with root package name */
    public final Te f18334i;

    /* renamed from: j  reason: collision with root package name */
    public final K f18335j;

    /* renamed from: k  reason: collision with root package name */
    public final U3 f18336k;

    /* renamed from: l  reason: collision with root package name */
    public final I6 f18337l;

    /* renamed from: m  reason: collision with root package name */
    public final C1167fa f18338m;

    /* renamed from: n  reason: collision with root package name */
    public final C1142ea f18339n;

    /* renamed from: o  reason: collision with root package name */
    public final Vn f18340o;

    public Hl(Context context, Te te2) {
        this(te2, new K(), new U3(), C1509t4.j().a(context), new I6(), new C1167fa(), new C1142ea(), new Vn());
    }

    public final synchronized boolean a(List list) {
        Set T;
        boolean z10;
        boolean z11;
        T = yc.w.T(list, Nl.f18655a);
        z10 = true;
        boolean z12 = !a(T);
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                z11 = false;
                break;
            }
            if (this.f18326a.contains((String) it.next())) {
                z11 = true;
                break;
            }
        }
        boolean z13 = Nl.f18656b.currentTimeSeconds() > this.f18333h;
        if (!z12 && !z11 && !z13) {
            if (!this.f18332g) {
                z10 = false;
            }
        }
        return z10;
    }

    public final void b(IdentifiersResult identifiersResult) {
        if (a(identifiersResult)) {
            return;
        }
        this.f18327b.put("appmetrica_clids", identifiersResult);
    }

    public final void c(IdentifiersResult identifiersResult) {
        if (identifiersResult != null) {
            Vn vn = this.f18340o;
            String str = identifiersResult.f21091id;
            vn.getClass();
            if (Vn.a(str)) {
                this.f18327b.put(StartupParamsCallback.APPMETRICA_UUID, identifiersResult);
            }
        }
    }

    public final synchronized boolean b() {
        return a(Arrays.asList("appmetrica_clids", "appmetrica_device_id_hash", StartupParamsCallback.APPMETRICA_DEVICE_ID, "appmetrica_get_ad_url", "appmetrica_report_ad_url", StartupParamsCallback.APPMETRICA_UUID));
    }

    public final void c() {
        C1217ha c1217ha;
        Te d10 = this.f18334i.i((IdentifiersResult) this.f18327b.get(StartupParamsCallback.APPMETRICA_UUID)).e((IdentifiersResult) this.f18327b.get(StartupParamsCallback.APPMETRICA_DEVICE_ID)).d((IdentifiersResult) this.f18327b.get("appmetrica_device_id_hash")).a((IdentifiersResult) this.f18327b.get("appmetrica_get_ad_url")).b((IdentifiersResult) this.f18327b.get("appmetrica_report_ad_url")).e(this.f18331f).h((IdentifiersResult) this.f18327b.get("appmetrica_clids")).j(AbstractC1477rm.a((Map) this.f18330e)).f((IdentifiersResult) this.f18327b.get("appmetrica_google_adv_id")).g((IdentifiersResult) this.f18327b.get("appmetrica_huawei_oaid")).j((IdentifiersResult) this.f18327b.get("appmetrica_yandex_adv_id")).b(this.f18332g).c(this.f18337l.f18375d).d(this.f18333h);
        C1167fa c1167fa = this.f18338m;
        synchronized (c1167fa) {
            c1217ha = c1167fa.f19638b;
        }
        d10.a(c1217ha).b();
    }

    public Hl(Te te2, K k10, U3 u32, Bd bd2, I6 i62, C1167fa c1167fa, C1142ea c1142ea, Vn vn) {
        HashSet hashSet = new HashSet();
        this.f18326a = hashSet;
        this.f18327b = new HashMap();
        this.f18328c = new El();
        hashSet.add("appmetrica_google_adv_id");
        hashSet.add("appmetrica_huawei_oaid");
        hashSet.add("appmetrica_yandex_adv_id");
        this.f18334i = te2;
        this.f18335j = k10;
        this.f18336k = u32;
        this.f18337l = i62;
        this.f18338m = c1167fa;
        this.f18339n = c1142ea;
        this.f18340o = vn;
        c(bd2.a());
        a(StartupParamsCallback.APPMETRICA_DEVICE_ID, te2.j());
        a("appmetrica_device_id_hash", te2.i());
        a("appmetrica_get_ad_url", te2.d());
        a("appmetrica_report_ad_url", te2.e());
        b(te2.o());
        a("appmetrica_google_adv_id", te2.l());
        a("appmetrica_huawei_oaid", te2.m());
        a("appmetrica_yandex_adv_id", te2.r());
        i62.a(te2.h());
        c1167fa.a(te2.k());
        this.f18329d = te2.g();
        String i10 = te2.i((String) null);
        this.f18330e = i10 != null ? AbstractC1477rm.a(i10) : null;
        this.f18332g = te2.a(true);
        this.f18331f = te2.b(0L);
        this.f18333h = te2.n();
        c();
    }

    public final boolean a() {
        IdentifiersResult identifiersResult = (IdentifiersResult) this.f18327b.get("appmetrica_clids");
        if (!a(identifiersResult) && identifiersResult.f21091id.isEmpty()) {
            return Rn.a((Map) this.f18330e);
        }
        return true;
    }

    public static boolean a(IdentifiersResult identifiersResult) {
        return identifiersResult == null || identifiersResult.f21091id == null;
    }

    public final void a(String str, IdentifiersResult identifiersResult) {
        if (identifiersResult == null || TextUtils.isEmpty(identifiersResult.f21091id)) {
            return;
        }
        this.f18327b.put(str, identifiersResult);
    }

    public final synchronized boolean a(Collection collection) {
        Boolean bool;
        String str;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            IdentifiersResult identifiersResult = (IdentifiersResult) this.f18327b.get(str2);
            if (identifiersResult == null) {
                identifiersResult = (IdentifiersResult) this.f18337l.f18374c.get(str2);
            }
            if (identifiersResult == null) {
                C1217ha c1217ha = this.f18338m.f19638b;
                if (!kotlin.jvm.internal.m.a(str2, "appmetrica_lib_ssl_enabled") || (bool = c1217ha.f19730a) == null) {
                    identifiersResult = null;
                } else {
                    boolean booleanValue = bool.booleanValue();
                    IdentifierStatus identifierStatus = c1217ha.f19731b;
                    String str3 = c1217ha.f19732c;
                    if (booleanValue) {
                        str = "true";
                    } else if (booleanValue) {
                        throw new xc.i();
                    } else {
                        str = "false";
                    }
                    identifiersResult = new IdentifiersResult(str, identifierStatus, str3);
                }
            }
            if ("appmetrica_clids".equals(str2)) {
                if (this.f18332g || a(identifiersResult) || (identifiersResult.f21091id.isEmpty() && !Rn.a((Map) this.f18330e))) {
                    return false;
                }
            } else if ("appmetrica_lib_ssl_enabled".equals(str2)) {
                if (identifiersResult == null) {
                    return false;
                }
            } else if (identifiersResult == null || TextUtils.isEmpty(identifiersResult.f21091id)) {
                return false;
            }
        }
        return true;
    }
}
