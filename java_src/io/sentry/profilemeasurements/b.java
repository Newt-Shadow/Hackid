package io.sentry.profilemeasurements;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import io.sentry.util.q;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class b implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private Map f23312a;

    /* renamed from: b  reason: collision with root package name */
    private String f23313b;

    /* renamed from: c  reason: collision with root package name */
    private double f23314c;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public b a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            b bVar = new b();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("elapsed_since_start_ns")) {
                    if (!f02.equals("value")) {
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                    } else {
                        Double e02 = l2Var.e0();
                        if (e02 != null) {
                            bVar.f23314c = e02.doubleValue();
                        }
                    }
                } else {
                    String T = l2Var.T();
                    if (T != null) {
                        bVar.f23313b = T;
                    }
                }
            }
            bVar.c(concurrentHashMap);
            l2Var.r();
            return bVar;
        }
    }

    public b() {
        this(0L, 0);
    }

    public void c(Map map) {
        this.f23312a = map;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (q.a(this.f23312a, bVar.f23312a) && this.f23313b.equals(bVar.f23313b) && this.f23314c == bVar.f23314c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return q.b(this.f23312a, this.f23313b, Double.valueOf(this.f23314c));
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("value").g(iLogger, Double.valueOf(this.f23314c));
        m2Var.k("elapsed_since_start_ns").g(iLogger, this.f23313b);
        Map map = this.f23312a;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23312a.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public b(Long l10, Number number) {
        this.f23313b = l10.toString();
        this.f23314c = number.doubleValue();
    }
}
