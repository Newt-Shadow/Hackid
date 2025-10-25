package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.j5;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class h implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final Number f23398a;

    /* renamed from: b  reason: collision with root package name */
    private final String f23399b;

    /* renamed from: c  reason: collision with root package name */
    private Map f23400c;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public h a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            Number number = null;
            String str = null;
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("unit")) {
                    if (!f02.equals("value")) {
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                    } else {
                        number = (Number) l2Var.B0();
                    }
                } else {
                    str = l2Var.T();
                }
            }
            l2Var.r();
            if (number != null) {
                h hVar = new h(number, str);
                hVar.b(concurrentHashMap);
                return hVar;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"value\"");
            iLogger.b(j5.ERROR, "Missing required field \"value\"", illegalStateException);
            throw illegalStateException;
        }
    }

    public h(Number number, String str) {
        this.f23398a = number;
        this.f23399b = str;
    }

    public Number a() {
        return this.f23398a;
    }

    public void b(Map map) {
        this.f23400c = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("value").f(this.f23398a);
        if (this.f23399b != null) {
            m2Var.k("unit").c(this.f23399b);
        }
        Map map = this.f23400c;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23400c.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
