package io.sentry;
/* loaded from: classes2.dex */
public final class n implements ILogger {

    /* renamed from: a  reason: collision with root package name */
    private final s5 f23274a;

    /* renamed from: b  reason: collision with root package name */
    private final ILogger f23275b;

    public n(s5 s5Var, ILogger iLogger) {
        this.f23274a = (s5) io.sentry.util.q.c(s5Var, "SentryOptions is required.");
        this.f23275b = iLogger;
    }

    @Override // io.sentry.ILogger
    public void a(j5 j5Var, Throwable th, String str, Object... objArr) {
        if (this.f23275b != null && d(j5Var)) {
            this.f23275b.a(j5Var, th, str, objArr);
        }
    }

    @Override // io.sentry.ILogger
    public void b(j5 j5Var, String str, Throwable th) {
        if (this.f23275b != null && d(j5Var)) {
            this.f23275b.b(j5Var, str, th);
        }
    }

    @Override // io.sentry.ILogger
    public void c(j5 j5Var, String str, Object... objArr) {
        if (this.f23275b != null && d(j5Var)) {
            this.f23275b.c(j5Var, str, objArr);
        }
    }

    @Override // io.sentry.ILogger
    public boolean d(j5 j5Var) {
        j5 diagnosticLevel = this.f23274a.getDiagnosticLevel();
        if (j5Var == null || !this.f23274a.isDebug() || j5Var.ordinal() < diagnosticLevel.ordinal()) {
            return false;
        }
        return true;
    }
}
