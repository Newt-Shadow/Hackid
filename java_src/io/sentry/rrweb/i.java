package io.sentry.rrweb;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import io.sentry.rrweb.b;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class i extends b implements q1 {

    /* renamed from: c  reason: collision with root package name */
    private String f23607c;

    /* renamed from: d  reason: collision with root package name */
    private String f23608d;

    /* renamed from: e  reason: collision with root package name */
    private String f23609e;

    /* renamed from: f  reason: collision with root package name */
    private double f23610f;

    /* renamed from: g  reason: collision with root package name */
    private double f23611g;

    /* renamed from: h  reason: collision with root package name */
    private Map f23612h;

    /* renamed from: i  reason: collision with root package name */
    private Map f23613i;

    /* renamed from: j  reason: collision with root package name */
    private Map f23614j;

    /* renamed from: k  reason: collision with root package name */
    private Map f23615k;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        private void c(i iVar, l2 l2Var, ILogger iLogger) {
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("payload")) {
                    if (!f02.equals("tag")) {
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                    } else {
                        String T = l2Var.T();
                        if (T == null) {
                            T = "";
                        }
                        iVar.f23607c = T;
                    }
                } else {
                    d(iVar, l2Var, iLogger);
                }
            }
            iVar.p(concurrentHashMap);
            l2Var.r();
        }

        private void d(i iVar, l2 l2Var, ILogger iLogger) {
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1724546052:
                        if (f02.equals("description")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -356088197:
                        if (f02.equals("endTimestamp")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -299216172:
                        if (f02.equals("startTimestamp")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3553:
                        if (f02.equals("op")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 3076010:
                        if (f02.equals("data")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        iVar.f23609e = l2Var.T();
                        break;
                    case 1:
                        iVar.f23611g = l2Var.S();
                        break;
                    case 2:
                        iVar.f23610f = l2Var.S();
                        break;
                    case 3:
                        iVar.f23608d = l2Var.T();
                        break;
                    case 4:
                        Map c11 = io.sentry.util.b.c((Map) l2Var.B0());
                        if (c11 == null) {
                            break;
                        } else {
                            iVar.f23612h = c11;
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
            iVar.t(concurrentHashMap);
            l2Var.r();
        }

        @Override // io.sentry.g1
        /* renamed from: b */
        public i a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            i iVar = new i();
            b.a aVar = new b.a();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("data")) {
                    if (!aVar.a(iVar, f02, l2Var, iLogger)) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                    }
                } else {
                    c(iVar, l2Var, iLogger);
                }
            }
            iVar.v(hashMap);
            l2Var.r();
            return iVar;
        }
    }

    public i() {
        super(c.Custom);
        this.f23607c = "performanceSpan";
    }

    private void m(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("tag").c(this.f23607c);
        m2Var.k("payload");
        n(m2Var, iLogger);
        Map map = this.f23615k;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23615k.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    private void n(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23608d != null) {
            m2Var.k("op").c(this.f23608d);
        }
        if (this.f23609e != null) {
            m2Var.k("description").c(this.f23609e);
        }
        m2Var.k("startTimestamp").g(iLogger, BigDecimal.valueOf(this.f23610f));
        m2Var.k("endTimestamp").g(iLogger, BigDecimal.valueOf(this.f23611g));
        if (this.f23612h != null) {
            m2Var.k("data").g(iLogger, this.f23612h);
        }
        Map map = this.f23614j;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23614j.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public void o(Map map) {
        ConcurrentHashMap concurrentHashMap;
        if (map == null) {
            concurrentHashMap = null;
        } else {
            concurrentHashMap = new ConcurrentHashMap(map);
        }
        this.f23612h = concurrentHashMap;
    }

    public void p(Map map) {
        this.f23615k = map;
    }

    public void q(String str) {
        this.f23609e = str;
    }

    public void r(double d10) {
        this.f23611g = d10;
    }

    public void s(String str) {
        this.f23608d = str;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        new b.C0211b().a(this, m2Var, iLogger);
        m2Var.k("data");
        m(m2Var, iLogger);
        Map map = this.f23613i;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23613i.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public void t(Map map) {
        this.f23614j = map;
    }

    public void u(double d10) {
        this.f23610f = d10;
    }

    public void v(Map map) {
        this.f23613i = map;
    }
}
