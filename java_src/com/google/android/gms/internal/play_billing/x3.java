package com.google.android.gms.internal.play_billing;
/* loaded from: classes.dex */
final class x3 extends v3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.v3
    public final /* synthetic */ int a(Object obj) {
        return ((w3) obj).a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.v3
    public final /* synthetic */ int b(Object obj) {
        return ((w3) obj).b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.v3
    public final /* bridge */ /* synthetic */ Object c(Object obj) {
        b2 b2Var = (b2) obj;
        w3 w3Var = b2Var.zzc;
        if (w3Var == w3.c()) {
            w3 f10 = w3.f();
            b2Var.zzc = f10;
            return f10;
        }
        return w3Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.v3
    public final /* synthetic */ Object d(Object obj) {
        return ((b2) obj).zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.v3
    public final /* bridge */ /* synthetic */ Object e(Object obj, Object obj2) {
        if (!w3.c().equals(obj2)) {
            if (w3.c().equals(obj)) {
                return w3.e((w3) obj, (w3) obj2);
            }
            ((w3) obj).d((w3) obj2);
            return obj;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.v3
    public final /* bridge */ /* synthetic */ void f(Object obj, int i10, long j10) {
        ((w3) obj).j(i10 << 3, Long.valueOf(j10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.v3
    public final void g(Object obj) {
        ((b2) obj).zzc.h();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.v3
    public final /* synthetic */ void h(Object obj, Object obj2) {
        ((b2) obj).zzc = (w3) obj2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.play_billing.v3
    public final /* synthetic */ void i(Object obj, m4 m4Var) {
        ((w3) obj).k(m4Var);
    }
}
