package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class d9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f7445a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f7446b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d9(w9 w9Var, AtomicReference atomicReference) {
        this.f7445a = atomicReference;
        Objects.requireNonNull(w9Var);
        this.f7446b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference = this.f7445a;
        synchronized (atomicReference) {
            w9 w9Var = this.f7446b;
            atomicReference.set(Integer.valueOf(w9Var.f8322a.w().E(w9Var.f8322a.L().q(), c5.f7337e0)));
            this.f7445a.notify();
        }
    }
}
