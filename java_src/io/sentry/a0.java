package io.sentry;

import io.sentry.s5;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes2.dex */
public final class a0 {
    private List A;
    private Boolean B;
    private Boolean C;
    private s5.g D;

    /* renamed from: a  reason: collision with root package name */
    private String f21975a;

    /* renamed from: b  reason: collision with root package name */
    private String f21976b;

    /* renamed from: c  reason: collision with root package name */
    private String f21977c;

    /* renamed from: d  reason: collision with root package name */
    private String f21978d;

    /* renamed from: e  reason: collision with root package name */
    private String f21979e;

    /* renamed from: f  reason: collision with root package name */
    private Boolean f21980f;

    /* renamed from: g  reason: collision with root package name */
    private Boolean f21981g;

    /* renamed from: h  reason: collision with root package name */
    private Boolean f21982h;

    /* renamed from: i  reason: collision with root package name */
    private Boolean f21983i;

    /* renamed from: j  reason: collision with root package name */
    private Double f21984j;

    /* renamed from: k  reason: collision with root package name */
    private Double f21985k;

    /* renamed from: l  reason: collision with root package name */
    private s5.j f21986l;

    /* renamed from: n  reason: collision with root package name */
    private s5.i f21988n;

    /* renamed from: s  reason: collision with root package name */
    private String f21993s;

    /* renamed from: t  reason: collision with root package name */
    private Long f21994t;

    /* renamed from: v  reason: collision with root package name */
    private Boolean f21996v;

    /* renamed from: w  reason: collision with root package name */
    private Boolean f21997w;

    /* renamed from: y  reason: collision with root package name */
    private Boolean f21999y;

    /* renamed from: z  reason: collision with root package name */
    private Boolean f22000z;

    /* renamed from: m  reason: collision with root package name */
    private final Map f21987m = new ConcurrentHashMap();

    /* renamed from: o  reason: collision with root package name */
    private final List f21989o = new CopyOnWriteArrayList();

    /* renamed from: p  reason: collision with root package name */
    private final List f21990p = new CopyOnWriteArrayList();

    /* renamed from: q  reason: collision with root package name */
    private List f21991q = null;

    /* renamed from: r  reason: collision with root package name */
    private final List f21992r = new CopyOnWriteArrayList();

    /* renamed from: u  reason: collision with root package name */
    private final Set f21995u = new CopyOnWriteArraySet();

    /* renamed from: x  reason: collision with root package name */
    private Set f21998x = new CopyOnWriteArraySet();

    public static a0 g(io.sentry.config.f fVar, ILogger iLogger) {
        List<String> list;
        a0 a0Var = new a0();
        a0Var.N(fVar.b("dsn"));
        a0Var.U(fVar.b("environment"));
        a0Var.c0(fVar.b("release"));
        a0Var.M(fVar.b("dist"));
        a0Var.f0(fVar.b("servername"));
        a0Var.S(fVar.c("uncaught.handler.enabled"));
        a0Var.Y(fVar.c("uncaught.handler.print-stacktrace"));
        a0Var.R(fVar.c("enable-tracing"));
        a0Var.h0(fVar.e("traces-sample-rate"));
        a0Var.Z(fVar.e("profiles-sample-rate"));
        a0Var.L(fVar.c("debug"));
        a0Var.P(fVar.c("enable-deduplication"));
        a0Var.d0(fVar.c("send-client-reports"));
        String b10 = fVar.b("max-request-body-size");
        if (b10 != null) {
            a0Var.X(s5.j.valueOf(b10.toUpperCase(Locale.ROOT)));
        }
        for (Map.Entry entry : fVar.a("tags").entrySet()) {
            a0Var.g0((String) entry.getKey(), (String) entry.getValue());
        }
        String b11 = fVar.b("proxy.host");
        String b12 = fVar.b("proxy.user");
        String b13 = fVar.b("proxy.pass");
        String f10 = fVar.f("proxy.port", "80");
        if (b11 != null) {
            a0Var.b0(new s5.i(b11, f10, b12, b13));
        }
        for (String str : fVar.g("in-app-includes")) {
            a0Var.e(str);
        }
        for (String str2 : fVar.g("in-app-excludes")) {
            a0Var.d(str2);
        }
        if (fVar.b("trace-propagation-targets") != null) {
            list = fVar.g("trace-propagation-targets");
        } else {
            list = null;
        }
        if (list == null && fVar.b("tracing-origins") != null) {
            list = fVar.g("tracing-origins");
        }
        if (list != null) {
            for (String str3 : list) {
                a0Var.f(str3);
            }
        }
        for (String str4 : fVar.g("context-tags")) {
            a0Var.b(str4);
        }
        a0Var.a0(fVar.b("proguard-uuid"));
        for (String str5 : fVar.g("bundle-ids")) {
            a0Var.a(str5);
        }
        a0Var.V(fVar.d("idle-timeout"));
        a0Var.T(fVar.c("enabled"));
        a0Var.Q(fVar.c("enable-pretty-serialization-output"));
        a0Var.e0(fVar.c("send-modules"));
        a0Var.W(fVar.g("ignored-checkins"));
        a0Var.O(fVar.c("enable-backpressure-handling"));
        for (String str6 : fVar.g("ignored-exceptions-for-type")) {
            try {
                Class<?> cls = Class.forName(str6);
                if (Throwable.class.isAssignableFrom(cls)) {
                    a0Var.c(cls);
                } else {
                    iLogger.c(j5.WARNING, "Skipping setting %s as ignored-exception-for-type. Reason: %s does not extend Throwable", str6, str6);
                }
            } catch (ClassNotFoundException unused) {
                iLogger.c(j5.WARNING, "Skipping setting %s as ignored-exception-for-type. Reason: %s class is not found", str6, str6);
            }
        }
        Long d10 = fVar.d("cron.default-checkin-margin");
        Long d11 = fVar.d("cron.default-max-runtime");
        String b14 = fVar.b("cron.default-timezone");
        Long d12 = fVar.d("cron.default-failure-issue-threshold");
        Long d13 = fVar.d("cron.default-recovery-threshold");
        if (d10 != null || d11 != null || b14 != null || d12 != null || d13 != null) {
            s5.g gVar = new s5.g();
            gVar.f(d10);
            gVar.h(d11);
            gVar.j(b14);
            gVar.g(d12);
            gVar.i(d13);
            a0Var.K(gVar);
        }
        return a0Var;
    }

