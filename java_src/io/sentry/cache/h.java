package io.sentry.cache;

import io.sentry.g1;
import io.sentry.q0;
import io.sentry.s5;
import java.util.Map;
/* loaded from: classes2.dex */
public final class h implements q0 {

    /* renamed from: a  reason: collision with root package name */
    private final s5 f22935a;

    public h(s5 s5Var) {
        this.f22935a = s5Var;
    }

    private void a(String str) {
        d.a(this.f22935a, ".options-cache", str);
    }

    public static Object b(s5 s5Var, String str, Class cls) {
        return c(s5Var, str, cls, null);
    }

    public static Object c(s5 s5Var, String str, Class cls, g1 g1Var) {
        return d.c(s5Var, ".options-cache", str, cls, g1Var);
    }

    private void d(Object obj, String str) {
        d.d(this.f22935a, obj, ".options-cache", str);
    }

    @Override // io.sentry.q0
    public void e(Map map) {
        d(map, "tags.json");
    }

    @Override // io.sentry.q0
    public void f(io.sentry.protocol.p pVar) {
        if (pVar == null) {
            a("sdk-version.json");
        } else {
            d(pVar, "sdk-version.json");
        }
    }

    @Override // io.sentry.q0
    public void g(String str) {
        if (str == null) {
            a("dist.json");
        } else {
            d(str, "dist.json");
        }
    }

    @Override // io.sentry.q0
    public void h(Double d10) {
        if (d10 == null) {
            a("replay-error-sample-rate.json");
        } else {
            d(d10.toString(), "replay-error-sample-rate.json");
        }
    }

    @Override // io.sentry.q0
    public void i(String str) {
        if (str == null) {
            a("environment.json");
        } else {
            d(str, "environment.json");
        }
    }

    @Override // io.sentry.q0
    public void j(String str) {
        if (str == null) {
            a("proguard-uuid.json");
        } else {
            d(str, "proguard-uuid.json");
        }
    }

    @Override // io.sentry.q0
    public void k(String str) {
        if (str == null) {
            a("release.json");
        } else {
            d(str, "release.json");
        }
    }
}
