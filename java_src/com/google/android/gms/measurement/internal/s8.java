package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class s8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f8014a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f8015b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s8(w9 w9Var, AtomicReference atomicReference) {
        this.f8014a = atomicReference;
        Objects.requireNonNull(w9Var);
        this.f8015b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference = this.f8014a;
        synchronized (atomicReference) {
            w9 w9Var = this.f8015b;
            atomicReference.set(Boolean.valueOf(w9Var.f8322a.w().H(w9Var.f8322a.L().q(), c5.f7328b0)));
            this.f8014a.notify();
        }
    }
}
