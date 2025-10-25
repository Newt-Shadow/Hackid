package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class m2 extends o2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ m2(l2 l2Var) {
        super(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.auth.o2
    public final void a(Object obj, long j10) {
        ((d2) a4.f(obj, j10)).e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.auth.o2
    public final void b(Object obj, Object obj2, long j10) {
        d2 d2Var = (d2) a4.f(obj, j10);
        d2 d2Var2 = (d2) a4.f(obj2, j10);
        int size = d2Var.size();
        int size2 = d2Var2.size();
        if (size > 0 && size2 > 0) {
            if (!d2Var.f()) {
                d2Var = d2Var.j(size2 + size);
            }
            d2Var.addAll(d2Var2);
        }
        if (size > 0) {
            d2Var2 = d2Var;
        }
        a4.p(obj, j10, d2Var2);
    }
}
