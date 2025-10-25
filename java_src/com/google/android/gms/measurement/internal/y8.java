package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class y8 implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AtomicReference f8282a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ String f8283b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ String f8284c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ boolean f8285d;

    /* renamed from: e  reason: collision with root package name */
    final /* synthetic */ w9 f8286e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public y8(w9 w9Var, AtomicReference atomicReference, String str, String str2, String str3, boolean z10) {
        this.f8282a = atomicReference;
        this.f8283b = str2;
        this.f8284c = str3;
        this.f8285d = z10;
        Objects.requireNonNull(w9Var);
        this.f8286e = w9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f8286e.f8322a.J().g0(this.f8282a, null, this.f8283b, this.f8284c, this.f8285d);
    }
}
