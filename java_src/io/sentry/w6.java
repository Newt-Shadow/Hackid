package io.sentry;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class w6 {

    /* renamed from: c  reason: collision with root package name */
    private static final Double f23905c = Double.valueOf(1.0d);

    /* renamed from: a  reason: collision with root package name */
    private final s5 f23906a;

    /* renamed from: b  reason: collision with root package name */
    private final io.sentry.util.t f23907b;

    public w6(s5 s5Var) {
        this((s5) io.sentry.util.q.c(s5Var, "options are required"), null);
    }

    private io.sentry.util.t a() {
        io.sentry.util.t tVar = this.f23907b;
        if (tVar == null) {
            return io.sentry.util.v.a();
        }
        return tVar;
    }

    private boolean c(Double d10) {
        if (d10.doubleValue() >= a().c()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public x6 b(c3 c3Var) {
        boolean z10;
        Double d10;
        Double valueOf;
        x6 g10 = c3Var.a().g();
        if (g10 != null) {
            return g10;
        }
        this.f23906a.getProfilesSampler();
        Double profilesSampleRate = this.f23906a.getProfilesSampleRate();
        if (profilesSampleRate != null && c(profilesSampleRate)) {
            z10 = true;
        } else {
            z10 = false;
        }
        Boolean valueOf2 = Boolean.valueOf(z10);
        this.f23906a.getTracesSampler();
        x6 u10 = c3Var.a().u();
        if (u10 != null) {
            return u10;
        }
        Double tracesSampleRate = this.f23906a.getTracesSampleRate();
        if (Boolean.TRUE.equals(this.f23906a.getEnableTracing())) {
            d10 = f23905c;
        } else {
            d10 = null;
        }
        if (tracesSampleRate == null) {
            tracesSampleRate = d10;
        }
        Double valueOf3 = Double.valueOf(Math.pow(2.0d, this.f23906a.getBackpressureMonitor().a()));
        if (tracesSampleRate == null) {
            valueOf = null;
        } else {
            valueOf = Double.valueOf(tracesSampleRate.doubleValue() / valueOf3.doubleValue());
        }
        if (valueOf != null) {
            return new x6(Boolean.valueOf(c(valueOf)), valueOf, valueOf2, profilesSampleRate);
        }
        Boolean bool = Boolean.FALSE;
        return new x6(bool, null, bool, null);
    }

    w6(s5 s5Var, io.sentry.util.t tVar) {
        this.f23906a = s5Var;
        this.f23907b = tVar;
    }
}
