package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class a implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23315a;

    /* renamed from: b  reason: collision with root package name */
    private Date f23316b;

    /* renamed from: c  reason: collision with root package name */
    private String f23317c;

    /* renamed from: d  reason: collision with root package name */
    private String f23318d;

    /* renamed from: e  reason: collision with root package name */
    private String f23319e;

    /* renamed from: f  reason: collision with root package name */
    private String f23320f;

    /* renamed from: g  reason: collision with root package name */
    private String f23321g;

    /* renamed from: h  reason: collision with root package name */
    private Map f23322h;

    /* renamed from: i  reason: collision with root package name */
    private List f23323i;

    /* renamed from: j  reason: collision with root package name */
    private String f23324j;

    /* renamed from: k  reason: collision with root package name */
    private Boolean f23325k;

    /* renamed from: l  reason: collision with root package name */
    private Map f23326l;

    /* renamed from: io.sentry.protocol.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0209a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public a a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            a aVar = new a();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1898053579:
                        if (f02.equals("device_app_hash")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1573129993:
                        if (f02.equals("start_type")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1524619986:
                        if (f02.equals("view_names")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -901870406:
                        if (f02.equals("app_version")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case -650544995:
                        if (f02.equals("in_foreground")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case -470395285:
                        if (f02.equals("build_type")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 746297735:
                        if (f02.equals("app_identifier")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 791585128:
                        if (f02.equals("app_start_time")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 1133704324:
                        if (f02.equals("permissions")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case 1167648233:
                        if (f02.equals("app_name")) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case 1826866896:
                        if (f02.equals("app_build")) {
                            c10 = '\n';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        aVar.f23317c = l2Var.T();
                        break;
                    case 1:
                        aVar.f23324j = l2Var.T();
                        break;
                    case 2:
                        List list = (List) l2Var.B0();
                        if (list == null) {
                            break;
                        } else {
                            aVar.u(list);
                            break;
                        }
                    case 3:
                        aVar.f23320f = l2Var.T();
                        break;
                    case 4:
                        aVar.f23325k = l2Var.m0();
                        break;
                    case 5:
                        aVar.f23318d = l2Var.T();
                        break;
                    case 6:
                        aVar.f23315a = l2Var.T();
                        break;
                    case 7:
                        aVar.f23316b = l2Var.i0(iLogger);
                        break;
                    case '\b':
                        aVar.f23322h = io.sentry.util.b.c((Map) l2Var.B0());
                        break;
                    case '\t':
                        aVar.f23319e = l2Var.T();
                        break;
                    case '\n':
                        aVar.f23321g = l2Var.T();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            aVar.t(concurrentHashMap);
            l2Var.r();
            return aVar;
        }
    }

    public a() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(a aVar) {
        this.f23321g = aVar.f23321g;
        this.f23315a = aVar.f23315a;
        this.f23319e = aVar.f23319e;
        this.f23316b = aVar.f23316b;
        this.f23320f = aVar.f23320f;
        this.f23318d = aVar.f23318d;
        this.f23317c = aVar.f23317c;
        this.f23322h = io.sentry.util.b.c(aVar.f23322h);
        this.f23325k = aVar.f23325k;
        this.f23323i = io.sentry.util.b.b(aVar.f23323i);
        this.f23324j = aVar.f23324j;
        this.f23326l = io.sentry.util.b.c(aVar.f23326l);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (io.sentry.util.q.a(this.f23315a, aVar.f23315a) && io.sentry.util.q.a(this.f23316b, aVar.f23316b) && io.sentry.util.q.a(this.f23317c, aVar.f23317c) && io.sentry.util.q.a(this.f23318d, aVar.f23318d) && io.sentry.util.q.a(this.f23319e, aVar.f23319e) && io.sentry.util.q.a(this.f23320f, aVar.f23320f) && io.sentry.util.q.a(this.f23321g, aVar.f23321g) && io.sentry.util.q.a(this.f23322h, aVar.f23322h) && io.sentry.util.q.a(this.f23325k, aVar.f23325k) && io.sentry.util.q.a(this.f23323i, aVar.f23323i) && io.sentry.util.q.a(this.f23324j, aVar.f23324j)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23315a, this.f23316b, this.f23317c, this.f23318d, this.f23319e, this.f23320f, this.f23321g, this.f23322h, this.f23325k, this.f23323i, this.f23324j);
    }

    public Boolean k() {
        return this.f23325k;
    }

    public void l(String str) {
        this.f23321g = str;
    }

    public void m(String str) {
        this.f23315a = str;
    }

    public void n(String str) {
        this.f23319e = str;
    }

    public void o(Date date) {
        this.f23316b = date;
    }

    public void p(String str) {
        this.f23320f = str;
    }

    public void q(Boolean bool) {
        this.f23325k = bool;
    }

    public void r(Map map) {
        this.f23322h = map;
    }

    public void s(String str) {
        this.f23324j = str;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23315a != null) {
            m2Var.k("app_identifier").c(this.f23315a);
        }
        if (this.f23316b != null) {
            m2Var.k("app_start_time").g(iLogger, this.f23316b);
        }
        if (this.f23317c != null) {
            m2Var.k("device_app_hash").c(this.f23317c);
        }
        if (this.f23318d != null) {
            m2Var.k("build_type").c(this.f23318d);
        }
        if (this.f23319e != null) {
            m2Var.k("app_name").c(this.f23319e);
        }
        if (this.f23320f != null) {
            m2Var.k("app_version").c(this.f23320f);
        }
        if (this.f23321g != null) {
            m2Var.k("app_build").c(this.f23321g);
        }
        Map map = this.f23322h;
        if (map != null && !map.isEmpty()) {
            m2Var.k("permissions").g(iLogger, this.f23322h);
        }
        if (this.f23325k != null) {
            m2Var.k("in_foreground").h(this.f23325k);
        }
        if (this.f23323i != null) {
            m2Var.k("view_names").g(iLogger, this.f23323i);
        }
        if (this.f23324j != null) {
            m2Var.k("start_type").c(this.f23324j);
        }
        Map map2 = this.f23326l;
        if (map2 != null) {
            for (String str : map2.keySet()) {
                m2Var.k(str).g(iLogger, this.f23326l.get(str));
            }
        }
        m2Var.r();
    }

    public void t(Map map) {
        this.f23326l = map;
    }

    public void u(List list) {
        this.f23323i = list;
    }
}
