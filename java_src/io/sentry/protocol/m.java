package io.sentry.protocol;

import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class m implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23427a;

    /* renamed from: b  reason: collision with root package name */
    private String f23428b;

    /* renamed from: c  reason: collision with root package name */
    private String f23429c;

    /* renamed from: d  reason: collision with root package name */
    private Object f23430d;

    /* renamed from: e  reason: collision with root package name */
    private String f23431e;

    /* renamed from: f  reason: collision with root package name */
    private Map f23432f;

    /* renamed from: g  reason: collision with root package name */
    private Map f23433g;

    /* renamed from: h  reason: collision with root package name */
    private Long f23434h;

    /* renamed from: i  reason: collision with root package name */
    private Map f23435i;

    /* renamed from: j  reason: collision with root package name */
    private String f23436j;

    /* renamed from: k  reason: collision with root package name */
    private String f23437k;

    /* renamed from: l  reason: collision with root package name */
    private Map f23438l;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public m a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            m mVar = new m();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1650269616:
                        if (f02.equals("fragment")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1077554975:
                        if (f02.equals(Constants.METHOD)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 100589:
                        if (f02.equals("env")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 116079:
                        if (f02.equals("url")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 3076010:
                        if (f02.equals("data")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 106069776:
                        if (f02.equals("other")) {
                            c10 = 5;
                            break;
                        }
                        break;
                    case 795307910:
                        if (f02.equals("headers")) {
                            c10 = 6;
                            break;
                        }
                        break;
                    case 952189583:
                        if (f02.equals("cookies")) {
                            c10 = 7;
                            break;
                        }
                        break;
                    case 1252988030:
                        if (f02.equals("body_size")) {
                            c10 = '\b';
                            break;
                        }
                        break;
                    case 1595298664:
                        if (f02.equals("query_string")) {
                            c10 = '\t';
                            break;
                        }
                        break;
                    case 1980646230:
                        if (f02.equals("api_target")) {
                            c10 = '\n';
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        mVar.f23436j = l2Var.T();
                        break;
                    case 1:
                        mVar.f23428b = l2Var.T();
                        break;
                    case 2:
                        Map map = (Map) l2Var.B0();
                        if (map == null) {
                            break;
                        } else {
                            mVar.f23433g = io.sentry.util.b.c(map);
                            break;
                        }
                    case 3:
                        mVar.f23427a = l2Var.T();
                        break;
                    case 4:
                        mVar.f23430d = l2Var.B0();
                        break;
                    case 5:
                        Map map2 = (Map) l2Var.B0();
                        if (map2 == null) {
                            break;
                        } else {
                            mVar.f23435i = io.sentry.util.b.c(map2);
                            break;
                        }
                    case 6:
                        Map map3 = (Map) l2Var.B0();
                        if (map3 == null) {
                            break;
                        } else {
                            mVar.f23432f = io.sentry.util.b.c(map3);
                            break;
                        }
                    case 7:
                        mVar.f23431e = l2Var.T();
                        break;
                    case '\b':
                        mVar.f23434h = l2Var.M();
                        break;
                    case '\t':
                        mVar.f23429c = l2Var.T();
                        break;
                    case '\n':
                        mVar.f23437k = l2Var.T();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            mVar.m(concurrentHashMap);
            l2Var.r();
            return mVar;
        }
    }

    public m() {
    }

    public m(m mVar) {
        this.f23427a = mVar.f23427a;
        this.f23431e = mVar.f23431e;
        this.f23428b = mVar.f23428b;
        this.f23429c = mVar.f23429c;
        this.f23432f = io.sentry.util.b.c(mVar.f23432f);
        this.f23433g = io.sentry.util.b.c(mVar.f23433g);
        this.f23435i = io.sentry.util.b.c(mVar.f23435i);
        this.f23438l = io.sentry.util.b.c(mVar.f23438l);
        this.f23430d = mVar.f23430d;
        this.f23436j = mVar.f23436j;
        this.f23434h = mVar.f23434h;
        this.f23437k = mVar.f23437k;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        if (io.sentry.util.q.a(this.f23427a, mVar.f23427a) && io.sentry.util.q.a(this.f23428b, mVar.f23428b) && io.sentry.util.q.a(this.f23429c, mVar.f23429c) && io.sentry.util.q.a(this.f23431e, mVar.f23431e) && io.sentry.util.q.a(this.f23432f, mVar.f23432f) && io.sentry.util.q.a(this.f23433g, mVar.f23433g) && io.sentry.util.q.a(this.f23434h, mVar.f23434h) && io.sentry.util.q.a(this.f23436j, mVar.f23436j) && io.sentry.util.q.a(this.f23437k, mVar.f23437k)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23427a, this.f23428b, this.f23429c, this.f23431e, this.f23432f, this.f23433g, this.f23434h, this.f23436j, this.f23437k);
    }

    public Map l() {
        return this.f23432f;
    }

    public void m(Map map) {
        this.f23438l = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23427a != null) {
            m2Var.k("url").c(this.f23427a);
        }
        if (this.f23428b != null) {
            m2Var.k(Constants.METHOD).c(this.f23428b);
        }
        if (this.f23429c != null) {
            m2Var.k("query_string").c(this.f23429c);
        }
        if (this.f23430d != null) {
            m2Var.k("data").g(iLogger, this.f23430d);
        }
        if (this.f23431e != null) {
            m2Var.k("cookies").c(this.f23431e);
        }
        if (this.f23432f != null) {
            m2Var.k("headers").g(iLogger, this.f23432f);
        }
        if (this.f23433g != null) {
            m2Var.k("env").g(iLogger, this.f23433g);
        }
        if (this.f23435i != null) {
            m2Var.k("other").g(iLogger, this.f23435i);
        }
        if (this.f23436j != null) {
            m2Var.k("fragment").g(iLogger, this.f23436j);
        }
        if (this.f23434h != null) {
            m2Var.k("body_size").g(iLogger, this.f23434h);
        }
        if (this.f23437k != null) {
            m2Var.k("api_target").g(iLogger, this.f23437k);
        }
        Map map = this.f23438l;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23438l.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
