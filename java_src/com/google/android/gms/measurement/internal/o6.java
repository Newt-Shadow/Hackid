package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.tg;
import com.google.android.gms.internal.measurement.ug;
import com.google.android.gms.internal.measurement.yf;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.Callable;
/* loaded from: classes.dex */
public final class o6 extends ad implements l {

    /* renamed from: d  reason: collision with root package name */
    private final Map f7818d;

    /* renamed from: e  reason: collision with root package name */
    final Map f7819e;

    /* renamed from: f  reason: collision with root package name */
    final Map f7820f;

    /* renamed from: g  reason: collision with root package name */
    final Map f7821g;

    /* renamed from: h  reason: collision with root package name */
    private final Map f7822h;

    /* renamed from: i  reason: collision with root package name */
    private final Map f7823i;

    /* renamed from: j  reason: collision with root package name */
    final r.h f7824j;

    /* renamed from: k  reason: collision with root package name */
    final yf f7825k;

    /* renamed from: l  reason: collision with root package name */
    private final Map f7826l;

    /* renamed from: m  reason: collision with root package name */
    private final Map f7827m;

    /* renamed from: n  reason: collision with root package name */
    private final Map f7828n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o6(pd pdVar) {
        super(pdVar);
        this.f7818d = new r.a();
        this.f7819e = new r.a();
        this.f7820f = new r.a();
        this.f7821g = new r.a();
        this.f7822h = new r.a();
        this.f7826l = new r.a();
        this.f7827m = new r.a();
        this.f7828n = new r.a();
        this.f7823i = new r.a();
        this.f7824j = new h6(this, 20);
        this.f7825k = new i6(this);
    }

    private final void q(String str) {
        j();
        h();
        n5.q.e(str);
        Map map = this.f7822h;
        if (map.get(str) == null) {
            p N0 = this.f8149b.F0().N0(str);
            if (N0 == null) {
                this.f7818d.put(str, null);
                this.f7820f.put(str, null);
                this.f7819e.put(str, null);
                this.f7821g.put(str, null);
                map.put(str, null);
                this.f7826l.put(str, null);
                this.f7827m.put(str, null);
                this.f7828n.put(str, null);
                this.f7823i.put(str, null);
                return;
            }
            com.google.android.gms.internal.measurement.k5 k5Var = (com.google.android.gms.internal.measurement.k5) t(str, N0.f7846a).p();
            r(str, k5Var);
            this.f7818d.put(str, u((com.google.android.gms.internal.measurement.l5) k5Var.p()));
            map.put(str, (com.google.android.gms.internal.measurement.l5) k5Var.p());
            s(str, (com.google.android.gms.internal.measurement.l5) k5Var.p());
            this.f7826l.put(str, k5Var.A());
            this.f7827m.put(str, N0.f7847b);
            this.f7828n.put(str, N0.f7848c);
        }
    }

    private final void r(String str, com.google.android.gms.internal.measurement.k5 k5Var) {
        HashSet hashSet = new HashSet();
        r.a aVar = new r.a();
        r.a aVar2 = new r.a();
        r.a aVar3 = new r.a();
        for (com.google.android.gms.internal.measurement.h5 h5Var : k5Var.z()) {
            hashSet.add(h5Var.C());
        }
        for (int i10 = 0; i10 < k5Var.t(); i10++) {
            com.google.android.gms.internal.measurement.i5 i5Var = (com.google.android.gms.internal.measurement.i5) k5Var.u(i10).p();
            if (i5Var.t().isEmpty()) {
                this.f8322a.a().r().a("EventConfig contained null event name");
            } else {
                String t10 = i5Var.t();
                String b10 = i6.t.b(i5Var.t());
                if (!TextUtils.isEmpty(b10)) {
                    i5Var.u(b10);
                    k5Var.v(i10, i5Var);
                }
                if (i5Var.v() && i5Var.w()) {
                    aVar.put(t10, Boolean.TRUE);
                }
                if (i5Var.x() && i5Var.y()) {
                    aVar2.put(i5Var.t(), Boolean.TRUE);
                }
                if (i5Var.z()) {
                    if (i5Var.A() >= 2 && i5Var.A() <= 65535) {
                        aVar3.put(i5Var.t(), Integer.valueOf(i5Var.A()));
                    } else {
                        this.f8322a.a().r().c("Invalid sampling rate. Event name, sample rate", i5Var.t(), Integer.valueOf(i5Var.A()));
                    }
                }
            }
        }
        this.f7819e.put(str, hashSet);
        this.f7820f.put(str, aVar);
        this.f7821g.put(str, aVar2);
        this.f7823i.put(str, aVar3);
    }

