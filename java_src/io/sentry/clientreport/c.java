package io.sentry.clientreport;

import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.ILogger;
import io.sentry.clientreport.g;
import io.sentry.g1;
import io.sentry.j5;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class c implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final Date f22990a;

    /* renamed from: b  reason: collision with root package name */
    private final List f22991b;

    /* renamed from: c  reason: collision with root package name */
    private Map f22992c;

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
        public c a(l2 l2Var, ILogger iLogger) {
            ArrayList arrayList = new ArrayList();
            l2Var.t();
            Date date = null;
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("discarded_events")) {
                    if (!f02.equals(Constants.TIMESTAMP)) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                    } else {
                        date = l2Var.i0(iLogger);
                    }
                } else {
                    arrayList.addAll(l2Var.M0(iLogger, new g.a()));
                }
            }
            l2Var.r();
            if (date != null) {
                if (!arrayList.isEmpty()) {
                    c cVar = new c(date, arrayList);
                    cVar.b(hashMap);
                    return cVar;
                }
                throw c("discarded_events", iLogger);
            }
            throw c(Constants.TIMESTAMP, iLogger);
        }
    }

    public c(Date date, List list) {
        this.f22990a = date;
        this.f22991b = list;
    }

    public List a() {
        return this.f22991b;
    }

    public void b(Map map) {
        this.f22992c = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        m2Var.k(Constants.TIMESTAMP).c(io.sentry.j.g(this.f22990a));
        m2Var.k("discarded_events").g(iLogger, this.f22991b);
        Map map = this.f22992c;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f22992c.get(str));
            }
        }
        m2Var.r();
    }
}
