package com.google.android.gms.measurement.internal;

import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class m8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ w9 f7756a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m8(w9 w9Var) {
        Objects.requireNonNull(w9Var);
        this.f7756a = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f7756a.f8206r.a();
    }
}
