package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class j implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23410a;

    /* renamed from: b  reason: collision with root package name */
    private String f23411b;

    /* renamed from: c  reason: collision with root package name */
    private List f23412c;

    /* renamed from: d  reason: collision with root package name */
    private Map f23413d;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public j a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            j jVar = new j();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -995427962:
                        if (f02.equals("params")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 954925063:
                        if (f02.equals("message")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 1811591356:
                        if (f02.equals("formatted")) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        List list = (List) l2Var.B0();
                        if (list == null) {
                            break;
                        } else {
                            jVar.f23412c = list;
                            break;
                        }
                    case 1:
                        jVar.f23411b = l2Var.T();
                        break;
                    case 2:
                        jVar.f23410a = l2Var.T();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            jVar.e(concurrentHashMap);
            l2Var.r();
            return jVar;
        }
    }

    public void d(String str) {
        this.f23410a = str;
    }

    public void e(Map map) {
        this.f23413d = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23410a != null) {
            m2Var.k("formatted").c(this.f23410a);
        }
        if (this.f23411b != null) {
            m2Var.k("message").c(this.f23411b);
        }
        List list = this.f23412c;
        if (list != null && !list.isEmpty()) {
            m2Var.k("params").g(iLogger, this.f23412c);
        }
        Map map = this.f23413d;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23413d.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
