package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class k implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private double f23414a;

    /* renamed from: b  reason: collision with root package name */
    private double f23415b;

    /* renamed from: c  reason: collision with root package name */
    private double f23416c;

    /* renamed from: d  reason: collision with root package name */
    private int f23417d;

    /* renamed from: e  reason: collision with root package name */
    private Map f23418e;

    /* renamed from: f  reason: collision with root package name */
    private Map f23419f;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public k a(l2 l2Var, ILogger iLogger) {
            k kVar = new k();
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case 107876:
                        if (f02.equals("max")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 108114:
                        if (f02.equals("min")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 114251:
                        if (f02.equals("sum")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 3552281:
                        if (f02.equals("tags")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 94851343:
                        if (f02.equals("count")) {
                            c10 = 4;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        kVar.c(l2Var.S());
                        break;
                    case 1:
                        kVar.d(l2Var.S());
                        break;
                    case 2:
                        kVar.e(l2Var.S());
                        break;
                    case 3:
                        kVar.f23418e = io.sentry.util.b.c((Map) l2Var.B0());
                        break;
                    case 4:
                        kVar.b(l2Var.j0());
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            kVar.f(concurrentHashMap);
            l2Var.r();
            return kVar;
        }
    }

    public void b(int i10) {
        this.f23417d = i10;
    }

    public void c(double d10) {
        this.f23415b = d10;
    }

    public void d(double d10) {
        this.f23414a = d10;
    }

    public void e(double d10) {
        this.f23416c = d10;
    }

    public void f(Map map) {
        this.f23419f = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("min").b(this.f23414a);
        m2Var.k("max").b(this.f23415b);
        m2Var.k("sum").b(this.f23416c);
        m2Var.k("count").a(this.f23417d);
        if (this.f23418e != null) {
            m2Var.k("tags");
            m2Var.g(iLogger, this.f23418e);
        }
        m2Var.r();
    }
}
