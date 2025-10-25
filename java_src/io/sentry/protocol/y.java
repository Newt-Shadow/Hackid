package io.sentry.protocol;

import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.ILogger;
import io.sentry.d6;
import io.sentry.g1;
import io.sentry.k6;
import io.sentry.l2;
import io.sentry.l6;
import io.sentry.m2;
import io.sentry.protocol.h;
import io.sentry.protocol.k;
import io.sentry.protocol.u;
import io.sentry.protocol.z;
import io.sentry.q1;
import io.sentry.t3;
import io.sentry.x6;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class y extends t3 implements q1 {

    /* renamed from: p  reason: collision with root package name */
    private String f23518p;

    /* renamed from: q  reason: collision with root package name */
    private Double f23519q;

    /* renamed from: r  reason: collision with root package name */
    private Double f23520r;

    /* renamed from: s  reason: collision with root package name */
    private final List f23521s;

    /* renamed from: t  reason: collision with root package name */
    private final String f23522t;

    /* renamed from: u  reason: collision with root package name */
    private final Map f23523u;

    /* renamed from: v  reason: collision with root package name */
    private Map f23524v;

    /* renamed from: w  reason: collision with root package name */
    private z f23525w;

    /* renamed from: x  reason: collision with root package name */
    private Map f23526x;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public y a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            y yVar = new y("", Double.valueOf(0.0d), null, new ArrayList(), new HashMap(), null, new z(a0.CUSTOM.apiName()));
            t3.a aVar = new t3.a();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1526966919:
                        if (f02.equals("start_timestamp")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -682561045:
                        if (f02.equals("_metrics_summary")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -362243017:
                        if (f02.equals("measurements")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3575610:
                        if (f02.equals("type")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 55126294:
                        if (f02.equals(Constants.TIMESTAMP)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 109638249:
                        if (f02.equals("spans")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 508716399:
                        if (f02.equals("transaction_info")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 2141246174:
                        if (f02.equals("transaction")) {
                            c10 = 7;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        try {
                            Double e02 = l2Var.e0();
                            if (e02 == null) {
                                break;
                            } else {
                                yVar.f23519q = e02;
                                break;
                            }
                        } catch (NumberFormatException unused) {
                            Date i02 = l2Var.i0(iLogger);
                            if (i02 == null) {
                                break;
                            } else {
                                yVar.f23519q = Double.valueOf(io.sentry.j.b(i02));
                                break;
                            }
                        }
                    case 1:
                        yVar.f23524v = l2Var.L(iLogger, new k.a());
                        break;
                    case 2:
                        Map Z = l2Var.Z(iLogger, new h.a());
                        if (Z == null) {
                            break;
                        } else {
                            yVar.f23523u.putAll(Z);
                            break;
                        }
                    case 3:
                        l2Var.C();
                        break;
                    case 4:
                        try {
                            Double e03 = l2Var.e0();
                            if (e03 == null) {
                                break;
                            } else {
                                yVar.f23520r = e03;
                                break;
                            }
                        } catch (NumberFormatException unused2) {
                            Date i03 = l2Var.i0(iLogger);
                            if (i03 == null) {
                                break;
                            } else {
                                yVar.f23520r = Double.valueOf(io.sentry.j.b(i03));
                                break;
                            }
                        }
                    case 5:
                        List M0 = l2Var.M0(iLogger, new u.a());
                        if (M0 == null) {
                            break;
                        } else {
                            yVar.f23521s.addAll(M0);
                            break;
                        }
                    case 6:
                        yVar.f23525w = new z.a().a(l2Var, iLogger);
                        break;
                    case 7:
                        yVar.f23518p = l2Var.T();
                        break;
                    default:
                        if (!aVar.a(yVar, f02, l2Var, iLogger)) {
                            if (concurrentHashMap == null) {
                                concurrentHashMap = new ConcurrentHashMap();
                            }
                            l2Var.b0(iLogger, concurrentHashMap, f02);
                            break;
                        } else {
                            break;
                        }
                }
            }
            yVar.t0(concurrentHashMap);
            l2Var.r();
            return yVar;
        }
    }

    public y(d6 d6Var) {
        super(d6Var.m());
        this.f23521s = new ArrayList();
        this.f23522t = "transaction";
        this.f23523u = new HashMap();
        io.sentry.util.q.c(d6Var, "sentryTracer is required");
        this.f23519q = Double.valueOf(io.sentry.j.l(d6Var.t().l()));
        this.f23520r = Double.valueOf(io.sentry.j.l(d6Var.t().j(d6Var.p())));
        this.f23518p = d6Var.getName();
        for (k6 k6Var : d6Var.G()) {
            if (Boolean.TRUE.equals(k6Var.I())) {
                this.f23521s.add(new u(k6Var));
            }
        }
        c C = C();
        C.putAll(d6Var.H());
        l6 o10 = d6Var.o();
        C.n(new l6(o10.k(), o10.h(), o10.d(), o10.b(), o10.a(), o10.g(), o10.i(), o10.c()));
        for (Map.Entry entry : o10.j().entrySet()) {
            d0((String) entry.getKey(), (String) entry.getValue());
        }
        Map I = d6Var.I();
        if (I != null) {
            for (Map.Entry entry2 : I.entrySet()) {
                W((String) entry2.getKey(), entry2.getValue());
            }
        }
        this.f23525w = new z(d6Var.s().apiName());
        io.sentry.metrics.c J = d6Var.J();
        if (J != null) {
            this.f23524v = J.a();
        } else {
            this.f23524v = null;
        }
    }

    private BigDecimal n0(Double d10) {
        return BigDecimal.valueOf(d10.doubleValue()).setScale(6, RoundingMode.DOWN);
    }

    public Map o0() {
        return this.f23523u;
    }

    public x6 p0() {
        l6 f10 = C().f();
        if (f10 == null) {
            return null;
        }
        return f10.g();
    }

    public List q0() {
        return this.f23521s;
    }

    public boolean r0() {
        if (this.f23520r != null) {
            return true;
        }
        return false;
    }

    public boolean s0() {
        x6 p02 = p0();
        if (p02 == null) {
            return false;
        }
        return p02.d().booleanValue();
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23518p != null) {
            m2Var.k("transaction").c(this.f23518p);
        }
        m2Var.k("start_timestamp").g(iLogger, n0(this.f23519q));
        if (this.f23520r != null) {
            m2Var.k(Constants.TIMESTAMP).g(iLogger, n0(this.f23520r));
        }
        if (!this.f23521s.isEmpty()) {
            m2Var.k("spans").g(iLogger, this.f23521s);
        }
        m2Var.k("type").c("transaction");
        if (!this.f23523u.isEmpty()) {
            m2Var.k("measurements").g(iLogger, this.f23523u);
        }
        Map map = this.f23524v;
        if (map != null && !map.isEmpty()) {
            m2Var.k("_metrics_summary").g(iLogger, this.f23524v);
        }
        m2Var.k("transaction_info").g(iLogger, this.f23525w);
        new t3.b().a(this, m2Var, iLogger);
        Map map2 = this.f23526x;
        if (map2 != null) {
            for (String str : map2.keySet()) {
                Object obj = this.f23526x.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public void t0(Map map) {
        this.f23526x = map;
    }

    public y(String str, Double d10, Double d11, List list, Map map, Map map2, z zVar) {
        ArrayList arrayList = new ArrayList();
        this.f23521s = arrayList;
        this.f23522t = "transaction";
        HashMap hashMap = new HashMap();
        this.f23523u = hashMap;
        this.f23518p = str;
        this.f23519q = d10;
        this.f23520r = d11;
        arrayList.addAll(list);
        hashMap.putAll(map);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.f23523u.putAll(((u) it.next()).c());
        }
        this.f23525w = zVar;
        this.f23524v = map2;
    }
}
