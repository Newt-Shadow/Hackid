package io.sentry.protocol;

import io.flutter.plugins.firebase.analytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class l implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23420a;

    /* renamed from: b  reason: collision with root package name */
    private String f23421b;

    /* renamed from: c  reason: collision with root package name */
    private String f23422c;

    /* renamed from: d  reason: collision with root package name */
    private String f23423d;

    /* renamed from: e  reason: collision with root package name */
    private String f23424e;

    /* renamed from: f  reason: collision with root package name */
    private Boolean f23425f;

    /* renamed from: g  reason: collision with root package name */
    private Map f23426g;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public l a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            l lVar = new l();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -925311743:
                        if (f02.equals("rooted")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -339173787:
                        if (f02.equals("raw_description")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3373707:
                        if (f02.equals(Constants.NAME)) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 94094958:
                        if (f02.equals("build")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 351608024:
                        if (f02.equals("version")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 2015527638:
                        if (f02.equals("kernel_version")) {
                            c10 = 5;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        lVar.f23425f = l2Var.m0();
                        break;
                    case 1:
                        lVar.f23422c = l2Var.T();
                        break;
                    case 2:
                        lVar.f23420a = l2Var.T();
                        break;
                    case 3:
                        lVar.f23423d = l2Var.T();
                        break;
                    case 4:
                        lVar.f23421b = l2Var.T();
                        break;
                    case 5:
                        lVar.f23424e = l2Var.T();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            lVar.l(concurrentHashMap);
            l2Var.r();
            return lVar;
        }
    }

    public l() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(l lVar) {
        this.f23420a = lVar.f23420a;
        this.f23421b = lVar.f23421b;
        this.f23422c = lVar.f23422c;
        this.f23423d = lVar.f23423d;
        this.f23424e = lVar.f23424e;
        this.f23425f = lVar.f23425f;
        this.f23426g = io.sentry.util.b.c(lVar.f23426g);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l.class != obj.getClass()) {
            return false;
        }
        l lVar = (l) obj;
        if (io.sentry.util.q.a(this.f23420a, lVar.f23420a) && io.sentry.util.q.a(this.f23421b, lVar.f23421b) && io.sentry.util.q.a(this.f23422c, lVar.f23422c) && io.sentry.util.q.a(this.f23423d, lVar.f23423d) && io.sentry.util.q.a(this.f23424e, lVar.f23424e) && io.sentry.util.q.a(this.f23425f, lVar.f23425f)) {
            return true;
        }
        return false;
    }

    public String g() {
        return this.f23420a;
    }

    public void h(String str) {
        this.f23423d = str;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23420a, this.f23421b, this.f23422c, this.f23423d, this.f23424e, this.f23425f);
    }

    public void i(String str) {
        this.f23424e = str;
    }

    public void j(String str) {
        this.f23420a = str;
    }

    public void k(Boolean bool) {
        this.f23425f = bool;
    }

    public void l(Map map) {
        this.f23426g = map;
    }

    public void m(String str) {
        this.f23421b = str;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23420a != null) {
            m2Var.k(Constants.NAME).c(this.f23420a);
        }
        if (this.f23421b != null) {
            m2Var.k("version").c(this.f23421b);
        }
        if (this.f23422c != null) {
            m2Var.k("raw_description").c(this.f23422c);
        }
        if (this.f23423d != null) {
            m2Var.k("build").c(this.f23423d);
        }
        if (this.f23424e != null) {
            m2Var.k("kernel_version").c(this.f23424e);
        }
        if (this.f23425f != null) {
            m2Var.k("rooted").h(this.f23425f);
        }
        Map map = this.f23426g;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23426g.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
