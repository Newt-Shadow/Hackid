package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes.dex */
public final class m extends z7 {

    /* renamed from: b  reason: collision with root package name */
    private Boolean f7736b;

    /* renamed from: c  reason: collision with root package name */
    private String f7737c;

    /* renamed from: d  reason: collision with root package name */
    private l f7738d;

    /* renamed from: e  reason: collision with root package name */
    private Boolean f7739e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(w6 w6Var) {
        super(w6Var);
        this.f7738d = k.f7679a;
    }

    public static final long n() {
        return ((Long) c5.f7336e.b(null)).longValue();
    }

    public static final int o() {
        return Math.max(0, ((Integer) c5.f7351j.b(null)).intValue());
    }

    public static final long p() {
        return ((Integer) c5.f7357l.b(null)).intValue();
    }

    public static final long q() {
        return ((Long) c5.S.b(null)).longValue();
    }

    public static final long r() {
        return ((Long) c5.N.b(null)).longValue();
    }

    private final String s(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            n5.q.k(str3);
            return str3;
        } catch (ClassNotFoundException e10) {
            this.f8322a.a().o().b("Could not find SystemProperties class", e10);
            return "";
        } catch (IllegalAccessException e11) {
            this.f8322a.a().o().b("Could not access SystemProperties.get()", e11);
            return "";
        } catch (NoSuchMethodException e12) {
            this.f8322a.a().o().b("Could not find SystemProperties.get() method", e12);
            return "";
        } catch (InvocationTargetException e13) {
            this.f8322a.a().o().b("SystemProperties.get() threw an exception", e13);
            return "";
        }
    }

    public final long A() {
        this.f8322a.c();
        return 133005L;
    }

    public final boolean B() {
        if (this.f7739e == null) {
            synchronized (this) {
                if (this.f7739e == null) {
                    w6 w6Var = this.f8322a;
                    ApplicationInfo applicationInfo = w6Var.e().getApplicationInfo();
                    String a10 = com.google.android.gms.common.util.n.a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z10 = false;
                        if (str != null && str.equals(a10)) {
                            z10 = true;
                        }
                        this.f7739e = Boolean.valueOf(z10);
                    }
                    if (this.f7739e == null) {
                        this.f7739e = Boolean.TRUE;
                        w6Var.a().o().a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f7739e.booleanValue();
    }

    public final String C(String str, b5 b5Var) {
        if (TextUtils.isEmpty(str)) {
            return (String) b5Var.b(null);
        }
        return (String) b5Var.b(this.f7738d.d(str, b5Var.a()));
    }

    public final long D(String str, b5 b5Var) {
        if (TextUtils.isEmpty(str)) {
            return ((Long) b5Var.b(null)).longValue();
        }
        String d10 = this.f7738d.d(str, b5Var.a());
        if (TextUtils.isEmpty(d10)) {
            return ((Long) b5Var.b(null)).longValue();
        }
        try {
            return ((Long) b5Var.b(Long.valueOf(Long.parseLong(d10)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) b5Var.b(null)).longValue();
        }
    }

    public final int E(String str, b5 b5Var) {
        if (TextUtils.isEmpty(str)) {
            return ((Integer) b5Var.b(null)).intValue();
        }
        String d10 = this.f7738d.d(str, b5Var.a());
        if (TextUtils.isEmpty(d10)) {
            return ((Integer) b5Var.b(null)).intValue();
        }
        try {
            return ((Integer) b5Var.b(Integer.valueOf(Integer.parseInt(d10)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) b5Var.b(null)).intValue();
        }
    }

    public final int F(String str, b5 b5Var, int i10, int i11) {
        return Math.max(Math.min(E(str, b5Var), i11), i10);
    }

    public final double G(String str, b5 b5Var) {
        if (TextUtils.isEmpty(str)) {
            return ((Double) b5Var.b(null)).doubleValue();
        }
        String d10 = this.f7738d.d(str, b5Var.a());
        if (TextUtils.isEmpty(d10)) {
            return ((Double) b5Var.b(null)).doubleValue();
        }
        try {
            return ((Double) b5Var.b(Double.valueOf(Double.parseDouble(d10)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) b5Var.b(null)).doubleValue();
        }
    }

    public final boolean H(String str, b5 b5Var) {
        if (TextUtils.isEmpty(str)) {
            return ((Boolean) b5Var.b(null)).booleanValue();
        }
        String d10 = this.f7738d.d(str, b5Var.a());
        if (TextUtils.isEmpty(d10)) {
            return ((Boolean) b5Var.b(null)).booleanValue();
        }
        return ((Boolean) b5Var.b(Boolean.valueOf("1".equals(d10)))).booleanValue();
    }

    final Bundle I() {
        try {
            w6 w6Var = this.f8322a;
            if (w6Var.e().getPackageManager() == null) {
                w6Var.a().o().a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo c10 = t5.e.a(w6Var.e()).c(w6Var.e().getPackageName(), 128);
            if (c10 == null) {
                w6Var.a().o().a("Failed to load metadata: ApplicationInfo is null");
                return null;
            }
            return c10.metaData;
        } catch (PackageManager.NameNotFoundException e10) {
            this.f8322a.a().o().b("Failed to load metadata: Package name not found", e10);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Boolean J(String str) {
        n5.q.e(str);
        Bundle I = I();
        if (I == null) {
            this.f8322a.a().o().a("Failed to load metadata: Metadata bundle is null");
            return null;
        } else if (!I.containsKey(str)) {
            return null;
        } else {
            return Boolean.valueOf(I.getBoolean(str));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List K(java.lang.String r4) {
        /*
            r3 = this;
            java.lang.String r4 = "analytics.safelisted_events"
            n5.q.e(r4)
            android.os.Bundle r0 = r3.I()
            r1 = 0
            if (r0 != 0) goto L1d
            com.google.android.gms.measurement.internal.w6 r4 = r3.f8322a
            com.google.android.gms.measurement.internal.p5 r4 = r4.a()
            com.google.android.gms.measurement.internal.n5 r4 = r4.o()
            java.lang.String r0 = "Failed to load metadata: Metadata bundle is null"
            r4.a(r0)
        L1b:
            r4 = r1
            goto L2c
        L1d:
            boolean r2 = r0.containsKey(r4)
            if (r2 != 0) goto L24
            goto L1b
        L24:
            int r4 = r0.getInt(r4)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
        L2c:
            if (r4 == 0) goto L58
            com.google.android.gms.measurement.internal.w6 r0 = r3.f8322a     // Catch: android.content.res.Resources.NotFoundException -> L48
            android.content.Context r0 = r0.e()     // Catch: android.content.res.Resources.NotFoundException -> L48
            android.content.res.Resources r0 = r0.getResources()     // Catch: android.content.res.Resources.NotFoundException -> L48
            int r4 = r4.intValue()     // Catch: android.content.res.Resources.NotFoundException -> L48
            java.lang.String[] r4 = r0.getStringArray(r4)     // Catch: android.content.res.Resources.NotFoundException -> L48
            if (r4 != 0) goto L43
            return r1
        L43:
            java.util.List r4 = java.util.Arrays.asList(r4)     // Catch: android.content.res.Resources.NotFoundException -> L48
            return r4
        L48:
            r4 = move-exception
            com.google.android.gms.measurement.internal.w6 r0 = r3.f8322a
            com.google.android.gms.measurement.internal.p5 r0 = r0.a()
            com.google.android.gms.measurement.internal.n5 r0 = r0.o()
            java.lang.String r2 = "Failed to load string array from metadata: resource not found"
            r0.b(r2, r4)
        L58:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.m.K(java.lang.String):java.util.List");
    }

    public final boolean L() {
        this.f8322a.c();
        Boolean J = J("firebase_analytics_collection_deactivated");
        if (J != null && J.booleanValue()) {
            return true;
        }
        return false;
    }

    public final boolean M() {
        Boolean J = J("google_analytics_adid_collection_enabled");
        if (J != null && !J.booleanValue()) {
            return false;
        }
        return true;
    }

    public final boolean N() {
        Boolean J = J("google_analytics_automatic_screen_reporting_enabled");
        if (J != null && !J.booleanValue()) {
            return false;
        }
        return true;
    }

    public final i6.r O(String str, boolean z10) {
        Object obj;
        n5.q.e(str);
        w6 w6Var = this.f8322a;
        Bundle I = I();
        if (I == null) {
            w6Var.a().o().a("Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = I.get(str);
        }
        if (obj == null) {
            return i6.r.UNINITIALIZED;
        }
        if (Boolean.TRUE.equals(obj)) {
            return i6.r.GRANTED;
        }
        if (Boolean.FALSE.equals(obj)) {
            return i6.r.DENIED;
        }
        if (z10 && "eu_consent_policy".equals(obj)) {
            return i6.r.POLICY;
        }
        w6Var.a().r().b("Invalid manifest metadata for", str);
        return i6.r.UNINITIALIZED;
    }

    public final boolean P() {
        Boolean J = J("google_analytics_sgtm_upload_enabled");
        if (J == null) {
            return false;
        }
        return J.booleanValue();
    }

    public final void Q(String str) {
        this.f7737c = str;
    }

    public final String R() {
        return this.f7737c;
    }

    public final String i() {
        return s("debug.firebase.analytics.app", "");
    }

    public final String j() {
        return s("debug.deferred.deeplink", "");
    }

    public final boolean k(String str) {
        return "1".equals(this.f7738d.d(str, "gaia_collection_enabled"));
    }

    public final boolean l(String str) {
        return "1".equals(this.f7738d.d(str, "measurement.event_sampling_enabled"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean m() {
        if (this.f7736b == null) {
            Boolean J = J("app_measurement_lite");
            this.f7736b = J;
            if (J == null) {
                this.f7736b = Boolean.FALSE;
            }
        }
        if (!this.f7736b.booleanValue() && this.f8322a.G()) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void t(l lVar) {
        this.f7738d = lVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String u() {
        this.f8322a.c();
        return "FA";
    }

    public final int v() {
        if (this.f8322a.C().V(201500000, true)) {
            return 100;
        }
        return 25;
    }

    public final int w(String str) {
        return F(str, c5.Y, 25, 100);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int x(String str, boolean z10) {
        if (!z10) {
            return 500;
        }
        return F(str, c5.f7349i0, 100, 500);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int y(String str, boolean z10) {
        return Math.max(x(str, z10), 256);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int z(String str) {
        return F(str, c5.X, 500, 2000);
    }
}
