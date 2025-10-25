package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
final class s2 extends u2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ s2(r2 r2Var) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.u2
    public final void a(Object obj, long j10) {
        ((i2) f4.k(obj, j10)).e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.u2
    public final void b(Object obj, Object obj2, long j10) {
        i2 i2Var = (i2) f4.k(obj, j10);
        i2 i2Var2 = (i2) f4.k(obj2, j10);
        int size = i2Var.size();
        int size2 = i2Var2.size();
        if (size > 0 && size2 > 0) {
            if (!i2Var.f()) {
                i2Var = i2Var.j(size2 + size);
            }
            i2Var.addAll(i2Var2);
        }
        if (size > 0) {
            i2Var2 = i2Var;
        }
        f4.x(obj, j10, i2Var2);
    }
}
