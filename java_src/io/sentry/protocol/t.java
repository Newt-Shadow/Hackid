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
public final class t implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23467a;

    /* renamed from: b  reason: collision with root package name */
    private String f23468b;

    /* renamed from: c  reason: collision with root package name */
    private String f23469c;

    /* renamed from: d  reason: collision with root package name */
    private Map f23470d;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public t a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            t tVar = new t();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -339173787:
                        if (f02.equals("raw_description")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3373707:
                        if (f02.equals(Constants.NAME)) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 351608024:
                        if (f02.equals("version")) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        tVar.f23469c = l2Var.T();
                        break;
                    case 1:
                        tVar.f23467a = l2Var.T();
                        break;
                    case 2:
                        tVar.f23468b = l2Var.T();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            tVar.g(concurrentHashMap);
            l2Var.r();
            return tVar;
        }
    }

    public t() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public t(t tVar) {
        this.f23467a = tVar.f23467a;
        this.f23468b = tVar.f23468b;
        this.f23469c = tVar.f23469c;
        this.f23470d = io.sentry.util.b.c(tVar.f23470d);
    }

    public String d() {
        return this.f23467a;
    }

    public String e() {
        return this.f23468b;
    }

    public void f(String str) {
        this.f23467a = str;
    }

    public void g(Map map) {
        this.f23470d = map;
    }

    public void h(String str) {
        this.f23468b = str;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23467a != null) {
            m2Var.k(Constants.NAME).c(this.f23467a);
        }
        if (this.f23468b != null) {
            m2Var.k("version").c(this.f23468b);
        }
        if (this.f23469c != null) {
            m2Var.k("raw_description").c(this.f23469c);
        }
        Map map = this.f23470d;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23470d.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
