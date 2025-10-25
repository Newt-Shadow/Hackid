package io.sentry;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class v5 implements y {

    /* renamed from: a  reason: collision with root package name */
    private final String f23835a;

    /* renamed from: b  reason: collision with root package name */
    private final String f23836b;

    public v5(String str, String str2) {
        this.f23835a = str;
        this.f23836b = str2;
    }

    private t3 d(t3 t3Var) {
        if (t3Var.C().e() == null) {
            t3Var.C().m(new io.sentry.protocol.t());
        }
        io.sentry.protocol.t e10 = t3Var.C().e();
        if (e10 != null && e10.d() == null && e10.e() == null) {
            e10.f(this.f23836b);
            e10.h(this.f23835a);
        }
        return t3Var;
    }

    @Override // io.sentry.y
    public z4 b(z4 z4Var, c0 c0Var) {
        return (z4) d(z4Var);
    }

    @Override // io.sentry.y
    public io.sentry.protocol.y c(io.sentry.protocol.y yVar, c0 c0Var) {
        return (io.sentry.protocol.y) d(yVar);
    }

    public v5() {
        this(System.getProperty("java.version"), System.getProperty("java.vendor"));
    }
}
