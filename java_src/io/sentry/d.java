package io.sentry;

import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes2.dex */
public final class d {

    /* renamed from: e  reason: collision with root package name */
    static final Integer f23009e = 8192;

    /* renamed from: f  reason: collision with root package name */
    static final Integer f23010f = 64;

    /* renamed from: a  reason: collision with root package name */
    final Map f23011a;

    /* renamed from: b  reason: collision with root package name */
    final String f23012b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f23013c;

    /* renamed from: d  reason: collision with root package name */
    final ILogger f23014d;

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public static final List f23015a = Arrays.asList("sentry-trace_id", "sentry-public_key", "sentry-release", "sentry-user_id", "sentry-environment", "sentry-user_segment", "sentry-transaction", "sentry-sample_rate", "sentry-sampled", "sentry-replay_id");
    }

    public d(ILogger iLogger) {
        this(new HashMap(), null, true, iLogger);
    }

    public static d b(z4 z4Var, s5 s5Var) {
        String str;
        String str2;
        d dVar = new d(s5Var.getLogger());
        l6 f10 = z4Var.C().f();
        if (f10 != null) {
            str = f10.k().toString();
        } else {
            str = null;
        }
        dVar.C(str);
        dVar.x(s5Var.retrieveParsedDsn().a());
        dVar.y(z4Var.J());
        dVar.w(z4Var.F());
        io.sentry.protocol.b0 Q = z4Var.Q();
        if (Q != null) {
            str2 = k(Q);
        } else {
            str2 = null;
        }
        dVar.E(str2);
        dVar.D(z4Var.v0());
        dVar.A(null);
        dVar.B(null);
        V v10 = z4Var.C().get("replay_id");
        if (v10 != 0 && !v10.toString().equals(io.sentry.protocol.r.f23462b.toString())) {
            dVar.z(v10.toString());
            z4Var.C().remove("replay_id");
        }
        dVar.a();
        return dVar;
    }

    private static String k(io.sentry.protocol.b0 b0Var) {
        if (b0Var.o() != null) {
            return b0Var.o();
        }
        Map k10 = b0Var.k();
        if (k10 != null) {
            return (String) k10.get("segment");
        }
        return null;
    }

    private static boolean q(io.sentry.protocol.a0 a0Var) {
        if (a0Var != null && !io.sentry.protocol.a0.URL.equals(a0Var)) {
            return true;
        }
        return false;
    }

    private static Double s(x6 x6Var) {
        if (x6Var == null) {
            return null;
        }
        return x6Var.c();
    }

    private static String t(Double d10) {
        if (!io.sentry.util.u.e(d10, false)) {
            return null;
        }
        return new DecimalFormat("#.################", DecimalFormatSymbols.getInstance(Locale.ROOT)).format(d10);
    }

    private static Boolean u(x6 x6Var) {
        if (x6Var == null) {
            return null;
        }
        return x6Var.d();
    }

    public void A(String str) {
        v("sentry-sample_rate", str);
    }

    public void B(String str) {
        v("sentry-sampled", str);
    }

    public void C(String str) {
        v("sentry-trace_id", str);
    }

    public void D(String str) {
        v("sentry-transaction", str);
    }

    public void E(String str) {
        v("sentry-user_segment", str);
    }

    public void F(u0 u0Var, s5 s5Var) {
        String str;
        w2 t10 = u0Var.t();
        io.sentry.protocol.b0 G = u0Var.G();
        io.sentry.protocol.r o10 = u0Var.o();
        C(t10.e().toString());
        x(s5Var.retrieveParsedDsn().a());
        y(s5Var.getRelease());
        w(s5Var.getEnvironment());
        if (!io.sentry.protocol.r.f23462b.equals(o10)) {
            z(o10.toString());
        }
        if (G != null) {
            str = k(G);
        } else {
            str = null;
        }
        E(str);
        D(null);
        A(null);
        B(null);
    }

    public void G(a1 a1Var, io.sentry.protocol.b0 b0Var, io.sentry.protocol.r rVar, s5 s5Var, x6 x6Var) {
        String str;
        C(a1Var.o().k().toString());
        x(s5Var.retrieveParsedDsn().a());
        y(s5Var.getRelease());
        w(s5Var.getEnvironment());
        String str2 = null;
        if (b0Var != null) {
            str = k(b0Var);
        } else {
            str = null;
        }
        E(str);
        if (q(a1Var.s())) {
            str2 = a1Var.getName();
        }
        D(str2);
        if (rVar != null && !io.sentry.protocol.r.f23462b.equals(rVar)) {
            z(rVar.toString());
        }
        A(t(s(x6Var)));
        B(io.sentry.util.w.g(u(x6Var)));
    }

    public v6 H() {
        io.sentry.protocol.r rVar;
        String l10 = l();
        String g10 = g();
        String e10 = e();
        if (l10 == null || e10 == null) {
            return null;
        }
        io.sentry.protocol.r rVar2 = new io.sentry.protocol.r(l10);
        String f10 = f();
        String d10 = d();
        String o10 = o();
        String p10 = p();
        String m10 = m();
        String h10 = h();
        String j10 = j();
        if (g10 == null) {
            rVar = null;
        } else {
            rVar = new io.sentry.protocol.r(g10);
        }
        v6 v6Var = new v6(rVar2, e10, f10, d10, o10, p10, m10, h10, j10, rVar);
        v6Var.b(n());
        return v6Var;
    }

    public void a() {
        this.f23013c = false;
    }

    public String c(String str) {
        if (str == null) {
            return null;
        }
        return (String) this.f23011a.get(str);
    }

    public String d() {
        return c("sentry-environment");
    }

    public String e() {
        return c("sentry-public_key");
    }

    public String f() {
        return c("sentry-release");
    }

    public String g() {
        return c("sentry-replay_id");
    }

    public String h() {
        return c("sentry-sample_rate");
    }

    public Double i() {
        String h10 = h();
        if (h10 != null) {
            try {
                double parseDouble = Double.parseDouble(h10);
                if (io.sentry.util.u.e(Double.valueOf(parseDouble), false)) {
                    return Double.valueOf(parseDouble);
                }
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    public String j() {
        return c("sentry-sampled");
    }

    public String l() {
        return c("sentry-trace_id");
    }

    public String m() {
        return c("sentry-transaction");
    }

    public Map n() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        for (Map.Entry entry : this.f23011a.entrySet()) {
            String str = (String) entry.getKey();
            String str2 = (String) entry.getValue();
            if (!a.f23015a.contains(str) && str2 != null) {
                concurrentHashMap.put(str.replaceFirst("sentry-", ""), str2);
            }
        }
        return concurrentHashMap;
    }

    public String o() {
        return c("sentry-user_id");
    }

    public String p() {
        return c("sentry-user_segment");
    }

    public boolean r() {
        return this.f23013c;
    }

    public void v(String str, String str2) {
        if (this.f23013c) {
            this.f23011a.put(str, str2);
        }
    }

    public void w(String str) {
        v("sentry-environment", str);
    }

    public void x(String str) {
        v("sentry-public_key", str);
    }

    public void y(String str) {
        v("sentry-release", str);
    }

    public void z(String str) {
        v("sentry-replay_id", str);
    }

    public d(d dVar) {
        this(dVar.f23011a, dVar.f23012b, dVar.f23013c, dVar.f23014d);
    }

    public d(Map map, String str, boolean z10, ILogger iLogger) {
        this.f23011a = map;
        this.f23014d = iLogger;
        this.f23013c = z10;
        this.f23012b = str;
    }
}
