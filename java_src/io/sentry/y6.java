package io.sentry;
/* loaded from: classes2.dex */
public final class y6 extends l6 {

    /* renamed from: q  reason: collision with root package name */
    private static final io.sentry.protocol.a0 f23941q = io.sentry.protocol.a0.CUSTOM;

    /* renamed from: k  reason: collision with root package name */
    private String f23942k;

    /* renamed from: l  reason: collision with root package name */
    private io.sentry.protocol.a0 f23943l;

    /* renamed from: m  reason: collision with root package name */
    private x6 f23944m;

    /* renamed from: n  reason: collision with root package name */
    private d f23945n;

    /* renamed from: o  reason: collision with root package name */
    private d1 f23946o;

    /* renamed from: p  reason: collision with root package name */
    private boolean f23947p;

    public y6(String str, String str2) {
        this(str, str2, (x6) null);
    }

    public static y6 q(w2 w2Var) {
        x6 x6Var;
        x6 x6Var2;
        boolean z10;
        Boolean f10 = w2Var.f();
        if (f10 == null) {
            x6Var = null;
        } else {
            x6Var = new x6(f10);
        }
        d b10 = w2Var.b();
        if (b10 != null) {
            b10.a();
            Double i10 = b10.i();
            if (f10 != null) {
                z10 = f10.booleanValue();
            } else {
                z10 = false;
            }
            Boolean valueOf = Boolean.valueOf(z10);
            if (i10 != null) {
                x6Var2 = new x6(valueOf, i10);
                return new y6(w2Var.e(), w2Var.d(), w2Var.c(), x6Var2, b10);
            }
            x6Var = new x6(valueOf);
        }
        x6Var2 = x6Var;
        return new y6(w2Var.e(), w2Var.d(), w2Var.c(), x6Var2, b10);
    }

    public d r() {
        return this.f23945n;
    }

    public d1 s() {
        return this.f23946o;
    }

    public String t() {
        return this.f23942k;
    }

    public x6 u() {
        return this.f23944m;
    }

    public io.sentry.protocol.a0 v() {
        return this.f23943l;
    }

    public void w(boolean z10) {
        this.f23947p = z10;
    }

    public y6(String str, io.sentry.protocol.a0 a0Var, String str2) {
        this(str, a0Var, str2, null);
    }

    public y6(String str, String str2, x6 x6Var) {
        this(str, io.sentry.protocol.a0.CUSTOM, str2, x6Var);
    }

    public y6(String str, io.sentry.protocol.a0 a0Var, String str2, x6 x6Var) {
        super(str2);
        this.f23946o = d1.SENTRY;
        this.f23947p = false;
        this.f23942k = (String) io.sentry.util.q.c(str, "name is required");
        this.f23943l = a0Var;
        n(x6Var);
    }

    public y6(io.sentry.protocol.r rVar, n6 n6Var, n6 n6Var2, x6 x6Var, d dVar) {
        super(rVar, n6Var, "default", n6Var2, null);
        this.f23946o = d1.SENTRY;
        this.f23947p = false;
        this.f23942k = "<unlabeled transaction>";
        this.f23944m = x6Var;
        this.f23943l = f23941q;
        this.f23945n = dVar;
    }
}
