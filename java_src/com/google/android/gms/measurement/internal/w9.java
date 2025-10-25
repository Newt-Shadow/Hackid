package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.nf;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.plugins.firebase.analytics.Constants;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import o6.r;
/* loaded from: classes.dex */
public final class w9 extends e5 {

    /* renamed from: c  reason: collision with root package name */
    protected k9 f8191c;

    /* renamed from: d  reason: collision with root package name */
    private i6.w f8192d;

    /* renamed from: e  reason: collision with root package name */
    private final Set f8193e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f8194f;

    /* renamed from: g  reason: collision with root package name */
    private final AtomicReference f8195g;

    /* renamed from: h  reason: collision with root package name */
    private final Object f8196h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f8197i;

    /* renamed from: j  reason: collision with root package name */
    private int f8198j;

    /* renamed from: k  reason: collision with root package name */
    private x f8199k;

    /* renamed from: l  reason: collision with root package name */
    private x f8200l;

    /* renamed from: m  reason: collision with root package name */
    private PriorityQueue f8201m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f8202n;

    /* renamed from: o  reason: collision with root package name */
    private d8 f8203o;

    /* renamed from: p  reason: collision with root package name */
    private final AtomicLong f8204p;

    /* renamed from: q  reason: collision with root package name */
    private long f8205q;

    /* renamed from: r  reason: collision with root package name */
    final ge f8206r;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f8207s;

    /* renamed from: t  reason: collision with root package name */
    private x f8208t;

    /* renamed from: u  reason: collision with root package name */
    private SharedPreferences.OnSharedPreferenceChangeListener f8209u;

    /* renamed from: v  reason: collision with root package name */
    private x f8210v;

    /* renamed from: w  reason: collision with root package name */
    private final xd f8211w;

    /* JADX INFO: Access modifiers changed from: protected */
    public w9(w6 w6Var) {
        super(w6Var);
        this.f8193e = new CopyOnWriteArraySet();
        this.f8196h = new Object();
        this.f8197i = false;
        this.f8198j = 1;
        this.f8207s = true;
        this.f8211w = new a9(this);
        this.f8195g = new AtomicReference();
        this.f8203o = d8.f7442c;
        this.f8205q = -1L;
        this.f8204p = new AtomicLong(0L);
        this.f8206r = new ge(w6Var);
    }

