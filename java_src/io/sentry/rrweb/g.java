package io.sentry.rrweb;

import com.arthenica.ffmpegkit.StreamInformation;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import io.sentry.rrweb.b;
import io.sentry.util.q;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class g extends b implements q1 {

    /* renamed from: c  reason: collision with root package name */
    private String f23598c;

    /* renamed from: d  reason: collision with root package name */
    private int f23599d;

    /* renamed from: e  reason: collision with root package name */
    private int f23600e;

    /* renamed from: f  reason: collision with root package name */
    private Map f23601f;

    /* renamed from: g  reason: collision with root package name */
    private Map f23602g;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        private void c(g gVar, l2 l2Var, ILogger iLogger) {
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                int i10 = 0;
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1221029593:
                        if (f02.equals(StreamInformation.KEY_HEIGHT)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3211051:
                        if (f02.equals("href")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 113126854:
                        if (f02.equals(StreamInformation.KEY_WIDTH)) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        Integer J = l2Var.J();
                        if (J != null) {
                            i10 = J.intValue();
                        }
                        gVar.f23599d = i10;
                        break;
                    case 1:
                        String T = l2Var.T();
                        if (T == null) {
                            T = "";
                        }
                        gVar.f23598c = T;
                        break;
                    case 2:
                        Integer J2 = l2Var.J();
                        if (J2 != null) {
                            i10 = J2.intValue();
                        }
                        gVar.f23600e = i10;
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            gVar.k(concurrentHashMap);
            l2Var.r();
        }

        @Override // io.sentry.g1
        /* renamed from: b */
        public g a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            g gVar = new g();
            b.a aVar = new b.a();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("data")) {
                    if (!aVar.a(gVar, f02, l2Var, iLogger)) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                    }
                } else {
                    c(gVar, l2Var, iLogger);
                }
            }
            gVar.m(hashMap);
            l2Var.r();
            return gVar;
        }
    }

    public g() {
        super(c.Meta);
        this.f23598c = "";
    }

    private void j(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("href").c(this.f23598c);
        m2Var.k(StreamInformation.KEY_HEIGHT).a(this.f23599d);
        m2Var.k(StreamInformation.KEY_WIDTH).a(this.f23600e);
        Map map = this.f23601f;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23601f.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    @Override // io.sentry.rrweb.b
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || g.class != obj.getClass() || !super.equals(obj)) {
            return false;
        }
        g gVar = (g) obj;
        if (this.f23599d == gVar.f23599d && this.f23600e == gVar.f23600e && q.a(this.f23598c, gVar.f23598c)) {
            return true;
        }
        return false;
    }

    @Override // io.sentry.rrweb.b
    public int hashCode() {
        return q.b(Integer.valueOf(super.hashCode()), this.f23598c, Integer.valueOf(this.f23599d), Integer.valueOf(this.f23600e));
    }

    public void k(Map map) {
        this.f23602g = map;
    }

    public void l(int i10) {
        this.f23599d = i10;
    }

    public void m(Map map) {
        this.f23601f = map;
    }

    public void n(int i10) {
        this.f23600e = i10;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        new b.C0211b().a(this, m2Var, iLogger);
        m2Var.k("data");
        j(m2Var, iLogger);
        m2Var.r();
    }
}
