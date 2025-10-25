package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
public abstract class y1 extends n0 {

    /* renamed from: a  reason: collision with root package name */
    private final b2 f7169a;

    /* renamed from: b  reason: collision with root package name */
    protected b2 f7170b;

    /* JADX INFO: Access modifiers changed from: protected */
    public y1(b2 b2Var) {
        this.f7169a = b2Var;
        if (!b2Var.y()) {
            this.f7170b = b2Var.m();
            return;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    /* renamed from: b */
    public final y1 clone() {
        y1 y1Var = (y1) this.f7169a.z(5, null, null);
        y1Var.f7170b = h();
        return y1Var;
    }

    public final b2 c() {
        b2 h10 = h();
        if (h10.x()) {
            return h10;
        }
        throw new u3(h10);
    }

    @Override // com.google.android.gms.internal.play_billing.e3
    /* renamed from: d */
    public b2 h() {
        if (!this.f7170b.y()) {
            return this.f7170b;
        }
        this.f7170b.t();
        return this.f7170b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void e() {
        if (!this.f7170b.y()) {
            f();
        }
    }

    protected void f() {
        b2 m10 = this.f7169a.m();
        n3.a().b(m10.getClass()).f(m10, this.f7170b);
        this.f7170b = m10;
    }
}