    public String A() {
        return this.f21977c;
    }

    public Boolean B() {
        return this.f21997w;
    }

    public String C() {
        return this.f21979e;
    }

    public Map D() {
        return this.f21987m;
    }

    public List E() {
        return this.f21991q;
    }

    public Double F() {
        return this.f21984j;
    }

    public Boolean G() {
        return this.C;
    }

    public Boolean H() {
        return this.f22000z;
    }

    public Boolean I() {
        return this.f21999y;
    }

    public Boolean J() {
        return this.B;
    }

    public void K(s5.g gVar) {
        this.D = gVar;
    }

    public void L(Boolean bool) {
        this.f21981g = bool;
    }

    public void M(String str) {
        this.f21978d = str;
    }

    public void N(String str) {
        this.f21975a = str;
    }

    public void O(Boolean bool) {
        this.C = bool;
    }

    public void P(Boolean bool) {
        this.f21982h = bool;
    }

    public void Q(Boolean bool) {
        this.f22000z = bool;
    }

    public void R(Boolean bool) {
        this.f21983i = bool;
    }

    public void S(Boolean bool) {
        this.f21980f = bool;
    }

    public void T(Boolean bool) {
        this.f21999y = bool;
    }

    public void U(String str) {
        this.f21976b = str;
    }

    public void V(Long l10) {
        this.f21994t = l10;
    }

    public void W(List list) {
        this.A = list;
    }

    public void X(s5.j jVar) {
        this.f21986l = jVar;
    }

    public void Y(Boolean bool) {
        this.f21996v = bool;
    }

    public void Z(Double d10) {
        this.f21985k = d10;
    }

    public void a(String str) {
        this.f21998x.add(str);
    }

    public void a0(String str) {
        this.f21993s = str;
    }

    public void b(String str) {
        this.f21992r.add(str);
    }

    public void b0(s5.i iVar) {
        this.f21988n = iVar;
    }

    public void c(Class cls) {
        this.f21995u.add(cls);
    }

    public void c0(String str) {
        this.f21977c = str;
    }

    public void d(String str) {
        this.f21989o.add(str);
    }

    public void d0(Boolean bool) {
        this.f21997w = bool;
    }

    public void e(String str) {
        this.f21990p.add(str);
    }

    public void e0(Boolean bool) {
        this.B = bool;
    }

    public void f(String str) {
        if (this.f21991q == null) {
            this.f21991q = new CopyOnWriteArrayList();
        }
        if (!str.isEmpty()) {
            this.f21991q.add(str);
        }
    }

    public void f0(String str) {
        this.f21979e = str;
    }

    public void g0(String str, String str2) {
        this.f21987m.put(str, str2);
    }

    public Set h() {
        return this.f21998x;
    }

    public void h0(Double d10) {
        this.f21984j = d10;
    }

    public List i() {
        return this.f21992r;
    }

    public s5.g j() {
        return this.D;
    }

    public Boolean k() {
        return this.f21981g;
    }

    public String l() {
        return this.f21978d;
    }

    public String m() {
        return this.f21975a;
    }

    public Boolean n() {
        return this.f21982h;
    }

    public Boolean o() {
        return this.f21983i;
    }

    public Boolean p() {
        return this.f21980f;
    }

    public String q() {
        return this.f21976b;
    }

    public Long r() {
        return this.f21994t;
    }

    public List s() {
        return this.A;
    }

    public Set t() {
        return this.f21995u;
    }

    public List u() {
        return this.f21989o;
    }

    public List v() {
        return this.f21990p;
    }

    public Boolean w() {
        return this.f21996v;
    }

    public Double x() {
        return this.f21985k;
    }

    public String y() {
        return this.f21993s;
    }

    public s5.i z() {
        return this.f21988n;
    }
}
