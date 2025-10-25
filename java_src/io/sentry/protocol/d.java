package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.protocol.DebugImage;
import io.sentry.protocol.o;
import io.sentry.q1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class d implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private o f23343a;

    /* renamed from: b  reason: collision with root package name */
    private List f23344b;

    /* renamed from: c  reason: collision with root package name */
    private Map f23345c;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public d a(l2 l2Var, ILogger iLogger) {
            d dVar = new d();
            l2Var.t();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                if (f02.equals("images")) {
                    dVar.f23344b = l2Var.M0(iLogger, new DebugImage.a());
                } else if (f02.equals("sdk_info")) {
                    dVar.f23343a = (o) l2Var.u0(iLogger, new o.a());
                } else {
                    if (hashMap == null) {
                        hashMap = new HashMap();
                    }
                    l2Var.b0(iLogger, hashMap, f02);
                }
            }
            l2Var.r();
            dVar.e(hashMap);
            return dVar;
        }
    }

    public List c() {
        return this.f23344b;
    }

    public void d(List list) {
        ArrayList arrayList;
        if (list != null) {
            arrayList = new ArrayList(list);
        } else {
            arrayList = null;
        }
        this.f23344b = arrayList;
    }

    public void e(Map map) {
        this.f23345c = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23343a != null) {
            m2Var.k("sdk_info").g(iLogger, this.f23343a);
        }
        if (this.f23344b != null) {
            m2Var.k("images").g(iLogger, this.f23344b);
        }
        Map map = this.f23345c;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23345c.get(str));
            }
        }
        m2Var.r();
    }
}
