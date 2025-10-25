package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.protocol.v;
import io.sentry.q1;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class w implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private List f23503a;

    /* renamed from: b  reason: collision with root package name */
    private Map f23504b;

    /* renamed from: c  reason: collision with root package name */
    private Boolean f23505c;

    /* renamed from: d  reason: collision with root package name */
    private Map f23506d;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public w a(l2 l2Var, ILogger iLogger) {
            w wVar = new w();
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1266514778:
                        if (f02.equals("frames")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 78226992:
                        if (f02.equals("registers")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 284874180:
                        if (f02.equals("snapshot")) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        wVar.f23503a = l2Var.M0(iLogger, new v.a());
                        break;
                    case 1:
                        wVar.f23504b = io.sentry.util.b.c((Map) l2Var.B0());
                        break;
                    case 2:
                        wVar.f23505c = l2Var.m0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            wVar.f(concurrentHashMap);
            l2Var.r();
            return wVar;
        }
    }

    public w() {
    }

    public w(List list) {
        this.f23503a = list;
    }

    public List d() {
        return this.f23503a;
    }

    public void e(Boolean bool) {
        this.f23505c = bool;
    }

    public void f(Map map) {
        this.f23506d = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23503a != null) {
            m2Var.k("frames").g(iLogger, this.f23503a);
        }
        if (this.f23504b != null) {
            m2Var.k("registers").g(iLogger, this.f23504b);
        }
        if (this.f23505c != null) {
            m2Var.k("snapshot").h(this.f23505c);
        }
        Map map = this.f23506d;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23506d.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
