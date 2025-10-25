package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class d3 implements k3 {

    /* renamed from: a  reason: collision with root package name */
    private final y2 f6000a;

    /* renamed from: b  reason: collision with root package name */
    private final p3 f6001b;

    /* renamed from: c  reason: collision with root package name */
    private final v1 f6002c;

    private d3(p3 p3Var, v1 v1Var, y2 y2Var) {
        this.f6001b = p3Var;
        this.f6002c = v1Var;
        this.f6000a = y2Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d3 b(p3 p3Var, v1 v1Var, y2 y2Var) {
        return new d3(p3Var, v1Var, y2Var);
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final void a(Object obj) {
        this.f6001b.c(obj);
        this.f6002c.b(obj);
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final int c(Object obj) {
        return this.f6001b.a(obj).hashCode();
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final void d(Object obj, byte[] bArr, int i10, int i11, d1 d1Var) {
        b2 b2Var = (b2) obj;
        if (b2Var.zzc == r3.a()) {
            b2Var.zzc = r3.d();
        }
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final void e(Object obj, Object obj2) {
        m3.c(this.f6001b, obj, obj2);
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final boolean f(Object obj) {
        this.f6002c.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final Object g() {
        y2 y2Var = this.f6000a;
        if (y2Var instanceof b2) {
            return ((b2) y2Var).c();
        }
        return ((a2) ((b2) y2Var).o(5, null, null)).g();
    }

    @Override // com.google.android.gms.internal.auth.k3
    public final boolean h(Object obj, Object obj2) {
        if (!this.f6001b.a(obj).equals(this.f6001b.a(obj2))) {
            return false;
        }
        return true;
    }
}
