package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f8245a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f8246b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f8247c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ w9 f8248d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x8(w9 w9Var, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f8245a = atomicReference;
        this.f8246b = str2;
        this.f8247c = str3;
        Objects.requireNonNull(w9Var);
        this.f8248d = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8248d.f8322a.J().e0(this.f8245a, null, this.f8246b, this.f8247c);
    }
}
