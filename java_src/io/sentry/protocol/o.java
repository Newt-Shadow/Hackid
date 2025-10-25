package io.sentry.protocol;

import io.sentry.ILogger;
import io.sentry.g1;
import io.sentry.l2;
import io.sentry.m2;
import io.sentry.q1;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class o implements q1 {

    /* renamed from: a  reason: collision with root package name */
    private String f23445a;

    /* renamed from: b  reason: collision with root package name */
    private Integer f23446b;

    /* renamed from: c  reason: collision with root package name */
    private Integer f23447c;

    /* renamed from: d  reason: collision with root package name */
    private Integer f23448d;

    /* renamed from: e  reason: collision with root package name */
    private Map f23449e;

    /* loaded from: classes2.dex */
    public static final class a implements g1 {
        @Override // io.sentry.g1
        /* renamed from: b */
        public o a(l2 l2Var, ILogger iLogger) {
            o oVar = new o();
            l2Var.t();
            HashMap hashMap = null;
            while (l2Var.peek() == io.sentry.vendor.gson.stream.b.NAME) {
                String f02 = l2Var.f0();
                f02.hashCode();
                char c10 = 65535;
                switch (f02.hashCode()) {
                    case 270207856:
                        if (f02.equals("sdk_name")) {
                            c10 = 0;
                            break;
                        }
                        break;
                    case 696101379:
                        if (f02.equals("version_patchlevel")) {
                            c10 = 1;
                            break;
                        }
                        break;
                    case 1111241618:
                        if (f02.equals("version_major")) {
                            c10 = 2;
                            break;
                        }
                        break;
                    case 1111483790:
                        if (f02.equals("version_minor")) {
                            c10 = 3;
                            break;
                        }
                        break;
                }
                switch (c10) {
                    case 0:
                        oVar.f23445a = l2Var.T();
                        break;
                    case 1:
                        oVar.f23448d = l2Var.J();
                        break;
                    case 2:
                        oVar.f23446b = l2Var.J();
                        break;
                    case 3:
                        oVar.f23447c = l2Var.J();
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
            oVar.e(hashMap);
            return oVar;
        }
    }

    public void e(Map map) {
        this.f23449e = map;
    }

    @Override // io.sentry.q1
    public void serialize(m2 m2Var, ILogger iLogger) {
        m2Var.t();
        if (this.f23445a != null) {
            m2Var.k("sdk_name").c(this.f23445a);
        }
        if (this.f23446b != null) {
            m2Var.k("version_major").f(this.f23446b);
        }
        if (this.f23447c != null) {
            m2Var.k("version_minor").f(this.f23447c);
        }
        if (this.f23448d != null) {
            m2Var.k("version_patchlevel").f(this.f23448d);
        }
        Map map = this.f23449e;
        if (map != null) {
            for (String str : map.keySet()) {
                m2Var.k(str).g(iLogger, this.f23449e.get(str));
            }
        }
        m2Var.r();
    }
}
