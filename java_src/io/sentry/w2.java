package io.sentry;
/* loaded from: classes2.dex */
public final class w2 {

    /* renamed from: a  reason: collision with root package name */
    private io.sentry.protocol.r f23892a;

    /* renamed from: b  reason: collision with root package name */
    private n6 f23893b;

    /* renamed from: c  reason: collision with root package name */
    private n6 f23894c;

    /* renamed from: d  reason: collision with root package name */
    private Boolean f23895d;

    /* renamed from: e  reason: collision with root package name */
    private d f23896e;

    public w2() {
        this(new io.sentry.protocol.r(), new n6(), null, null, null);
    }

    private static d a(d dVar) {
        if (dVar != null) {
            return new d(dVar);
        }
        return null;
    }

    public d b() {
        return this.f23896e;
    }

    public n6 c() {
        return this.f23894c;
    }

    public n6 d() {
        return this.f23893b;
    }

    public io.sentry.protocol.r e() {
        return this.f23892a;
    }

    public Boolean f() {
        return this.f23895d;
    }

    public void g(d dVar) {
        this.f23896e = dVar;
    }

    public l6 h() {
        l6 l6Var = new l6(this.f23892a, this.f23893b, "default", null, null);
        l6Var.m("auto");
        return l6Var;
    }

    public v6 i() {
        d dVar = this.f23896e;
        if (dVar != null) {
            return dVar.H();
        }
        return null;
    }

    public w2(w2 w2Var) {
        this(w2Var.e(), w2Var.d(), w2Var.c(), a(w2Var.b()), w2Var.f());
    }

    public w2(io.sentry.protocol.r rVar, n6 n6Var, n6 n6Var2, d dVar, Boolean bool) {
        this.f23892a = rVar;
        this.f23893b = n6Var;
        this.f23894c = n6Var2;
        this.f23896e = dVar;
        this.f23895d = bool;
    }
}
