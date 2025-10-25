package io.sentry.protocol;

import io.flutter.plugins.firebase.analytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.h5;
import io.sentry.j5;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.protocol.s;
import io.sentry.q1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes2.dex */
public final class p implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23450a;

    /* renamed from: b  reason: collision with root package name */
    private String f23451b;

    /* renamed from: c  reason: collision with root package name */
    private Set f23452c;

    /* renamed from: d  reason: collision with root package name */
    private Set f23453d;

    /* renamed from: e  reason: collision with root package name */
    private Map f23454e;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public p a(l2 l2Var, ILogger iLogger) {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            l2Var.t();
            String str = null;
            String str2 = null;
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case 3373707:
                        if (f02.equals(Constants.NAME)) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 351608024:
                        if (f02.equals("version")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 750867693:
                        if (f02.equals("packages")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1487029535:
                        if (f02.equals("integrations")) {
                            c10 = 3;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        str = l2Var.C();
                        break;
                    case 1:
                        str2 = l2Var.C();
                        break;
                    case 2:
                        List M0 = l2Var.M0(iLogger, new s.a());
                        if (M0 == null) {
                            break;
                        } else {
                            arrayList.addAll(M0);
                            break;
                        }
                    case 3:
                        List list = (List) l2Var.B0();
                        if (list == null) {
                            break;
                        } else {
                            arrayList2.addAll(list);
                            break;
                        }
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                        break;
                }
            }
            l2Var.r();
            if (str != null) {
                if (str2 != null) {
                    p pVar = new p(str, str2);
                    pVar.f23452c = new CopyOnWriteArraySet(arrayList);
                    pVar.f23453d = new CopyOnWriteArraySet(arrayList2);
                    pVar.j(hashMap);
                    return pVar;
                }
                IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"version\"");
                iLogger.b(j5.ERROR, "Missing required field \"version\"", illegalStateException);
                throw illegalStateException;
            }
            IllegalStateException illegalStateException2 = new IllegalStateException("Missing required field \"name\"");
            iLogger.b(j5.ERROR, "Missing required field \"name\"", illegalStateException2);
            throw illegalStateException2;
        }
    }

    public p(String str, String str2) {
        this.f23450a = (String) io.sentry.util.q.c(str, "name is required.");
        this.f23451b = (String) io.sentry.util.q.c(str2, "version is required.");
    }

    public static p l(p pVar, String str, String str2) {
        io.sentry.util.q.c(str, "name is required.");
        io.sentry.util.q.c(str2, "version is required.");
        if (pVar == null) {
            return new p(str, str2);
        }
        pVar.i(str);
        pVar.k(str2);
        return pVar;
    }

    public void c(String str) {
        h5.c().a(str);
    }

    public void d(String str, String str2) {
        h5.c().b(str, str2);
    }

    public Set e() {
        Set set = this.f23453d;
        if (set == null) {
            return h5.c().d();
        }
        return set;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || p.class != obj.getClass()) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f23450a.equals(pVar.f23450a) && this.f23451b.equals(pVar.f23451b)) {
            return true;
        }
        return false;
    }

    public String f() {
        return this.f23450a;
    }

    public Set g() {
        Set set = this.f23452c;
        if (set == null) {
            return h5.c().e();
        }
        return set;
    }

    public String h() {
        return this.f23451b;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23450a, this.f23451b);
    }

    public void i(String str) {
        this.f23450a = (String) io.sentry.util.q.c(str, "name is required.");
    }

    public void j(Map map) {
        this.f23454e = map;
    }

    public void k(String str) {
        this.f23451b = (String) io.sentry.util.q.c(str, "version is required.");
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k(Constants.NAME).c(this.f23450a);
        m2Var.k("version").c(this.f23451b);
        Set g10 = g();
        Set e10 = e();
        if (!g10.isEmpty()) {
            m2Var.k("packages").g(iLogger, g10);
        }
        if (!e10.isEmpty()) {
            m2Var.k("integrations").g(iLogger, e10);
        }
        Map map = this.f23454e;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23454e.get(str));
            }
        }
        m2Var.r();
    }
}
