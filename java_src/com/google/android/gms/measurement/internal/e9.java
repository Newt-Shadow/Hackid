package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class e9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f7481a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f7482b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e9(w9 w9Var, AtomicReference atomicReference) {
        this.f7481a = atomicReference;
        Objects.requireNonNull(w9Var);
        this.f7482b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference = this.f7481a;
        synchronized (atomicReference) {
            w9 w9Var = this.f7482b;
            atomicReference.set(Double.valueOf(w9Var.f8322a.w().G(w9Var.f8322a.L().q(), c5.f7340f0)));
            this.f7481a.notify();
        }
    }
}
