package io.sentry.profilemeasurements;

import io.appmetrica.analytics.coreutils.internal.services.telephony.CellularNetworkTypeExtractor;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.profilemeasurements.b;
import io.sentry.q1;
import io.sentry.util.q;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class a implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private Map f23309a;

    /* renamed from: b  reason: collision with root package name */
    private String f23310b;

    /* renamed from: c  reason: collision with root package name */
    private Collection f23311c;

    /* renamed from: io.sentry.profilemeasurements.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0208a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public a a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            a aVar = new a();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("values")) {
                    if (!f02.equals("unit")) {
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                    } else {
                        String T = l2Var.T();
                        if (T != null) {
                            aVar.f23310b = T;
                        }
                    }
                } else {
                    List M0 = l2Var.M0(iLogger, new b.a());
                    if (M0 != null) {
                        aVar.f23311c = M0;
                    }
                }
            }
            aVar.c(concurrentHashMap);
            l2Var.r();
            return aVar;
        }
    }

    public a() {
        this(CellularNetworkTypeExtractor.UNKNOWN_NETWORK_TYPE_VALUE, new ArrayList());
    }

    public void c(Map map) {
        this.f23309a = map;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        if (q.a(this.f23309a, aVar.f23309a) && this.f23310b.equals(aVar.f23310b) && new ArrayList(this.f23311c).equals(new ArrayList(aVar.f23311c))) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return q.b(this.f23309a, this.f23310b, this.f23311c);
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("unit").g(iLogger, this.f23310b);
        m2Var.k("values").g(iLogger, this.f23311c);
        Map map = this.f23309a;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23309a.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public a(String str, Collection collection) {
        this.f23310b = str;
        this.f23311c = collection;
    }
}
