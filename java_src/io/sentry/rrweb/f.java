package io.sentry.rrweb;

import com.arthenica.ffmpegkit.Chapter;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import io.sentry.rrweb.b;
import io.sentry.rrweb.d;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class f extends d implements q1 {

    /* renamed from: d  reason: collision with root package name */
    private int f23589d;

    /* renamed from: e  reason: collision with root package name */
    private List f23590e;

    /* renamed from: f  reason: collision with root package name */
    private Map f23591f;

    /* renamed from: g  reason: collision with root package name */
    private Map f23592g;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        private void c(f fVar, l2 l2Var, ILogger iLogger) {
            d.a aVar = new d.a();
            l2Var.t();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (f02.equals("pointerId")) {
                    fVar.f23589d = l2Var.j0();
                } else if (f02.equals("positions")) {
                    fVar.f23590e = l2Var.M0(iLogger, new b.a());
                } else if (!aVar.a(fVar, f02, l2Var, iLogger)) {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    l2Var.b0(iLogger, hashMap, f02);
                }
            }
            fVar.l(hashMap);
            l2Var.r();
        }

        @Override // io.sentry.g1
        /* renamed from: b */
        public f a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            f fVar = new f();
            b.a aVar = new b.a();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("data")) {
                    if (!aVar.a(fVar, f02, l2Var, iLogger)) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                    }
                } else {
                    c(fVar, l2Var, iLogger);
                }
            }
            fVar.o(hashMap);
            l2Var.r();
            return fVar;
        }
    }

    /* loaded from: classes2.dex */
    public static final class b implements q1 {

        /* renamed from: a  reason: collision with root package name */
        private int f23593a;

        /* renamed from: b  reason: collision with root package name */
        private float f23594b;

        /* renamed from: c  reason: collision with root package name */
        private float f23595c;

        /* renamed from: d  reason: collision with root package name */
        private long f23596d;

        /* renamed from: e  reason: collision with root package name */
        private Map f23597e;

        /* loaded from: classes2.dex */
        public static final class a implements g1 {
            @Override // io.sentry.g1
            /* renamed from: b */
            public b a(l2 l2Var, ILogger iLogger) {
                l2Var.t();
                b bVar = new b();
                HashMap hashMap = null;
                while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                    String f02 = l2Var.f0();
                    f02.hashCode();
                    char c10 = 65535;
                    switch (f02.hashCode()) {
                        case 120:
                            if (f02.equals("x")) {
                                c10 = 0;
                                break;
                            }
                            break;
                        case 121:
                            if (f02.equals("y")) {
                                c10 = 1;
                                break;
                            }
                            break;
                        case 3355:
                            if (f02.equals(Chapter.KEY_ID)) {
                                c10 = 2;
                                break;
                            }
                            break;
                        case 665490880:
                            if (f02.equals("timeOffset")) {
                                c10 = 3;
                                break;
                            }
                            break;
                    }
                    switch (c10) {
                        case 0:
                            bVar.f23594b = l2Var.R();
                            break;
                        case 1:
                            bVar.f23595c = l2Var.R();
                            break;
                        case 2:
                            bVar.f23593a = l2Var.j0();
                            break;
                        case 3:
                            bVar.f23596d = l2Var.E0();
                            break;
                        default:
                            if (hashMap == null) {
                                hashMap = new HashMap();
                            }
                            l2Var.b0(iLogger, hashMap, f02);
                            break;
                    }
                }
                bVar.h(hashMap);
                l2Var.r();
                return bVar;
            }
        }

        public long e() {
            return this.f23596d;
        }

        public void f(int i10) {
            this.f23593a = i10;
        }

        public void g(long j10) {
            this.f23596d = j10;
        }

        public void h(Map map) {
            this.f23597e = map;
        }

        public void i(float f10) {
            this.f23594b = f10;
        }

        public void j(float f10) {
            this.f23595c = f10;
        }

        @Override // io.sentry.q1
        public void serialize(m2 m2Var, ILogger iLogger) {
            m2Var.t();
            m2Var.k(Chapter.KEY_ID).a(this.f23593a);
            m2Var.k("x").b(this.f23594b);
            m2Var.k("y").b(this.f23595c);
            m2Var.k("timeOffset").a(this.f23596d);
            Map map = this.f23597e;
            if (map != null) {
                for (String str : map.keySet()) {
                    Object obj = this.f23597e.get(str);
                    m2Var.k(str);
                    m2Var.g(iLogger, obj);
                }
            }
            m2Var.r();
        }
    }

    public f() {
        super(d.b.TouchMove);
    }

    private void k(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        new d.c().a(this, m2Var, iLogger);
        List list = this.f23590e;
        if (list != null && !list.isEmpty()) {
            m2Var.k("positions").g(iLogger, this.f23590e);
        }
        m2Var.k("pointerId").a(this.f23589d);
        Map map = this.f23592g;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23592g.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public void l(Map map) {
        this.f23592g = map;
    }

    public void m(int i10) {
        this.f23589d = i10;
    }

    public void n(List list) {
        this.f23590e = list;
    }

    public void o(Map map) {
        this.f23591f = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        new b.C0211b().a(this, m2Var, iLogger);
        m2Var.k("data");
        k(m2Var, iLogger);
        Map map = this.f23591f;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23591f.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
