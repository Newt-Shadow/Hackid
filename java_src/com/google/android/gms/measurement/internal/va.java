package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class va extends x {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ vb f8140e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public va(vb vbVar, b8 b8Var) {
        super(b8Var);
        Objects.requireNonNull(vbVar);
        this.f8140e = vbVar;
    }

    @Override // com.google.android.gms.measurement.internal.x
    public final void a() {
        vb vbVar = this.f8140e;
        vbVar.h();
        if (!vbVar.W()) {
            return;
        }
        vbVar.f8322a.a().w().a("Inactivity, disconnecting from the service");
        vbVar.A();
    }
}
