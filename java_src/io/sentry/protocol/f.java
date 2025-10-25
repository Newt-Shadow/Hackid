package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class f implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23384a;

    /* renamed from: b  reason: collision with root package name */
    private String f23385b;

    /* renamed from: c  reason: collision with root package name */
    private String f23386c;

    /* renamed from: d  reason: collision with root package name */
    private Map f23387d;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public f a(l2 l2Var, ILogger iLogger) {
            l2Var.t();
            f fVar = new f();
            ConcurrentHashMap concurrentHashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case -934795532:
                        if (f02.equals("region")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 3053931:
                        if (f02.equals("city")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 1481071862:
                        if (f02.equals("country_code")) {
                            c10 = 2;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        fVar.f23386c = l2Var.T();
                        break;
                    case 1:
                        fVar.f23384a = l2Var.T();
                        break;
                    case 2:
                        fVar.f23385b = l2Var.T();
                        break;
                    default:
                        if (concurrentHashMap == null) {
                            concurrentHashMap = new ConcurrentHashMap();
                        }
                        l2Var.b0(iLogger, concurrentHashMap, f02);
                        break;
                }
            }
            fVar.e(concurrentHashMap);
            l2Var.r();
            return fVar;
        }
    }

    public static f d(Map map) {
        f fVar = new f();
        for (Map.Entry entry : map.entrySet()) {
            Object value = entry.getValue();
            String str = (String) entry.getKey();
            str.hashCode();
            char c10 = 65535;
            switch (str.hashCode()) {
                case -934795532:
                    if (str.equals("region")) {
                        c10 = 0;
                        break;
                    }
                    break;
                case 3053931:
                    if (str.equals("city")) {
                        c10 = 1;
                        break;
                    }
                    break;
                case 1481071862:
                    if (str.equals("country_code")) {
                        c10 = 2;
                        break;
                    }
                    break;
            }
            String str2 = null;
            switch (c10) {
                case 0:
                    if (value instanceof String) {
                        str2 = (String) value;
                    }
                    fVar.f23386c = str2;
                    break;
                case 1:
                    if (value instanceof String) {
                        str2 = (String) value;
                    }
                    fVar.f23384a = str2;
                    break;
                case 2:
                    if (value instanceof String) {
                        str2 = (String) value;
                    }
                    fVar.f23385b = str2;
                    break;
            }
        }
        return fVar;
    }

    public void e(Map map) {
        this.f23387d = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23384a != null) {
            m2Var.k("city").c(this.f23384a);
        }
        if (this.f23385b != null) {
            m2Var.k("country_code").c(this.f23385b);
        }
        if (this.f23386c != null) {
            m2Var.k("region").c(this.f23386c);
        }
        Map map = this.f23387d;
        if (map != null) {
            for (String str : map.keySet()) {
                Object obj = this.f23387d.get(str);
                m2Var.k(str);
                m2Var.g(iLogger, obj);
            }
        }
        m2Var.r();
    }
}
