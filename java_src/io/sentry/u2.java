package io.sentry;

import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import io.appmetrica.analytics.impl.C1415p9;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.Build;
import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.profilemeasurements.a;
import io.sentry.v2;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class u2 implements q1 {
    private final Map A;
    private String B;
    private Map C;

    /* renamed from: a  reason: collision with root package name */
    private final File f23747a;

    /* renamed from: b  reason: collision with root package name */
    private final Callable f23748b;

    /* renamed from: c  reason: collision with root package name */
    private int f23749c;

    /* renamed from: d  reason: collision with root package name */
    private String f23750d;

    /* renamed from: e  reason: collision with root package name */
    private String f23751e;

    /* renamed from: f  reason: collision with root package name */
    private String f23752f;

    /* renamed from: g  reason: collision with root package name */
    private String f23753g;

    /* renamed from: h  reason: collision with root package name */
    private String f23754h;

    /* renamed from: i  reason: collision with root package name */
    private String f23755i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f23756j;

    /* renamed from: k  reason: collision with root package name */
    private String f23757k;

    /* renamed from: l  reason: collision with root package name */
    private List f23758l;

    /* renamed from: m  reason: collision with root package name */
    private String f23759m;

    /* renamed from: n  reason: collision with root package name */
    private String f23760n;

    /* renamed from: o  reason: collision with root package name */
    private String f23761o;

    /* renamed from: p  reason: collision with root package name */
    private List f23762p;

    /* renamed from: q  reason: collision with root package name */
    private String f23763q;

    /* renamed from: r  reason: collision with root package name */
    private String f23764r;

    /* renamed from: s  reason: collision with root package name */
    private String f23765s;

    /* renamed from: t  reason: collision with root package name */
    private String f23766t;

    /* renamed from: u  reason: collision with root package name */
    private String f23767u;

    /* renamed from: v  reason: collision with root package name */
    private String f23768v;

    /* renamed from: w  reason: collision with root package name */
    private String f23769w;

    /* renamed from: x  reason: collision with root package name */
    private String f23770x;

    /* renamed from: y  reason: collision with root package name */
    private String f23771y;

    /* renamed from: z  reason: collision with root package name */
    private Date f23772z;

    /* loaded from: classes2.dex */
    public static final class b implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public u2 a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            u2 u2Var = new u2();
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -2133529830:
                        if (f02.equals("device_manufacturer")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1981468849:
                        if (f02.equals("android_api_level")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1430655860:
                        if (f02.equals("build_id")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1172160413:
                        if (f02.equals("device_locale")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case -1102636175:
                        if (f02.equals("profile_id")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case -716656436:
                        if (f02.equals("device_os_build_number")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case -591076352:
                        if (f02.equals("device_model")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case -512511455:
                        if (f02.equals("device_is_emulator")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case -478065584:
                        if (f02.equals("duration_ns")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case -362243017:
                        if (f02.equals("measurements")) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case -332426004:
                        if (f02.equals("device_physical_memory_bytes")) {
                            c10 = '\n';
                            break;
                        }
                        break;
                    case -212264198:
                        if (f02.equals("device_cpu_frequencies")) {
                            c10 = 11;
                            break;
                        }
                        break;
                    case -102985484:
                        if (f02.equals("version_code")) {
                            c10 = '\f';
                            break;
                        }
                        break;
                    case -102670958:
                        if (f02.equals("version_name")) {
                            c10 = '\r';
                            break;
                        }
                        break;
                    case -85904877:
                        if (f02.equals("environment")) {
                            c10 = 14;
                            break;
                        }
                        break;
                    case 55126294:
                        if (f02.equals(Constants.TIMESTAMP)) {
                            c10 = 15;
                            break;
                        }
                        break;
                    case 508853068:
                        if (f02.equals("transaction_name")) {
                            c10 = 16;
                            break;
                        }
                        break;
                    case 796476189:
                        if (f02.equals("device_os_name")) {
                            c10 = 17;
                            break;
                        }
                        break;
                    case 839674195:
                        if (f02.equals("architecture")) {
                            c10 = 18;
                            break;
                        }
                        break;
                    case 1010584092:
                        if (f02.equals("transaction_id")) {
                            c10 = 19;
                            break;
                        }
                        break;
                    case 1052553990:
                        if (f02.equals("device_os_version")) {
                            c10 = 20;
                            break;
                        }
                        break;
                    case 1163928186:
                        if (f02.equals("truncation_reason")) {
                            c10 = 21;
                            break;
                        }
                        break;
                    case 1270300245:
                        if (f02.equals("trace_id")) {
                            c10 = 22;
                            break;
                        }
                        break;
                    case 1874684019:
                        if (f02.equals("platform")) {
                            c10 = 23;
                            break;
                        }
                        break;
                    case 1953158756:
                        if (f02.equals("sampled_profile")) {
                            c10 = 24;
                            break;
                        }
                        break;
                    case 1954122069:
                        if (f02.equals("transactions")) {
                            c10 = 25;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        String T = l2Var.T();
                        if (T == null) {
                            break;
                        } else {
                            u2Var.f23751e = T;
                            break;
                        }
                    case 1:
                        Integer J = l2Var.J();
                        if (J == null) {
                            break;
                        } else {
                            u2Var.f23749c = J.intValue();
                            break;
                        }
                    case 2:
                        String T2 = l2Var.T();
                        if (T2 == null) {
                            break;
                        } else {
                            u2Var.f23761o = T2;
                            break;
                        }
                    case 3:
                        String T3 = l2Var.T();
                        if (T3 == null) {
                            break;
                        } else {
                            u2Var.f23750d = T3;
                            break;
                        }
                    case 4:
                        String T4 = l2Var.T();
                        if (T4 == null) {
                            break;
                        } else {
                            u2Var.f23769w = T4;
                            break;
                        }
                    case 5:
                        String T5 = l2Var.T();
                        if (T5 == null) {
                            break;
                        } else {
                            u2Var.f23753g = T5;
                            break;
                        }
                    case 6:
                        String T6 = l2Var.T();
                        if (T6 == null) {
                            break;
                        } else {
                            u2Var.f23752f = T6;
                            break;
                        }
                    case 7:
                        Boolean m02 = l2Var.m0();
                        if (m02 == null) {
                            break;
                        } else {
                            u2Var.f23756j = m02.booleanValue();
                            break;
                        }
                    case '\b':
                        String T7 = l2Var.T();
                        if (T7 == null) {
                            break;
                        } else {
                            u2Var.f23764r = T7;
                            break;
                        }
                    case '\t':
                        Map Z = l2Var.Z(iLogger, new a.C0208a());
                        if (Z == null) {
                            break;
                        } else {
                            u2Var.A.putAll(Z);
                            break;
                        }
                    case '\n':
                        String T8 = l2Var.T();
                        if (T8 == null) {
                            break;
                        } else {
                            u2Var.f23759m = T8;
                            break;
                        }
                    case 11:
                        List list = (List) l2Var.B0();
                        if (list == null) {
                            break;
                        } else {
                            u2Var.f23758l = list;
                            break;
                        }
                    case '\f':
                        String T9 = l2Var.T();
                        if (T9 == null) {
                            break;
                        } else {
                            u2Var.f23765s = T9;
                            break;
                        }
                    case '\r':
                        String T10 = l2Var.T();
                        if (T10 == null) {
                            break;
                        } else {
                            u2Var.f23766t = T10;
                            break;
                        }
                    case 14:
                        String T11 = l2Var.T();
                        if (T11 == null) {
                            break;
                        } else {
                            u2Var.f23770x = T11;
                            break;
                        }
                    case 15:
                        Date i02 = l2Var.i0(iLogger);
                        if (i02 == null) {
                            break;
                        } else {
                            u2Var.f23772z = i02;
                            break;
                        }
                    case 16:
                        String T12 = l2Var.T();
                        if (T12 == null) {
                            break;
                        } else {
                            u2Var.f23763q = T12;
                            break;
                        }
                    case 17:
                        String T13 = l2Var.T();
                        if (T13 == null) {
                            break;
                        } else {
                            u2Var.f23754h = T13;
                            break;
                        }
                    case 18:
                        String T14 = l2Var.T();
                        if (T14 == null) {
                            break;
                        } else {
                            u2Var.f23757k = T14;
                            break;
                        }
                    case C1415p9.C /* 19 */:
                        String T15 = l2Var.T();
                        if (T15 == null) {
                            break;
                        } else {
                            u2Var.f23767u = T15;
                            break;
                        }
                    case 20:
                        String T16 = l2Var.T();
                        if (T16 == null) {
                            break;
                        } else {
                            u2Var.f23755i = T16;
                            break;
                        }
                    case 21:
                        String T17 = l2Var.T();
                        if (T17 == null) {
                            break;
                        } else {
                            u2Var.f23771y = T17;
                            break;
                        }
                    case Build.API_LEVELS.API_22 /* 22 */:
                        String T18 = l2Var.T();
                        if (T18 == null) {
                            break;
                        } else {
                            u2Var.f23768v = T18;
                            break;
                        }
                    case Build.API_LEVELS.API_23 /* 23 */:
                        String T19 = l2Var.T();
                        if (T19 == null) {
                            break;
                        } else {
                            u2Var.f23760n = T19;
                            break;
                        }
                    case Build.API_LEVELS.API_24 /* 24 */:
                        String T20 = l2Var.T();
                        if (T20 == null) {
                            break;
                        } else {
                            u2Var.B = T20;
                            break;
                        }
                    case 25:
                        List M0 = l2Var.M0(iLogger, new v2.a());
                        if (M0 == null) {
                            break;
                        } else {
                            u2Var.f23762p.addAll(M0);
                            break;
                        }
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            u2Var.H(concurrentHashMap);
            l2Var.r();
            return u2Var;
        }
    }

    private boolean D() {
        if (!this.f23771y.equals("normal") && !this.f23771y.equals("timeout") && !this.f23771y.equals("backgrounded")) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ List E() {
        return new ArrayList();
    }

    public String B() {
        return this.f23769w;
    }

    public File C() {
        return this.f23747a;
    }

    public void F() {
        try {
            this.f23758l = (List) this.f23748b.call();
        } catch (Throwable unused) {
        }
    }

    public void G(String str) {
        this.B = str;
    }

    public void H(Map map) {
        this.C = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("android_api_level").g(iLogger, Integer.valueOf(this.f23749c));
        m2Var.k("device_locale").g(iLogger, this.f23750d);
        m2Var.k("device_manufacturer").c(this.f23751e);
        m2Var.k("device_model").c(this.f23752f);
        m2Var.k("device_os_build_number").c(this.f23753g);
        m2Var.k("device_os_name").c(this.f23754h);
        m2Var.k("device_os_version").c(this.f23755i);
        m2Var.k("device_is_emulator").d(this.f23756j);
        m2Var.k("architecture").g(iLogger, this.f23757k);
        m2Var.k("device_cpu_frequencies").g(iLogger, this.f23758l);
        m2Var.k("device_physical_memory_bytes").c(this.f23759m);
        m2Var.k("platform").c(this.f23760n);
        m2Var.k("build_id").c(this.f23761o);
        m2Var.k("transaction_name").c(this.f23763q);
        m2Var.k("duration_ns").c(this.f23764r);
        m2Var.k("version_name").c(this.f23766t);
        m2Var.k("version_code").c(this.f23765s);
        if (!this.f23762p.isEmpty()) {
            m2Var.k("transactions").g(iLogger, this.f23762p);
        }
        m2Var.k("transaction_id").c(this.f23767u);
        m2Var.k("trace_id").c(this.f23768v);
        m2Var.k("profile_id").c(this.f23769w);
        m2Var.k("environment").c(this.f23770x);
        m2Var.k("truncation_reason").c(this.f23771y);
        if (this.B != null) {
            m2Var.k("sampled_profile").c(this.B);
        }
        m2Var.k("measurements").g(iLogger, this.A);
        m2Var.k(Constants.TIMESTAMP).g(iLogger, this.f23772z);
        Map map = this.C;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.C.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    private u2() {
        this(new File("dummy"), h2.u());
    }

    public u2(File file, a1 a1Var) {
        this(file, j.c(), new ArrayList(), a1Var.getName(), a1Var.m().toString(), a1Var.o().k().toString(), CommonUrlParts.Values.FALSE_INTEGER, 0, "", new Callable() { // from class: io.sentry.t2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                List E;
                E = u2.E();
                return E;
            }
        }, null, null, null, null, null, null, null, null, "normal", new HashMap());
    }

    public u2(File file, Date date, List list, String str, String str2, String str3, String str4, int i10, String str5, Callable callable, String str6, String str7, String str8, Boolean bool, String str9, String str10, String str11, String str12, String str13, Map map) {
        this.f23758l = new ArrayList();
        this.B = null;
        this.f23747a = file;
        this.f23772z = date;
        this.f23757k = str5;
        this.f23748b = callable;
        this.f23749c = i10;
        this.f23750d = Locale.getDefault().toString();
        this.f23751e = str6 != null ? str6 : "";
        this.f23752f = str7 != null ? str7 : "";
        this.f23755i = str8 != null ? str8 : "";
        this.f23756j = bool != null ? bool.booleanValue() : false;
        this.f23759m = str9 != null ? str9 : CommonUrlParts.Values.FALSE_INTEGER;
        this.f23753g = "";
        this.f23754h = "android";
        this.f23760n = "android";
        this.f23761o = str10 != null ? str10 : "";
        this.f23762p = list;
        this.f23763q = str.isEmpty() ? CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE : str;
        this.f23764r = str4;
        this.f23765s = "";
        this.f23766t = str11 != null ? str11 : "";
        this.f23767u = str2;
        this.f23768v = str3;
        this.f23769w = UUID.randomUUID().toString();
        this.f23770x = str12 != null ? str12 : "production";
        this.f23771y = str13;
        if (!D()) {
            this.f23771y = "normal";
        }
        this.A = map;
    }
}
