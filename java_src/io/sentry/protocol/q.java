package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.protocol.i;
import io.sentry.protocol.w;
import io.sentry.q1;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class q implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23455a;

    /* renamed from: b  reason: collision with root package name */
    private String f23456b;

    /* renamed from: c  reason: collision with root package name */
    private String f23457c;

    /* renamed from: d  reason: collision with root package name */
    private Long f23458d;

    /* renamed from: e  reason: collision with root package name */
    private w f23459e;

    /* renamed from: f  reason: collision with root package name */
    private i f23460f;

    /* renamed from: g  reason: collision with root package name */
    private Map f23461g;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public q a(l2 l2Var, ILogger iLogger) {
            q qVar = new q();
            l2Var.t();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1562235024:
                        if (f02.equals("thread_id")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -1068784020:
                        if (f02.equals("module")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 3575610:
                        if (f02.equals("type")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 111972721:
                        if (f02.equals("value")) {
                            c10 = 3;
                            break;
                        }
                        break;
                    case 1225089881:
                        if (f02.equals("mechanism")) {
                            c10 = 4;
                            break;
                        }
                        break;
                    case 2055832509:
                        if (f02.equals("stacktrace")) {
                            c10 = 5;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        qVar.f23458d = l2Var.M();
                        break;
                    case 1:
                        qVar.f23457c = l2Var.T();
                        break;
                    case 2:
                        qVar.f23455a = l2Var.T();
                        break;
                    case 3:
                        qVar.f23456b = l2Var.T();
                        break;
                    case 4:
                        qVar.f23460f = (i) l2Var.u0(iLogger, new i.a());
                        break;
                    case 5:
                        qVar.f23459e = (w) l2Var.u0(iLogger, new w.a());
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                        break;
                }
            }
            l2Var.r();
            qVar.q(hashMap);
            return qVar;
        }
    }

    public i g() {
        return this.f23460f;
    }

    public String h() {
        return this.f23457c;
    }

    public w i() {
        return this.f23459e;
    }

    public Long j() {
        return this.f23458d;
    }

    public String k() {
        return this.f23455a;
    }

    public void l(i iVar) {
        this.f23460f = iVar;
    }

    public void m(String str) {
        this.f23457c = str;
    }

    public void n(w wVar) {
        this.f23459e = wVar;
    }

    public void o(Long l10) {
        this.f23458d = l10;
    }

    public void p(String str) {
        this.f23455a = str;
    }

    public void q(Map map) {
        this.f23461g = map;
    }

    public void r(String str) {
        this.f23456b = str;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23455a != null) {
            m2Var.k("type").c(this.f23455a);
        }
        if (this.f23456b != null) {
            m2Var.k("value").c(this.f23456b);
        }
        if (this.f23457c != null) {
            m2Var.k("module").c(this.f23457c);
        }
        if (this.f23458d != null) {
            m2Var.k("thread_id").f(this.f23458d);
        }
        if (this.f23459e != null) {
            m2Var.k("stacktrace").g(iLogger, this.f23459e);
        }
        if (this.f23460f != null) {
            m2Var.k("mechanism").g(iLogger, this.f23460f);
        }
        Map map = this.f23461g;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23461g.get(str));
            }
        }
        m2Var.r();
    }
}
