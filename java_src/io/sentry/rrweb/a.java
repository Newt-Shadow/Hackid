package io.sentry.rrweb;

import com.arthenica.ffmpegkit.flutter.FFmpegKitFlutterPlugin;
import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.j5;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import io.sentry.rrweb.b;
import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class a extends b implements q1 {

    /* renamed from: c  reason: collision with root package name */
    private String f23568c;

    /* renamed from: d  reason: collision with root package name */
    private double f23569d;

    /* renamed from: e  reason: collision with root package name */
    private String f23570e;

    /* renamed from: f  reason: collision with root package name */
    private String f23571f;

    /* renamed from: g  reason: collision with root package name */
    private String f23572g;

    /* renamed from: h  reason: collision with root package name */
    private j5 f23573h;

    /* renamed from: i  reason: collision with root package name */
    private Map f23574i;

    /* renamed from: j  reason: collision with root package name */
    private Map f23575j;

    /* renamed from: k  reason: collision with root package name */
    private Map f23576k;

    /* renamed from: l  reason: collision with root package name */
    private Map f23577l;

    /* renamed from: io.sentry.rrweb.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0210a implements g1 {
        private void c(a aVar, l2 l2Var, ILogger iLogger) {
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("payload")) {
                    if (!f02.equals("tag")) {
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                    } else {
                        String T = l2Var.T();
                        if (T == null) {
                            T = "";
                        }
                        aVar.f23568c = T;
                    }
                } else {
                    d(aVar, l2Var, iLogger);
                }
            }
            aVar.v(concurrentHashMap);
            l2Var.r();
        }

        private void d(a aVar, l2 l2Var, ILogger iLogger) {
            l2Var.t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case 3076010:
                        if (f02.equals("data")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3575610:
                        if (f02.equals("type")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 50511102:
                        if (f02.equals("category")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 55126294:
                        if (f02.equals(Constants.TIMESTAMP)) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 102865796:
                        if (f02.equals(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL)) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 954925063:
                        if (f02.equals("message")) {
                            c10 = 5;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        Map c11 = io.sentry.util.b.c((Map) l2Var.B0());
                        if (c11 == null) {
                            break;
                        } else {
                            aVar.f23574i = c11;
                            break;
                        }
                    case 1:
                        aVar.f23570e = l2Var.T();
                        break;
                    case 2:
                        aVar.f23571f = l2Var.T();
                        break;
                    case 3:
                        aVar.f23569d = l2Var.S();
                        break;
                    case 4:
                        try {
                            aVar.f23573h = new j5.a().a(l2Var, iLogger);
                            break;
                        } catch (Exception e10) {
                            iLogger.a(j5.DEBUG, e10, "Error when deserializing SentryLevel", new Object[0]);
                            break;
                        }
                    case 5:
                        aVar.f23572g = l2Var.T();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            aVar.y(concurrentHashMap);
            l2Var.r();
        }

        @Override // io.sentry.g1
        /* renamed from: b */
        public a a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            a aVar = new a();
            b.a aVar2 = new b.a();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("data")) {
                    if (!aVar2.a(aVar, f02, l2Var, iLogger)) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                    }
                } else {
                    c(aVar, l2Var, iLogger);
                }
            }
            aVar.z(hashMap);
            l2Var.r();
            return aVar;
        }
    }

    public a() {
        super(c.Custom);
        this.f23568c = "breadcrumb";
    }

    private void p(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("tag").c(this.f23568c);
        m2Var.k("payload");
        q(m2Var, iLogger);
        Map map = this.f23577l;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23577l.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    private void q(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23570e != null) {
            m2Var.k("type").c(this.f23570e);
        }
        m2Var.k(Constants.TIMESTAMP).g(iLogger, BigDecimal.valueOf(this.f23569d));
        if (this.f23571f != null) {
            m2Var.k("category").c(this.f23571f);
        }
        if (this.f23572g != null) {
            m2Var.k("message").c(this.f23572g);
        }
        if (this.f23573h != null) {
            m2Var.k(FFmpegKitFlutterPlugin.KEY_LOG_LEVEL).g(iLogger, this.f23573h);
        }
        if (this.f23574i != null) {
            m2Var.k("data").g(iLogger, this.f23574i);
        }
        Map map = this.f23576k;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23576k.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public String n() {
        return this.f23571f;
    }

    public Map o() {
        return this.f23574i;
    }

    public void r(double d10) {
        this.f23569d = d10;
    }

    public void s(String str) {
        this.f23570e = str;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        new b.C0211b().a(this, m2Var, iLogger);
        m2Var.k("data");
        p(m2Var, iLogger);
        Map map = this.f23575j;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23575j.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public void t(String str) {
        this.f23571f = str;
    }

    public void u(Map map) {
        ConcurrentHashMap concurrentHashMap;
        if (map == null) {
            concurrentHashMap = null;
        } else {
            concurrentHashMap = new ConcurrentHashMap(map);
        }
        this.f23574i = concurrentHashMap;
    }

    public void v(Map map) {
        this.f23577l = map;
    }

    public void w(j5 j5Var) {
        this.f23573h = j5Var;
    }

    public void x(String str) {
        this.f23572g = str;
    }

    public void y(Map map) {
        this.f23576k = map;
    }

    public void z(Map map) {
        this.f23575j = map;
    }
}
