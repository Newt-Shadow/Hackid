package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class w0 implements t0 {

    /* renamed from: c  reason: collision with root package name */
    private static final t0 f6192c = new t0() { // from class: com.google.android.gms.internal.auth.v0
        @Override // com.google.android.gms.internal.auth.t0
        public final Object zza() {
            throw new IllegalStateException();
        }
    };

    /* renamed from: a  reason: collision with root package name */
    private volatile t0 f6193a;

    /* renamed from: b  reason: collision with root package name */
    private Object f6194b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w0(t0 t0Var) {
        this.f6193a = t0Var;
    }

    public final String toString() {
        Object obj = this.f6193a;
        if (obj == f6192c) {
            obj = "<supplier that returned " + String.valueOf(this.f6194b) + ">";
        }
        return "Suppliers.memoize(" + String.valueOf(obj) + ")";
    }

    @Override // com.google.android.gms.internal.auth.t0
    public final Object zza() {
        t0 t0Var = this.f6193a;
        t0 t0Var2 = f6192c;
        if (t0Var != t0Var2) {
            synchronized (this) {
                if (this.f6193a != t0Var2) {
                    Object zza = this.f6193a.zza();
                    this.f6194b = zza;
                    this.f6193a = t0Var2;
                    return zza;
                }
            }
        }
        return this.f6194b;
    }
}