    private final i6.c0 e0(final wc wcVar) {
        try {
            URL url = new URI(wcVar.f8219c).toURL();
            final AtomicReference atomicReference = new AtomicReference();
            String s10 = this.f8322a.L().s();
            w6 w6Var = this.f8322a;
            n5 w10 = w6Var.a().w();
            Long valueOf = Long.valueOf(wcVar.f8217a);
            w10.d("[sgtm] Uploading data from app. row_id, url, uncompressed size", valueOf, wcVar.f8219c, Integer.valueOf(wcVar.f8218b.length));
            if (!TextUtils.isEmpty(wcVar.f8223g)) {
                w6Var.a().w().c("[sgtm] Uploading data from app. row_id", valueOf, wcVar.f8223g);
            }
            HashMap hashMap = new HashMap();
            Bundle bundle = wcVar.f8220d;
            for (String str : bundle.keySet()) {
                String string = bundle.getString(str);
                if (!TextUtils.isEmpty(string)) {
                    hashMap.put(str, string);
                }
            }
            aa F = w6Var.F();
            byte[] bArr = wcVar.f8218b;
            x9 x9Var = new x9() { // from class: com.google.android.gms.measurement.internal.l9
                /* JADX WARN: Removed duplicated region for block: B:13:0x0064  */
                /* JADX WARN: Removed duplicated region for block: B:14:0x0067  */
                /* JADX WARN: Removed duplicated region for block: B:23:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                @Override // com.google.android.gms.measurement.internal.x9
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final /* synthetic */ void a(java.lang.String r10, int r11, java.lang.Throwable r12, byte[] r13, java.util.Map r14) {
                    /*
                        r9 = this;
                        com.google.android.gms.measurement.internal.w9 r10 = com.google.android.gms.measurement.internal.w9.this
                        r10.h()
                        com.google.android.gms.measurement.internal.wc r13 = r3
                        r14 = 200(0xc8, float:2.8E-43)
                        if (r11 == r14) goto L14
                        r14 = 204(0xcc, float:2.86E-43)
                        if (r11 == r14) goto L14
                        r14 = 304(0x130, float:4.26E-43)
                        if (r11 != r14) goto L2e
                        r11 = r14
                    L14:
                        if (r12 != 0) goto L2e
                        com.google.android.gms.measurement.internal.w6 r11 = r10.f8322a
                        com.google.android.gms.measurement.internal.p5 r11 = r11.a()
                        com.google.android.gms.measurement.internal.n5 r11 = r11.w()
                        long r0 = r13.f8217a
                        java.lang.Long r12 = java.lang.Long.valueOf(r0)
                        java.lang.String r14 = "[sgtm] Upload succeeded for row_id"
                        r11.b(r14, r12)
                        i6.c0 r11 = i6.c0.SUCCESS
                        goto L69
                    L2e:
                        com.google.android.gms.measurement.internal.w6 r14 = r10.f8322a
                        com.google.android.gms.measurement.internal.p5 r14 = r14.a()
                        com.google.android.gms.measurement.internal.n5 r14 = r14.r()
                        long r0 = r13.f8217a
                        java.lang.Long r0 = java.lang.Long.valueOf(r0)
                        java.lang.Integer r1 = java.lang.Integer.valueOf(r11)
                        java.lang.String r2 = "[sgtm] Upload failed for row_id. response, exception"
                        r14.d(r2, r0, r1, r12)
                        com.google.android.gms.measurement.internal.b5 r12 = com.google.android.gms.measurement.internal.c5.f7376u
                        r14 = 0
                        java.lang.Object r12 = r12.b(r14)
                        java.lang.String r12 = (java.lang.String) r12
                        java.lang.String r14 = ","
                        java.lang.String[] r12 = r12.split(r14)
                        java.util.List r12 = java.util.Arrays.asList(r12)
                        java.lang.String r11 = java.lang.String.valueOf(r11)
                        boolean r11 = r12.contains(r11)
                        if (r11 == 0) goto L67
                        i6.c0 r11 = i6.c0.BACKOFF
                        goto L69
                    L67:
                        i6.c0 r11 = i6.c0.FAILURE
                    L69:
                        java.util.concurrent.atomic.AtomicReference r12 = r2
                        com.google.android.gms.measurement.internal.w6 r14 = r10.f8322a
                        com.google.android.gms.measurement.internal.vb r14 = r14.J()
                        com.google.android.gms.measurement.internal.g r6 = new com.google.android.gms.measurement.internal.g
                        long r7 = r13.f8217a
                        int r3 = r11.zza()
                        long r4 = r13.f8222f
                        r0 = r6
                        r1 = r7
                        r0.<init>(r1, r3, r4)
                        r14.k0(r6)
                        com.google.android.gms.measurement.internal.w6 r10 = r10.f8322a
                        com.google.android.gms.measurement.internal.p5 r10 = r10.a()
                        com.google.android.gms.measurement.internal.n5 r10 = r10.w()
                        java.lang.Long r13 = java.lang.Long.valueOf(r7)
                        java.lang.String r14 = "[sgtm] Updated status for row_id"
                        r10.c(r14, r13, r11)
                        monitor-enter(r12)
                        r12.set(r11)     // Catch: java.lang.Throwable -> L9f
                        r12.notifyAll()     // Catch: java.lang.Throwable -> L9f
                        monitor-exit(r12)     // Catch: java.lang.Throwable -> L9f
                        return
                    L9f:
                        r10 = move-exception
                        monitor-exit(r12)     // Catch: java.lang.Throwable -> L9f
                        throw r10
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.l9.a(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
                }
            };
            F.l();
            n5.q.k(url);
            n5.q.k(bArr);
            n5.q.k(x9Var);
            F.f8322a.b().w(new z9(F, s10, url, bArr, hashMap, x9Var));
            try {
                w6 w6Var2 = w6Var.C().f8322a;
                long currentTimeMillis = w6Var2.f().currentTimeMillis() + 60000;
                synchronized (atomicReference) {
                    for (long j10 = 60000; atomicReference.get() == null && j10 > 0; j10 = currentTimeMillis - w6Var2.f().currentTimeMillis()) {
                        atomicReference.wait(j10);
                    }
                }
            } catch (InterruptedException unused) {
                this.f8322a.a().r().a("[sgtm] Interrupted waiting for uploading batch");
            }
            if (atomicReference.get() == null) {
                return i6.c0.UNKNOWN;
            }
            return (i6.c0) atomicReference.get();
        } catch (MalformedURLException | URISyntaxException e10) {
            this.f8322a.a().o().d("[sgtm] Bad upload url for row_id", wcVar.f8219c, Long.valueOf(wcVar.f8217a), e10);
            return i6.c0.FAILURE;
        }
    }

    private final void f0(Boolean bool, boolean z10) {
        h();
        j();
        w6 w6Var = this.f8322a;
        w6Var.a().v().b("Setting app measurement enabled (FE)", bool);
        w6Var.x().s(bool);
        if (z10) {
            d6 x10 = w6Var.x();
            w6 w6Var2 = x10.f8322a;
            x10.h();
            SharedPreferences.Editor edit = x10.p().edit();
            if (bool != null) {
                edit.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit.remove("measurement_enabled_from_api");
            }
            edit.apply();
        }
        if (!this.f8322a.j() && (bool == null || bool.booleanValue())) {
            return;
        }
        Y();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public final void Y() {
        long j10;
        h();
        w6 w6Var = this.f8322a;
        String a10 = w6Var.x().f7425n.a();
        if (a10 != null) {
            if ("unset".equals(a10)) {
                B("app", "_npa", null, w6Var.f().currentTimeMillis());
            } else {
                if (true != "true".equals(a10)) {
                    j10 = 0;
                } else {
                    j10 = 1;
                }
                B("app", "_npa", Long.valueOf(j10), w6Var.f().currentTimeMillis());
            }
        }
        if (this.f8322a.g() && this.f8207s) {
            w6Var.a().v().a("Recording app launch after enabling measurement for the first time (FE)");
            H();
            this.f8322a.z().f7768e.a();
            w6Var.b().t(new m8(this));
            return;
        }
        w6Var.a().v().a("Updating Scion state (FE)");
        this.f8322a.J().X();
    }

    final void A(String str, String str2, long j10, Object obj) {
        this.f8322a.b().t(new r8(this, str, str2, obj, j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void B(String str, String str2, Object obj, long j10) {
        long j11;
        n5.q.e(str);
        n5.q.e(str2);
        h();
        j();
        if ("allow_personalized_ads".equals(str2)) {
            if (obj instanceof String) {
                String str3 = (String) obj;
                if (!TextUtils.isEmpty(str3)) {
                    String lowerCase = str3.toLowerCase(Locale.ENGLISH);
                    String str4 = "false";
                    if (true != "false".equals(lowerCase)) {
                        j11 = 0;
                    } else {
                        j11 = 1;
                    }
                    w6 w6Var = this.f8322a;
                    Long valueOf = Long.valueOf(j11);
                    c6 c6Var = w6Var.x().f7425n;
                    if (valueOf.longValue() == 1) {
                        str4 = "true";
                    }
                    c6Var.b(str4);
                    obj = valueOf;
                    str2 = "_npa";
                    this.f8322a.a().w().c("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
                }
            }
            if (obj == null) {
                this.f8322a.x().f7425n.b("unset");
                str2 = "_npa";
            }
            this.f8322a.a().w().c("Setting user property(FE)", "non_personalized_ads(_npa)", obj);
        }
        String str5 = str2;
        Object obj2 = obj;
        w6 w6Var2 = this.f8322a;
        if (!w6Var2.g()) {
            this.f8322a.a().w().a("User property not set since app measurement is disabled");
        } else if (!w6Var2.m()) {
        } else {
            this.f8322a.J().o(new ud(str5, j10, obj2, str));
        }
    }

    public final Map C(String str, String str2, boolean z10) {
        w6 w6Var = this.f8322a;
        if (w6Var.b().p()) {
            w6Var.a().o().a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        w6Var.c();
        if (f.a()) {
            w6Var.a().o().a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f8322a.b().u(atomicReference, 5000L, "get user properties", new y8(this, atomicReference, null, str, str2, z10));
        List<ud> list = (List) atomicReference.get();
        if (list == null) {
            w6Var.a().o().b("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z10));
            return Collections.emptyMap();
        }
        r.a aVar = new r.a(list.size());
        for (ud udVar : list) {
            Object g10 = udVar.g();
            if (g10 != null) {
                aVar.put(udVar.f8095b, g10);
            }
        }
        return aVar;
    }

    public final String D() {
        return (String) this.f8195g.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void E(String str) {
        this.f8195g.set(str);
    }

    public final void F() {
        h();
        w6 w6Var = this.f8322a;
        if (!w6Var.x().f7432u.a()) {
            long a10 = w6Var.x().f7433v.a();
            w6Var.x().f7433v.b(1 + a10);
            w6Var.w();
            if (a10 >= 5) {
                w6Var.a().r().a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
                w6Var.x().f7432u.b(true);
                return;
            }
            if (this.f8208t == null) {
                this.f8208t = new t8(this, this.f8322a);
            }
            this.f8208t.b(0L);
            return;
        }
        w6Var.a().v().a("Deferred Deep Link already retrieved. Not fetching again.");
    }

    public final void G(long j10) {
        this.f8195g.set(null);
        this.f8322a.b().t(new u8(this, j10));
    }

    public final void H() {
        h();
        j();
        if (this.f8322a.m()) {
            w6 w6Var = this.f8322a;
            m w10 = w6Var.w();
            w10.f8322a.c();
            Boolean J = w10.J("google_analytics_deferred_deep_link_enabled");
            if (J != null && J.booleanValue()) {
                w6Var.a().v().a("Deferred Deep Link feature enabled.");
                w6Var.b().t(new Runnable() { // from class: com.google.android.gms.measurement.internal.u9
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        w9.this.F();
                    }
                });
            }
            this.f8322a.J().s();
            this.f8207s = false;
            d6 x10 = w6Var.x();
            x10.h();
            String string = x10.p().getString("previous_os_version", null);
            x10.f8322a.K().l();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = x10.p().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (!TextUtils.isEmpty(string)) {
                w6Var.K().l();
                if (!string.equals(str)) {
                    Bundle bundle = new Bundle();
                    bundle.putString("_po", string);
                    t("auto", "_ou", bundle);
                }
            }
        }
    }

    public final void I(i6.w wVar) {
        i6.w wVar2;
        boolean z10;
        h();
        j();
        if (wVar != null && wVar != (wVar2 = this.f8192d)) {
            if (wVar2 == null) {
                z10 = true;
            } else {
                z10 = false;
            }
            n5.q.o(z10, "EventInterceptor already set.");
        }
        this.f8192d = wVar;
    }

    public final void J(i6.x xVar) {
        j();
        n5.q.k(xVar);
        if (!this.f8193e.add(xVar)) {
            this.f8322a.a().r().a("OnEventListener already registered");
        }
    }

    public final void K(i6.x xVar) {
        j();
        n5.q.k(xVar);
        if (!this.f8193e.remove(xVar)) {
            this.f8322a.a().r().a("OnEventListener had not been registered");
        }
    }

    public final int L(String str) {
        n5.q.e(str);
        this.f8322a.w();
        return 25;
    }

    public final void M(Bundle bundle) {
        N(bundle, this.f8322a.f().currentTimeMillis());
    }

    public final void N(Bundle bundle, long j10) {
        n5.q.k(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString(CommonUrlParts.APP_ID))) {
            this.f8322a.a().r().a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove(CommonUrlParts.APP_ID);
        n5.q.k(bundle2);
        i6.q.b(bundle2, CommonUrlParts.APP_ID, String.class, null);
        i6.q.b(bundle2, "origin", String.class, null);
        i6.q.b(bundle2, Constants.NAME, String.class, null);
        i6.q.b(bundle2, "value", Object.class, null);
        i6.q.b(bundle2, "trigger_event_name", String.class, null);
        i6.q.b(bundle2, "trigger_timeout", Long.class, 0L);
        i6.q.b(bundle2, "timed_out_event_name", String.class, null);
        i6.q.b(bundle2, "timed_out_event_params", Bundle.class, null);
        i6.q.b(bundle2, "triggered_event_name", String.class, null);
        i6.q.b(bundle2, "triggered_event_params", Bundle.class, null);
        i6.q.b(bundle2, "time_to_live", Long.class, 0L);
        i6.q.b(bundle2, "expired_event_name", String.class, null);
        i6.q.b(bundle2, "expired_event_params", Bundle.class, null);
        n5.q.e(bundle2.getString(Constants.NAME));
        n5.q.e(bundle2.getString("origin"));
        n5.q.k(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j10);
        String string = bundle2.getString(Constants.NAME);
        Object obj = bundle2.get("value");
        w6 w6Var = this.f8322a;
        if (w6Var.C().y0(string) == 0) {
            if (w6Var.C().y(string, obj) == 0) {
                Object z10 = w6Var.C().z(string, obj);
                if (z10 == null) {
                    w6Var.a().o().c("Unable to normalize conditional user property value", w6Var.D().c(string), obj);
                    return;
                }
                i6.q.a(bundle2, z10);
                long j11 = bundle2.getLong("trigger_timeout");
                if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name"))) {
                    w6Var.w();
                    if (j11 > 15552000000L || j11 < 1) {
                        w6Var.a().o().c("Invalid conditional user property timeout", w6Var.D().c(string), Long.valueOf(j11));
                        return;
                    }
                }
                long j12 = bundle2.getLong("time_to_live");
                w6Var.w();
                if (j12 <= 15552000000L && j12 >= 1) {
                    w6Var.b().t(new v8(this, bundle2));
                    return;
                } else {
                    w6Var.a().o().c("Invalid conditional user property time to live", w6Var.D().c(string), Long.valueOf(j12));
                    return;
                }
            }
            w6Var.a().o().c("Invalid conditional user property value", w6Var.D().c(string), obj);
            return;
        }
        w6Var.a().o().b("Invalid conditional user property name", w6Var.D().c(string));
    }

    public final void O(String str, String str2, Bundle bundle) {
        w6 w6Var = this.f8322a;
        long currentTimeMillis = w6Var.f().currentTimeMillis();
        n5.q.e(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString(Constants.NAME, str);
        bundle2.putLong("creation_timestamp", currentTimeMillis);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        w6Var.b().t(new w8(this, bundle2));
    }

    public final ArrayList P(String str, String str2) {
        w6 w6Var = this.f8322a;
        if (w6Var.b().p()) {
            w6Var.a().o().a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        w6Var.c();
        if (f.a()) {
            w6Var.a().o().a("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.f8322a.b().u(atomicReference, 5000L, "get conditional user properties", new x8(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list == null) {
            w6Var.a().o().b("Timed out waiting for get conditional user properties", null);
            return new ArrayList();
        }
        return yd.h0(list);
    }

    public final String Q() {
        da u10 = this.f8322a.I().u();
        if (u10 != null) {
            return u10.f7447a;
        }
        return null;
    }

    public final String R() {
        da u10 = this.f8322a.I().u();
        if (u10 != null) {
            return u10.f7448b;
        }
        return null;
    }

    public final String S() {
        try {
            return i6.e0.a(this.f8322a.e(), "google_app_id", this.f8322a.H());
        } catch (IllegalStateException e10) {
            this.f8322a.a().o().b("getGoogleAppId failed with exception", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void T(SharedPreferences sharedPreferences, String str) {
        w6 w6Var = this.f8322a;
        if (!w6Var.w().H(null, c5.f7326a1)) {
            if (Objects.equals(str, "IABTCF_TCString")) {
                w6Var.a().w().a("IABTCF_TCString change picked up in listener.");
                ((x) n5.q.k(this.f8210v)).b(500L);
            }
        } else if (!Objects.equals(str, "IABTCF_TCString") && !Objects.equals(str, "IABTCF_gdprApplies") && !Objects.equals(str, "IABTCF_EnableAdvertiserConsentMode")) {
        } else {
            w6Var.a().w().a("IABTCF_TCString change picked up in listener.");
            ((x) n5.q.k(this.f8210v)).b(500L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void U(Bundle bundle) {
        Bundle bundle2;
        int i10;
        if (bundle.isEmpty()) {
            bundle2 = bundle;
        } else {
            w6 w6Var = this.f8322a;
            bundle2 = new Bundle(w6Var.x().f7437z.a());
            Iterator<String> it = bundle.keySet().iterator();
            while (true) {
                i10 = 0;
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                Object obj = bundle.get(next);
                if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                    if (w6Var.C().B0(obj)) {
                        w6Var.C().B(this.f8211w, null, 27, null, null, 0);
                    }
                    w6Var.a().t().c("Invalid default event parameter type. Name, value", next, obj);
                } else if (yd.N(next)) {
                    w6Var.a().t().b("Invalid default event parameter name. Name", next);
                } else if (obj == null) {
                    bundle2.remove(next);
                } else if (w6Var.C().C0("param", next, w6Var.w().x(null, false), obj)) {
                    w6Var.C().A(bundle2, next, obj);
                }
            }
            w6Var.C();
            int v10 = w6Var.w().v();
            if (bundle2.size() > v10) {
                for (String str : new TreeSet(bundle2.keySet())) {
                    i10++;
                    if (i10 > v10) {
                        bundle2.remove(str);
                    }
                }
                w6Var.C().B(this.f8211w, null, 26, null, null, 0);
                w6Var.a().t().a("Too many default event parameters set. Discarding beyond event parameter limit");
            }
        }
        w6 w6Var2 = this.f8322a;
        w6Var2.x().f7437z.b(bundle2);
        if (bundle.isEmpty() && !w6Var2.w().H(null, c5.X0)) {
            return;
        }
        this.f8322a.J().v(bundle2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void V(int i10) {
        if (this.f8199k == null) {
            this.f8199k = new k8(this, this.f8322a);
        }
        this.f8199k.b(i10 * 1000);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void W(Boolean bool, boolean z10) {
        f0(bool, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void X(d8 d8Var, long j10, boolean z10, boolean z11) {
        h();
        j();
        w6 w6Var = this.f8322a;
        d8 w10 = w6Var.x().w();
        if (j10 <= this.f8205q && d8.u(w10.b(), d8Var.b())) {
            w6Var.a().u().b("Dropped out-of-date consent setting, proposed settings", d8Var);
            return;
        }
        d6 x10 = w6Var.x();
        w6 w6Var2 = x10.f8322a;
        x10.h();
        int b10 = d8Var.b();
        if (x10.v(b10)) {
            w6 w6Var3 = this.f8322a;
            SharedPreferences.Editor edit = x10.p().edit();
            edit.putString("consent_settings", d8Var.l());
            edit.putInt("consent_source", b10);
            edit.apply();
            w6Var.a().w().b("Setting storage consent(FE)", d8Var);
            this.f8205q = j10;
            if (w6Var3.J().D()) {
                w6Var3.J().Z(z10);
            } else {
                w6Var3.J().Y(z10);
            }
            if (z11) {
                w6Var3.J().q(new AtomicReference());
                return;
            }
            return;
        }
        w6Var.a().u().b("Lower precedence consent source ignored, proposed source", Integer.valueOf(d8Var.b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void Z(boolean z10) {
        this.f8197i = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ int a0() {
        return this.f8198j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void b0(int i10) {
        this.f8198j = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ x c0() {
        return this.f8208t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ int d0(Throwable th) {
        String message = th.getMessage();
        this.f8202n = false;
        int i10 = 2;
        if (message != null) {
            if (!(th instanceof IllegalStateException) && !message.contains("garbage collected") && !th.getClass().getSimpleName().equals("ServiceUnavailableException")) {
                if ((th instanceof SecurityException) && !message.endsWith("READ_DEVICE_CONFIG")) {
                    return 3;
                }
            } else {
                i10 = 1;
                if (message.contains("Background")) {
                    this.f8202n = true;
                    return 1;
                }
            }
        }
        return i10;
    }

    public final void h0() {
        w6 w6Var = this.f8322a;
        if ((w6Var.e().getApplicationContext() instanceof Application) && this.f8191c != null) {
            ((Application) w6Var.e().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f8191c);
        }
    }

    public final Boolean i0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) this.f8322a.b().u(atomicReference, 15000L, "boolean test flag value", new s8(this, atomicReference));
    }

    public final String j0() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) this.f8322a.b().u(atomicReference, 15000L, "String test flag value", new b9(this, atomicReference));
    }

    public final Long k0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) this.f8322a.b().u(atomicReference, 15000L, "long test flag value", new c9(this, atomicReference));
    }

    public final Integer l0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) this.f8322a.b().u(atomicReference, 15000L, "int test flag value", new d9(this, atomicReference));
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean m() {
        return false;
    }

    public final Double m0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) this.f8322a.b().u(atomicReference, 15000L, "double test flag value", new e9(this, atomicReference));
    }

    public final void n0(Boolean bool) {
        j();
        this.f8322a.b().t(new f9(this, bool));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o(d8 d8Var) {
        boolean z10;
        Boolean bool;
        h();
        if ((d8Var.o(i6.s.ANALYTICS_STORAGE) && d8Var.o(i6.s.AD_STORAGE)) || this.f8322a.J().C()) {
            z10 = true;
        } else {
            z10 = false;
        }
        w6 w6Var = this.f8322a;
        if (z10 != w6Var.j()) {
            w6Var.i(z10);
            d6 x10 = this.f8322a.x();
            w6 w6Var2 = x10.f8322a;
            x10.h();
            if (x10.p().contains("measurement_enabled_from_api")) {
                bool = Boolean.valueOf(x10.p().getBoolean("measurement_enabled_from_api", true));
            } else {
                bool = null;
            }
            if (!z10 || bool == null || bool.booleanValue()) {
                f0(Boolean.valueOf(z10), false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void o0(Bundle bundle, int i10, long j10) {
        Object obj;
        String str;
        String string;
        j();
        d8 d8Var = d8.f7442c;
        i6.s[] b10 = c8.STORAGE.b();
        int length = b10.length;
        int i11 = 0;
        while (true) {
            obj = null;
            if (i11 >= length) {
                break;
            }
            String str2 = b10[i11].f17311a;
            if (bundle.containsKey(str2) && (string = bundle.getString(str2)) != null) {
                if (string.equals("granted")) {
                    obj = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    obj = Boolean.FALSE;
                }
                if (obj == null) {
                    obj = string;
                    break;
                }
            }
            i11++;
        }
        if (obj != null) {
            w6 w6Var = this.f8322a;
            w6Var.a().t().b("Ignoring invalid consent setting", obj);
            w6Var.a().t().a("Valid consent values are 'granted', 'denied'");
        }
        boolean p10 = this.f8322a.b().p();
        d8 e10 = d8.e(bundle, i10);
        if (e10.c()) {
            q0(e10, p10);
        }
        y h10 = y.h(bundle, i10);
        if (h10.d()) {
            p0(h10, p10);
        }
        Boolean i12 = y.i(bundle);
        if (i12 != null) {
            if (i10 == -30) {
                str = "tcf";
            } else {
                str = "app";
            }
            String str3 = str;
            if (p10) {
                B(str3, "allow_personalized_ads", i12.toString(), j10);
            } else {
                z(str3, "allow_personalized_ads", i12.toString(), false, j10);
            }
        }
    }

    public final void p(String str, String str2, Bundle bundle) {
        q(str, str2, bundle, true, true, this.f8322a.f().currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void p0(y yVar, boolean z10) {
        g9 g9Var = new g9(this, yVar);
        if (z10) {
            h();
            g9Var.run();
            return;
        }
        this.f8322a.b().t(g9Var);
    }

    public final void q(String str, String str2, Bundle bundle, boolean z10, boolean z11, long j10) {
        Bundle bundle2;
        String str3;
        if (bundle == null) {
            bundle2 = new Bundle();
        } else {
            bundle2 = bundle;
        }
        if (Objects.equals(str2, "screen_view")) {
            this.f8322a.I().s(bundle2, j10);
            return;
        }
        boolean z12 = true;
        if (z11 && this.f8192d != null && !yd.N(str2)) {
            z12 = false;
        }
        boolean z13 = z12;
        if (str == null) {
            str3 = "app";
        } else {
            str3 = str;
        }
        x(str3, str2, j10, bundle2, z11, z13, z10, null);
    }

    public final void q0(d8 d8Var, boolean z10) {
        boolean z11;
        d8 d8Var2;
        boolean z12;
        boolean z13;
        j();
        int b10 = d8Var.b();
        if (b10 != -10) {
            i6.r p10 = d8Var.p();
            i6.r rVar = i6.r.UNINITIALIZED;
            if (p10 == rVar && d8Var.q() == rVar) {
                this.f8322a.a().t().a("Ignoring empty consent settings");
                return;
            }
        }
        synchronized (this.f8196h) {
            z11 = false;
            if (d8.u(b10, this.f8203o.b())) {
                z12 = d8Var.r(this.f8203o);
                i6.s sVar = i6.s.ANALYTICS_STORAGE;
                if (d8Var.o(sVar) && !this.f8203o.o(sVar)) {
                    z11 = true;
                }
                d8 t10 = d8Var.t(this.f8203o);
                this.f8203o = t10;
                d8Var2 = t10;
                z13 = z11;
                z11 = true;
            } else {
                d8Var2 = d8Var;
                z12 = false;
                z13 = false;
            }
        }
        if (!z11) {
            this.f8322a.a().u().b("Ignoring lower-priority consent settings, proposed settings", d8Var2);
            return;
        }
        long andIncrement = this.f8204p.getAndIncrement();
        if (z12) {
            this.f8195g.set(null);
            h9 h9Var = new h9(this, d8Var2, andIncrement, z13);
            if (z10) {
                h();
                h9Var.run();
                return;
            }
            this.f8322a.b().v(h9Var);
            return;
        }
        i9 i9Var = new i9(this, d8Var2, andIncrement, z13);
        if (z10) {
            h();
            i9Var.run();
        } else if (b10 != 30 && b10 != -10) {
            this.f8322a.b().t(i9Var);
        } else {
            this.f8322a.b().v(i9Var);
        }
    }

    public final void r() {
        nc ncVar;
        nc ncVar2;
        boolean z10;
        boolean z11;
        com.google.android.gms.internal.measurement.t9 t9Var;
        h();
        w6 w6Var = this.f8322a;
        w6Var.a().v().a("Handle tcf update.");
        SharedPreferences q10 = w6Var.x().q();
        HashMap hashMap = new HashMap();
        b5 b5Var = c5.f7326a1;
        if (((Boolean) b5Var.b(null)).booleanValue()) {
            o6.q qVar = pc.f7880a;
            com.google.android.gms.internal.measurement.s9 s9Var = com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_STORE_AND_ACCESS_INFORMATION_ON_A_DEVICE;
            oc ocVar = oc.CONSENT;
            com.google.android.gms.internal.measurement.s9 s9Var2 = com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_SELECT_BASIC_ADS;
            oc ocVar2 = oc.FLEXIBLE_LEGITIMATE_INTEREST;
            o6.r n10 = o6.r.n(i6.a0.a(s9Var, ocVar), i6.a0.a(s9Var2, ocVar2), i6.a0.a(com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_CREATE_A_PERSONALISED_ADS_PROFILE, ocVar), i6.a0.a(com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_SELECT_PERSONALISED_ADS, ocVar), i6.a0.a(com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_MEASURE_AD_PERFORMANCE, ocVar2), i6.a0.a(com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_APPLY_MARKET_RESEARCH_TO_GENERATE_AUDIENCE_INSIGHTS, ocVar2), i6.a0.a(com.google.android.gms.internal.measurement.s9.IAB_TCF_PURPOSE_DEVELOP_AND_IMPROVE_PRODUCTS, ocVar2));
            o6.s C = o6.s.C("CH");
            char[] cArr = new char[5];
            boolean contains = q10.contains("IABTCF_TCString");
            int b10 = pc.b(q10, "IABTCF_CmpSdkID");
            int b11 = pc.b(q10, "IABTCF_PolicyVersion");
            int b12 = pc.b(q10, "IABTCF_gdprApplies");
            int b13 = pc.b(q10, "IABTCF_PurposeOneTreatment");
            int b14 = pc.b(q10, "IABTCF_EnableAdvertiserConsentMode");
            String a10 = pc.a(q10, "IABTCF_PublisherCC");
            r.a a11 = o6.r.a();
            o6.r0 A = n10.keySet().A();
            while (A.hasNext()) {
                com.google.android.gms.internal.measurement.s9 s9Var3 = (com.google.android.gms.internal.measurement.s9) A.next();
                int zza = s9Var3.zza();
                StringBuilder sb2 = new StringBuilder(String.valueOf(zza).length() + 28);
                sb2.append("IABTCF_PublisherRestrictions");
                sb2.append(zza);
                String a12 = pc.a(q10, sb2.toString());
                if (!TextUtils.isEmpty(a12) && a12.length() >= 755) {
                    int digit = Character.digit(a12.charAt(754), 10);
                    if (digit >= 0 && digit <= com.google.android.gms.internal.measurement.t9.values().length && digit != 0) {
                        if (digit != 1) {
                            if (digit != 2) {
                                t9Var = com.google.android.gms.internal.measurement.t9.PURPOSE_RESTRICTION_UNDEFINED;
                            } else {
                                t9Var = com.google.android.gms.internal.measurement.t9.PURPOSE_RESTRICTION_REQUIRE_LEGITIMATE_INTEREST;
                            }
                        } else {
                            t9Var = com.google.android.gms.internal.measurement.t9.PURPOSE_RESTRICTION_REQUIRE_CONSENT;
                        }
                    } else {
                        t9Var = com.google.android.gms.internal.measurement.t9.PURPOSE_RESTRICTION_NOT_ALLOWED;
                    }
                } else {
                    t9Var = com.google.android.gms.internal.measurement.t9.PURPOSE_RESTRICTION_UNDEFINED;
                }
                a11.f(s9Var3, t9Var);
            }
            o6.r c10 = a11.c();
            String a13 = pc.a(q10, "IABTCF_PurposeConsents");
            String a14 = pc.a(q10, "IABTCF_VendorConsents");
            if (!TextUtils.isEmpty(a14) && a14.length() >= 755 && a14.charAt(754) == '1') {
                z10 = true;
            } else {
                z10 = false;
            }
            String a15 = pc.a(q10, "IABTCF_PurposeLegitimateInterests");
            String a16 = pc.a(q10, "IABTCF_VendorLegitimateInterests");
            if (!TextUtils.isEmpty(a16) && a16.length() >= 755 && a16.charAt(754) == '1') {
                z11 = true;
            } else {
                z11 = false;
            }
            cArr[0] = '2';
            ncVar = new nc(pc.d(n10, c10, C, cArr, b10, b14, b12, b11, b13, a10, a13, a15, z10, z11, contains));
        } else {
            String a17 = pc.a(q10, "IABTCF_VendorConsents");
            if (!"".equals(a17) && a17.length() > 754) {
                hashMap.put("GoogleConsent", String.valueOf(a17.charAt(754)));
            }
            int b15 = pc.b(q10, "IABTCF_gdprApplies");
            if (b15 != -1) {
                hashMap.put("gdprApplies", String.valueOf(b15));
            }
            int b16 = pc.b(q10, "IABTCF_EnableAdvertiserConsentMode");
            if (b16 != -1) {
                hashMap.put("EnableAdvertiserConsentMode", String.valueOf(b16));
            }
            int b17 = pc.b(q10, "IABTCF_PolicyVersion");
            if (b17 != -1) {
                hashMap.put("PolicyVersion", String.valueOf(b17));
            }
            String a18 = pc.a(q10, "IABTCF_PurposeConsents");
            if (!"".equals(a18)) {
                hashMap.put("PurposeConsents", a18);
            }
            int b18 = pc.b(q10, "IABTCF_CmpSdkID");
            if (b18 != -1) {
                hashMap.put("CmpSdkID", String.valueOf(b18));
            }
            ncVar = new nc(hashMap);
        }
        w6Var.a().w().b("Tcf preferences read", ncVar);
        if (w6Var.w().H(null, b5Var)) {
            d6 x10 = w6Var.x();
            x10.h();
            String string = x10.p().getString("stored_tcf_param", "");
            HashMap hashMap2 = new HashMap();
            if (TextUtils.isEmpty(string)) {
                ncVar2 = new nc(hashMap2);
            } else {
                for (String str : string.split(";")) {
                    String[] split = str.split("=");
                    if (split.length >= 2 && pc.f7880a.contains(split[0])) {
                        hashMap2.put(split[0], split[1]);
                    }
                }
                ncVar2 = new nc(hashMap2);
            }
            if (w6Var.x().x(ncVar)) {
                Bundle b19 = ncVar.b();
                w6Var.a().w().b("Consent generated from Tcf", b19);
                if (b19 != Bundle.EMPTY) {
                    o0(b19, -30, w6Var.f().currentTimeMillis());
                }
                Bundle bundle = new Bundle();
                bundle.putString("_tcfm", ncVar.d(ncVar2));
                bundle.putString("_tcfd2", ncVar.c());
                bundle.putString("_tcfd", ncVar.e());
                t("auto", "_tcf", bundle);
            }
        } else if (w6Var.x().x(ncVar)) {
            Bundle b20 = ncVar.b();
            w6Var.a().w().b("Consent generated from Tcf", b20);
            if (b20 != Bundle.EMPTY) {
                o0(b20, -30, w6Var.f().currentTimeMillis());
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_tcfd", ncVar.e());
            t("auto", "_tcf", bundle2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void r0(Runnable runnable) {
        j();
        w6 w6Var = this.f8322a;
        if (!w6Var.b().p()) {
            if (!w6Var.b().q()) {
                w6Var.c();
                if (!f.a()) {
                    w6Var.a().w().a("[sgtm] Started client-side batch upload work.");
                    boolean z10 = false;
                    int i10 = 0;
                    int i11 = 0;
                    while (!z10) {
                        w6Var.a().w().a("[sgtm] Getting upload batches from service (FE)");
                        final AtomicReference atomicReference = new AtomicReference();
                        w6Var.b().u(atomicReference, 10000L, "[sgtm] Getting upload batches", new Runnable() { // from class: com.google.android.gms.measurement.internal.v9
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                w9.this.f8322a.J().j0(atomicReference, i6.g0.g(i6.d0.SGTM_CLIENT));
                            }
                        });
                        yc ycVar = (yc) atomicReference.get();
                        if (ycVar == null) {
                            break;
                        }
                        List list = ycVar.f8298a;
                        if (!list.isEmpty()) {
                            w6Var.a().w().b("[sgtm] Retrieved upload batches. count", Integer.valueOf(list.size()));
                            i10 += list.size();
                            Iterator it = list.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    i6.c0 e02 = e0((wc) it.next());
                                    if (e02 == i6.c0.SUCCESS) {
                                        i11++;
                                    } else if (e02 == i6.c0.BACKOFF) {
                                        z10 = true;
                                        break;
                                    }
                                } else {
                                    z10 = false;
                                    break;
                                }
                            }
                        } else {
                            break;
                        }
                    }
                    w6Var.a().w().c("[sgtm] Completed client-side batch upload work. total, success", Integer.valueOf(i10), Integer.valueOf(i11));
                    runnable.run();
                    return;
                }
                w6Var.a().o().a("Cannot retrieve and upload batches from main thread");
                return;
            }
            w6Var.a().o().a("Cannot retrieve and upload batches from analytics network thread");
            return;
        }
        w6Var.a().o().a("Cannot retrieve and upload batches from analytics worker thread");
    }

    public final void s() {
        h();
        w6 w6Var = this.f8322a;
        w6Var.a().v().a("Register tcfPrefChangeListener.");
        if (this.f8209u == null) {
            this.f8210v = new p8(this, this.f8322a);
            this.f8209u = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.google.android.gms.measurement.internal.r9
                @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
                public final /* synthetic */ void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                    w9.this.T(sharedPreferences, str);
                }
            };
        }
        w6Var.x().q().registerOnSharedPreferenceChangeListener(this.f8209u);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void s0(long j10) {
        h();
        if (this.f8200l == null) {
            this.f8200l = new h8(this, this.f8322a);
        }
        this.f8200l.b(j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void t(String str, String str2, Bundle bundle) {
        h();
        u(str, str2, this.f8322a.f().currentTimeMillis(), bundle);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void t0() {
        h();
        x xVar = this.f8200l;
        if (xVar != null) {
            xVar.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void u(String str, String str2, long j10, Bundle bundle) {
        boolean z10;
        h();
        if (this.f8192d != null && !yd.N(str2)) {
            z10 = false;
        } else {
            z10 = true;
        }
        v(str, str2, j10, bundle, true, z10, true, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void u0() {
        nf.a();
        w6 w6Var = this.f8322a;
        if (w6Var.w().H(null, c5.R0)) {
            if (!w6Var.b().p()) {
                w6Var.c();
                if (!f.a()) {
                    j();
                    w6Var.a().w().a("Getting trigger URIs (FE)");
                    final AtomicReference atomicReference = new AtomicReference();
                    w6Var.b().u(atomicReference, 10000L, "get trigger URIs", new Runnable() { // from class: com.google.android.gms.measurement.internal.n9
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            w9 w9Var = w9.this;
                            w9Var.f8322a.J().i0(atomicReference, w9Var.f8322a.x().f7426o.a());
                        }
                    });
                    final List list = (List) atomicReference.get();
                    if (list == null) {
                        w6Var.a().q().a("Timed out waiting for get trigger URIs");
                        return;
                    } else {
                        w6Var.b().t(new Runnable() { // from class: com.google.android.gms.measurement.internal.o9
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                boolean contains;
                                w9 w9Var = w9.this;
                                w9Var.h();
                                if (Build.VERSION.SDK_INT < 30) {
                                    return;
                                }
                                List<rc> list2 = list;
                                SparseArray r10 = w9Var.f8322a.x().r();
                                for (rc rcVar : list2) {
                                    int i10 = rcVar.f7976c;
                                    contains = r10.contains(i10);
                                    if (!contains || ((Long) r10.get(i10)).longValue() < rcVar.f7975b) {
                                        w9Var.w0().add(rcVar);
                                    }
                                }
                                w9Var.x0();
                            }
                        });
                        return;
                    }
                }
                w6Var.a().o().a("Cannot get trigger URIs from main thread");
                return;
            }
            w6Var.a().o().a("Cannot get trigger URIs from analytics worker thread");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:52:0x012c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(java.lang.String r25, java.lang.String r26, long r27, android.os.Bundle r29, boolean r30, boolean r31, boolean r32, java.lang.String r33) {
        /*
            Method dump skipped, instructions count: 1219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.w9.v(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean, java.lang.String):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean v0() {
        return this.f8202n;
    }

    public final void w(String str, String str2, Bundle bundle, String str3) {
        w6.q();
        x("auto", str2, this.f8322a.f().currentTimeMillis(), bundle, false, true, true, str3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final PriorityQueue w0() {
        if (this.f8201m == null) {
            this.f8201m = new PriorityQueue(Comparator.comparing(p9.f7872a, q9.f7939a));
        }
        return this.f8201m;
    }

    protected final void x(String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        int i10 = yd.f8301k;
        Bundle bundle2 = new Bundle(bundle);
        for (String str4 : bundle2.keySet()) {
            Object obj = bundle2.get(str4);
            if (obj instanceof Bundle) {
                bundle2.putBundle(str4, new Bundle((Bundle) obj));
            } else {
                int i11 = 0;
                if (obj instanceof Parcelable[]) {
                    Parcelable[] parcelableArr = (Parcelable[]) obj;
                    while (i11 < parcelableArr.length) {
                        Parcelable parcelable = parcelableArr[i11];
                        if (parcelable instanceof Bundle) {
                            parcelableArr[i11] = new Bundle((Bundle) parcelable);
                        }
                        i11++;
                    }
                } else if (obj instanceof List) {
                    List list = (List) obj;
                    while (i11 < list.size()) {
                        Object obj2 = list.get(i11);
                        if (obj2 instanceof Bundle) {
                            list.set(i11, new Bundle((Bundle) obj2));
                        }
                        i11++;
                    }
                }
            }
        }
        this.f8322a.b().t(new q8(this, str, str2, j10, bundle2, z10, z11, z12, str3));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void x0() {
        rc rcVar;
        h();
        this.f8202n = false;
        if (!w0().isEmpty() && !this.f8197i && (rcVar = (rc) w0().poll()) != null) {
            w6 w6Var = this.f8322a;
            e1.a H = w6Var.C().H();
            if (H != null) {
                this.f8197i = true;
                n5 w10 = w6Var.a().w();
                String str = rcVar.f7974a;
                w10.b("Registering trigger URI", str);
                r6.d c10 = H.c(Uri.parse(str));
                if (c10 == null) {
                    this.f8197i = false;
                    w0().add(rcVar);
                    return;
                }
                r6.b.a(c10, new j8(this, rcVar), new i8(this));
            }
        }
    }

    public final void y(String str, String str2, Object obj, boolean z10) {
        z("auto", "_ldl", obj, true, this.f8322a.f().currentTimeMillis());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z(java.lang.String r17, java.lang.String r18, java.lang.Object r19, boolean r20, long r21) {
        /*
            r16 = this;
            r6 = r16
            r2 = r18
            r0 = r19
            r1 = 0
            r3 = 24
            if (r20 == 0) goto L17
            com.google.android.gms.measurement.internal.w6 r4 = r6.f8322a
            com.google.android.gms.measurement.internal.yd r4 = r4.C()
            int r4 = r4.y0(r2)
        L15:
            r12 = r4
            goto L41
        L17:
            com.google.android.gms.measurement.internal.w6 r4 = r6.f8322a
            com.google.android.gms.measurement.internal.yd r4 = r4.C()
            java.lang.String r5 = "user property"
            boolean r7 = r4.t0(r5, r2)
            r8 = 6
            if (r7 != 0) goto L28
        L26:
            r12 = r8
            goto L41
        L28:
            java.lang.String[] r7 = i6.v.f17320a
            r9 = 0
            boolean r7 = r4.v0(r5, r7, r9, r2)
            if (r7 != 0) goto L34
            r4 = 15
            goto L15
        L34:
            com.google.android.gms.measurement.internal.w6 r7 = r4.f8322a
            r7.w()
            boolean r4 = r4.w0(r5, r3, r2)
            if (r4 != 0) goto L40
            goto L26
        L40:
            r12 = r1
        L41:
            r4 = 1
            if (r12 == 0) goto L67
            com.google.android.gms.measurement.internal.w6 r0 = r6.f8322a
            com.google.android.gms.measurement.internal.yd r5 = r0.C()
            r0.w()
            java.lang.String r14 = r5.q(r2, r3, r4)
            if (r2 == 0) goto L57
            int r1 = r18.length()
        L57:
            r15 = r1
            com.google.android.gms.measurement.internal.w6 r0 = r6.f8322a
            com.google.android.gms.measurement.internal.xd r10 = r6.f8211w
            com.google.android.gms.measurement.internal.yd r9 = r0.C()
            r11 = 0
            java.lang.String r13 = "_ev"
            r9.B(r10, r11, r12, r13, r14, r15)
            return
        L67:
            if (r17 != 0) goto L6c
            java.lang.String r5 = "app"
            goto L6e
        L6c:
            r5 = r17
        L6e:
            if (r0 == 0) goto Lbd
            com.google.android.gms.measurement.internal.w6 r7 = r6.f8322a
            com.google.android.gms.measurement.internal.yd r8 = r7.C()
            int r12 = r8.y(r2, r0)
            if (r12 == 0) goto La7
            com.google.android.gms.measurement.internal.yd r5 = r7.C()
            r7.w()
            java.lang.String r14 = r5.q(r2, r3, r4)
            boolean r2 = r0 instanceof java.lang.String
            if (r2 != 0) goto L8f
            boolean r2 = r0 instanceof java.lang.CharSequence
            if (r2 == 0) goto L97
        L8f:
            java.lang.String r0 = r19.toString()
            int r1 = r0.length()
        L97:
            r15 = r1
            com.google.android.gms.measurement.internal.w6 r0 = r6.f8322a
            com.google.android.gms.measurement.internal.xd r10 = r6.f8211w
            com.google.android.gms.measurement.internal.yd r9 = r0.C()
            r11 = 0
            java.lang.String r13 = "_ev"
            r9.B(r10, r11, r12, r13, r14, r15)
            return
        La7:
            com.google.android.gms.measurement.internal.yd r1 = r7.C()
            java.lang.Object r7 = r1.z(r2, r0)
            if (r7 == 0) goto Lbc
            r0 = r16
            r1 = r5
            r2 = r18
            r3 = r21
            r5 = r7
            r0.A(r1, r2, r3, r5)
        Lbc:
            return
        Lbd:
            r7 = 0
            r0 = r16
            r1 = r5
            r2 = r18
            r3 = r21
            r5 = r7
            r0.A(r1, r2, r3, r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.w9.z(java.lang.String, java.lang.String, java.lang.Object, boolean, long):void");
    }
}
