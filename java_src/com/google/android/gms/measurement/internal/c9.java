package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f7398a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f7399b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c9(w9 w9Var, AtomicReference atomicReference) {
        this.f7398a = atomicReference;
        Objects.requireNonNull(w9Var);
        this.f7399b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference = this.f7398a;
        synchronized (atomicReference) {
            w9 w9Var = this.f7399b;
            atomicReference.set(Long.valueOf(w9Var.f8322a.w().D(w9Var.f8322a.L().q(), c5.f7334d0)));
            this.f7398a.notify();
        }
    }
}
