package io.sentry.protocol;

import com.arthenica.ffmpegkit.Chapter;
import io.appmetrica.analytics.impl.C1415p9;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import io.flutter.Build;
import io.flutter.plugins.firebase.analytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class e implements q1 {
    private String A;
    private String B;
    private String C;
    private String D;
    private Float E;
    private Integer F;
    private Double G;
    private String H;
    private Map I;

    /* renamed from: a  reason: collision with root package name */
    private String f23358a;

    /* renamed from: b  reason: collision with root package name */
    private String f23359b;

    /* renamed from: c  reason: collision with root package name */
    private String f23360c;

    /* renamed from: d  reason: collision with root package name */
    private String f23361d;

    /* renamed from: e  reason: collision with root package name */
    private String f23362e;

    /* renamed from: f  reason: collision with root package name */
    private String f23363f;

    /* renamed from: g  reason: collision with root package name */
    private String[] f23364g;

    /* renamed from: h  reason: collision with root package name */
    private Float f23365h;

    /* renamed from: i  reason: collision with root package name */
    private Boolean f23366i;

    /* renamed from: j  reason: collision with root package name */
    private Boolean f23367j;

    /* renamed from: k  reason: collision with root package name */
    private b f23368k;

    /* renamed from: l  reason: collision with root package name */
    private Boolean f23369l;

    /* renamed from: m  reason: collision with root package name */
    private Long f23370m;

    /* renamed from: n  reason: collision with root package name */
    private Long f23371n;

    /* renamed from: o  reason: collision with root package name */
    private Long f23372o;

    /* renamed from: p  reason: collision with root package name */
    private Boolean f23373p;

    /* renamed from: q  reason: collision with root package name */
    private Long f23374q;

    /* renamed from: r  reason: collision with root package name */
    private Long f23375r;

    /* renamed from: s  reason: collision with root package name */
    private Long f23376s;

    /* renamed from: t  reason: collision with root package name */
    private Long f23377t;

    /* renamed from: u  reason: collision with root package name */
    private Integer f23378u;

    /* renamed from: v  reason: collision with root package name */
    private Integer f23379v;

    /* renamed from: w  reason: collision with root package name */
    private Float f23380w;

    /* renamed from: x  reason: collision with root package name */
    private Integer f23381x;

    /* renamed from: y  reason: collision with root package name */
    private Date f23382y;

    /* renamed from: z  reason: collision with root package name */
    private TimeZone f23383z;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public e a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            e eVar = new e();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -2076227591:
                        if (f02.equals("timezone")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -2012489734:
                        if (f02.equals("boot_time")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1981332476:
                        if (f02.equals("simulator")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -1969347631:
                        if (f02.equals(CommonUrlParts.MANUFACTURER)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case -1613589672:
                        if (f02.equals("language")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case -1608004830:
                        if (f02.equals("processor_count")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case -1439500848:
                        if (f02.equals("orientation")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case -1410521534:
                        if (f02.equals("battery_temperature")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case -1281860764:
                        if (f02.equals("family")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case -1097462182:
                        if (f02.equals(CommonUrlParts.LOCALE)) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case -1012222381:
                        if (f02.equals(androidx.browser.customtabs.b.ONLINE_EXTRAS_KEY)) {
                            c10 = '\n';
                            break;
                        }
                        break;
                    case -877252910:
                        if (f02.equals("battery_level")) {
                            c10 = 11;
                            break;
                        }
                        break;
                    case -619038223:
                        if (f02.equals("model_id")) {
                            c10 = '\f';
                            break;
                        }
                        break;
                    case -568274923:
                        if (f02.equals("screen_density")) {
                            c10 = '\r';
                            break;
                        }
                        break;
                    case -417046774:
                        if (f02.equals(CommonUrlParts.SCREEN_DPI)) {
                            c10 = 14;
                            break;
                        }
                        break;
                    case -136523212:
                        if (f02.equals("free_memory")) {
                            c10 = 15;
                            break;
                        }
                        break;
                    case 3355:
                        if (f02.equals(Chapter.KEY_ID)) {
                            c10 = 16;
                            break;
                        }
                        break;
                    case 3373707:
                        if (f02.equals(Constants.NAME)) {
                            c10 = 17;
                            break;
                        }
                        break;
                    case 59142220:
                        if (f02.equals("low_memory")) {
                            c10 = 18;
                            break;
                        }
                        break;
                    case 93076189:
                        if (f02.equals("archs")) {
                            c10 = 19;
                            break;
                        }
                        break;
                    case 93997959:
                        if (f02.equals("brand")) {
                            c10 = 20;
                            break;
                        }
                        break;
                    case 104069929:
                        if (f02.equals(CommonUrlParts.MODEL)) {
                            c10 = 21;
                            break;
                        }
                        break;
                    case 115746789:
                        if (f02.equals("cpu_description")) {
                            c10 = 22;
                            break;
                        }
                        break;
                    case 244497903:
                        if (f02.equals("processor_frequency")) {
                            c10 = 23;
                            break;
                        }
                        break;
                    case 731866107:
                        if (f02.equals("connection_type")) {
                            c10 = 24;
                            break;
                        }
                        break;
                    case 817830969:
                        if (f02.equals("screen_width_pixels")) {
                            c10 = 25;
                            break;
                        }
                        break;
                    case 823882553:
                        if (f02.equals("external_storage_size")) {
                            c10 = 26;
                            break;
                        }
                        break;
                    case 897428293:
                        if (f02.equals("storage_size")) {
                            c10 = 27;
                            break;
                        }
                        break;
                    case 1331465768:
                        if (f02.equals("usable_memory")) {
                            c10 = 28;
                            break;
                        }
                        break;
                    case 1418777727:
                        if (f02.equals("memory_size")) {
                            c10 = 29;
                            break;
                        }
                        break;
                    case 1436115569:
                        if (f02.equals("charging")) {
                            c10 = 30;
                            break;
                        }
                        break;
                    case 1450613660:
                        if (f02.equals("external_free_storage")) {
                            c10 = 31;
                            break;
                        }
                        break;
                    case 1524159400:
                        if (f02.equals("free_storage")) {
                            c10 = ' ';
                            break;
                        }
                        break;
                    case 1556284978:
                        if (f02.equals("screen_height_pixels")) {
                            c10 = '!';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        eVar.f23383z = l2Var.Q(iLogger);
                        break;
                    case 1:
                        if (l2Var.peek() != io.sentry.vendor.gson.stream.b.STRING) {
                            break;
                        } else {
                            eVar.f23382y = l2Var.i0(iLogger);
                            break;
                        }
                    case 2:
                        eVar.f23369l = l2Var.m0();
                        break;
                    case 3:
                        eVar.f23359b = l2Var.T();
                        break;
                    case 4:
                        eVar.B = l2Var.T();
                        break;
                    case 5:
                        eVar.F = l2Var.J();
                        break;
                    case 6:
                        eVar.f23368k = (b) l2Var.u0(iLogger, new b.a());
                        break;
                    case 7:
                        eVar.E = l2Var.r0();
                        break;
                    case '\b':
                        eVar.f23361d = l2Var.T();
                        break;
                    case '\t':
                        eVar.C = l2Var.T();
                        break;
                    case '\n':
                        eVar.f23367j = l2Var.m0();
                        break;
                    case 11:
                        eVar.f23365h = l2Var.r0();
                        break;
                    case '\f':
                        eVar.f23363f = l2Var.T();
                        break;
                    case '\r':
                        eVar.f23380w = l2Var.r0();
                        break;
                    case 14:
                        eVar.f23381x = l2Var.J();
                        break;
                    case 15:
                        eVar.f23371n = l2Var.M();
                        break;
                    case 16:
                        eVar.A = l2Var.T();
                        break;
                    case 17:
                        eVar.f23358a = l2Var.T();
                        break;
                    case 18:
                        eVar.f23373p = l2Var.m0();
                        break;
                    case C1415p9.C /* 19 */:
                        List list = (List) l2Var.B0();
                        if (list == null) {
                            break;
                        } else {
                            String[] strArr = new String[list.size()];
                            list.toArray(strArr);
                            eVar.f23364g = strArr;
                            break;
                        }
                    case 20:
                        eVar.f23360c = l2Var.T();
                        break;
                    case 21:
                        eVar.f23362e = l2Var.T();
                        break;
                    case Build.API_LEVELS.API_22 /* 22 */:
                        eVar.H = l2Var.T();
                        break;
                    case Build.API_LEVELS.API_23 /* 23 */:
                        eVar.G = l2Var.e0();
                        break;
                    case Build.API_LEVELS.API_24 /* 24 */:
                        eVar.D = l2Var.T();
                        break;
                    case 25:
                        eVar.f23378u = l2Var.J();
                        break;
                    case 26:
                        eVar.f23376s = l2Var.M();
                        break;
                    case 27:
                        eVar.f23374q = l2Var.M();
                        break;
                    case Build.API_LEVELS.API_28 /* 28 */:
                        eVar.f23372o = l2Var.M();
                        break;
                    case 29:
                        eVar.f23370m = l2Var.M();
                        break;
                    case Build.API_LEVELS.API_30 /* 30 */:
                        eVar.f23366i = l2Var.m0();
                        break;
                    case Build.API_LEVELS.API_31 /* 31 */:
                        eVar.f23377t = l2Var.M();
                        break;
                    case Build.API_LEVELS.API_32 /* 32 */:
                        eVar.f23375r = l2Var.M();
                        break;
                    case Build.API_LEVELS.API_33 /* 33 */:
                        eVar.f23379v = l2Var.J();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            eVar.s0(concurrentHashMap);
            l2Var.r();
            return eVar;
        }
    }

    /* loaded from: classes2.dex */
    public enum b implements q1 {
        PORTRAIT,
        LANDSCAPE;

        /* loaded from: classes2.dex */
        public static final class a implements g1 {
            @Override // io.sentry.g1
            /* renamed from: b */
            public b a(l2 l2Var, ILogger iLogger) {
                return b.valueOf(l2Var.C().toUpperCase(Locale.ROOT));
            }
        }

        @Override // io.sentry.q1
        public void serialize(m2 m2Var, ILogger iLogger) {
            m2Var.c(toString().toLowerCase(Locale.ROOT));
        }
    }

    public e() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(e eVar) {
        this.f23358a = eVar.f23358a;
        this.f23359b = eVar.f23359b;
        this.f23360c = eVar.f23360c;
        this.f23361d = eVar.f23361d;
        this.f23362e = eVar.f23362e;
        this.f23363f = eVar.f23363f;
        this.f23366i = eVar.f23366i;
        this.f23367j = eVar.f23367j;
        this.f23368k = eVar.f23368k;
        this.f23369l = eVar.f23369l;
        this.f23370m = eVar.f23370m;
        this.f23371n = eVar.f23371n;
        this.f23372o = eVar.f23372o;
        this.f23373p = eVar.f23373p;
        this.f23374q = eVar.f23374q;
        this.f23375r = eVar.f23375r;
        this.f23376s = eVar.f23376s;
        this.f23377t = eVar.f23377t;
        this.f23378u = eVar.f23378u;
        this.f23379v = eVar.f23379v;
        this.f23380w = eVar.f23380w;
        this.f23381x = eVar.f23381x;
        this.f23382y = eVar.f23382y;
        this.A = eVar.A;
        this.B = eVar.B;
        this.D = eVar.D;
        this.E = eVar.E;
        this.f23365h = eVar.f23365h;
        String[] strArr = eVar.f23364g;
        this.f23364g = strArr != null ? (String[]) strArr.clone() : null;
        this.C = eVar.C;
        TimeZone timeZone = eVar.f23383z;
        this.f23383z = timeZone != null ? (TimeZone) timeZone.clone() : null;
        this.F = eVar.F;
        this.G = eVar.G;
        this.H = eVar.H;
        this.I = io.sentry.util.b.c(eVar.I);
    }

    public String I() {
        return this.D;
    }

    public String J() {
        return this.A;
    }

    public String K() {
        return this.B;
    }

    public String L() {
        return this.C;
    }

    public void M(String[] strArr) {
        this.f23364g = strArr;
    }

    public void N(Float f10) {
        this.f23365h = f10;
    }

    public void O(Float f10) {
        this.E = f10;
    }

    public void P(Date date) {
        this.f23382y = date;
    }

    public void Q(String str) {
        this.f23360c = str;
    }

    public void R(Boolean bool) {
        this.f23366i = bool;
    }

    public void S(String str) {
        this.D = str;
    }

    public void T(Long l10) {
        this.f23377t = l10;
    }

    public void U(Long l10) {
        this.f23376s = l10;
    }

    public void V(String str) {
        this.f23361d = str;
    }

    public void W(Long l10) {
        this.f23371n = l10;
    }

    public void X(Long l10) {
        this.f23375r = l10;
    }

    public void Y(String str) {
        this.A = str;
    }

    public void Z(String str) {
        this.B = str;
    }

    public void a0(String str) {
        this.C = str;
    }

    public void b0(Boolean bool) {
        this.f23373p = bool;
    }

    public void c0(String str) {
        this.f23359b = str;
    }

    public void d0(Long l10) {
        this.f23370m = l10;
    }

    public void e0(String str) {
        this.f23362e = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (io.sentry.util.q.a(this.f23358a, eVar.f23358a) && io.sentry.util.q.a(this.f23359b, eVar.f23359b) && io.sentry.util.q.a(this.f23360c, eVar.f23360c) && io.sentry.util.q.a(this.f23361d, eVar.f23361d) && io.sentry.util.q.a(this.f23362e, eVar.f23362e) && io.sentry.util.q.a(this.f23363f, eVar.f23363f) && Arrays.equals(this.f23364g, eVar.f23364g) && io.sentry.util.q.a(this.f23365h, eVar.f23365h) && io.sentry.util.q.a(this.f23366i, eVar.f23366i) && io.sentry.util.q.a(this.f23367j, eVar.f23367j) && this.f23368k == eVar.f23368k && io.sentry.util.q.a(this.f23369l, eVar.f23369l) && io.sentry.util.q.a(this.f23370m, eVar.f23370m) && io.sentry.util.q.a(this.f23371n, eVar.f23371n) && io.sentry.util.q.a(this.f23372o, eVar.f23372o) && io.sentry.util.q.a(this.f23373p, eVar.f23373p) && io.sentry.util.q.a(this.f23374q, eVar.f23374q) && io.sentry.util.q.a(this.f23375r, eVar.f23375r) && io.sentry.util.q.a(this.f23376s, eVar.f23376s) && io.sentry.util.q.a(this.f23377t, eVar.f23377t) && io.sentry.util.q.a(this.f23378u, eVar.f23378u) && io.sentry.util.q.a(this.f23379v, eVar.f23379v) && io.sentry.util.q.a(this.f23380w, eVar.f23380w) && io.sentry.util.q.a(this.f23381x, eVar.f23381x) && io.sentry.util.q.a(this.f23382y, eVar.f23382y) && io.sentry.util.q.a(this.A, eVar.A) && io.sentry.util.q.a(this.B, eVar.B) && io.sentry.util.q.a(this.C, eVar.C) && io.sentry.util.q.a(this.D, eVar.D) && io.sentry.util.q.a(this.E, eVar.E) && io.sentry.util.q.a(this.F, eVar.F) && io.sentry.util.q.a(this.G, eVar.G) && io.sentry.util.q.a(this.H, eVar.H)) {
            return true;
        }
        return false;
    }

    public void f0(String str) {
        this.f23363f = str;
    }

    public void g0(String str) {
        this.f23358a = str;
    }

    public void h0(Boolean bool) {
        this.f23367j = bool;
    }

    public int hashCode() {
        return (io.sentry.util.q.b(this.f23358a, this.f23359b, this.f23360c, this.f23361d, this.f23362e, this.f23363f, this.f23365h, this.f23366i, this.f23367j, this.f23368k, this.f23369l, this.f23370m, this.f23371n, this.f23372o, this.f23373p, this.f23374q, this.f23375r, this.f23376s, this.f23377t, this.f23378u, this.f23379v, this.f23380w, this.f23381x, this.f23382y, this.f23383z, this.A, this.B, this.C, this.D, this.E, this.F, this.G, this.H) * 31) + Arrays.hashCode(this.f23364g);
    }

    public void i0(b bVar) {
        this.f23368k = bVar;
    }

    public void j0(Integer num) {
        this.F = num;
    }

    public void k0(Double d10) {
        this.G = d10;
    }

    public void l0(Float f10) {
        this.f23380w = f10;
    }

    public void m0(Integer num) {
        this.f23381x = num;
    }

    public void n0(Integer num) {
        this.f23379v = num;
    }

    public void o0(Integer num) {
        this.f23378u = num;
    }

    public void p0(Boolean bool) {
        this.f23369l = bool;
    }

    public void q0(Long l10) {
        this.f23374q = l10;
    }

    public void r0(TimeZone timeZone) {
        this.f23383z = timeZone;
    }

    public void s0(Map map) {
        this.I = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23358a != null) {
            m2Var.k(Constants.NAME).c(this.f23358a);
        }
        if (this.f23359b != null) {
            m2Var.k(CommonUrlParts.MANUFACTURER).c(this.f23359b);
        }
        if (this.f23360c != null) {
            m2Var.k("brand").c(this.f23360c);
        }
        if (this.f23361d != null) {
            m2Var.k("family").c(this.f23361d);
        }
        if (this.f23362e != null) {
            m2Var.k(CommonUrlParts.MODEL).c(this.f23362e);
        }
        if (this.f23363f != null) {
            m2Var.k("model_id").c(this.f23363f);
        }
        if (this.f23364g != null) {
            m2Var.k("archs").g(iLogger, this.f23364g);
        }
        if (this.f23365h != null) {
            m2Var.k("battery_level").f(this.f23365h);
        }
        if (this.f23366i != null) {
            m2Var.k("charging").h(this.f23366i);
        }
        if (this.f23367j != null) {
            m2Var.k(androidx.browser.customtabs.b.ONLINE_EXTRAS_KEY).h(this.f23367j);
        }
        if (this.f23368k != null) {
            m2Var.k("orientation").g(iLogger, this.f23368k);
        }
        if (this.f23369l != null) {
            m2Var.k("simulator").h(this.f23369l);
        }
        if (this.f23370m != null) {
            m2Var.k("memory_size").f(this.f23370m);
        }
        if (this.f23371n != null) {
            m2Var.k("free_memory").f(this.f23371n);
        }
        if (this.f23372o != null) {
            m2Var.k("usable_memory").f(this.f23372o);
        }
        if (this.f23373p != null) {
            m2Var.k("low_memory").h(this.f23373p);
        }
        if (this.f23374q != null) {
            m2Var.k("storage_size").f(this.f23374q);
        }
        if (this.f23375r != null) {
            m2Var.k("free_storage").f(this.f23375r);
        }
        if (this.f23376s != null) {
            m2Var.k("external_storage_size").f(this.f23376s);
        }
        if (this.f23377t != null) {
            m2Var.k("external_free_storage").f(this.f23377t);
        }
        if (this.f23378u != null) {
            m2Var.k("screen_width_pixels").f(this.f23378u);
        }
        if (this.f23379v != null) {
            m2Var.k("screen_height_pixels").f(this.f23379v);
        }
        if (this.f23380w != null) {
            m2Var.k("screen_density").f(this.f23380w);
        }
        if (this.f23381x != null) {
            m2Var.k(CommonUrlParts.SCREEN_DPI).f(this.f23381x);
        }
        if (this.f23382y != null) {
            m2Var.k("boot_time").g(iLogger, this.f23382y);
        }
        if (this.f23383z != null) {
            m2Var.k("timezone").g(iLogger, this.f23383z);
        }
        if (this.A != null) {
            m2Var.k(Chapter.KEY_ID).c(this.A);
        }
        if (this.B != null) {
            m2Var.k("language").c(this.B);
        }
        if (this.D != null) {
            m2Var.k("connection_type").c(this.D);
        }
        if (this.E != null) {
            m2Var.k("battery_temperature").f(this.E);
        }
        if (this.C != null) {
            m2Var.k(CommonUrlParts.LOCALE).c(this.C);
        }
        if (this.F != null) {
            m2Var.k("processor_count").f(this.F);
        }
        if (this.G != null) {
            m2Var.k("processor_frequency").f(this.G);
        }
        if (this.H != null) {
            m2Var.k("cpu_description").c(this.H);
        }
        Map map = this.I;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.I.get(str));
            }
        }
        m2Var.r();
    }
}
