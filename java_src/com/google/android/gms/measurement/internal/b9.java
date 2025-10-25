package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b9 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f7291a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ w9 f7292b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b9(w9 w9Var, AtomicReference atomicReference) {
        this.f7291a = atomicReference;
        Objects.requireNonNull(w9Var);
        this.f7292b = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference = this.f7291a;
        synchronized (atomicReference) {
            w9 w9Var = this.f7292b;
            atomicReference.set(w9Var.f8322a.w().C(w9Var.f8322a.L().q(), c5.f7331c0));
            this.f7291a.notify();
        }
    }
}
