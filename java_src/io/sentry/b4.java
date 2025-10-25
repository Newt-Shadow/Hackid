package io.sentry;

import io.sentry.protocol.p;
import io.sentry.protocol.r;
import io.sentry.v6;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class b4 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final io.sentry.protocol.r f22900a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.protocol.p f22901b;

    /* renamed from: c  reason: collision with root package name */
    private final v6 f22902c;

    /* renamed from: d  reason: collision with root package name */
    private Date f22903d;

    /* renamed from: e  reason: collision with root package name */
    private Map f22904e;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public b4 a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            io.sentry.protocol.r rVar = null;
            io.sentry.protocol.p pVar = null;
            v6 v6Var = null;
            Date date = null;
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case 113722:
                        if (f02.equals("sdk")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 110620997:
                        if (f02.equals("trace")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 278118624:
                        if (f02.equals("event_id")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1980389946:
                        if (f02.equals("sent_at")) {
                            c10 = 3;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        pVar = (io.sentry.protocol.p) l2Var.u0(iLogger, new p.a());
                        break;
                    case 1:
                        v6Var = (v6) l2Var.u0(iLogger, new v6.b());
                        break;
                    case 2:
                        rVar = (io.sentry.protocol.r) l2Var.u0(iLogger, new r.a());
                        break;
                    case 3:
                        date = l2Var.i0(iLogger);
                        break;
                    default:
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                        break;
                }
            }
            b4 b4Var = new b4(rVar, pVar, v6Var);
            b4Var.d(date);
            b4Var.e(hashMap);
            l2Var.r();
            return b4Var;
        }
    }

    public b4(io.sentry.protocol.r rVar, io.sentry.protocol.p pVar) {
        this(rVar, pVar, null);
    }

    public io.sentry.protocol.r a() {
        return this.f22900a;
    }

    public io.sentry.protocol.p b() {
        return this.f22901b;
    }

    public v6 c() {
        return this.f22902c;
    }

    public void d(Date date) {
        this.f22903d = date;
    }

    public void e(Map map) {
        this.f22904e = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f22900a != null) {
            m2Var.k("event_id").g(iLogger, this.f22900a);
        }
        if (this.f22901b != null) {
            m2Var.k("sdk").g(iLogger, this.f22901b);
        }
        if (this.f22902c != null) {
            m2Var.k("trace").g(iLogger, this.f22902c);
        }
        if (this.f22903d != null) {
            m2Var.k("sent_at").g(iLogger, j.g(this.f22903d));
        }
        Map map = this.f22904e;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f22904e.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }

    public b4(io.sentry.protocol.r rVar, io.sentry.protocol.p pVar, v6 v6Var) {
        this.f22900a = rVar;
        this.f22901b = pVar;
        this.f22902c = v6Var;
    }
}
