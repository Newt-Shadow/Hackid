package com.google.android.gms.internal.auth;
/* loaded from: classes.dex */
final class s3 extends p3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.auth.p3
    public final /* synthetic */ Object a(Object obj) {
        return ((b2) obj).zzc;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.auth.p3
    public final /* bridge */ /* synthetic */ Object b(Object obj, Object obj2) {
        if (!r3.a().equals(obj2)) {
            if (r3.a().equals(obj)) {
                return r3.c((r3) obj, (r3) obj2);
            }
            ((r3) obj).b((r3) obj2);
            return obj;
        }
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.auth.p3
    public final void c(Object obj) {
        ((b2) obj).zzc.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.auth.p3
    public final /* synthetic */ void d(Object obj, Object obj2) {
        ((b2) obj).zzc = (r3) obj2;
    }
}
