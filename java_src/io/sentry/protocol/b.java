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
public final class b implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23327a;

    /* renamed from: b  reason: collision with root package name */
    private String f23328b;

    /* renamed from: c  reason: collision with root package name */
    private Map f23329c;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public b a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            b bVar = new b();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (f02.equals(Constants.NAME)) {
                    bVar.f23327a = l2Var.T();
                } else if (f02.equals("version")) {
                    bVar.f23328b = l2Var.T();
                } else {
                    if (concurrentHashMap == null) {
                        concurrentHashMap = new ConcurrentHashMap();
                    }
                    l2Var.b0(iLogger, concurrentHashMap, f02);
                }
            }
            bVar.c(concurrentHashMap);
            l2Var.r();
            return bVar;
        }
    }

    public b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(b bVar) {
        this.f23327a = bVar.f23327a;
        this.f23328b = bVar.f23328b;
        this.f23329c = io.sentry.util.b.c(bVar.f23329c);
    }

    public void c(Map map) {
        this.f23329c = map;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || b.class != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (io.sentry.util.q.a(this.f23327a, bVar.f23327a) && io.sentry.util.q.a(this.f23328b, bVar.f23328b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return io.sentry.util.q.b(this.f23327a, this.f23328b);
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23327a != null) {
            m2Var.k(Constants.NAME).c(this.f23327a);
        }
        if (this.f23328b != null) {
            m2Var.k("version").c(this.f23328b);
        }
        Map map = this.f23329c;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23329c.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