    private final void s(final String str, com.google.android.gms.internal.measurement.l5 l5Var) {
        if (l5Var.L() != 0) {
            w6 w6Var = this.f8322a;
            w6Var.a().w().b("EES programs found", Integer.valueOf(l5Var.L()));
            com.google.android.gms.internal.measurement.d8 d8Var = (com.google.android.gms.internal.measurement.d8) l5Var.K().get(0);
            try {
                com.google.android.gms.internal.measurement.c1 c1Var = new com.google.android.gms.internal.measurement.c1();
                c1Var.a("internal.remoteConfig", new Callable() { // from class: com.google.android.gms.measurement.internal.n6
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Object call() {
                        return new com.google.android.gms.internal.measurement.vb("internal.remoteConfig", new j6(o6.this, str));
                    }
                });
                c1Var.a("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.k6
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Object call() {
                        final o6 o6Var = o6.this;
                        final String str2 = str;
                        return new ug("internal.appMetadata", new Callable() { // from class: com.google.android.gms.measurement.internal.m6
                            @Override // java.util.concurrent.Callable
                            public final /* synthetic */ Object call() {
                                o6 o6Var2 = o6.this;
                                u F0 = o6Var2.f8149b.F0();
                                String str3 = str2;
                                v5 J0 = F0.J0(str3);
                                HashMap hashMap = new HashMap();
                                hashMap.put("platform", "android");
                                hashMap.put("package_name", str3);
                                o6Var2.f8322a.w().A();
                                hashMap.put("gmp_version", 133005L);
                                if (J0 != null) {
                                    String D0 = J0.D0();
                                    if (D0 != null) {
                                        hashMap.put("app_version", D0);
                                    }
                                    hashMap.put("app_version_int", Long.valueOf(J0.F0()));
                                    hashMap.put("dynamite_version", Long.valueOf(J0.b()));
                                }
                                return hashMap;
                            }
                        });
                    }
                });
                c1Var.a("internal.logger", new Callable() { // from class: com.google.android.gms.measurement.internal.l6
                    @Override // java.util.concurrent.Callable
                    public final /* synthetic */ Object call() {
                        return new tg(o6.this.f7825k);
                    }
                });
                c1Var.f(d8Var);
                this.f7824j.d(str, c1Var);
                w6Var.a().w().c("EES program loaded for appId, activities", str, Integer.valueOf(d8Var.D().D()));
                for (com.google.android.gms.internal.measurement.a8 a8Var : d8Var.D().C()) {
                    w6Var.a().w().b("EES program activity", a8Var.C());
                }
                return;
            } catch (com.google.android.gms.internal.measurement.c2 unused) {
                this.f8322a.a().o().b("Failed to load EES program. appId", str);
                return;
            }
        }
        this.f7824j.e(str);
    }

    private final com.google.android.gms.internal.measurement.l5 t(String str, byte[] bArr) {
        Long l10;
        if (bArr == null) {
            return com.google.android.gms.internal.measurement.l5.T();
        }
        try {
            com.google.android.gms.internal.measurement.l5 l5Var = (com.google.android.gms.internal.measurement.l5) ((com.google.android.gms.internal.measurement.k5) td.W(com.google.android.gms.internal.measurement.l5.S(), bArr)).p();
            n5 w10 = this.f8322a.a().w();
            String str2 = null;
            if (l5Var.C()) {
                l10 = Long.valueOf(l5Var.D());
            } else {
                l10 = null;
            }
            if (l5Var.E()) {
                str2 = l5Var.F();
            }
            w10.c("Parsed config. version, gmp_app_id", l10, str2);
            return l5Var;
        } catch (com.google.android.gms.internal.measurement.qb e10) {
            this.f8322a.a().r().c("Unable to merge remote config. appId", p5.x(str), e10);
            return com.google.android.gms.internal.measurement.l5.T();
        } catch (RuntimeException e11) {
            this.f8322a.a().r().c("Unable to merge remote config. appId", p5.x(str), e11);
            return com.google.android.gms.internal.measurement.l5.T();
        }
    }

    private static final Map u(com.google.android.gms.internal.measurement.l5 l5Var) {
        r.a aVar = new r.a();
        if (l5Var != null) {
            for (com.google.android.gms.internal.measurement.t5 t5Var : l5Var.G()) {
                aVar.put(t5Var.C(), t5Var.D());
            }
        }
        return aVar;
    }

    private static final i6.s v(int i10) {
        int i11 = i10 - 1;
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 4) {
                        return null;
                    }
                    return i6.s.AD_PERSONALIZATION;
                }
                return i6.s.AD_USER_DATA;
            }
            return i6.s.ANALYTICS_STORAGE;
        }
        return i6.s.AD_STORAGE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void A(String str) {
        h();
        this.f7827m.put(str, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void B(String str) {
        h();
        this.f7822h.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean C(String str, byte[] bArr, String str2, String str3) {
        j();
        h();
        n5.q.e(str);
        com.google.android.gms.internal.measurement.k5 k5Var = (com.google.android.gms.internal.measurement.k5) t(str, bArr).p();
        r(str, k5Var);
        s(str, (com.google.android.gms.internal.measurement.l5) k5Var.p());
        this.f7822h.put(str, (com.google.android.gms.internal.measurement.l5) k5Var.p());
        this.f7826l.put(str, k5Var.A());
        this.f7827m.put(str, str2);
        this.f7828n.put(str, str3);
        this.f7818d.put(str, u((com.google.android.gms.internal.measurement.l5) k5Var.p()));
        this.f8149b.F0().Y(str, new ArrayList(k5Var.w()));
        try {
            k5Var.x();
            bArr = ((com.google.android.gms.internal.measurement.l5) k5Var.p()).e();
        } catch (RuntimeException e10) {
            this.f8322a.a().r().c("Unable to serialize reduced-size config. Storing full config instead. appId", p5.x(str), e10);
        }
        u F0 = this.f8149b.F0();
        n5.q.e(str);
        F0.h();
        F0.j();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        contentValues.put("e_tag", str3);
        try {
            if (F0.u0().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                F0.f8322a.a().o().b("Failed to update remote config (got 0). appId", p5.x(str));
            }
        } catch (SQLiteException e11) {
            F0.f8322a.a().o().c("Error storing remote config. appId", p5.x(str), e11);
        }
        k5Var.y();
        this.f7822h.put(str, (com.google.android.gms.internal.measurement.l5) k5Var.p());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean D(String str, String str2) {
        Boolean bool;
        h();
        q(str);
        if (H(str) && yd.N(str2)) {
            return true;
        }
        if (I(str) && yd.r0(str2)) {
            return true;
        }
        Map map = (Map) this.f7820f.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean E(String str, String str2) {
        Boolean bool;
        h();
        q(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.f7821g.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Set F(String str) {
        h();
        q(str);
        return (Set) this.f7819e.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int G(String str, String str2) {
        Integer num;
        h();
        q(str);
        Map map = (Map) this.f7823i.get(str);
        if (map != null && (num = (Integer) map.get(str2)) != null) {
            return num.intValue();
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean H(String str) {
        return "1".equals(d(str, "measurement.upload.blacklist_internal"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean I(String str) {
        return "1".equals(d(str, "measurement.upload.blacklist_public"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean J(String str) {
        h();
        q(str);
        Map map = this.f7819e;
        if (map.get(str) == null) {
            return false;
        }
        if (!((Set) map.get(str)).contains("device_model") && !((Set) map.get(str)).contains("device_info")) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean K(String str) {
        h();
        q(str);
        Map map = this.f7819e;
        if (map.get(str) == null) {
            return false;
        }
        if (!((Set) map.get(str)).contains(CommonUrlParts.OS_VERSION) && !((Set) map.get(str)).contains("device_info")) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean L(String str) {
        h();
        q(str);
        Map map = this.f7819e;
        if (map.get(str) != null && ((Set) map.get(str)).contains("user_id")) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean M(String str) {
        h();
        q(str);
        Map map = this.f7819e;
        if (map.get(str) != null && ((Set) map.get(str)).contains("google_signals")) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean N(String str) {
        h();
        q(str);
        Map map = this.f7819e;
        if (map.get(str) != null && ((Set) map.get(str)).contains("app_instance_id")) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean O(String str) {
        h();
        q(str);
        Map map = this.f7819e;
        if (map.get(str) != null && ((Set) map.get(str)).contains("enhanced_user_id")) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean P(String str, i6.s sVar) {
        h();
        q(str);
        com.google.android.gms.internal.measurement.f5 R = R(str);
        if (R == null) {
            return false;
        }
        Iterator it = R.C().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            com.google.android.gms.internal.measurement.t4 t4Var = (com.google.android.gms.internal.measurement.t4) it.next();
            if (sVar == v(t4Var.D())) {
                if (t4Var.E() == 2) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final i6.s Q(String str, i6.s sVar) {
        h();
        q(str);
        com.google.android.gms.internal.measurement.f5 R = R(str);
        if (R != null) {
            for (com.google.android.gms.internal.measurement.v4 v4Var : R.D()) {
                if (sVar == v(v4Var.D())) {
                    return v(v4Var.E());
                }
            }
            return null;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final com.google.android.gms.internal.measurement.f5 R(String str) {
        h();
        q(str);
        com.google.android.gms.internal.measurement.l5 w10 = w(str);
        if (w10 != null && w10.O()) {
            return w10.P();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean S(String str) {
        h();
        q(str);
        com.google.android.gms.internal.measurement.f5 R = R(str);
        if (R == null || !R.F() || R.G()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final SortedSet T(String str) {
        h();
        q(str);
        TreeSet treeSet = new TreeSet();
        com.google.android.gms.internal.measurement.f5 R = R(str);
        if (R != null) {
            for (com.google.android.gms.internal.measurement.c5 c5Var : R.E()) {
                treeSet.add(c5Var.C());
            }
        }
        return treeSet;
    }

    @Override // com.google.android.gms.measurement.internal.l
    public final String d(String str, String str2) {
        h();
        q(str);
        Map map = (Map) this.f7818d.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    @Override // com.google.android.gms.measurement.internal.ad
    protected final boolean l() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final i6.r m(String str, i6.s sVar) {
        h();
        q(str);
        com.google.android.gms.internal.measurement.f5 R = R(str);
        if (R == null) {
            return i6.r.UNINITIALIZED;
        }
        for (com.google.android.gms.internal.measurement.t4 t4Var : R.H()) {
            if (v(t4Var.D()) == sVar) {
                int E = t4Var.E() - 1;
                if (E != 1) {
                    if (E != 2) {
                        return i6.r.UNINITIALIZED;
                    }
                    return i6.r.DENIED;
                }
                return i6.r.GRANTED;
            }
        }
        return i6.r.UNINITIALIZED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean n(String str) {
        h();
        q(str);
        com.google.android.gms.internal.measurement.f5 R = R(str);
        if (R == null) {
            return false;
        }
        for (com.google.android.gms.internal.measurement.t4 t4Var : R.C()) {
            if (t4Var.D() == 3 && t4Var.F() == 3) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ com.google.android.gms.internal.measurement.c1 o(String str) {
        j();
        n5.q.e(str);
        p N0 = this.f8149b.F0().N0(str);
        if (N0 == null) {
            return null;
        }
        this.f8322a.a().w().b("Populate EES config from database on cache miss. appId", str);
        s(str, t(str, N0.f7846a));
        return (com.google.android.gms.internal.measurement.c1) this.f7824j.h().get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Map p() {
        return this.f7818d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final com.google.android.gms.internal.measurement.l5 w(String str) {
        j();
        h();
        n5.q.e(str);
        q(str);
        return (com.google.android.gms.internal.measurement.l5) this.f7822h.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String x(String str) {
        h();
        q(str);
        return (String) this.f7826l.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String y(String str) {
        h();
        return (String) this.f7827m.get(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final String z(String str) {
        h();
        return (String) this.f7828n.get(str);
    }
}
