package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class t8 extends x {

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ w9 f8052e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t8(w9 w9Var, b8 b8Var) {
        super(b8Var);
        Objects.requireNonNull(w9Var);
        this.f8052e = w9Var;
    }

    @Override // com.google.android.gms.measurement.internal.x
    public final void a() {
        w9 w9Var = this.f8052e;
        if (w9Var.f8322a.n()) {
            w9Var.c0().b(2000L);
        }
    }
}
