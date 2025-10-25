package gb;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
/* loaded from: classes.dex */
public final class d implements lb.f {

    /* renamed from: a  reason: collision with root package name */
    private final Context f16351a;

    /* renamed from: b  reason: collision with root package name */
    private final fb.b f16352b;

    /* renamed from: c  reason: collision with root package name */
    private final xc.d f16353c;

    /* renamed from: d  reason: collision with root package name */
    private final xc.d f16354d;

    /* loaded from: classes.dex */
    static final class a extends kotlin.jvm.internal.n implements id.a {
        a() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Map invoke() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("$lib", d.this.f16352b.B());
            linkedHashMap.put("$lib_version", d.this.f16352b.C());
            return linkedHashMap;
        }
    }

    /* loaded from: classes.dex */
    static final class b extends kotlin.jvm.internal.n implements id.a {
        b() {
            super(0);
        }

        @Override // id.a
        /* renamed from: b */
        public final Map invoke() {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            DisplayMetrics g10 = o.g(d.this.f16351a);
            linkedHashMap.put("$screen_density", Float.valueOf(g10.density));
            linkedHashMap.put("$screen_height", Integer.valueOf(o.f(g10.heightPixels, g10.density)));
            linkedHashMap.put("$screen_width", Integer.valueOf(o.f(g10.widthPixels, g10.density)));
            PackageInfo i10 = o.i(d.this.f16351a, d.this.f16352b);
            if (i10 != null) {
                String versionName = i10.versionName;
                if (versionName != null) {
                    kotlin.jvm.internal.m.d(versionName, "versionName");
                    linkedHashMap.put("$app_version", versionName);
                }
                String str = i10.packageName;
                kotlin.jvm.internal.m.d(str, "it.packageName");
                linkedHashMap.put("$app_namespace", str);
                linkedHashMap.put("$app_build", Long.valueOf(o.r(i10)));
            }
            CharSequence loadLabel = d.this.f16351a.getApplicationInfo().loadLabel(d.this.f16351a.getPackageManager());
            kotlin.jvm.internal.m.d(loadLabel, "context.applicationInfo.…l(context.packageManager)");
            linkedHashMap.put("$app_name", loadLabel);
            String MANUFACTURER = Build.MANUFACTURER;
            kotlin.jvm.internal.m.d(MANUFACTURER, "MANUFACTURER");
            linkedHashMap.put("$device_manufacturer", MANUFACTURER);
            String MODEL = Build.MODEL;
            kotlin.jvm.internal.m.d(MODEL, "MODEL");
            linkedHashMap.put("$device_model", MODEL);
            String DEVICE = Build.DEVICE;
            kotlin.jvm.internal.m.d(DEVICE, "DEVICE");
            linkedHashMap.put("$device_name", DEVICE);
            String a10 = gb.a.a(d.this.f16351a);
            if (a10 == null) {
                a10 = "Mobile";
            }
            linkedHashMap.put("$device_type", a10);
            linkedHashMap.put("$os_name", "Android");
            String RELEASE = Build.VERSION.RELEASE;
            kotlin.jvm.internal.m.d(RELEASE, "RELEASE");
            linkedHashMap.put("$os_version", RELEASE);
            linkedHashMap.put("$is_emulator", Boolean.valueOf(d.this.i()));
            return linkedHashMap;
        }
    }

    public d(Context context, fb.b config) {
        xc.d a10;
        xc.d a11;
        kotlin.jvm.internal.m.e(context, "context");
        kotlin.jvm.internal.m.e(config, "config");
        this.f16351a = context;
        this.f16352b = config;
        a10 = xc.f.a(new a());
        this.f16353c = a10;
        a11 = xc.f.a(new b());
        this.f16354d = a11;
    }

    private final Map g() {
        return (Map) this.f16353c.getValue();
    }

    private final Map h() {
        return (Map) this.f16354d.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001d, code lost:
        if (r0 == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i() {
        /*
            r6 = this;
            java.lang.String r0 = android.os.Build.BRAND
            java.lang.String r1 = "BRAND"
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r1 = "generic"
            r2 = 0
            r3 = 2
            r4 = 0
            boolean r0 = rd.n.H(r0, r1, r2, r3, r4)
            if (r0 == 0) goto L1f
            java.lang.String r0 = android.os.Build.DEVICE
            java.lang.String r5 = "DEVICE"
            kotlin.jvm.internal.m.d(r0, r5)
            boolean r0 = rd.n.H(r0, r1, r2, r3, r4)
            if (r0 != 0) goto Lb5
        L1f:
            java.lang.String r0 = android.os.Build.FINGERPRINT
            java.lang.String r5 = "FINGERPRINT"
            kotlin.jvm.internal.m.d(r0, r5)
            boolean r1 = rd.n.H(r0, r1, r2, r3, r4)
            if (r1 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r5)
            java.lang.String r1 = "unknown"
            boolean r0 = rd.n.H(r0, r1, r2, r3, r4)
            if (r0 != 0) goto Lb5
            java.lang.String r0 = android.os.Build.HARDWARE
            java.lang.String r1 = "HARDWARE"
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "goldfish"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r1 = "ranchu"
            boolean r0 = rd.n.N(r0, r1, r2, r3, r4)
            if (r0 != 0) goto Lb5
            java.lang.String r0 = android.os.Build.MODEL
            java.lang.String r1 = "MODEL"
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "google_sdk"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "Emulator"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r1 = "Android SDK built for x86"
            boolean r0 = rd.n.N(r0, r1, r2, r3, r4)
            if (r0 != 0) goto Lb5
            java.lang.String r0 = android.os.Build.MANUFACTURER
            java.lang.String r1 = "MANUFACTURER"
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r1 = "Genymotion"
            boolean r0 = rd.n.N(r0, r1, r2, r3, r4)
            if (r0 != 0) goto Lb5
            java.lang.String r0 = android.os.Build.PRODUCT
            java.lang.String r1 = "PRODUCT"
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "sdk"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "vbox86p"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r5 = "emulator"
            boolean r5 = rd.n.N(r0, r5, r2, r3, r4)
            if (r5 != 0) goto Lb5
            kotlin.jvm.internal.m.d(r0, r1)
            java.lang.String r1 = "simulator"
            boolean r0 = rd.n.N(r0, r1, r2, r3, r4)
            if (r0 == 0) goto Lb6
        Lb5:
            r2 = 1
        Lb6:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: gb.d.i():boolean");
    }

    @Override // lb.f
    public Map a() {
        Network activeNetwork;
        NetworkCapabilities networkCapabilities;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("$locale", Locale.getDefault().getLanguage() + '-' + Locale.getDefault().getCountry());
        String property = System.getProperty("http.agent");
        if (property != null) {
            linkedHashMap.put("$user_agent", property);
        }
        String id2 = TimeZone.getDefault().getID();
        kotlin.jvm.internal.m.d(id2, "getDefault().id");
        linkedHashMap.put("$timezone", id2);
        ConnectivityManager e10 = o.e(this.f16351a);
        boolean z10 = false;
        if (e10 != null && o.k(this.f16351a, "android.permission.ACCESS_NETWORK_STATE") && (activeNetwork = e10.getActiveNetwork()) != null && (networkCapabilities = e10.getNetworkCapabilities(activeNetwork)) != null) {
            linkedHashMap.put("$network_wifi", Boolean.valueOf(networkCapabilities.hasTransport(1)));
            linkedHashMap.put("$network_bluetooth", Boolean.valueOf(networkCapabilities.hasTransport(2)));
            linkedHashMap.put("$network_cellular", Boolean.valueOf(networkCapabilities.hasTransport(0)));
        }
        TelephonyManager p10 = o.p(this.f16351a);
        if (p10 != null) {
            String networkOperatorName = p10.getNetworkOperatorName();
            if (networkOperatorName == null || networkOperatorName.length() == 0) {
                z10 = true;
            }
            if (!z10) {
                kotlin.jvm.internal.m.d(networkOperatorName, "networkOperatorName");
                linkedHashMap.put("$network_carrier", networkOperatorName);
            }
        }
        return linkedHashMap;
    }

    @Override // lb.f
    public Map b() {
        return h();
    }

    @Override // lb.f
    public Map c() {
        return g();
    }
}
