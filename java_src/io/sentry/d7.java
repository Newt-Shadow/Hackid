package io.sentry;

import io.flutter.plugins.firebase.analytics.Constants;
import io.sentry.protocol.r;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class d7 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.protocol.r f23062a;

    /* renamed from: b  reason: collision with root package name */
    private String f23063b;

    /* renamed from: c  reason: collision with root package name */
    private String f23064c;

    /* renamed from: d  reason: collision with root package name */
    private String f23065d;

    /* renamed from: e  reason: collision with root package name */
    private Map f23066e;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public d7 a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            io.sentry.protocol.r rVar = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -602415628:
                        if (f02.equals("comments")) {
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
                    case 96619420:
                        if (f02.equals("email")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 278118624:
                        if (f02.equals("event_id")) {
                            c10 = 3;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        str3 = l2Var.T();
                        break;
                    case 1:
                        str = l2Var.T();
                        break;
                    case 2:
                        str2 = l2Var.T();
                        break;
                    case 3:
                        rVar = new r.a().a(l2Var, iLogger);
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
            if (rVar != null) {
                d7 d7Var = new d7(rVar, str, str2, str3);
                d7Var.a(hashMap);
                return d7Var;
            }
            IllegalStateException illegalStateException = new IllegalStateException("Missing required field \"event_id\"");
            iLogger.b(j5.ERROR, "Missing required field \"event_id\"", illegalStateException);
            throw illegalStateException;
        }
    }

    public d7(io.sentry.protocol.r rVar, String str, String str2, String str3) {
        this.f23062a = rVar;
        this.f23063b = str;
        this.f23064c = str2;
        this.f23065d = str3;
    }

    public void a(Map map) {
        this.f23066e = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k("event_id");
        this.f23062a.serialize(m2Var, iLogger);
        if (this.f23063b != null) {
            m2Var.k(Constants.NAME).c(this.f23063b);
        }
        if (this.f23064c != null) {
            m2Var.k("email").c(this.f23064c);
        }
        if (this.f23065d != null) {
            m2Var.k("comments").c(this.f23065d);
        }
        Map map = this.f23066e;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23066e.get(str));
            }
        }
        m2Var.r();
    }

    public String toString() {
        return "UserFeedback{eventId=" + this.f23062a + ", name='" + this.f23063b + "', email='" + this.f23064c + "', comments='" + this.f23065d + "'}";
    }
}
