package io.sentry;

import io.sentry.n6;
import io.sentry.p6;
import io.sentry.protocol.r;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public class l6 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.protocol.r f23239a;

    /* renamed from: b  reason: collision with root package name */
    private final n6 f23240b;

    /* renamed from: c  reason: collision with root package name */
    private final n6 f23241c;

    /* renamed from: d  reason: collision with root package name */
    private transient x6 f23242d;

    /* renamed from: e  reason: collision with root package name */
    protected String f23243e;

    /* renamed from: f  reason: collision with root package name */
    protected String f23244f;

    /* renamed from: g  reason: collision with root package name */
    protected p6 f23245g;

    /* renamed from: h  reason: collision with root package name */
    protected Map f23246h;

    /* renamed from: i  reason: collision with root package name */
    protected String f23247i;

    /* renamed from: j  reason: collision with root package name */
    private Map f23248j;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public l6 a(l2 l2Var, ILogger iLogger) {
            String str;
            l2Var.t();
            String str2 = null;
            io.sentry.protocol.r rVar = null;
            n6 n6Var = null;
            n6 n6Var2 = null;
            ConcurrentHashMap concurrentHashMap = null;
            String str3 = null;
            p6 p6Var = null;
            String str4 = null;
            Map map = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
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
                    case -1008619738:
                        if (f02.equals("origin")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case -892481550:
                        if (f02.equals("status")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 3553:
                        if (f02.equals("op")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 3552281:
                        if (f02.equals("tags")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1270300245:
                        if (f02.equals("trace_id")) {
                            c10 = 7;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        n6Var = new n6.a().a(l2Var, iLogger);
                        break;
                    case 1:
                        n6Var2 = (n6) l2Var.u0(iLogger, new n6.a());
                        break;
                    case 2:
                        str3 = l2Var.C();
                        break;
                    case 3:
                        str4 = l2Var.C();
                        break;
                    case 4:
                        p6Var = (p6) l2Var.u0(iLogger, new p6.a());
                        break;
                    case 5:
                        str2 = l2Var.C();
                        break;
                    case 6:
                        map = io.sentry.util.b.c((Map) l2Var.B0());
                        break;
                    case 7:
                        rVar = new r.a().a(l2Var, iLogger);
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            if (rVar != null) {
                if (n6Var != null) {
                    if (str2 == null) {
                        str = "";
                    } else {
                        str = str2;
                    }
                    l6 l6Var = new l6(rVar, n6Var, str, n6Var2, null);
                    l6Var.l(str3);
                    l6Var.o(p6Var);
                    l6Var.m(str4);
                    if (map != null) {
                        l6Var.f23246h = map;
                    }
                    l6Var.p(concurrentHashMap);
                    l2Var.r();
                    return l6Var;
                }
                IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"span_id\"");
                iLogger.b(j5.ERROR, "Missing required field \"span_id\"", illegalStateException);
                throw illegalStateException;
            }
            IllegalStateException illegalStateException2 = new IllegalStateException("Missing required field \"trace_id\"");
            iLogger.b(j5.ERROR, "Missing required field \"trace_id\"", illegalStateException2);
            throw illegalStateException2;
        }
    }

    public l6(String str) {
        this(new io.sentry.protocol.r(), new n6(), str, null, null);
    }

    public String a() {
        return this.f23244f;
    }

    public String b() {
        return this.f23243e;
    }

    public String c() {
        return this.f23247i;
    }

    public n6 d() {
        return this.f23241c;
    }

    public Boolean e() {
        x6 x6Var = this.f23242d;
        if (x6Var == null) {
            return null;
        }
        return x6Var.b();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l6)) {
            return false;
        }
        l6 l6Var = (l6) obj;
        if (this.f23239a.equals(l6Var.f23239a) && this.f23240b.equals(l6Var.f23240b) && io.sentry.util.q.a(this.f23241c, l6Var.f23241c) && this.f23243e.equals(l6Var.f23243e) && io.sentry.util.q.a(this.f23244f, l6Var.f23244f) && this.f23245g == l6Var.f23245g) {
            return true;
        }
        return false;
    }

    public Boolean f() {
        x6 x6Var = this.f23242d;
        if (x6Var == null) {
            return null;
        }
        return x6Var.d();
    }

    public x6 g() {
        return this.f23242d;
    }

    public n6 h() {
        return this.f23240b;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23239a, this.f23240b, this.f23241c, this.f23243e, this.f23244f, this.f23245g);
    }

    public p6 i() {
        return this.f23245g;
    }

    public Map j() {
        return this.f23246h;
    }

    public io.sentry.protocol.r k() {
        return this.f23239a;
    }

    public void l(String str) {
        this.f23244f = str;
    }

    public void m(String str) {
        this.f23247i = str;
    }

    public void n(x6 x6Var) {
        this.f23242d = x6Var;
    }

    public void o(p6 p6Var) {
        this.f23245g = p6Var;
    }

    public void p(Map map) {
        this.f23248j = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("trace_id");
        this.f23239a.serialize(m2Var, iLogger);
        m2Var.k("span_id");
        this.f23240b.serialize(m2Var, iLogger);
        if (this.f23241c != null) {
            m2Var.k("parent_span_id");
            this.f23241c.serialize(m2Var, iLogger);
        }
        m2Var.k("op").c(this.f23243e);
        if (this.f23244f != null) {
            m2Var.k("description").c(this.f23244f);
        }
        if (this.f23245g != null) {
            m2Var.k("status").g(iLogger, this.f23245g);
        }
        if (this.f23247i != null) {
            m2Var.k("origin").g(iLogger, this.f23247i);
        }
        if (!this.f23246h.isEmpty()) {
            m2Var.k("tags").g(iLogger, this.f23246h);
        }
        Map map = this.f23248j;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23248j.get(str));
            }
        }
        m2Var.r();
    }

    public l6(io.sentry.protocol.r rVar, n6 n6Var, String str, n6 n6Var2, x6 x6Var) {
        this(rVar, n6Var, n6Var2, str, null, x6Var, null, "manual");
    }

    public l6(io.sentry.protocol.r rVar, n6 n6Var, n6 n6Var2, String str, String str2, x6 x6Var, p6 p6Var, String str3) {
        this.f23246h = new ConcurrentHashMap();
        this.f23247i = "manual";
        this.f23239a = (io.sentry.protocol.r) io.sentry.util.q.c(rVar, "traceId is required");
        this.f23240b = (n6) io.sentry.util.q.c(n6Var, "spanId is required");
        this.f23243e = (String) io.sentry.util.q.c(str, "operation is required");
        this.f23241c = n6Var2;
        this.f23242d = x6Var;
        this.f23244f = str2;
        this.f23245g = p6Var;
        this.f23247i = str3;
    }

    public l6(l6 l6Var) {
        this.f23246h = new ConcurrentHashMap();
        this.f23247i = "manual";
        this.f23239a = l6Var.f23239a;
        this.f23240b = l6Var.f23240b;
        this.f23241c = l6Var.f23241c;
        this.f23242d = l6Var.f23242d;
        this.f23243e = l6Var.f23243e;
        this.f23244f = l6Var.f23244f;
        this.f23245g = l6Var.f23245g;
        Map c10 = io.sentry.util.b.c(l6Var.f23246h);
        if (c10 != null) {
            this.f23246h = c10;
        }
    }
}
