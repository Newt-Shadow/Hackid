package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
final class j3 implements q3 {

    /* renamed from: a  reason: collision with root package name */
    private final f3 f7026a;

    /* renamed from: b  reason: collision with root package name */
    private final v3 f7027b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f7028c;

    /* renamed from: d  reason: collision with root package name */
    private final r1 f7029d;

    private j3(v3 v3Var, r1 r1Var, f3 f3Var) {
        this.f7027b = v3Var;
        this.f7028c = r1Var.c(f3Var);
        this.f7029d = r1Var;
        this.f7026a = f3Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j3 j(v3 v3Var, r1 r1Var, f3 f3Var) {
        return new j3(v3Var, r1Var, f3Var);
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final void a(Object obj) {
        this.f7027b.g(obj);
        this.f7029d.b(obj);
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final boolean b(Object obj) {
        this.f7029d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final int c(Object obj) {
        v3 v3Var = this.f7027b;
        int b10 = v3Var.b(v3Var.d(obj));
        if (!this.f7028c) {
            return b10;
        }
        this.f7029d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final int d(Object obj) {
        int hashCode = this.f7027b.d(obj).hashCode();
        if (!this.f7028c) {
            return hashCode;
        }
        this.f7029d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final void e(Object obj, m4 m4Var) {
        this.f7029d.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final void f(Object obj, Object obj2) {
        s3.v(this.f7027b, obj, obj2);
        if (!this.f7028c) {
            return;
        }
        this.f7029d.a(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final void g(Object obj, byte[] bArr, int i10, int i11, r0 r0Var) {
        b2 b2Var = (b2) obj;
        if (b2Var.zzc == w3.c()) {
            b2Var.zzc = w3.f();
        }
        android.support.v4.media.session.b.a(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final Object h() {
        f3 f3Var = this.f7026a;
        if (f3Var instanceof b2) {
            return ((b2) f3Var).m();
        }
        return f3Var.l().h();
    }

    @Override // com.google.android.gms.internal.play_billing.q3
    public final boolean i(Object obj, Object obj2) {
        v3 v3Var = this.f7027b;
        if (!v3Var.d(obj).equals(v3Var.d(obj2))) {
            return false;
        }
        if (!this.f7028c) {
            return true;
        }
        this.f7029d.a(obj);
        this.f7029d.a(obj2);
        throw null;
    }
}
