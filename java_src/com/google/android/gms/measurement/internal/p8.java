package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class p8 extends x {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ w9 f7871e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p8(w9 w9Var, b8 b8Var) {
        super(b8Var);
        Objects.requireNonNull(w9Var);
        this.f7871e = w9Var;
    }

    @Override // com.google.android.gms.measurement.internal.x
    public final void a() {
        this.f7871e.r();
    }
}
