package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
public abstract class a2 extends z0 {

    /* renamed from: a  reason: collision with root package name */
    private final b2 f5961a;

    /* renamed from: b  reason: collision with root package name */
    protected b2 f5962b;

    /* JADX INFO: Access modifiers changed from: protected */
    public a2(b2 b2Var) {
        this.f5961a = b2Var;
        if (!b2Var.n()) {
            this.f5962b = b2Var.c();
            return;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    /* renamed from: a */
    public final a2 clone() {
        a2 a2Var = (a2) this.f5961a.o(5, null, null);
        a2Var.f5962b = g();
        return a2Var;
    }

    @Override // com.google.android.gms.internal.auth.x2
    /* renamed from: b */
    public b2 g() {
        if (!this.f5962b.n()) {
            return this.f5962b;
        }
        this.f5962b.j();
        return this.f5962b;
    }
}
