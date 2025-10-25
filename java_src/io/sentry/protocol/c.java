package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.l6;
import io.sentry.m2;
import io.sentry.protocol.a;
import io.sentry.protocol.b;
import io.sentry.protocol.e;
import io.sentry.protocol.g;
import io.sentry.protocol.l;
import io.sentry.protocol.n;
import io.sentry.protocol.t;
import io.sentry.q1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class c extends ConcurrentHashMap implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final Object f23339a = new Object();

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public c a(l2 l2Var, ILogger iLogger) {
            c cVar = new c();
            l2Var.t();
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1335157162:
                        if (f02.equals("device")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -340323263:
                        if (f02.equals("response")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3556:
                        if (f02.equals("os")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 96801:
                        if (f02.equals("app")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 102572:
                        if (f02.equals("gpu")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 110620997:
                        if (f02.equals("trace")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 150940456:
                        if (f02.equals("browser")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 1550962648:
                        if (f02.equals("runtime")) {
                            c10 = 7;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        cVar.i(new e.a().a(l2Var, iLogger));
                        break;
                    case 1:
                        cVar.l(new n.a().a(l2Var, iLogger));
                        break;
                    case 2:
                        cVar.k(new l.a().a(l2Var, iLogger));
                        break;
                    case 3:
                        cVar.g(new a.C0209a().a(l2Var, iLogger));
                        break;
                    case 4:
                        cVar.j(new g.a().a(l2Var, iLogger));
                        break;
                    case 5:
                        cVar.n(new l6.a().a(l2Var, iLogger));
                        break;
                    case 6:
                        cVar.h(new b.a().a(l2Var, iLogger));
                        break;
                    case 7:
                        cVar.m(new t.a().a(l2Var, iLogger));
                        break;
                    default:
                        Object B0 = l2Var.B0();
                        if (B0 == null) {
                            break;
                        } else {
                            cVar.put(f02, B0);
                            break;
                        }
                }
            }
            l2Var.r();
            return cVar;
        }
    }

    public c() {
    }

    private Object o(String str, Class cls) {
        Object obj = get(str);
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        return null;
    }

    public io.sentry.protocol.a a() {
        return (io.sentry.protocol.a) o("app", io.sentry.protocol.a.class);
    }

    public e b() {
        return (e) o("device", e.class);
    }

    public l c() {
        return (l) o("os", l.class);
    }

    public t e() {
        return (t) o("runtime", t.class);
    }

    public l6 f() {
        return (l6) o("trace", l6.class);
    }

    public void g(io.sentry.protocol.a aVar) {
        put("app", aVar);
    }

    public void h(b bVar) {
        put("browser", bVar);
    }

    public void i(e eVar) {
        put("device", eVar);
    }

    public void j(g gVar) {
        put("gpu", gVar);
    }

    public void k(l lVar) {
        put("os", lVar);
    }

    public void l(n nVar) {
        synchronized (this.f23339a) {
            put("response", nVar);
        }
    }

    public void m(t tVar) {
        put("runtime", tVar);
    }

    public void n(l6 l6Var) {
        io.sentry.util.q.c(l6Var, "traceContext is required");
        put("trace", l6Var);
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        ArrayList<String> list = Collections.list(keys());
        Collections.sort(list);
        for (String str : list) {
            Object obj = get(str);
            if (obj != null) {
                m2Var.k(str).g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public c(c cVar) {
        Iterator it = cVar.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (entry != null) {
                Object value = entry.getValue();
                if ("app".equals(entry.getKey()) && (value instanceof io.sentry.protocol.a)) {
                    g(new io.sentry.protocol.a((io.sentry.protocol.a) value));
                } else if ("browser".equals(entry.getKey()) && (value instanceof b)) {
                    h(new b((b) value));
                } else if ("device".equals(entry.getKey()) && (value instanceof e)) {
                    i(new e((e) value));
                } else if ("os".equals(entry.getKey()) && (value instanceof l)) {
                    k(new l((l) value));
                } else if ("runtime".equals(entry.getKey()) && (value instanceof t)) {
                    m(new t((t) value));
                } else if ("gpu".equals(entry.getKey()) && (value instanceof g)) {
                    j(new g((g) value));
                } else if ("trace".equals(entry.getKey()) && (value instanceof l6)) {
                    n(new l6((l6) value));
                } else if ("response".equals(entry.getKey()) && (value instanceof n)) {
                    l(new n((n) value));
                } else {
                    put((String) entry.getKey(), value);
                }
            }
        }
    }
}
