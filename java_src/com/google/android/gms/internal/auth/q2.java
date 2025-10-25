package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class q2 implements w2 {

    /* renamed from: a  reason: collision with root package name */
    private final w2[] f6153a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q2(w2... w2VarArr) {
        this.f6153a = w2VarArr;
    }

    @Override // com.google.android.gms.internal.auth.w2
    public final v2 a(Class cls) {
        w2[] w2VarArr = this.f6153a;
        for (int i10 = 0; i10 < 2; i10++) {
            w2 w2Var = w2VarArr[i10];
            if (w2Var.b(cls)) {
                return w2Var.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: ".concat(cls.getName()));
    }

    @Override // com.google.android.gms.internal.auth.w2
    public final boolean b(Class cls) {
        w2[] w2VarArr = this.f6153a;
        for (int i10 = 0; i10 < 2; i10++) {
            if (w2VarArr[i10].b(cls)) {
                return true;
            }
        }
        return false;
    }
}
