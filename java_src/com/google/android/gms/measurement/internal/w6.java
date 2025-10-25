package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import io.flutter.plugins.firebase.crashlytics.Constants;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public final class w6 implements b8 {
    private static volatile w6 E;
    private int A;
    private int B;
    final long D;

    /* renamed from: a  reason: collision with root package name */
    private final Context f8159a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f8160b;

    /* renamed from: c  reason: collision with root package name */
    private final f f8161c;

    /* renamed from: d  reason: collision with root package name */
    private final m f8162d;

    /* renamed from: e  reason: collision with root package name */
    private final d6 f8163e;

    /* renamed from: f  reason: collision with root package name */
    private final p5 f8164f;

    /* renamed from: g  reason: collision with root package name */
    private final s6 f8165g;

    /* renamed from: h  reason: collision with root package name */
    private final mc f8166h;

    /* renamed from: i  reason: collision with root package name */
    private final yd f8167i;

    /* renamed from: j  reason: collision with root package name */
    private final i5 f8168j;

    /* renamed from: k  reason: collision with root package name */
    private final com.google.android.gms.common.util.d f8169k;

    /* renamed from: l  reason: collision with root package name */
    private final la f8170l;

    /* renamed from: m  reason: collision with root package name */
    private final w9 f8171m;

    /* renamed from: n  reason: collision with root package name */
    private final b2 f8172n;

    /* renamed from: o  reason: collision with root package name */
    private final aa f8173o;

    /* renamed from: p  reason: collision with root package name */
    private final String f8174p;

    /* renamed from: q  reason: collision with root package name */
    private h5 f8175q;

    /* renamed from: r  reason: collision with root package name */
    private vb f8176r;

    /* renamed from: s  reason: collision with root package name */
    private a0 f8177s;

    /* renamed from: t  reason: collision with root package name */
    private f5 f8178t;

    /* renamed from: u  reason: collision with root package name */
    private ca f8179u;

    /* renamed from: w  reason: collision with root package name */
    private Boolean f8181w;

    /* renamed from: x  reason: collision with root package name */
    private long f8182x;

    /* renamed from: y  reason: collision with root package name */
    private volatile Boolean f8183y;

    /* renamed from: z  reason: collision with root package name */
    private volatile boolean f8184z;

    /* renamed from: v  reason: collision with root package name */
    private boolean f8180v = false;
    private final AtomicInteger C = new AtomicInteger(0);

    w6(f8 f8Var) {
        long currentTimeMillis;
        boolean z10 = false;
        n5.q.k(f8Var);
        Context context = f8Var.f7524a;
        f fVar = new f(context);
        this.f8161c = fVar;
        v4.f8105a = fVar;
        this.f8159a = context;
        this.f8160b = f8Var.f7528e;
        this.f8183y = f8Var.f7525b;
        this.f8174p = f8Var.f7530g;
        this.f8184z = true;
        com.google.android.gms.internal.measurement.p9.b(context);
        com.google.android.gms.common.util.d b10 = com.google.android.gms.common.util.g.b();
        this.f8169k = b10;
        Long l10 = f8Var.f7529f;
        if (l10 != null) {
            currentTimeMillis = l10.longValue();
        } else {
            currentTimeMillis = b10.currentTimeMillis();
        }
        this.D = currentTimeMillis;
        this.f8162d = new m(this);
        d6 d6Var = new d6(this);
        d6Var.m();
        this.f8163e = d6Var;
        p5 p5Var = new p5(this);
        p5Var.m();
        this.f8164f = p5Var;
        yd ydVar = new yd(this);
        ydVar.m();
        this.f8167i = ydVar;
        this.f8168j = new i5(new e8(f8Var, this));
        this.f8172n = new b2(this);
        la laVar = new la(this);
        laVar.k();
        this.f8170l = laVar;
        w9 w9Var = new w9(this);
        w9Var.k();
        this.f8171m = w9Var;
        mc mcVar = new mc(this);
        mcVar.k();
        this.f8166h = mcVar;
        aa aaVar = new aa(this);
        aaVar.m();
        this.f8173o = aaVar;
        s6 s6Var = new s6(this);
        s6Var.m();
        this.f8165g = s6Var;
        com.google.android.gms.internal.measurement.g2 g2Var = f8Var.f7527d;
        z10 = (g2Var == null || g2Var.f6406b == 0) ? true : z10;
        if (context.getApplicationContext() instanceof Application) {
            t(w9Var);
            if (w9Var.f8322a.f8159a.getApplicationContext() instanceof Application) {
                Application application = (Application) w9Var.f8322a.f8159a.getApplicationContext();
                if (w9Var.f8191c == null) {
                    w9Var.f8191c = new k9(w9Var);
                }
                if (z10) {
                    application.unregisterActivityLifecycleCallbacks(w9Var.f8191c);
                    application.registerActivityLifecycleCallbacks(w9Var.f8191c);
                    p5 p5Var2 = w9Var.f8322a.f8164f;
                    u(p5Var2);
                    p5Var2.w().a("Registered activity lifecycle callback");
                }
            }
        } else {
            u(p5Var);
            p5Var.r().a("Application context is not an Application");
        }
        s6Var.t(new u6(this, f8Var));
    }

    public static w6 O(Context context, com.google.android.gms.internal.measurement.g2 g2Var, Long l10) {
        Bundle bundle;
        if (g2Var != null) {
            Bundle bundle2 = g2Var.f6408d;
            g2Var = new com.google.android.gms.internal.measurement.g2(g2Var.f6405a, g2Var.f6406b, g2Var.f6407c, bundle2, null);
        }
        n5.q.k(context);
        n5.q.k(context.getApplicationContext());
        if (E == null) {
            synchronized (w6.class) {
                if (E == null) {
                    E = new w6(new f8(context, g2Var, l10));
                }
            }
        } else if (g2Var != null && (bundle = g2Var.f6408d) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            n5.q.k(E);
            E.f8183y = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled"));
        }
        n5.q.k(E);
        return E;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final void q() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    private static final void r(d4 d4Var) {
        if (d4Var != null) {
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    private static final void s(z7 z7Var) {
        if (z7Var != null) {
            return;
        }
        throw new IllegalStateException("Component not created");
    }

    private static final void t(e5 e5Var) {
        if (e5Var != null) {
            if (e5Var.i()) {
                return;
            }
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(e5Var.getClass())));
        }
        throw new IllegalStateException("Component not created");
    }

    private static final void u(a8 a8Var) {
        if (a8Var != null) {
            if (a8Var.k()) {
                return;
            }
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(a8Var.getClass())));
        }
        throw new IllegalStateException("Component not created");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final s6 A() {
        return this.f8165g;
    }

    public final w9 B() {
        w9 w9Var = this.f8171m;
        t(w9Var);
        return w9Var;
    }

    public final yd C() {
        yd ydVar = this.f8167i;
        s(ydVar);
        return ydVar;
    }

    public final i5 D() {
        return this.f8168j;
    }

    public final h5 E() {
        t(this.f8175q);
        return this.f8175q;
    }

    public final aa F() {
        aa aaVar = this.f8173o;
        u(aaVar);
        return aaVar;
    }

    public final boolean G() {
        return this.f8160b;
    }

    public final String H() {
        return this.f8174p;
    }

    public final la I() {
        la laVar = this.f8170l;
        t(laVar);
        return laVar;
    }

    public final vb J() {
        t(this.f8176r);
        return this.f8176r;
    }

    public final a0 K() {
        u(this.f8177s);
        return this.f8177s;
    }

    public final f5 L() {
        t(this.f8178t);
        return this.f8178t;
    }

    public final b2 M() {
        b2 b2Var = this.f8172n;
        r(b2Var);
        return b2Var;
    }

    public final ca N() {
        r(this.f8179u);
        return this.f8179u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void P(boolean z10) {
        this.f8183y = Boolean.valueOf(z10);
    }

    @Override // com.google.android.gms.measurement.internal.b8
    public final p5 a() {
        p5 p5Var = this.f8164f;
        u(p5Var);
        return p5Var;
    }

    @Override // com.google.android.gms.measurement.internal.b8
    public final s6 b() {
        s6 s6Var = this.f8165g;
        u(s6Var);
        return s6Var;
    }

    @Override // com.google.android.gms.measurement.internal.b8
    public final f c() {
        return this.f8161c;
    }

    public final boolean d() {
        if (this.f8183y != null && this.f8183y.booleanValue()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.measurement.internal.b8
    public final Context e() {
        return this.f8159a;
    }

    @Override // com.google.android.gms.measurement.internal.b8
    public final com.google.android.gms.common.util.d f() {
        return this.f8169k;
    }

    public final boolean g() {
        if (h() == 0) {
            return true;
        }
        return false;
    }

    public final int h() {
        s6 s6Var = this.f8165g;
        u(s6Var);
        s6Var.h();
        m mVar = this.f8162d;
        if (!mVar.L()) {
            u(s6Var);
            s6Var.h();
            if (this.f8184z) {
                d6 d6Var = this.f8163e;
                s(d6Var);
                Boolean t10 = d6Var.t();
                if (t10 != null) {
                    if (t10.booleanValue()) {
                        return 0;
                    }
                    return 3;
                }
                f fVar = mVar.f8322a.f8161c;
                Boolean J = mVar.J("firebase_analytics_collection_enabled");
                if (J != null) {
                    if (J.booleanValue()) {
                        return 0;
                    }
                    return 4;
                } else if (this.f8183y == null || this.f8183y.booleanValue()) {
                    return 0;
                } else {
                    return 7;
                }
            }
            return 8;
        }
        return 1;
    }

    public final void i(boolean z10) {
        s6 s6Var = this.f8165g;
        u(s6Var);
        s6Var.h();
        this.f8184z = z10;
    }

    public final boolean j() {
        s6 s6Var = this.f8165g;
        u(s6Var);
        s6Var.h();
        return this.f8184z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        this.A++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void l() {
        this.C.incrementAndGet();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean m() {
        if (this.f8180v) {
            s6 s6Var = this.f8165g;
            u(s6Var);
            s6Var.h();
            Boolean bool = this.f8181w;
            if (bool == null || this.f8182x == 0 || (!bool.booleanValue() && Math.abs(this.f8169k.elapsedRealtime() - this.f8182x) > 1000)) {
                this.f8182x = this.f8169k.elapsedRealtime();
                yd ydVar = this.f8167i;
                s(ydVar);
                boolean z10 = false;
                if (ydVar.M("android.permission.INTERNET")) {
                    s(ydVar);
                    if (ydVar.M("android.permission.ACCESS_NETWORK_STATE")) {
                        Context context = this.f8159a;
                        if (t5.e.a(context).f() || this.f8162d.m() || (yd.j0(context) && yd.E(context, false))) {
                            z10 = true;
                        }
                    }
                }
                Boolean valueOf = Boolean.valueOf(z10);
                this.f8181w = valueOf;
                if (valueOf.booleanValue()) {
                    s(ydVar);
                    this.f8181w = Boolean.valueOf(ydVar.o(L().r()));
                }
            }
            return this.f8181w.booleanValue();
        }
        throw new IllegalStateException("AppMeasurement is not initialized");
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0087, code lost:
        if (r4.W() >= 234200) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean n() {
        /*
            Method dump skipped, instructions count: 458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.w6.n():boolean");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void o(String str, int i10, Throwable th, byte[] bArr, Map map) {
        int i11;
        if (i10 != 200 && i10 != 204) {
            i11 = 304;
            if (i10 != 304) {
                i11 = i10;
                p5 p5Var = this.f8164f;
                u(p5Var);
                p5Var.r().c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i11), th);
            }
        } else {
            i11 = i10;
        }
        if (th == null) {
            d6 d6Var = this.f8163e;
            s(d6Var);
            d6Var.f7432u.b(true);
            if (bArr != null && bArr.length != 0) {
                try {
                    JSONObject jSONObject = new JSONObject(new String(bArr));
                    String optString = jSONObject.optString("deeplink", "");
                    if (TextUtils.isEmpty(optString)) {
                        p5 p5Var2 = this.f8164f;
                        u(p5Var2);
                        p5Var2.v().a("Deferred Deep Link is empty.");
                        return;
                    }
                    String optString2 = jSONObject.optString("gclid", "");
                    String optString3 = jSONObject.optString("gbraid", "");
                    String optString4 = jSONObject.optString("gad_source", "");
                    double optDouble = jSONObject.optDouble(Constants.TIMESTAMP, 0.0d);
                    Bundle bundle = new Bundle();
                    yd ydVar = this.f8167i;
                    s(ydVar);
                    w6 w6Var = ydVar.f8322a;
                    if (!TextUtils.isEmpty(optString)) {
                        Context context = w6Var.f8159a;
                        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0);
                        if (queryIntentActivities != null && !queryIntentActivities.isEmpty()) {
                            if (!TextUtils.isEmpty(optString3)) {
                                bundle.putString("gbraid", optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                bundle.putString("gad_source", optString4);
                            }
                            bundle.putString("gclid", optString2);
                            bundle.putString("_cis", "ddp");
                            this.f8171m.t("auto", "_cmp", bundle);
                            s(ydVar);
                            if (!TextUtils.isEmpty(optString)) {
                                try {
                                    SharedPreferences.Editor edit = context.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                                    edit.putString("deeplink", optString);
                                    edit.putLong(Constants.TIMESTAMP, Double.doubleToRawLongBits(optDouble));
                                    if (edit.commit()) {
                                        Intent intent = new Intent("android.google.analytics.action.DEEPLINK_ACTION");
                                        Context context2 = ydVar.f8322a.f8159a;
                                        if (Build.VERSION.SDK_INT < 34) {
                                            context2.sendBroadcast(intent);
                                            return;
                                        } else {
                                            context2.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                                            return;
                                        }
                                    }
                                    return;
                                } catch (RuntimeException e10) {
                                    p5 p5Var3 = ydVar.f8322a.f8164f;
                                    u(p5Var3);
                                    p5Var3.o().b("Failed to persist Deferred Deep Link. exception", e10);
                                    return;
                                }
                            }
                            return;
                        }
                    }
                    p5 p5Var4 = this.f8164f;
                    u(p5Var4);
                    p5Var4.r().d("Deferred Deep Link validation failed. gclid, gbraid, deep link", optString2, optString3, optString);
                    return;
                } catch (JSONException e11) {
                    p5 p5Var5 = this.f8164f;
                    u(p5Var5);
                    p5Var5.o().b("Failed to parse the Deferred Deep Link response. exception", e11);
                    return;
                }
            }
            p5 p5Var6 = this.f8164f;
            u(p5Var6);
            p5Var6.v().a("Deferred Deep Link response empty.");
            return;
        }
        p5 p5Var7 = this.f8164f;
        u(p5Var7);
        p5Var7.r().c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i11), th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void p(f8 f8Var) {
        long j10;
        s6 s6Var = this.f8165g;
        u(s6Var);
        s6Var.h();
        m mVar = this.f8162d;
        mVar.u();
        a0 a0Var = new a0(this);
        a0Var.m();
        this.f8177s = a0Var;
        com.google.android.gms.internal.measurement.g2 g2Var = f8Var.f7527d;
        if (g2Var == null) {
            j10 = 0;
        } else {
            j10 = g2Var.f6405a;
        }
        f5 f5Var = new f5(this, f8Var.f7526c, j10);
        f5Var.k();
        this.f8178t = f5Var;
        h5 h5Var = new h5(this);
        h5Var.k();
        this.f8175q = h5Var;
        vb vbVar = new vb(this);
        vbVar.k();
        this.f8176r = vbVar;
        yd ydVar = this.f8167i;
        ydVar.n();
        this.f8163e.n();
        this.f8178t.l();
        ca caVar = new ca(this);
        caVar.k();
        this.f8179u = caVar;
        caVar.l();
        p5 p5Var = this.f8164f;
        u(p5Var);
        n5 u10 = p5Var.u();
        mVar.A();
        u10.b("App measurement initialized, version", 133005L);
        u(p5Var);
        p5Var.u().a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String q10 = f5Var.q();
        s(ydVar);
        if (ydVar.P(q10, mVar.R())) {
            u(p5Var);
            p5Var.u().a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
        } else {
            u(p5Var);
            p5Var.u().a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(q10)));
        }
        u(p5Var);
        p5Var.v().a("Debug-level message logging enabled");
        int i10 = this.A;
        AtomicInteger atomicInteger = this.C;
        if (i10 != atomicInteger.get()) {
            u(p5Var);
            p5Var.o().c("Not all components initialized", Integer.valueOf(this.A), Integer.valueOf(atomicInteger.get()));
        }
        this.f8180v = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0030, code lost:
        if (r1.G() == false) goto L120;
     */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03b2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0251  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void v(com.google.android.gms.internal.measurement.g2 r14) {
        /*
            Method dump skipped, instructions count: 1040
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.w6.v(com.google.android.gms.internal.measurement.g2):void");
    }

    public final m w() {
        return this.f8162d;
    }

    public final d6 x() {
        d6 d6Var = this.f8163e;
        s(d6Var);
        return d6Var;
    }

    public final p5 y() {
        p5 p5Var = this.f8164f;
        if (p5Var == null || !p5Var.k()) {
            return null;
        }
        return p5Var;
    }

    public final mc z() {
        mc mcVar = this.f8166h;
        t(mcVar);
        return mcVar;
    }
}
