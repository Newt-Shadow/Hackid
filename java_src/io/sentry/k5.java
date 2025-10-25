package io.sentry;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class k5 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private int f23206a;

    /* renamed from: b  reason: collision with root package name */
    private String f23207b;

    /* renamed from: c  reason: collision with root package name */
    private String f23208c;

    /* renamed from: d  reason: collision with root package name */
    private String f23209d;

    /* renamed from: e  reason: collision with root package name */
    private Long f23210e;

    /* renamed from: f  reason: collision with root package name */
    private Map f23211f;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public k5 a(l2 l2Var, ILogger iLogger) {
            k5 k5Var = new k5();
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1877165340:
                        if (f02.equals("package_name")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1562235024:
                        if (f02.equals("thread_id")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case -1147692044:
                        if (f02.equals("address")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case -290474766:
                        if (f02.equals("class_name")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 3575610:
                        if (f02.equals("type")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        k5Var.f23208c = l2Var.T();
                        break;
                    case 1:
                        k5Var.f23210e = l2Var.M();
                        break;
                    case 2:
                        k5Var.f23207b = l2Var.T();
                        break;
                    case 3:
                        k5Var.f23209d = l2Var.T();
                        break;
                    case 4:
                        k5Var.f23206a = l2Var.j0();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            k5Var.m(concurrentHashMap);
            l2Var.r();
            return k5Var;
        }
    }

    public k5() {
    }

    public k5(k5 k5Var) {
        this.f23206a = k5Var.f23206a;
        this.f23207b = k5Var.f23207b;
        this.f23208c = k5Var.f23208c;
        this.f23209d = k5Var.f23209d;
        this.f23210e = k5Var.f23210e;
        this.f23211f = io.sentry.util.b.c(k5Var.f23211f);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && k5.class == obj.getClass()) {
            return io.sentry.util.q.a(this.f23207b, ((k5) obj).f23207b);
        }
        return false;
    }

    public String f() {
        return this.f23207b;
    }

    public int g() {
        return this.f23206a;
    }

    public void h(String str) {
        this.f23207b = str;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23207b);
    }

    public void i(String str) {
        this.f23209d = str;
    }

    public void j(String str) {
        this.f23208c = str;
    }

    public void k(Long l10) {
        this.f23210e = l10;
    }

    public void l(int i10) {
        this.f23206a = i10;
    }

    public void m(Map map) {
        this.f23211f = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("type").a(this.f23206a);
        if (this.f23207b != null) {
            m2Var.k("address").c(this.f23207b);
        }
        if (this.f23208c != null) {
            m2Var.k("package_name").c(this.f23208c);
        }
        if (this.f23209d != null) {
            m2Var.k("class_name").c(this.f23209d);
        }
        if (this.f23210e != null) {
            m2Var.k("thread_id").f(this.f23210e);
        }
        Map map = this.f23211f;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23211f.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
