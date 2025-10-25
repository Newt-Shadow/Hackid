package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class i8 implements Executor {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ w9 f7634a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i8(w9 w9Var) {
        Objects.requireNonNull(w9Var);
        this.f7634a = w9Var;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f7634a.f8322a.b().t(runnable);
    }
}
