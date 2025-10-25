package io.sentry.protocol;

import io.flutter.plugins.firebase.analytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.j5;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2.dex */
public final class s implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23464a;

    /* renamed from: b  reason: collision with root package name */
    private String f23465b;

    /* renamed from: c  reason: collision with root package name */
    private Map f23466c;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public s a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            String str = null;
            String str2 = null;
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals(Constants.NAME)) {
                    if (!f02.equals("version")) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                    } else {
                        str2 = l2Var.C();
                    }
                } else {
                    str = l2Var.C();
                }
            }
            l2Var.r();
            if (str != null) {
                if (str2 != null) {
                    s sVar = new s(str, str2);
                    sVar.a(hashMap);
                    return sVar;
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

    public s(String str, String str2) {
        this.f23464a = (String) io.sentry.util.q.c(str, "name is required.");
        this.f23465b = (String) io.sentry.util.q.c(str2, "version is required.");
    }

    public void a(Map map) {
        this.f23466c = map;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s.class != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        if (Objects.equals(this.f23464a, sVar.f23464a) && Objects.equals(this.f23465b, sVar.f23465b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(this.f23464a, this.f23465b);
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k(Constants.NAME).c(this.f23464a);
        m2Var.k("version").c(this.f23465b);
        Map map = this.f23466c;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23466c.get(str));
            }
        }
        m2Var.r();
    }
}
