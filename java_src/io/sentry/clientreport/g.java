package io.sentry.clientreport;

import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.j5;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class g implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final String f22997a;

    /* renamed from: b  reason: collision with root package name */
    private final String f22998b;

    /* renamed from: c  reason: collision with root package name */
    private final Long f22999c;

    /* renamed from: d  reason: collision with root package name */
    private Map f23000d;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        private Exception c(String str, ILogger iLogger) {
            String str2 = "Missing required field \"" + str + "\"";
            IllegalStateException illegalStateException = new IllegalStateException(str2);
            iLogger.b(j5.ERROR, str2, illegalStateException);
            return illegalStateException;
        }

        @Override // io.sentry.g1
        /* renamed from: b */
        public g a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            String str = null;
            String str2 = null;
            Long l10 = null;
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -1285004149:
                        if (f02.equals("quantity")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case -934964668:
                        if (f02.equals(Constants.REASON)) {
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
                }
                switch (c10) {
                    case 0:
                        l10 = l2Var.M();
                        break;
                    case 1:
                        str = l2Var.T();
                        break;
                    case 2:
                        str2 = l2Var.T();
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
            if (str != null) {
                if (str2 != null) {
                    if (l10 != null) {
                        g gVar = new g(str, str2, l10);
                        gVar.d(hashMap);
                        return gVar;
                    }
                    throw c("quantity", iLogger);
                }
                throw c("category", iLogger);
            }
            throw c(Constants.REASON, iLogger);
        }
    }

    public g(String str, String str2, Long l10) {
        this.f22997a = str;
        this.f22998b = str2;
        this.f22999c = l10;
    }

    public String a() {
        return this.f22998b;
    }

    public Long b() {
        return this.f22999c;
    }

    public String c() {
        return this.f22997a;
    }

    public void d(Map map) {
        this.f23000d = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k(Constants.REASON).c(this.f22997a);
        m2Var.k("category").c(this.f22998b);
        m2Var.k("quantity").f(this.f22999c);
        Map map = this.f23000d;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23000d.get(str));
            }
        }
        m2Var.r();
    }

    public String toString() {
        return "DiscardedEvent{reason='" + this.f22997a + "', category='" + this.f22998b + "', quantity=" + this.f22999c + '}';
    }
}
