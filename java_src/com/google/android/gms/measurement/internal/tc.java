package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class tc extends x {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ uc f8060e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public tc(uc ucVar, b8 b8Var) {
        super(b8Var);
        Objects.requireNonNull(ucVar);
        this.f8060e = ucVar;
    }

    @Override // com.google.android.gms.measurement.internal.x
    public final void a() {
        uc ucVar = this.f8060e;
        ucVar.n();
        ucVar.f8322a.a().w().a("Starting upload from DelayedRunnable");
        ucVar.f8149b.r();
    }
}
