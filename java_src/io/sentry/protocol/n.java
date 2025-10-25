package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class n implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23439a;

    /* renamed from: b  reason: collision with root package name */
    private Map f23440b;

    /* renamed from: c  reason: collision with root package name */
    private Integer f23441c;

    /* renamed from: d  reason: collision with root package name */
    private Long f23442d;

    /* renamed from: e  reason: collision with root package name */
    private Object f23443e;

    /* renamed from: f  reason: collision with root package name */
    private Map f23444f;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public n a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            n nVar = new n();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -891699686:
                        if (f02.equals("status_code")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3076010:
                        if (f02.equals("data")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 795307910:
                        if (f02.equals("headers")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 952189583:
                        if (f02.equals("cookies")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1252988030:
                        if (f02.equals("body_size")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        nVar.f23441c = l2Var.J();
                        break;
                    case 1:
                        nVar.f23443e = l2Var.B0();
                        break;
                    case 2:
                        Map map = (Map) l2Var.B0();
                        if (map == null) {
                            break;
                        } else {
                            nVar.f23440b = io.sentry.util.b.c(map);
                            break;
                        }
                    case 3:
                        nVar.f23439a = l2Var.T();
                        break;
                    case 4:
                        nVar.f23442d = l2Var.M();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            nVar.f(concurrentHashMap);
            l2Var.r();
            return nVar;
        }
    }

    public n() {
    }

    public n(n nVar) {
        this.f23439a = nVar.f23439a;
        this.f23440b = io.sentry.util.b.c(nVar.f23440b);
        this.f23444f = io.sentry.util.b.c(nVar.f23444f);
        this.f23441c = nVar.f23441c;
        this.f23442d = nVar.f23442d;
        this.f23443e = nVar.f23443e;
    }

    public void f(Map map) {
        this.f23444f = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23439a != null) {
            m2Var.k("cookies").c(this.f23439a);
        }
        if (this.f23440b != null) {
            m2Var.k("headers").g(iLogger, this.f23440b);
        }
        if (this.f23441c != null) {
            m2Var.k("status_code").g(iLogger, this.f23441c);
        }
        if (this.f23442d != null) {
            m2Var.k("body_size").g(iLogger, this.f23442d);
        }
        if (this.f23443e != null) {
            m2Var.k("data").g(iLogger, this.f23443e);
        }
        Map map = this.f23444f;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23444f.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
