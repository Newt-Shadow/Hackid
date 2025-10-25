package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class za extends x {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ vb f8331e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public za(vb vbVar, b8 b8Var) {
        super(b8Var);
        Objects.requireNonNull(vbVar);
        this.f8331e = vbVar;
    }

    @Override // com.google.android.gms.measurement.internal.x
    public final void a() {
        this.f8331e.f8322a.a().r().a("Tasks have been queued for a long time");
    }
}
