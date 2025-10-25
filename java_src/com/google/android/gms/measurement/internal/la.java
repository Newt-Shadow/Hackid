package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.arthenica.ffmpegkit.Chapter;
import io.flutter.plugins.firebase.analytics.Constants;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public final class la extends e5 {

    /* renamed from: c  reason: collision with root package name */
    private volatile da f7719c;

    /* renamed from: d  reason: collision with root package name */
    private volatile da f7720d;

    /* renamed from: e  reason: collision with root package name */
    protected da f7721e;

    /* renamed from: f  reason: collision with root package name */
    private final Map f7722f;

    /* renamed from: g  reason: collision with root package name */
    private com.google.android.gms.internal.measurement.i2 f7723g;

    /* renamed from: h  reason: collision with root package name */
    private volatile boolean f7724h;

    /* renamed from: i  reason: collision with root package name */
    private volatile da f7725i;

    /* renamed from: j  reason: collision with root package name */
    private da f7726j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f7727k;

    /* renamed from: l  reason: collision with root package name */
    private final Object f7728l;

    public la(w6 w6Var) {
        super(w6Var);
        this.f7728l = new Object();
        this.f7722f = new ConcurrentHashMap();
    }

    private final void F(String str, da daVar, boolean z10) {
        da daVar2;
        da daVar3;
        String str2;
        if (this.f7719c == null) {
            daVar2 = this.f7720d;
        } else {
            daVar2 = this.f7719c;
        }
        da daVar4 = daVar2;
        if (daVar.f7448b == null) {
            if (str != null) {
                str2 = r(str, "Activity");
            } else {
                str2 = null;
            }
            daVar3 = new da(daVar.f7447a, str2, daVar.f7449c, daVar.f7451e, daVar.f7452f);
        } else {
            daVar3 = daVar;
        }
        this.f7720d = this.f7719c;
        this.f7719c = daVar3;
        w6 w6Var = this.f8322a;
        w6Var.b().t(new fa(this, daVar3, daVar4, w6Var.f().elapsedRealtime(), z10));
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void G(com.google.android.gms.measurement.internal.da r16, com.google.android.gms.measurement.internal.da r17, long r18, boolean r20, android.os.Bundle r21) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.la.G(com.google.android.gms.measurement.internal.da, com.google.android.gms.measurement.internal.da, long, boolean, android.os.Bundle):void");
    }

    private final void o(da daVar, boolean z10, long j10) {
        boolean z11;
        w6 w6Var = this.f8322a;
        w6Var.M().k(w6Var.f().elapsedRealtime());
        if (daVar != null && daVar.f7450d) {
            z11 = true;
        } else {
            z11 = false;
        }
        if (w6Var.z().f7769f.d(z11, z10, j10) && daVar != null) {
            daVar.f7450d = false;
        }
    }

    private final da p(com.google.android.gms.internal.measurement.i2 i2Var) {
        n5.q.k(i2Var);
        Integer valueOf = Integer.valueOf(i2Var.f6428a);
        Map map = this.f7722f;
        da daVar = (da) map.get(valueOf);
        if (daVar == null) {
            da daVar2 = new da(null, r(i2Var.f6429b, "Activity"), this.f8322a.C().p0());
            map.put(valueOf, daVar2);
            daVar = daVar2;
        }
        if (this.f7725i != null) {
            return this.f7725i;
        }
        return daVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void A(Bundle bundle, da daVar, da daVar2, long j10) {
        bundle.remove("screen_name");
        bundle.remove("screen_class");
        G(daVar, daVar2, j10, true, this.f8322a.C().t(null, "screen_view", bundle, null, false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void B(da daVar, da daVar2, long j10, boolean z10, Bundle bundle) {
        G(daVar, daVar2, j10, z10, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void C(da daVar, boolean z10, long j10) {
        o(daVar, false, j10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ da D() {
        return this.f7726j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void E(da daVar) {
        this.f7726j = null;
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean m() {
        return false;
    }

    public final da q(boolean z10) {
        j();
        h();
        if (!z10) {
            return this.f7721e;
        }
        da daVar = this.f7721e;
        if (daVar != null) {
            return daVar;
        }
        return this.f7726j;
    }

    final String r(String str, String str2) {
        String str3;
        if (str == null) {
            return "Activity";
        }
        String[] split = str.split("\\.");
        int length = split.length;
        if (length > 0) {
            str3 = split[length - 1];
        } else {
            str3 = "";
        }
        w6 w6Var = this.f8322a;
        if (str3.length() > w6Var.w().x(null, false)) {
            return str3.substring(0, w6Var.w().x(null, false));
        }
        return str3;
    }

    public final void s(Bundle bundle, long j10) {
        String str;
        String str2;
        da daVar;
        String str3;
        synchronized (this.f7728l) {
            if (!this.f7727k) {
                this.f8322a.a().t().a("Cannot log screen view event when the app is in the background.");
                return;
            }
            String string = bundle.getString("screen_name");
            if (string != null && (string.length() <= 0 || string.length() > this.f8322a.w().x(null, false))) {
                this.f8322a.a().t().b("Invalid screen name length for screen view. Length", Integer.valueOf(string.length()));
                return;
            }
            String string2 = bundle.getString("screen_class");
            if (string2 != null && (string2.length() <= 0 || string2.length() > this.f8322a.w().x(null, false))) {
                this.f8322a.a().t().b("Invalid screen class length for screen view. Length", Integer.valueOf(string2.length()));
                return;
            }
            if (string2 == null) {
                com.google.android.gms.internal.measurement.i2 i2Var = this.f7723g;
                if (i2Var != null) {
                    str3 = r(i2Var.f6429b, "Activity");
                } else {
                    str3 = "Activity";
                }
                string2 = str3;
            }
            da daVar2 = this.f7719c;
            if (this.f7724h && daVar2 != null) {
                this.f7724h = false;
                boolean equals = Objects.equals(daVar2.f7448b, string2);
                boolean equals2 = Objects.equals(daVar2.f7447a, string);
                if (equals && equals2) {
                    this.f8322a.a().t().a("Ignoring call to log screen view event with duplicate parameters.");
                    return;
                }
            }
            w6 w6Var = this.f8322a;
            n5 w10 = w6Var.a().w();
            if (string == null) {
                str = "null";
            } else {
                str = string;
            }
            if (string2 == null) {
                str2 = "null";
            } else {
                str2 = string2;
            }
            w10.c("Logging screen view with name, class", str, str2);
            if (this.f7719c == null) {
                daVar = this.f7720d;
            } else {
                daVar = this.f7719c;
            }
            da daVar3 = new da(string, string2, w6Var.C().p0(), true, j10);
            this.f7719c = daVar3;
            this.f7720d = daVar;
            this.f7725i = daVar3;
            w6Var.b().t(new ea(this, bundle, daVar3, daVar, w6Var.f().elapsedRealtime()));
        }
    }

    public final void t(com.google.android.gms.internal.measurement.i2 i2Var, String str, String str2) {
        String str3;
        w6 w6Var = this.f8322a;
        if (!w6Var.w().N()) {
            w6Var.a().t().a("setCurrentScreen cannot be called while screen reporting is disabled.");
            return;
        }
        da daVar = this.f7719c;
        if (daVar == null) {
            w6Var.a().t().a("setCurrentScreen cannot be called while no activity active");
            return;
        }
        Map map = this.f7722f;
        Integer valueOf = Integer.valueOf(i2Var.f6428a);
        if (map.get(valueOf) == null) {
            w6Var.a().t().a("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = r(i2Var.f6429b, "Activity");
        }
        String str4 = daVar.f7448b;
        String str5 = daVar.f7447a;
        boolean equals = Objects.equals(str4, str2);
        boolean equals2 = Objects.equals(str5, str);
        if (equals && equals2) {
            w6Var.a().t().a("setCurrentScreen cannot be called with the same class and name");
        } else if (str != null && (str.length() <= 0 || str.length() > w6Var.w().x(null, false))) {
            w6Var.a().t().b("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
        } else if (str2 != null && (str2.length() <= 0 || str2.length() > w6Var.w().x(null, false))) {
            w6Var.a().t().b("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
        } else {
            n5 w10 = w6Var.a().w();
            if (str == null) {
                str3 = "null";
            } else {
                str3 = str;
            }
            w10.c("Setting current screen to name, class", str3, str2);
            da daVar2 = new da(str, str2, w6Var.C().p0());
            map.put(valueOf, daVar2);
            F(i2Var.f6429b, daVar2, true);
        }
    }

    public final da u() {
        return this.f7719c;
    }

    public final void v(com.google.android.gms.internal.measurement.i2 i2Var, Bundle bundle) {
        Bundle bundle2;
        if (this.f8322a.w().N() && bundle != null && (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) != null) {
            this.f7722f.put(Integer.valueOf(i2Var.f6428a), new da(bundle2.getString(Constants.NAME), bundle2.getString("referrer_name"), bundle2.getLong(Chapter.KEY_ID)));
        }
    }

    public final void w(com.google.android.gms.internal.measurement.i2 i2Var) {
        Object obj = this.f7728l;
        synchronized (obj) {
            this.f7727k = true;
            if (!Objects.equals(i2Var, this.f7723g)) {
                synchronized (obj) {
                    this.f7723g = i2Var;
                    this.f7724h = false;
                    w6 w6Var = this.f8322a;
                    if (w6Var.w().N()) {
                        this.f7725i = null;
                        w6Var.b().t(new ka(this));
                    }
                }
            }
        }
        w6 w6Var2 = this.f8322a;
        if (!w6Var2.w().N()) {
            this.f7719c = this.f7725i;
            w6Var2.b().t(new ga(this));
            return;
        }
        F(i2Var.f6429b, p(i2Var), false);
        b2 M = this.f8322a.M();
        w6 w6Var3 = M.f8322a;
        w6Var3.b().t(new a1(M, w6Var3.f().elapsedRealtime()));
    }

    public final void x(com.google.android.gms.internal.measurement.i2 i2Var) {
        synchronized (this.f7728l) {
            this.f7727k = false;
            this.f7724h = true;
        }
        w6 w6Var = this.f8322a;
        long elapsedRealtime = w6Var.f().elapsedRealtime();
        if (!w6Var.w().N()) {
            this.f7719c = null;
            w6Var.b().t(new ha(this, elapsedRealtime));
            return;
        }
        da p10 = p(i2Var);
        this.f7720d = this.f7719c;
        this.f7719c = null;
        w6Var.b().t(new ia(this, p10, elapsedRealtime));
    }

    public final void y(com.google.android.gms.internal.measurement.i2 i2Var, Bundle bundle) {
        da daVar;
        if (this.f8322a.w().N() && bundle != null && (daVar = (da) this.f7722f.get(Integer.valueOf(i2Var.f6428a))) != null) {
            Bundle bundle2 = new Bundle();
            bundle2.putLong(Chapter.KEY_ID, daVar.f7449c);
            bundle2.putString(Constants.NAME, daVar.f7447a);
            bundle2.putString("referrer_name", daVar.f7448b);
            bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
        }
    }

    public final void z(com.google.android.gms.internal.measurement.i2 i2Var) {
        synchronized (this.f7728l) {
            if (Objects.equals(this.f7723g, i2Var)) {
                this.f7723g = null;
            }
        }
        if (!this.f8322a.w().N()) {
            return;
        }
        this.f7722f.remove(Integer.valueOf(i2Var.f6428a));
    }
}
