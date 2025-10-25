package io.sentry.protocol;

import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.j5;
import io.sentry.k6;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.n6;
import io.sentry.p6;
import io.sentry.protocol.h;
import io.sentry.protocol.k;
import io.sentry.protocol.r;
import io.sentry.q1;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class u implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final Double f23471a;

    /* renamed from: b  reason: collision with root package name */
    private final Double f23472b;

    /* renamed from: c  reason: collision with root package name */
    private final r f23473c;

    /* renamed from: d  reason: collision with root package name */
    private final n6 f23474d;

    /* renamed from: e  reason: collision with root package name */
    private final n6 f23475e;

    /* renamed from: f  reason: collision with root package name */
    private final String f23476f;

    /* renamed from: g  reason: collision with root package name */
    private final String f23477g;

    /* renamed from: h  reason: collision with root package name */
    private final p6 f23478h;

    /* renamed from: i  reason: collision with root package name */
    private final String f23479i;

    /* renamed from: j  reason: collision with root package name */
    private final Map f23480j;

    /* renamed from: k  reason: collision with root package name */
    private Map f23481k;

    /* renamed from: l  reason: collision with root package name */
    private final Map f23482l;

    /* renamed from: m  reason: collision with root package name */
    private final Map f23483m;

    /* renamed from: n  reason: collision with root package name */
    private Map f23484n;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        private Exception c(String str, ILogger iLogger) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            iLogger.b(j5.ERROR, str2, illegalStateException);
            return illegalStateException;
        }

        @Override // io.sentry.g1
        /* renamed from: b */
        public u a(l2 l2Var, ILogger iLogger) {
            Map map;
            Map map2;
            l2Var.t();
            Map map3 = null;
            Double d10 = null;
            Double d11 = null;
            r rVar = null;
            n6 n6Var = null;
            n6 n6Var2 = null;
            String str = null;
            String str2 = null;
            p6 p6Var = null;
            String str3 = null;
            Map map4 = null;
            ConcurrentHashMap concurrentHashMap = null;
            Map map5 = null;
            Map map6 = null;
            while (true) {
                String str4 = str3;
                p6 p6Var2 = p6Var;
                String str5 = str2;
                n6 n6Var3 = n6Var2;
                if (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                    String f02 = l2Var.f0();
                    f02.hashCode();
                    char c10 = 65535;
                    switch (f02.hashCode()) {
                        case -2011840976:
                            if (f02.equals("span_id")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case -1757797477:
                            if (f02.equals("parent_span_id")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case -1724546052:
                            if (f02.equals("description")) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case -1526966919:
                            if (f02.equals("start_timestamp")) {
                                c10 = 3;
                                break;
                            }
                            break;
                        case -1008619738:
                            if (f02.equals("origin")) {
                                c10 = 4;
                                break;
                            }
                            break;
                        case -892481550:
                            if (f02.equals("status")) {
                                c10 = 5;
                                break;
                            }
                            break;
                        case -682561045:
                            if (f02.equals("_metrics_summary")) {
                                c10 = 6;
                                break;
                            }
                            break;
                        case -362243017:
                            if (f02.equals("measurements")) {
                                c10 = 7;
                                break;
                            }
                            break;
                        case 3553:
                            if (f02.equals("op")) {
                                c10 = '\b';
                                break;
                            }
                            break;
                        case 3076010:
                            if (f02.equals("data")) {
                                c10 = '\t';
                                break;
                            }
                            break;
                        case 3552281:
                            if (f02.equals("tags")) {
                                c10 = '\n';
                                break;
                            }
                            break;
                        case 55126294:
                            if (f02.equals(Constants.TIMESTAMP)) {
                                c10 = 11;
                                break;
                            }
                            break;
                        case 1270300245:
                            if (f02.equals("trace_id")) {
                                c10 = '\f';
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            n6Var = new n6.a().a(l2Var, iLogger);
                            str3 = str4;
                            p6Var = p6Var2;
                            str2 = str5;
                            break;
                        case 1:
                            n6Var2 = (n6) l2Var.u0(iLogger, new n6.a());
                            str3 = str4;
                            p6Var = p6Var2;
                            str2 = str5;
                            continue;
                        case 2:
                            str2 = l2Var.T();
                            str3 = str4;
                            p6Var = p6Var2;
                            break;
                        case 3:
                            try {
                                d10 = l2Var.e0();
                            } catch (NumberFormatException unused) {
                                Date i02 = l2Var.i0(iLogger);
                                if (i02 != null) {
                                    d10 = Double.valueOf(io.sentry.j.b(i02));
                                } else {
                                    d10 = null;
                                }
                            }
                            str3 = str4;
                            p6Var = p6Var2;
                            str2 = str5;
                            break;
                        case 4:
                            str3 = l2Var.T();
                            p6Var = p6Var2;
                            str2 = str5;
                            break;
                        case 5:
                            p6Var = (p6) l2Var.u0(iLogger, new p6.a());
                            str3 = str4;
                            str2 = str5;
                            break;
                        case 6:
                            map5 = l2Var.L(iLogger, new k.a());
                            str3 = str4;
                            p6Var = p6Var2;
                            str2 = str5;
                            break;
                        case 7:
                            map4 = l2Var.Z(iLogger, new h.a());
                            str3 = str4;
                            p6Var = p6Var2;
                            str2 = str5;
                            break;
                        case '\b':
                            str = l2Var.T();
                            str3 = str4;
                            p6Var = p6Var2;
                            str2 = str5;
                            break;
                        case '\t':
                            map6 = (Map) l2Var.B0();
                            str3 = str4;
                            p6Var = p6Var2;
                            str2 = str5;
                            break;
                        case '\n':
                            map3 = (Map) l2Var.B0();
                            str3 = str4;
                            p6Var = p6Var2;
                            str2 = str5;
                            break;
                        case 11:
                            try {
                                d11 = l2Var.e0();
                            } catch (NumberFormatException unused2) {
                                Date i03 = l2Var.i0(iLogger);
                                if (i03 != null) {
                                    d11 = Double.valueOf(io.sentry.j.b(i03));
                                } else {
                                    d11 = null;
                                }
                            }
                            str3 = str4;
                            p6Var = p6Var2;
                            str2 = str5;
                            break;
                        case '\f':
                            rVar = new r.a().a(l2Var, iLogger);
                            str3 = str4;
                            p6Var = p6Var2;
                            str2 = str5;
                            break;
                        default:
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            }
                            l2Var.b0(iLogger, concurrentHashMap, f02);
                            str3 = str4;
                            p6Var = p6Var2;
                            str2 = str5;
                            break;
                    }
                    n6Var2 = n6Var3;
                } else if (d10 != null) {
                    if (rVar != null) {
                        if (n6Var != null) {
                            if (str != null) {
                                if (map3 == null) {
                                    map = new HashMap();
                                } else {
                                    map = map3;
                                }
                                if (map4 == null) {
                                    map2 = new HashMap();
                                } else {
                                    map2 = map4;
                                }
                                Map map7 = map;
                                u uVar = new u(d10, d11, rVar, n6Var, n6Var3, str, str5, p6Var2, str4, map7, map2, map5, map6);
                                uVar.i(concurrentHashMap);
                                l2Var.r();
                                return uVar;
                            }
                            throw c("op", iLogger);
                        }
                        throw c("span_id", iLogger);
                    }
                    throw c("trace_id", iLogger);
                } else {
                    throw c("start_timestamp", iLogger);
                }
            }
        }
    }

    public u(k6 k6Var) {
        this(k6Var, k6Var.v());
    }

    private BigDecimal a(Double d10) {
        return BigDecimal.valueOf(d10.doubleValue()).setScale(6, RoundingMode.DOWN);
    }

    public Map b() {
        return this.f23481k;
    }

    public Map c() {
        return this.f23482l;
    }

    public String d() {
        return this.f23476f;
    }

    public n6 e() {
        return this.f23474d;
    }

    public Double f() {
        return this.f23471a;
    }

    public Double g() {
        return this.f23472b;
    }

    public void h(Map map) {
        this.f23481k = map;
    }

    public void i(Map map) {
        this.f23484n = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("start_timestamp").g(iLogger, a(this.f23471a));
        if (this.f23472b != null) {
            m2Var.k(Constants.TIMESTAMP).g(iLogger, a(this.f23472b));
        }
        m2Var.k("trace_id").g(iLogger, this.f23473c);
        m2Var.k("span_id").g(iLogger, this.f23474d);
        if (this.f23475e != null) {
            m2Var.k("parent_span_id").g(iLogger, this.f23475e);
        }
        m2Var.k("op").c(this.f23476f);
        if (this.f23477g != null) {
            m2Var.k("description").c(this.f23477g);
        }
        if (this.f23478h != null) {
            m2Var.k("status").g(iLogger, this.f23478h);
        }
        if (this.f23479i != null) {
            m2Var.k("origin").g(iLogger, this.f23479i);
        }
        if (!this.f23480j.isEmpty()) {
            m2Var.k("tags").g(iLogger, this.f23480j);
        }
        if (this.f23481k != null) {
            m2Var.k("data").g(iLogger, this.f23481k);
        }
        if (!this.f23482l.isEmpty()) {
            m2Var.k("measurements").g(iLogger, this.f23482l);
        }
        Map map = this.f23483m;
        if (map != null && !map.isEmpty()) {
            m2Var.k("_metrics_summary").g(iLogger, this.f23483m);
        }
        Map map2 = this.f23484n;
        if (map2 != null) {
            for (String str : map2.keySet()) {
                Object obj = this.f23484n.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public u(k6 k6Var, Map map) {
        io.sentry.util.q.c(k6Var, "span is required");
        this.f23477g = k6Var.getDescription();
        this.f23476f = k6Var.z();
        this.f23474d = k6Var.E();
        this.f23475e = k6Var.B();
        this.f23473c = k6Var.G();
        this.f23478h = k6Var.d();
        this.f23479i = k6Var.o().c();
        Map c10 = io.sentry.util.b.c(k6Var.F());
        this.f23480j = c10 == null ? new ConcurrentHashMap() : c10;
        Map c11 = io.sentry.util.b.c(k6Var.y());
        this.f23482l = c11 == null ? new ConcurrentHashMap() : c11;
        this.f23472b = k6Var.p() == null ? null : Double.valueOf(io.sentry.j.l(k6Var.t().j(k6Var.p())));
        this.f23471a = Double.valueOf(io.sentry.j.l(k6Var.t().l()));
        this.f23481k = map;
        io.sentry.metrics.c x10 = k6Var.x();
        if (x10 != null) {
            this.f23483m = x10.a();
        } else {
            this.f23483m = null;
        }
    }

    public u(Double d10, Double d11, r rVar, n6 n6Var, n6 n6Var2, String str, String str2, p6 p6Var, String str3, Map map, Map map2, Map map3, Map map4) {
        this.f23471a = d10;
        this.f23472b = d11;
        this.f23473c = rVar;
        this.f23474d = n6Var;
        this.f23475e = n6Var2;
        this.f23476f = str;
        this.f23477g = str2;
        this.f23478h = p6Var;
        this.f23479i = str3;
        this.f23480j = map;
        this.f23482l = map2;
        this.f23483m = map3;
        this.f23481k = map4;
    }
}
