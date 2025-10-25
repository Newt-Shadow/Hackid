package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.tika.metadata.ClimateForcast;
/* loaded from: classes2.dex */
public final class z implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final String f23527a;

    /* renamed from: b  reason: collision with root package name */
    private Map f23528b;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public z a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            String str = null;
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals(ClimateForcast.SOURCE)) {
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    l2Var.b0(iLogger, concurrentHashMap, f02);
                } else {
                    str = l2Var.T();
                }
            }
            z zVar = new z(str);
            zVar.a(concurrentHashMap);
            l2Var.r();
            return zVar;
        }
    }

    public z(String str) {
        this.f23527a = str;
    }

    public void a(Map map) {
        this.f23528b = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23527a != null) {
            m2Var.k(ClimateForcast.SOURCE).g(iLogger, this.f23527a);
        }
        Map map = this.f23528b;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23528b.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
