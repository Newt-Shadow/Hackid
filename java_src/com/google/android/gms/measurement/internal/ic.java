package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class ic extends x {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ kc f7644e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ic(kc kcVar, b8 b8Var) {
        super(b8Var);
        Objects.requireNonNull(kcVar);
        this.f7644e = kcVar;
    }

    @Override // com.google.android.gms.measurement.internal.x
    public final void a() {
        kc kcVar = this.f7644e;
        mc mcVar = kcVar.f7699d;
        mcVar.h();
        w6 w6Var = mcVar.f8322a;
        kcVar.d(false, false, w6Var.f().elapsedRealtime());
        mcVar.f8322a.M().k(w6Var.f().elapsedRealtime());
    }
}
