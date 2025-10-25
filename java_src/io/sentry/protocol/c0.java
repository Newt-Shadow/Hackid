package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.protocol.d0;
import io.sentry.q1;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class c0 implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private final String f23340a;

    /* renamed from: b  reason: collision with root package name */
    private final List f23341b;

    /* renamed from: c  reason: collision with root package name */
    private Map f23342c;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public c0 a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            String str = null;
            List list = null;
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (!f02.equals("rendering_system")) {
                    if (!f02.equals("windows")) {
                        if (hashMap == null) {
                            hashMap = new HashMap();
                        }
                        l2Var.b0(iLogger, hashMap, f02);
                    } else {
                        list = l2Var.M0(iLogger, new d0.a());
                    }
                } else {
                    str = l2Var.T();
                }
            }
            l2Var.r();
            c0 c0Var = new c0(str, list);
            c0Var.a(hashMap);
            return c0Var;
        }
    }

    public c0(String str, List list) {
        this.f23340a = str;
        this.f23341b = list;
    }

    public void a(Map map) {
        this.f23342c = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23340a != null) {
            m2Var.k("rendering_system").c(this.f23340a);
        }
        if (this.f23341b != null) {
            m2Var.k("windows").g(iLogger, this.f23341b);
        }
        Map map = this.f23342c;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23342c.get(str));
            }
        }
        m2Var.r();
    }
}
